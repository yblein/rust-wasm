use std::fs::File;
use std::io;
use std::rc::Rc;

use ast;
use binary;
use types;
use valid;
use values;
use embedding;
use interpreter::{Interpreter, StackFrames};

type Addr = usize;
pub type FuncAddr = Addr;
pub type TableAddr = Addr;
pub type MemAddr = Addr;
pub type GlobalAddr = Addr;

#[derive(Clone, Copy, PartialEq, Eq, Hash, Debug)]
pub enum ExternVal {
	Func(FuncAddr),
	Table(TableAddr),
	Memory(MemAddr),
	Global(GlobalAddr),
}

pub struct ExportInst {
	pub name: String,
	pub value: ExternVal,
}

pub struct ModuleInst {
	pub types: Vec<types::Func>,
	func_addrs: Vec<FuncAddr>,
	pub table_addrs: Vec<TableAddr>,
	pub mem_addrs: Vec<MemAddr>,
	pub global_addrs: Vec<GlobalAddr>,
	pub exports: Vec<ExportInst>,
}

impl ModuleInst {
	pub fn new() -> ModuleInst {
		ModuleInst {
			types: Vec::new(),
			func_addrs: Vec::new(),
			table_addrs: Vec::new(),
			mem_addrs: Vec::new(),
			global_addrs: Vec::new(),
			exports: Vec::new(),
		}
	}
}

type HostFunc = ();

pub struct HostFuncInst {
	pub type_: types::Func,
	pub hostcode: HostFunc,
}

pub struct ModuleFuncInst {
	pub type_: types::Func,
	pub module: Rc<ModuleInst>,
	pub code: ast::Func,
}

pub enum FuncInst {
	Module(ModuleFuncInst),
	Host(HostFuncInst),
}

type FuncElem = Option<FuncAddr>;

pub struct TableInst {
	pub elem: Vec<FuncElem>,
	pub max: Option<u32>,
}

pub const PAGE_SIZE: usize = 65536;

pub struct MemInst {
	pub data: Vec<u8>,
	pub max: Option<u32>,
}

pub struct GlobalInst {
	pub value: values::Value,
	pub mutable: bool,
}

// TODO: each field should be a type, and we implement methods to remove duplicate
// code between vm, embedding and interpreter
pub struct Store {
	pub funcs: Vec<FuncInst>,
	pub tables: Vec<TableInst>,
	pub mems: Vec<MemInst>,
	pub globals: Vec<GlobalInst>,
	pub modules: Vec<ModuleInst>,
}

impl Store {
	pub fn new() -> Store {
		Store {
			funcs: Vec::new(),
			tables: Vec::new(),
			mems: Vec::new(),
			globals: Vec::new(),
			modules: Vec::new(),
		}
	}
}

/// A struct storing the state of the virtual machine
pub struct VM {
	pub store: Store
}

#[derive(Debug, PartialEq)]
pub enum VMError {
	ModuleInvalid,
	NotEnoughExternVal,
	UnknownImport,
	ImportTypeMismatch,
	ElemOffsetTooLarge(usize),
	DataOffsetTooLarge(usize),
	MutableGlobalExported,
	StartFunctionFailed,
}

impl VM {

	/// Make a new VM context
	pub fn new() -> VM {
		VM {
			store: Store::new(),
		}
	}

	/// Generate the ast::Module for a given file
	pub fn parse(&self, filename: &str) -> Result<ast::Module, binary::DecodeError> {
		let f = File::open(filename)?;
		binary::decode(io::BufReader::new(f))
	}

	/// Instantiate a new module inside the VM context
	pub fn instantiate_module(&mut self, m: ast::Module, extern_vals: &[ExternVal], types_map: &mut embedding::TypeHashMap) -> Result<Rc<ModuleInst>, VMError> {
		// 1. If module is not valid, then: Fail
		if !valid::is_valid(&m) {
			return Err(VMError::ModuleInvalid)
		}

		// 2. Assert: module is valid with external types externtype^{m}_{im} classifying its import
		// 3. If the number m of imports is not equal to the number n of provided external values, then: Fail
		if extern_vals.len() != m.imports.len() {
			return Err(VMError::NotEnoughExternVal)
		}

		// 4. For each external value externval_i in externval^n and external
		// type externtype'_i in externtype^{n}_{im}, do:
		// a. Assert: externval_i is valid with external type externtype_i in store S.
		// b. If externtype_i does not match externtype'_i, then: Fail
		//
		// Intuition: resolve imports by module name & fct name, check their types
		let mut imported_funcs = Vec::new();
		let mut imported_tables = Vec::new();
		let mut imported_memories = Vec::new();
		let mut imported_globals = Vec::new();
		{
			for (import, value) in m.imports.iter().zip(extern_vals.iter()) {
				let type_match = match types_map.get(&embedding::TypeKey { extern_val: value.clone() }) {
					Some(type_) => {
						match (type_, &import.desc) {
							(&types::Extern::Func(ref exported_type), &ast::ImportDesc::Func(idx)) => {
								if let &ExternVal::Func(addr) = value {
									imported_funcs.push(addr);
								} else {
									unreachable!();
								}
								exported_type == &m.types[idx as usize]
							},
							(&types::Extern::Table(ref exported_type), &ast::ImportDesc::Table(ref imported_type)) => {
								if let &ExternVal::Table(addr) = value {
									imported_tables.push(addr);
								} else {
									unreachable!();
								}
								exported_type.elem == imported_type.elem && Self::match_limits(&imported_type.limits, &exported_type.limits)
							},
							(&types::Extern::Memory(ref exported_type), &ast::ImportDesc::Memory(ref imported_type)) => {
								if let &ExternVal::Memory(addr) = value {
									imported_memories.push(addr);
								} else {
									unreachable!();
								}
								Self::match_limits(&imported_type.limits, &exported_type.limits)
							},
							(&types::Extern::Global(ref exported_type), &ast::ImportDesc::Global(ref imported_type)) => {
								if let &ExternVal::Global(addr) = value {
									imported_globals.push(addr);
								} else {
									unreachable!();
								}
								exported_type == imported_type
							},
							_ => return Err(VMError::ImportTypeMismatch),
						}
					},
					None => return Err(VMError::UnknownImport),
				};
				if !type_match {
					return Err(VMError::ImportTypeMismatch);
				}
			}
		}

		// 5. Let moduleinst_im be the auxiliary module instance {globaladdrs
		// globals(externval∗)} that only consists of the imported globals.
		// 6. Let F be the frame {module moduleinstim,locals ϵ}.
		// 7. Push the frame F to the stack.
		let mut const_int = Interpreter::new();
		let mut mod_aux_m = ModuleInst::new();
		mod_aux_m.global_addrs = imported_globals;
		let mod_aux = Rc::new(mod_aux_m);

		// For sframe/mod_aux lifetime dependecy
		let (global_vals, elem_offsets, data_offsets) = {
			let mut sframe = StackFrames::new();
			sframe.push(mod_aux.clone(), 0);

			// 8. Let globalidx_{new} be the global index that corresponds to the
			// number of global imports in module.imports (i.e., the index of the
			// first non-imported global).
			// 9. For each global globali in module.globals, do:
			// ...
			// Note: we only compute vals here, we will create the GlobalInstance when we allocate globals
			let vals = m.globals.iter().map(|g| {
				interpreter_eval_expr_const!(&mut const_int, &mut sframe, self, &g.value).unwrap()
			}).collect();

			// 10. For each element segment elemi in module.elem, do:
			// ...
			// Intuition: check if the module does not try to init too many elements
			let mut elem_offsets = Vec::new();
			for elem in m.elems.iter() {
				let offset = match interpreter_eval_expr_const!(&mut const_int, &mut sframe, self, &elem.offset).unwrap() {
					values::Value::I32(c) => c as usize,
					_ => unreachable!(),
				};
				elem_offsets.push(offset);

				let table_size = {
					if (elem.index as usize) >= imported_tables.len() {
						m.tables[(elem.index as usize) - imported_tables.len()].type_.limits.min as usize
					} else {
						self.store.mems[elem.index as usize].data.len()
					}
				};

				// We will allocate limits.min empty elements when allocating the table
				if offset + elem.init.len() > table_size {
					return Err(VMError::ElemOffsetTooLarge(elem.index as usize));
				}
			}

			// 11. For each data segment datai in module.data, do:
			// ...
			// Intuition: check if the module does not try to init too much memory
			let mut data_offsets = Vec::new();
			for data in m.data.iter() {
				let offset = match interpreter_eval_expr_const!(&mut const_int, &mut sframe, self, &data.offset).unwrap() {
					values::Value::I32(c) => c as usize,
					_ => unreachable!(),
				};
				data_offsets.push(offset);

				let memory_size = {
					if (data.index as usize) >= imported_memories.len() {
						(m.memories[(data.index as usize) - imported_memories.len()].type_.limits.min as usize) * PAGE_SIZE
					} else {
						self.store.mems[data.index as usize].data.len()
					}
				};

				if offset + data.init.len() > memory_size {
					return Err(VMError::DataOffsetTooLarge(data.index as usize));
				}
			}

			(vals, elem_offsets, data_offsets)
		};

		// 14. Let moduleinst be a new module instance allocated from module in
		// store S with imports externval∗ and glboal initializer values val∗.
		// Note: module tables/data/globals initializations are performed in the
		// following function
		let global_addrs = Rc::try_unwrap(mod_aux).ok().unwrap().global_addrs;
		self.allocate_and_init_module(m, imported_funcs, imported_tables, imported_memories, global_addrs, global_vals, elem_offsets, data_offsets, types_map)
	}

	fn allocate_and_init_module(
		&mut self,
		m: ast::Module,
		extern_funcs: Vec<FuncAddr>,
		extern_tables: Vec<TableAddr>,
		extern_memories: Vec<MemAddr>,
		extern_globals: Vec<GlobalAddr>,
		vals: Vec<values::Value>,
		elem_offsets: Vec<usize>,
		data_offsets: Vec<usize>,
		types_map: &mut embedding::TypeHashMap
	) -> Result<Rc<ModuleInst>, VMError> {
		// Two passes algorithms
		// 1. do all modifications on the ModuleInst in a single scope
		let mut mi = ModuleInst::new();

		// Types copying
		mi.types = m.types;

		// Also copy types of globals/memories/tables, we will need later for exported external var
		let table_types: Vec<types::Table> = m.tables.iter().map(|t| { t.type_.clone() }).collect();
		let memory_types: Vec<types::Memory> = m.memories.iter().map(|t| { t.type_.clone() }).collect();
		let global_types: Vec<types::Global> = m.globals.iter().map(|t| { t.type_.clone() }).collect();

		// Alloc steps 10-13
		for addr in extern_funcs {
			mi.func_addrs.push(addr);
		}

		for addr in extern_tables {
			mi.table_addrs.push(addr);
		}

		for addr in extern_memories {
			mi.mem_addrs.push(addr);
		}

		for addr in extern_globals {
			mi.global_addrs.push(addr);
		}

		// Functions allocation
		// Only allocate indices, pushing to the store outside the mutable scope
		let fsi_min = self.store.funcs.len();
		let fsi_max = fsi_min + m.funcs.len();
		mi.func_addrs.extend(fsi_min..fsi_max);

		// Tables allocation
		for tab in m.tables {
			let min = tab.type_.limits.min;
			let max = tab.type_.limits.max;

			mi.table_addrs.push(self.store.tables.len());
			self.store.tables.push(
				TableInst {
					elem: vec![None; min as usize],
					max: max,
				}
			);
			types_map.insert(embedding::TypeKey { extern_val: ExternVal::Table(self.store.tables.len() - 1) },
							 types::Extern::Table(tab.type_.clone()));
		}

		// 15. For each element segment elemi in module.elem, do:
		// ...
		// Intuition: tables initialization with elem segments
		assert_eq!(m.elems.len(), elem_offsets.len());
		for elem in m.elems.iter().zip(elem_offsets.iter()) {
			let (elem, offset) = elem;

			for i in 0..elem.init.len() {
				let funcidx = elem.init[i] as usize;
				let funcaddr = mi.func_addrs[funcidx];
				self.store.tables[mi.table_addrs[elem.index as usize]].elem[*offset + i] = Some(funcaddr);
			}
		}

		// Memories allocation
		for mem in m.memories {
			let min = mem.type_.limits.min;
			let max = mem.type_.limits.max;

			mi.mem_addrs.push(self.store.mems.len());
			self.store.mems.push(
				MemInst {
					data: vec![0; (min as usize) * PAGE_SIZE],
					max: max,
				}
			);
			types_map.insert(embedding::TypeKey { extern_val: ExternVal::Memory(self.store.mems.len() - 1) },
							 types::Extern::Memory(mem.type_.clone()));
		}

		// 16. For each data segment datai in module.data, do:
		// ...
		// Intuition: memories initialization with data segments
		assert_eq!(m.data.len(), data_offsets.len());
		for data in m.data.iter().zip(data_offsets.iter()) {
			let (data, offset) = data;

			for i in 0..data.init.len() {
				self.store.mems[mi.mem_addrs[data.index as usize]].data[*offset + i] = data.init[i];
			}
		}

		// Globals allocation
		assert_eq!(m.globals.len(), vals.len());
		let mut i = 0;
		for global in m.globals {
			mi.global_addrs.push(self.store.globals.len());
			self.store.globals.push(
				GlobalInst {
					value: vals[i],
					mutable: global.type_.mutable,
				}
			);
			types_map.insert(embedding::TypeKey { extern_val: ExternVal::Global(self.store.globals.len() - 1) },
							 types::Extern::Global(global.type_.clone()));
			i += 1;
		}

		// Only immutable variable can be exported
		for export in &m.exports {
			if let ast::ExportDesc::Global(idx) = export.desc {
				if global_types[idx as usize].mutable {
					return Err(VMError::MutableGlobalExported);
				}
			}
		}

		// 14. For each export exporti in module.exports, do:
		// ...
		for export in m.exports {
			let (extern_type, extern_val) = match export.desc {
				ast::ExportDesc::Func(idx) =>
					(types::Extern::Func(mi.types[idx as usize].clone()), ExternVal::Func(mi.func_addrs[idx as usize])),
				ast::ExportDesc::Table(idx) =>
					(types::Extern::Table(table_types[idx as usize].clone()), ExternVal::Table(mi.table_addrs[idx as usize])),
				ast::ExportDesc::Memory(idx) =>
					(types::Extern::Memory(memory_types[idx as usize].clone()), ExternVal::Memory(mi.mem_addrs[idx as usize])),
				ast::ExportDesc::Global(idx) =>
					(types::Extern::Global(global_types[idx as usize].clone()), ExternVal::Global(mi.global_addrs[idx as usize])),
			};
			mi.exports.push(ExportInst {
				name: export.name,
				value: extern_val,
			});
		}

		// 2. put the FuncInst (which have a ref to ModuleInst) into the store
		let inst = Rc::new(mi);
		for func in m.funcs {
			let type_ = &inst.types[func.type_index as usize];
			self.store.funcs.push(
				FuncInst::Module(
					ModuleFuncInst {
						type_: type_.clone(),
						module: Rc::clone(&inst),
						code: func,
					}
				)
			);
			types_map.insert(embedding::TypeKey { extern_val: ExternVal::Func(self.store.funcs.len() - 1) },
							 types::Extern::Func(type_.clone()));
		}

		// 17. If the start function module.start is not empty, then:
		// ...
		// Intuition: call the start function if it exists
		if let Some(idx) = m.start {
			let mut start_int = Interpreter::new();
			let mut sframe = StackFrames::new();
			sframe.push(inst.clone(), 0);
			let func_addr = inst.func_addrs[idx as usize];
			let res = match &self.store.funcs[func_addr] {
				&FuncInst::Module(ref f) => interpreter_eval_func!(&mut start_int, &mut sframe, self, f.code),
				_ => unreachable!(),
			};

			if let Err(_) = res {
				return Err(VMError::StartFunctionFailed)
			}
		}

		Ok(inst)
	}

	/// Check if l1 matches l2 according to import matching rule on limits
	fn match_limits(l1: &types::Limits, l2: &types::Limits) -> bool {
		l1.min >= l2.min && (l2.max.is_none() || (l1.max.is_some() && l1.max.unwrap() <= l2.max.unwrap()))
	}
}

#[cfg(test)]
mod tests {
	use super::*;
	use ast::*;
	use embedding::TypeHashMap;

	#[test]
	fn elem_size_error() {
		let mut v = VM::new();
		let mut m = Module::empty();

		m.types.push(types::Func { args: Vec::new(), result: Vec::new() });
		for _ in 0..6 {
			m.funcs.push(ast::Func {
				type_index: 0,
				locals: Vec::new(),
				body: vec![
				],
			});
		}
		m.tables.push(ast::Table {
			type_: types::Table { limits: types::Limits { min: 5, max: None }, elem: types::Elem::AnyFunc },
		});

		m.elems.push(ast::Segment::<ast::Index> {
			index: 0,
			offset: vec![
				Instr::Const(values::Value::I32(3)),
			],
			init: vec![3, 4, 5],
		});
		assert_eq!(v.instantiate_module(m, &[], &mut TypeHashMap::new()).err(), Some(VMError::ElemOffsetTooLarge(0)));
	}

	#[test]
	fn data_size_error() {
		let mut v = VM::new();
		let mut m = Module::empty();

		m.memories.push(ast::Memory {
			type_: types::Memory { limits: types::Limits { min: 1, max: None } },
		});

		m.data.push(ast::Segment::<u8> {
			index: 0,
			offset: vec![
				Instr::Const(values::Value::I32((PAGE_SIZE as u32) - 2)),
			],
			init: vec![3, 4, 5],
		});
		assert_eq!(v.instantiate_module(m, &[], &mut TypeHashMap::new()).err(), Some(VMError::DataOffsetTooLarge(0)));
	}

	#[test]
	fn memory_init_other_module() {
		let mut v = VM::new();

		let mut m1 = Module::empty();
		m1.memories.push(ast::Memory {
			type_: types::Memory {
				limits: types::Limits { min: 1, max: None }
			},
		});
		m1.exports.push(ast::Export { name: String::from("mem"), desc: ast::ExportDesc::Memory(0) });
		let mut t = TypeHashMap::new();
		t.insert(embedding::TypeKey { extern_val: ExternVal::Memory(0) },
				 types::Extern::Memory(types::Memory { limits: types::Limits { min: 1, max: None } }));

		let m1b = v.instantiate_module(m1, &[], &mut t);
		assert!(m1b.is_ok());

		let mut m2 = Module::empty();
		m2.imports.push(ast::Import {
			module: String::from(""),
			name: String::from("mem"),
			desc: ast::ImportDesc::Memory(
				types::Memory {
					limits: types::Limits { min: 1, max: None }
				}
			),
		});
		m2.data.push(ast::Segment::<u8> {
			index: 0,
			offset: vec![
				Instr::Const(values::Value::I32(PAGE_SIZE as u32 - 1)),
			],
			init: vec![3, 4, 5],
		});
		assert_eq!(v.instantiate_module(m2, &vec![ExternVal::Memory(0)], &mut t).err(), Some(VMError::DataOffsetTooLarge(0)));
	}
}

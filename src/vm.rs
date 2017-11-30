use std::fs::File;
use std::io;
use std::rc::Rc;
use std::collections::HashMap;

use ast;
use binary;
use types;
use values;
use interpreter::Interpreter;

type Addr = usize;
type FuncAddr = Addr;
type TableAddr = Addr;
type MemAddr = Addr;
type GlobalAddr = Addr;

#[derive(Clone, Copy, PartialEq, Debug)]
pub enum ExternVal {
	Func(FuncAddr),
	Table(TableAddr),
	Memory(MemAddr),
	Global(GlobalAddr),
}

struct ExportInst {
	name: String,
	value: ExternVal,
}

pub struct ModuleInst {
	types: Vec<types::Func>,
	func_addrs: Vec<FuncAddr>,
	table_addrs: Vec<TableAddr>,
	mem_addrs: Vec<MemAddr>,
	global_addrs: Vec<GlobalAddr>,
	exports: Vec<ExportInst>,
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
	type_: types::Func,
	hostcode: HostFunc,
}

pub struct ModuleFuncInst {
	type_: types::Func,
	module: Rc<ModuleInst>,
	code: ast::Func,
}

pub enum FuncInst {
	Module(ModuleFuncInst),
	Host(HostFuncInst),
}

type FuncElem = Option<FuncAddr>;

pub struct TableInst {
	elem: Vec<FuncElem>,
	max: Option<u32>,
}

const PAGE_SIZE: usize = 65536;

pub struct MemInst {
	data: Vec<u8>,
	max: Option<u32>,
}

pub struct GlobalInst {
	value: values::Value,
	mutable: bool,
}

// TODO: refactor pub visibility usign pub(crate)
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

/// Exports are stored inside a global registry
#[derive(Eq, PartialEq, Hash)]
struct HashKey {
	module: String,
	name: String,
}

struct HashValue {
	type_: types::Extern,
	value: ExternVal,
}

/// A struct storing the state of the virtual machine
pub struct VM {
	registry: HashMap<HashKey, HashValue>,
	pub store: Store
}

#[derive(Debug, PartialEq)]
pub enum VMError {
	ModuleInvalid,
	UnknownImport,
	ImportTypeMismatch,
	ElemOffsetTooLarge(usize),
	DataOffsetTooLarge(usize),
	StartFunctionFailed,
}

impl VM {

	/// Make a new VM context
	///
	/// # Examples
	///
	/// ```ignore
	/// use rust_wasm::vm::VM;
	///
	/// let v = VM::new();
	/// assert_eq!(v.extern_val.len(), 0)
	/// ```
	pub fn new() -> VM {
		VM {
			registry: HashMap::new(),
			store: Store::new(),
		}
	}

	/// Generate the ast::Module for a given file
	///
	/// # Examples
	/// ```
	/// use rust_wasm::vm::VM;
	/// use rust_wasm::ast;
	///
	/// let v = VM::new();
	/// let m = v.parse("test-wasms/simple.wasm").unwrap();
	/// assert!(true);
	/// ```
	pub fn parse(&self, filename: &str) -> Result<ast::Module, binary::DecodeError> {
		let f = File::open(filename)?;
		binary::decode(io::BufReader::new(f))
	}

	/// Instantiate a new module inside the VM context
	///
	/// Note: the ownership of the module is transfered to the VM.
	///
	/// # Examples
	///
	/// ```ignore
	/// use rust_wasm::vm::VM;
	/// use rust_wasm::ast;
	///
	/// let v = VM::new();
	/// let m = Module::empty();
	///
	/// v.instantiate_module(m).unwrap();
	/// assert_eq!(v.modules.extern_val.len(), 1)
	/// ```
	pub fn instantiate_module(&mut self, m: ast::Module) -> Result<Rc<ModuleInst>, VMError> {
		// 1. If module is not valid, then: Fail
		if !m.is_valid() {
			return Err(VMError::ModuleInvalid)
		}

		// 2. Assert: module is valid with external types externtype^{m}_{im} classifying its import
		// 3. If the number m of imports is not equal to the number n of provided external values, then: Fail
		// 4. For each external value externval_i in externval^n and external
		// type externtype'_i in externtype^{n}_{im}, do:
		// a. Assert: externval_i is valid with external type externtype_i in store S.
		// b. If externtype_i does not match externtype'_i, then: Fail
		//
		// Intuition: resolve imports by module name & fct name, check their types
		// TODO: handle more than one module name
		// TODO: move extern export/import retrieval outside VM, and provide helpers for users to manage this
		let mut extern_vals = Vec::new();
		{
			for import in &m.imports {
				let type_match = match self.registry.get(&HashKey { name: import.name.clone(), module: import.module.clone() }) {
					Some(&HashValue { ref type_, value }) => {
						extern_vals.push(value);
						match (type_, &import.desc) {
							(&types::Extern::Func(ref exported_type), &ast::ImportDesc::Func(idx)) =>
								exported_type == &m.types[idx as usize],
							(&types::Extern::Table(ref exported_type), &ast::ImportDesc::Table(ref imported_type)) =>
								exported_type.elem == imported_type.elem && Self::match_limits(&imported_type.limits, &exported_type.limits),
							(&types::Extern::Memory(ref exported_type), &ast::ImportDesc::Memory(ref imported_type)) =>
								Self::match_limits(&imported_type.limits, &exported_type.limits),
							(&types::Extern::Global(ref exported_type), &ast::ImportDesc::Global(ref imported_type)) =>
								exported_type == imported_type,
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
		// TODO: setup the frame with a "fake" ModuleInst with its imported global variable found
		// TODO: require Frame support

		// Create an interpret for const evaluation
		let mut const_int = Interpreter::new();

		// 8. Let globalidx_{new} be the global index that corresponds to the
		// number of global imports in module.imports (i.e., the index of the
		// first non-imported global).
		// 9. For each global globali in module.globals, do:
		// ...
		// Note: we only compute vals here, we will create the GlobalInstance when we allocate globals
		let vals = m.globals.iter().map(|g| {
			interpreter_eval_expr_const!(&mut const_int, self, &g.value).unwrap()
		}).collect();

		// 10. For each element segment elemi in module.elem, do:
		// ...
		// Intuition: check if the module does not try to init too many elements
		// TODO: check if a module can init the elements of an imported
		// table. If yes, than we should use the size of the imported tables
		// instead of the number of elements declared inside the module
		let mut i = 0;
		let mut elem_offsets = Vec::new();
		for elem in m.elems.iter() {
			let offset = match interpreter_eval_expr_const!(&mut const_int, self, &elem.offset).unwrap() {
				values::Value::I32(c) => c as usize,
				_ => unreachable!(),
			};
			elem_offsets.push(offset);
			// We will allocate limits.min empty elements when allocating the table
			if offset + elem.init.len() > (m.tables[elem.index as usize].type_.limits.min as usize) {
				return Err(VMError::ElemOffsetTooLarge(i));
			}
			i += 1;
		}

		// 11. For each data segment datai in module.data, do:
		// ...
		// Intuition: check if the module does not try to init too much memory
		let mut i = 0;
		let mut data_offsets = Vec::new();
		for data in m.data.iter() {
			let offset = match interpreter_eval_expr_const!(&mut const_int, self, &data.offset).unwrap() {
				values::Value::I32(c) => c as usize,
				_ => unreachable!(),
			};
			data_offsets.push(offset);
			// We will allocate limits.min empty data when allocating the table
			if offset + data.init.len() > ((m.memories[data.index as usize].type_.limits.min as usize) * PAGE_SIZE) {
				return Err(VMError::DataOffsetTooLarge(i));
			}
			i += 1;
		}

		// 14. Let moduleinst be a new module instance allocated from module in
		// store S with imports externval∗ and glboal initializer values val∗.
		// Note: module tables/data/globals initializations are performed in the
		// following function
		self.allocate_and_init_module(m, extern_vals, vals, elem_offsets, data_offsets)
	}

	fn allocate_and_init_module(&mut self, m: ast::Module, extern_vals: Vec<ExternVal>, vals: Vec<values::Value>, elem_offsets: Vec<usize>, data_offsets: Vec<usize>) -> Result<Rc<ModuleInst>, VMError> {
		// Two passes algorithms
		// 1. do all modifications on the ModuleInst in a single scope
		let mut mi = ModuleInst::new();

		// Types copying
		mi.types = m.types;

		// Also copy types of globals/memories/tables, we will need later for exported external var
		let table_types: Vec<types::Table> = m.tables.iter().map(|t| { t.type_.clone() }).collect();
		let memory_types: Vec<types::Memory> = m.memories.iter().map(|t| { t.type_.clone() }).collect();
		let global_types: Vec<types::Global> = m.globals.iter().map(|t| { t.type_.clone() }).collect();

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
			mi.global_addrs.push(self.store.tables.len());
			// TODO: do we need to check if types(vals[i]) == global.type_.type? Or is it part of the validation?
			self.store.globals.push(
				GlobalInst {
					value: vals[i],
					mutable: global.type_.mutable,
				}
			);
			i += 1;
		}

		// Alloc steps 10-13
		for val in extern_vals {
			match val {
				ExternVal::Func(addr) => mi.func_addrs.push(addr),
				ExternVal::Table(addr) => mi.table_addrs.push(addr),
				ExternVal::Memory(addr) => mi.mem_addrs.push(addr),
				ExternVal::Global(addr) => mi.global_addrs.push(addr),
			}
		}

		// 14. For each export exporti in module.exports, do:
		// ...
		// Intuition: put all exports inside the registry, allowing them to be re-used later
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
			// TODO: handle module name / change the registry using the returned
			// ModuleInst? (is this up to the embedder?)
			self.registry.insert(HashKey { module: String::from(""), name: export.name.clone() },
								 HashValue { type_: extern_type, value: extern_val });
			mi.exports.push(ExportInst {
				name: export.name,
				value: extern_val,
			});
		}

		// 2. put the FuncInst (which have a ref to ModuleInst) into the store
		let inst = Rc::new(mi);
		for func in m.funcs {
			self.store.funcs.push(
				FuncInst::Module(
					ModuleFuncInst {
						type_: inst.types[func.type_index as usize].clone(),
						module: Rc::clone(&inst),
						code: func,
					}
				)
			)
		}

		// 17. If the start function module.start is not empty, then:
		// ...
		// Intuition: call the start function if it exists
		if let Some(idx) = m.start {
			let mut start_int = Interpreter::new();
			let func_addr = inst.func_addrs[idx as usize];
			let res = match &self.store.funcs[func_addr] {
				&FuncInst::Module(ref f) => interpreter_eval_func!(&mut start_int, self, f.code),
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

	#[test]
	fn simple() {
		let mut v = VM::new();
		let m = v.parse("test-wasms/simple.wasm").unwrap();
		let mib = v.instantiate_module(m).unwrap();

		assert_eq!(mib.types.len(), 1);
		assert_eq!(mib.types[0], types::Func { args: Vec::new(), result: vec![types::Value::Int(types::Int::I32)] });
		assert_eq!(mib.func_addrs.len(), 1);
		assert_eq!(mib.mem_addrs.len(), 1);
		assert_eq!(v.store.mems[mib.mem_addrs[0]].data.len(), PAGE_SIZE);
		assert_eq!(v.store.mems[mib.mem_addrs[0]].max, None);
		assert_eq!(mib.table_addrs.len(), 1);
		assert_eq!(v.store.tables[mib.table_addrs[0]].elem.len(), 0);
		assert_eq!(v.store.tables[mib.table_addrs[0]].max, None);

		let exported_mem = v.registry.get(&HashKey { module: String::from(""), name: String::from("memory") }).unwrap();
		let (exported_mem_type, exported_mem_value) = (&exported_mem.type_, &exported_mem.value);
		assert_eq!(exported_mem_value, &ExternVal::Memory(mib.mem_addrs[0]));
		match exported_mem_type {
			&types::Extern::Memory(types::Memory { limits: types::Limits { min, max } }) => {
				assert_eq!(min, 1);
				assert_eq!(max, None);
			},
			_ => panic!("Exported type for memory is not types::Extern::Memory"),
		};


		let exported_func = v.registry.get(&HashKey { module: String::from(""), name: String::from("main") }).unwrap();
		let (exported_func_type, exported_func_value) = (&exported_func.type_, &exported_func.value);
		assert_eq!(exported_func_value, &ExternVal::Func(mib.func_addrs[0]));
		match exported_func_type {
			&types::Extern::Func(ref f) => assert_eq!(f, &types::Func { args: Vec::new(), result: vec![types::Value::Int(types::Int::I32)] }),
			_ => panic!("Exported type for main is not types::Extern::Func"),
		};
	}

	#[test]
	fn global_const() {
		let mut v = VM::new();
		let mut m = Module::empty();
		m.globals.push(ast::Global {
			type_: types::Global { value: types::Value::Int(types::Int::I32), mutable: false },
			value: vec![
				InstrConst::Const(values::Value::I32(41)),
				InstrConst::Const(values::Value::I32(42)),
			],
		});
		let mib = v.instantiate_module(m).unwrap();
		assert_eq!(v.store.globals.len(), 1);
		assert_eq!(v.store.globals[mib.global_addrs[0]].value, values::Value::I32(42));
	}

	#[test]
	fn global_get_global() {
		let mut v = VM::new();
		let mut m = Module::empty();

		m.globals.push(ast::Global {
			type_: types::Global { value: types::Value::Int(types::Int::I32), mutable: false },
			value: vec![
				InstrConst::Const(values::Value::I32(42)),
			],
		});

		m.globals.push(ast::Global {
			type_: types::Global { value: types::Value::Int(types::Int::I32), mutable: false },
			value: vec![
				InstrConst::GetGlobal(0),
			],
		});
		let mib = v.instantiate_module(m).unwrap();
		assert_eq!(v.store.globals.len(), 2);
		assert_eq!(v.store.globals[mib.global_addrs[0]].value, values::Value::I32(42));
	}

	#[test]
	fn elem_size_error() {
		let mut v = VM::new();
		let mut m = Module::empty();

		m.tables.push(ast::Table {
			type_: types::Table { limits: types::Limits { min: 5, max: None }, elem: types::Elem::AnyFunc },
		});

		m.elems.push(ast::Segment::<ast::Index> {
			index: 0,
			offset: vec![
				InstrConst::Const(values::Value::I32(3)),
			],
			init: vec![3, 4, 5],
		});
		assert_eq!(v.instantiate_module(m).err(), Some(VMError::ElemOffsetTooLarge(0)));
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
				InstrConst::Const(values::Value::I32((PAGE_SIZE as u32) - 2)),
			],
			init: vec![3, 4, 5],
		});
		assert_eq!(v.instantiate_module(m).err(), Some(VMError::DataOffsetTooLarge(0)));
	}

	#[test]
	fn init_data() {
		let mut v = VM::new();
		let mut m = Module::empty();

		m.memories.push(ast::Memory {
			type_: types::Memory { limits: types::Limits { min: 1, max: None } },
		});

		m.data.push(ast::Segment::<u8> {
			index: 0,
			offset: vec![
				InstrConst::Const(values::Value::I32((PAGE_SIZE as u32) - 4)),
			],
			init: vec![3, 4, 5],
		});

		let mut check = vec![0; PAGE_SIZE - 4];
		check.extend(vec![3, 4, 5]);
		check.extend(vec![0]);

		assert!(v.instantiate_module(m).is_ok());
		assert_eq!(v.store.mems[0].data, check);
	}

	#[test]
	fn init_table() {
		let mut v = VM::new();
		let mut m = Module::empty();

		// Allocate "fake" FuncInst inside the store to see funcaddrs != funcidx
		let len_shift = 5;
		for i in 0..len_shift {
			v.store.funcs.push(FuncInst::Host(HostFuncInst {
				type_: types::Func { args: Vec::new(), result: Vec::new() },
				hostcode: (),
			}));
		}

		m.tables.push(ast::Table {
			type_: types::Table { limits: types::Limits { min: 5, max: None }, elem: types::Elem::AnyFunc },
		});

		m.types.push(types::Func { args: Vec::new(), result: Vec::new() });

		for _ in 0..42 {
			m.funcs.push(ast::Func {
				type_index: 0,
				locals: Vec::new(),
				body: Vec::new(),
			});
		}

		m.elems.push(ast::Segment::<Index> {
			index: 0,
			offset: vec![
				InstrConst::Const(values::Value::I32(1)),
			],
			init: vec![15, 16, 17],
		});

		let check = vec![None,
						 Some(len_shift + 15),
						 Some(len_shift + 16),
						 Some(len_shift + 17),
						 None];
		assert!(v.instantiate_module(m).is_ok());
		assert_eq!(v.store.tables[0].elem, check);
	}

	#[test]
	fn start() {
		let mut v = VM::new();
		let mut m = Module::empty();

		m.types.push(types::Func { args: Vec::new(), result: Vec::new() });

		m.funcs.push(ast::Func {
			type_index: 0,
			locals: Vec::new(),
			body: vec![
				Instr::Const(values::Value::I32(42)),
				Instr::SetGlobal(0)
			],
		});

		m.start = Some(0);
		assert!(v.instantiate_module(m).is_ok());
		assert_eq!(v.store.globals[0].value, values::Value::I32(42));
	}

	#[test]
	fn import() {
		let mut v = VM::new();
		let mut m1 = Module::empty();

		m1.types.push(types::Func { args: Vec::new(), result: Vec::new() });
		m1.funcs.push(ast::Func {
			type_index: 0,
			locals: Vec::new(),
			body: vec![
				Instr::Const(values::Value::I32(42)),
				Instr::SetGlobal(0)
			],
		});
		m1.exports.push(ast::Export { name: String::from("wasm"), desc: ast::ExportDesc::Func(0) });
		let m1b = v.instantiate_module(m1);
		assert!(m1b.is_ok());

		let mut m2 = Module::empty();
		m2.types.push(types::Func { args: Vec::new(), result: Vec::new() });
		m2.imports.push(ast::Import {
			module: String::from(""),
			name: String::from("wasm"),
			desc: ast::ImportDesc::Func(0),
		});
		let m2b = v.instantiate_module(m2);
		assert!(m2b.is_ok());

		let mut m3 = Module::empty();
		m3.types.push(types::Func { args: Vec::new(), result: Vec::new() });
		m3.imports.push(ast::Import {
			module: String::from(""),
			name: String::from("unknown"),
			desc: ast::ImportDesc::Func(0),
		});
		let m3b = v.instantiate_module(m3);
		assert_eq!(m3b.err(), Some(VMError::UnknownImport));

		let mut m4 = Module::empty();
		m4.types.push(types::Func { args: Vec::new(), result: vec![types::Value::Int(types::Int::I32)] });
		m4.imports.push(ast::Import {
			module: String::from(""),
			name: String::from("wasm"),
			desc: ast::ImportDesc::Func(0),
		});
		let m4b = v.instantiate_module(m4);
		assert_eq!(m4b.err(), Some(VMError::ImportTypeMismatch));
	}


	#[test]
	fn export_addr() {
		let mut v = VM::new();
		let mut m1 = Module::empty();

		let first_type = types::Func { args: Vec::new(), result: Vec::new() };
		let second_type = types::Func { args: Vec::new(), result: vec![types::Value::Int(types::Int::I32)] };

		m1.types.push(first_type.clone());
		m1.funcs.push(ast::Func {
			type_index: 0,
			locals: Vec::new(),
			body: vec![
				Instr::Const(values::Value::I32(42)),
				Instr::SetGlobal(0)
			],
		});
		m1.exports.push(ast::Export { name: String::from("wasm"), desc: ast::ExportDesc::Func(0) });
		let m1b = v.instantiate_module(m1);
		assert!(m1b.is_ok());

		let mut m2 = Module::empty();
		m2.types.push(first_type.clone());
		m2.types.push(second_type.clone());
		m2.imports.push(ast::Import {
			module: String::from(""),
			name: String::from("wasm"),
			desc: ast::ImportDesc::Func(0),
		});
		m2.funcs.push(ast::Func {
			type_index: 1,
			locals: Vec::new(),
			body: vec![
				Instr::Const(values::Value::I32(42)),
				Instr::SetGlobal(0)
			],
		});
		let m2b = v.instantiate_module(m2);
		assert!(m2b.is_ok());

		let m2b = m2b.unwrap();
		if let FuncInst::Module(ref f) = v.store.funcs[m2b.func_addrs[0]] {
			assert_eq!(f.type_, second_type);
		} else {
			panic!("First function (local function) is not of type FuncInst::Module.");
		}
		if let FuncInst::Module(ref f) = v.store.funcs[m2b.func_addrs[1]] {
			assert_eq!(f.type_, first_type);
		} else {
			panic!("Second function (imported function) is not of type FuncInst::Module.");
		}
	}
}

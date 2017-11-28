use std::fs::File;
use std::io;
use std::rc::Rc;


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

struct HostFuncInst {
	type_: types::Func,
	hostcode: HostFunc,
}

struct ModuleFuncInst {
	type_: types::Func,
	module: Rc<ModuleInst>,
	code: ast::Func,
}

enum FuncInst {
	Module(ModuleFuncInst),
	Host(HostFuncInst),
}

type FuncElem = Option<FuncAddr>;

struct TableInst {
	elem: Vec<FuncElem>,
	max: Option<u32>,
}

const PAGE_SIZE: usize = 65536;

struct MemInst {
	data: Vec<u8>,
	max: Option<u32>,
}

struct GlobalInst {
	value: values::Value,
	mutable: bool,
}

struct Store {
	funcs: Vec<FuncInst>,
	tables: Vec<TableInst>,
	mems: Vec<MemInst>,
	globals: Vec<GlobalInst>,
	modules: Vec<ModuleInst>,
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
//	registry: HashMap<ast::Import, ExternVal>,
	store: Store
}

#[derive(Debug, PartialEq)]
pub enum VMError {
	ModuleInvalid,
	ElemOffsetTooLarge(usize),
	DataOffsetTooLarge(usize),
	WrongImportNumber,
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
		// TODO: resolve imports by module name & fct name
		assert_eq!(m.imports.len(), 0);

		// 3. If the number m of imports is not equal to the number n of provided external values, then: Fail
		// TODO: check if all imports has been found

		// 4. For each external value externval_i in externval^n and external
		// type externtype'_i in externtype^{n}_{im}, do:
		// a. Assert: externval_i is valid with external type externtype_i in store S.
		// b. If externtype_i does not match externtype'_i, then: Fail
		// TODO: check that the types of the import found match the types of the requested imports

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
			const_int.evaluate_expr_const(&g.value, &self).unwrap()
		}).collect();

		// 10. For each element segment elemi in module.elem, do:
		// ...
		// Intuition: check if the module does not try to init too many elements
		// TODO: check if a module can init the elements of an imported
		// table. If yes, than we should use the size of the imported tables
		// instead of the number of elements declared inside the module
		let mut i = 0;
		for elem in m.elems.iter() {
			let offset = match const_int.evaluate_expr_const(&elem.offset, &self).unwrap() {
				values::Value::I32(c) => c as usize,
				_ => unreachable!(),
			};
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
		for data in m.data.iter() {
			let offset = match const_int.evaluate_expr_const(&data.offset, &self).unwrap() {
				values::Value::I32(c) => c as usize,
				_ => unreachable!(),
			};
			// We will allocate limits.min empty data when allocating the table
			if offset + data.init.len() > ((m.memories[data.index as usize].type_.limits.min as usize) * PAGE_SIZE) {
				return Err(VMError::DataOffsetTooLarge(i));
			}
			i += 1;
		}
		self.allocate_module(m, vals)
	}

	pub fn allocate_module(&mut self, m: ast::Module, vals: Vec<values::Value>) -> Result<Rc<ModuleInst>, VMError> {
		// Two passes algorithms
		// 1. do all modifications on the ModuleInst in a single scope
		let mut mi = ModuleInst::new();

		// Types copying
		mi.types = m.types;

		// Functions allocation
		// Only allocate indices, pushing to the store outside the mutable scope
		let fsi_min = self.store.funcs.len();
		let fsi_max = fsi_min + m.funcs.len();
		mi.func_addrs.extend(fsi_min..fsi_max);

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

		Ok(inst)
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
}

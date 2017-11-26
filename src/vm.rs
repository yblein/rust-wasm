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

#[derive(Debug)]
pub enum VMError {
	ModuleInvalid,
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
		if !m.is_valid() {
			return Err(VMError::ModuleInvalid)
		}

		// TODO: Resolve imports
		assert_eq!(m.imports.len(), 0);

		// TODO: Match required imported types with resolved types

		// Evaluate global expr
		let val = m.globals.iter().map(|g| {
			// g.value is a constant expression, so for now we span a new
			// useless VM for it
			// TODO: support GetGlobal
			Interpreter::new(VM::new()).evaluate_global_expr(&g.value).unwrap()
		}).collect();

		self.allocate_module(m, val)
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
				Instr::Const(values::Value::I32(41)),
				Instr::Const(values::Value::I32(42)),
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
				Instr::Const(values::Value::I32(42)),
			],
		});

		m.globals.push(ast::Global {
			type_: types::Global { value: types::Value::Int(types::Int::I32), mutable: false },
			value: vec![
				Instr::GetGlobal(0),
				Instr::Const(values::Value::I32(41)),
				Instr::Const(values::Value::I32(42)),
			],
		});
		let mib = v.instantiate_module(m).unwrap();
		assert_eq!(v.store.globals.len(), 1);
		assert_eq!(v.store.globals[mib.global_addrs[0]].value, values::Value::I32(42));
	}
}

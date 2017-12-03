/// Provides the public Embedding interface
/// Note: the API does not take a Store and returns the new Store as stated in
/// the spec but takes a (possibly mutable) reference when needed
use vm;
use ast;
use valid;
use types;
use values;
use binary;
use interpreter;

use std::rc::Rc;
use std::io::Cursor;
use std::collections::HashMap;

#[derive(PartialEq, Eq, Hash)]
pub struct TypeKey {
	pub extern_val: vm::ExternVal,
}

pub type TypeHashMap = HashMap<TypeKey, types::Extern>;

// We export opaque types to the user
pub struct Store {
	vm: vm::VM,
	types_map: TypeHashMap,
}

pub struct ModuleInst {
	inst: Rc<vm::ModuleInst>
}

pub struct ExternVal {
	val: vm::ExternVal,
}

pub type HostCode = ();
pub type FuncAddr = vm::FuncAddr;
pub type TableAddr = vm::TableAddr;
pub type MemAddr = vm::MemAddr;
pub type GlobalAddr = vm::GlobalAddr;

pub enum Error {
	DecodeModuleFailed,
	NotEnoughArgument,
	ArgumentTypeMismatch,
	CodeTrapped,
	InvalidModule,
	InvalidTableRead,
	InvalidTableWrite,
	InvalidMemoryRead,
	InvalidMemoryWrite,
	GlobalImmutable,
}

/// Return the empty store
pub fn init_store() -> Store {
	Store {
		vm: vm::VM::new(),
		types_map: HashMap::new(),
	}
}

/// Decode a binary module
pub fn decode_module(bytes: &[u8]) -> Result<ast::Module, Error> {
	binary::decode(Cursor::new(bytes)).map_err(|_| Error::DecodeModuleFailed)
}

/// Parse a S-Expr module
pub fn parse_module(codepoint: &str) -> Result<ast::Module, Error> {
	unimplemented!();
}

/// Validate a module
pub fn validate_module(module: &ast::Module) -> Option<Error> {
	if valid::is_valid(module) {
		None
	} else {
		Some(Error::InvalidModule)
	}
}

/// Instantiate a module
pub fn instantiate_module(store: &mut Store, module: ast::Module, extern_val: &[ExternVal]) -> Result<ModuleInst, Error> {
	unimplemented!();
}

/// List module imports with their types
pub fn module_imports(module: &ast::Module) -> (&str, &str, &[types::Extern]) {
	unimplemented!();
}

/// List module exports with their types
pub fn module_exports(module: &ast::Module) -> (&str, &[types::Extern]) {
	unimplemented!();
}

/// Get an externval value according to the exported name
pub fn get_export(inst: &ModuleInst, name: &str) -> Result<ExternVal, Error> {
	unimplemented!();
}

/// Allocate a host function
pub fn alloc_func(store: &mut Store, functype: &types::Func, hostfunc: &HostCode) -> FuncAddr {
	unimplemented!();
}

/// Get the type of a function
pub fn type_func(store: &Store, funcaddr: FuncAddr) -> types::Func {
	assert!(store.vm.store.funcs.get(funcaddr).is_some());
	match store.types_map.get(&TypeKey { extern_val: vm::ExternVal::Func(funcaddr) }) {
		Some(&types::Extern::Func(ref type_)) => type_.clone(),
		_ => unreachable!(),
	}
}

/// Invoke a function
pub fn invoke_func(store: &mut Store, funcaddr: FuncAddr, args: Vec<values::Value>) -> Result<Vec<values::Value>, Error> {
	assert!(store.vm.store.funcs.get(funcaddr).is_some());
	let funcinst = &store.vm.store.funcs[funcaddr];
	let funcinst = match funcinst {
		&vm::FuncInst::Module(ref f) => f,
		&vm::FuncInst::Host(ref f) => unimplemented!(),
	};
	let functype = &funcinst.type_;

	if functype.args.len() != args.len() {
		return Err(Error::NotEnoughArgument);
	}

	for types in functype.args.iter().zip(args.iter()) {
		use values::Value;
		use types as Tv;

		// TODO: find a better way to do this
		match types {
			(&Tv::Value::Int(Tv::Int::I32), &Value::I32(_)) => (),
			(&Tv::Value::Int(Tv::Int::I64), &Value::I64(_)) => (),
			(&Tv::Value::Float(Tv::Float::F32), &Value::F32(_)) => (),
			(&Tv::Value::Float(Tv::Float::F64), &Value::F64(_)) => (),
			_ => return Err(Error::ArgumentTypeMismatch),
		}
	}

	let mut int = interpreter::Interpreter::new();
	let mut sframe = interpreter::StackFrames::new();
	sframe.push(funcinst.module.clone(), 0);

	for arg in args {
		int.stack.push(arg);
	}

	for valtype in &funcinst.code.locals {
		use types::*;
		int.stack.push(
			// TODO: refactor
			match valtype {
				&Value::Int(Int::I32) => values::Value::I32(0),
				&Value::Int(Int::I64) => values::Value::I64(0),
				&Value::Float(Float::F32) => values::Value::F32(0.0),
				&Value::Float(Float::F64) => values::Value::F64(0.0),
			}
		);
	}

	let res = {
		use vm::{FuncInst, TableInst, MemInst, GlobalInst};
		interpreter_eval_func!(&mut int, &mut sframe, store.vm, funcinst.code)
	};

	if let Err(_) = res {
		Err(Error::CodeTrapped)
	} else {
		Ok(int.stack)
	}
}

/// Allocate a table
pub fn alloc_table(store: &mut Store, tabletype: &types::Table) -> TableAddr {
	let min = tabletype.limits.min;
	let max = tabletype.limits.max;

	store.vm.store.tables.push(
		vm::TableInst {
			elem: vec![None; min as usize],
			max: max,
		}
	);
	let addr = store.vm.store.tables.len() - 1;
	store.types_map.insert(TypeKey { extern_val: vm::ExternVal::Table(addr) }, types::Extern::Table(tabletype.clone()));
	addr
}

/// Get the type of a table
pub fn type_table(store: &Store, tableaddr: TableAddr) -> types::Table {
	assert!(store.vm.store.tables.get(tableaddr).is_some());
	match store.types_map.get(&TypeKey { extern_val: vm::ExternVal::Table(tableaddr) }) {
		Some(&types::Extern::Table(ref type_)) => type_.clone(),
		_ => unreachable!(),
	}
}

/// Read the content of a table at a given address
pub fn read_table(store: &Store, tableaddr: TableAddr, addr: usize) -> Result<Option<FuncAddr>, Error> {
	assert!(store.vm.store.tables.get(tableaddr).is_some());
	let ti = &store.vm.store.tables[tableaddr];
	if addr >= ti.elem.len() {
		Err(Error::InvalidTableRead)
	} else {
		Ok(ti.elem[addr])
	}
}

/// Write AnyFunc to a specific table at a given address
pub fn write_table(store: &mut Store, tableaddr: TableAddr, addr: usize, funcaddr: Option<FuncAddr>) -> Option<Error> {
	assert!(store.vm.store.tables.get(tableaddr).is_some());
	let mut ti = &mut store.vm.store.tables[tableaddr];
	if addr >= ti.elem.len() {
		Some(Error::InvalidTableWrite)
	} else {
		ti.elem[addr] = funcaddr;
		None
	}
}

/// Get the size of a table
pub fn size_table(store: &Store, tableaddr: TableAddr) -> usize {
	assert!(store.vm.store.tables.get(tableaddr).is_some());
	store.vm.store.tables[tableaddr].elem.len()
}

/// Grow a table by new elements
pub fn grow_table(store: &mut Store, tableaddr: TableAddr, new: usize) -> Option<Error> {
	assert!(store.vm.store.tables.get(tableaddr).is_some());
	let mut table = &mut store.vm.store.tables[tableaddr].elem;
	let sz = table.len();
	table.resize(sz + new, None);
	None
}

/// Allocate a memory
pub fn alloc_mem(store: &mut Store, memtype: &types::Memory) -> MemAddr {
	let min = memtype.limits.min;
	let max = memtype.limits.max;

	store.vm.store.mems.push(
		vm::MemInst {
			data: vec![0; (min as usize) * vm::PAGE_SIZE],
			max: max,
		}
	);
	let addr = store.vm.store.mems.len() - 1;
	store.types_map.insert(TypeKey { extern_val: vm::ExternVal::Memory(addr) }, types::Extern::Memory(memtype.clone()));
	addr
}

/// Get the type of a memory
pub fn type_mem(store: &Store, memaddr: MemAddr) -> types::Memory {
	assert!(store.vm.store.mems.get(memaddr).is_some());
	match store.types_map.get(&TypeKey { extern_val: vm::ExternVal::Memory(memaddr) }) {
		Some(&types::Extern::Memory(ref type_)) => type_.clone(),
		_ => unreachable!(),
	}
}

/// Read a byte of a memory at a given address
pub fn read_mem(store: &Store, memaddr: MemAddr, addr: usize) -> Result<u8, Error> {
	assert!(store.vm.store.mems.get(memaddr).is_some());
	let mi = &store.vm.store.mems[memaddr];
	if addr >= mi.data.len() {
		Err(Error::InvalidMemoryRead)
	} else {
		Ok(mi.data[addr])
	}
}

/// Write a byte to a memory at a given address
pub fn write_mem(store: &mut Store, memaddr: MemAddr, addr: usize, byte: u8) -> Option<Error> {
	assert!(store.vm.store.mems.get(memaddr).is_some());
	let mut mi = &mut store.vm.store.mems[memaddr];
	if addr >= mi.data.len() {
		Some(Error::InvalidMemoryWrite)
	} else {
		mi.data[addr] = byte;
		None
	}
}

/// Get the size of a memory
pub fn size_mem(store: &Store, memaddr: MemAddr) -> usize {
	assert!(store.vm.store.mems.get(memaddr).is_some());
	store.vm.store.mems[memaddr].data.len() / vm::PAGE_SIZE
}

/// Grow a memory by new pages
pub fn grow_mem(store: &mut Store, memaddr: MemAddr, new: usize) {
	assert!(store.vm.store.mems.get(memaddr).is_some());
	let mut mem = &mut store.vm.store.mems[memaddr].data;
	let sz = mem.len() / vm::PAGE_SIZE;
	mem.resize((sz + new) * vm::PAGE_SIZE, 0);
}

/// Allocate a new global
pub fn alloc_global(store: &mut Store, globaltype: types::Global, val: values::Value) -> GlobalAddr {
	store.vm.store.globals.push(
		vm::GlobalInst {
			value: val,
			mutable: globaltype.mutable,
		}
	);
	let addr = store.vm.store.globals.len() - 1;
	store.types_map.insert(TypeKey { extern_val: vm::ExternVal::Global(addr) }, types::Extern::Global(globaltype.clone()));
	addr
}

/// Get the type of a global
pub fn type_global(store: &Store, globaladdr: GlobalAddr) -> types::Global {
	assert!(store.vm.store.globals.get(globaladdr).is_some());
	match store.types_map.get(&TypeKey { extern_val: vm::ExternVal::Global(globaladdr) }) {
		Some(&types::Extern::Global(ref type_)) => type_.clone(),
		_ => unreachable!(),
	}
}

/// Read a global
pub fn read_global(store: &Store, globaladdr: GlobalAddr) -> values::Value {
	assert!(store.vm.store.globals.get(globaladdr).is_some());
	let gi = &store.vm.store.globals[globaladdr];
	gi.value
}

/// Write a global
pub fn write_global(store: &mut Store, globaladdr: GlobalAddr, val: values::Value) -> Option<Error> {
	assert!(store.vm.store.globals.get(globaladdr).is_some());
	let mut gi = &mut store.vm.store.globals[globaladdr];
	if !gi.mutable {
		Some(Error::GlobalImmutable)
	} else {
		gi.value = val;
		None
	}
}

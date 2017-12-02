/// Provides the public Embedding interface
/// Note: the API does not take a Store and returns the new Store as stated in
/// the spec but takes a (possibly mutable) reference when needed
use vm;
use ast;
use valid;
use types;
use values;
use binary;

use std::rc::Rc;
use std::io::Cursor;

// We export opaque types to the user
pub struct Store {
	vm: vm::VM,
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
	InvalidModule,
}

/// Return the empty store
pub fn init_store() -> Store {
	Store {
		vm: vm::VM::new(),
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
	unimplemented!();
}

/// Invoke a function
pub fn invoke_func(store: &mut Store, funcaddr: FuncAddr, args: Vec<values::Value>) -> types::Func {
	unimplemented!();
}

/// Allocate a table
pub fn alloc_table(store: &mut Store, tabletype: &types::Table) -> TableAddr {
	unimplemented!();
}

/// Get the type of a table
pub fn type_table(store: &Store, tableaddr: TableAddr) -> types::Table {
	unimplemented!();
}

/// Read the content of a table at a given address
pub fn read_table(store: &Store, tableaddr: TableAddr, addr: usize) -> types::Table {
	unimplemented!();
}

/// Write AnyFunc to a specific table at a given address
pub fn write_table(store: &mut Store, tableaddr: TableAddr, addr: usize, funcaddr: Option<FuncAddr>) -> Option<Error> {
	unimplemented!();
}

/// Get the size of a table
pub fn size_table(store: &Store, tableaddr: TableAddr) -> usize {
	unimplemented!();
}

/// Grow a table by new elements
pub fn grow_table(store: &mut Store, tableaddr: TableAddr, new: usize) -> Option<Error> {
	unimplemented!();
}

/// Allocate a memory
pub fn alloc_mem(store: &mut Store, memtype: &types::Memory) -> MemAddr {
	unimplemented!();
}

/// Get the type of a memory
pub fn type_mem(store: &Store, memaddr: MemAddr) -> types::Memory {
	unimplemented!();
}

/// Read a byte of a memory at a given address
pub fn read_mem(store: &Store, memaddr: MemAddr, addr: usize) -> u8 {
	unimplemented!();
}

/// Write a byte to a memory at a given address
pub fn write_mem(store: &mut Store, memaddr: MemAddr, addr: usize, byte: u8) -> Option<Error> {
	unimplemented!();
}

/// Get the size of a memory
pub fn size_mem(store: &Store, memaddr: MemAddr) -> usize {
	unimplemented!();
}

/// Grow a memory by new pages
pub fn grow_mem(store: &mut Store, memaddr: MemAddr, new: usize) {
	unimplemented!();
}

/// Allocate a new global
pub fn alloc_global(store: &mut Store, globaltype: types::Global, val: values::Value) -> GlobalAddr {
	unimplemented!();
}

/// Get the type of a global
pub fn type_global(store: &Store, globaladdr: GlobalAddr) -> types::Global {
	unimplemented!();
}

/// Read a global
pub fn read_global(store: &Store, globaladdr: GlobalAddr) -> values::Value {
	unimplemented!();
}

/// Write a global
pub fn write_global(store: &mut Store, globaladdr: GlobalAddr, val: values::Value) -> Option<Error> {
	unimplemented!();
}

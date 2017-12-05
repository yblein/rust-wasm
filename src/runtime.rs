use ast;
use types;
use values;

use std::collections::HashMap;
use std::rc::Rc;

// Use a map for types to answer type_{func, table, memory, global}
#[derive(PartialEq, Eq, Hash)]
pub struct TypeKey {
	pub extern_val: ExternVal,
}

pub type TypeHashMap = HashMap<TypeKey, types::Extern>;

// Instances of a Module/Func/Table/Memory/Global
pub struct ModuleInst {
	pub(crate) types: Vec<types::Func>,
	pub(crate) func_addrs: Vec<FuncAddr>,
	pub(crate) table_addrs: Vec<TableAddr>,
	pub(crate) mem_addrs: Vec<MemAddr>,
	pub(crate) global_addrs: Vec<GlobalAddr>,
	pub(crate) exports: Vec<ExportInst>,
}

pub struct MemInst {
	pub data: Vec<u8>,
	pub max: Option<u32>,
}

pub struct GlobalInst {
	pub value: values::Value,
	pub mutable: bool,
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

pub struct ExportInst {
	pub name: String,
	pub value: ExternVal,
}

// Addrs and extern valus exported to the user
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

pub type HostCode = ();

// Constants
pub const PAGE_SIZE: usize = 65536;

// Traits
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

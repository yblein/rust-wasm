use ast;
use types;
use values;

use std::rc::Rc;
use std::ops::{Index, IndexMut};
use std::collections::HashMap;

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

pub struct FuncInstStore(Vec<FuncInst>);
pub struct MemInstStore(Vec<MemInst>);
pub struct TableInstStore(Vec<TableInst>);
pub struct GlobalInstStore(Vec<GlobalInst>);

// Addrs and extern valus exported to the user
type Addr = usize;
#[derive(Clone, Copy, PartialEq, Eq, Debug, Hash)]
pub struct FuncAddr(Addr);
#[derive(Clone, Copy, PartialEq, Eq, Debug, Hash)]
pub struct TableAddr(Addr);
#[derive(Clone, Copy, PartialEq, Eq, Debug, Hash)]
pub struct MemAddr(Addr);
#[derive(Clone, Copy, PartialEq, Eq, Debug, Hash)]
pub struct GlobalAddr(Addr);

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

pub trait InstStore<S=Self> {
	type InnerType;
	type AddrType;

	fn new() -> Self;
	fn push(&mut self, v: Self::InnerType);
	fn len(&self) -> usize;
	fn contains(&self, addr: Self::AddrType) -> bool;
}

pub trait AddrCtor {
	fn new(addr: Addr) -> Self;
}

macro_rules! impl_inst_store {
	($StoreType:tt, $InnerType:ty, $AddrType:tt) => (
		impl InstStore for $StoreType {
			type InnerType=$InnerType;
			type AddrType=$AddrType;

			fn new() -> Self {
				Self { 0: Vec::new() }
			}

			fn push(&mut self, v: Self::InnerType) {
				self.0.push(v)
			}

			fn len(&self) -> usize {
				self.0.len()
			}

			fn contains(&self, addr: $AddrType) -> bool {
				self.0.len() >= addr.0
			}
		}

		impl Index<$AddrType> for $StoreType {
			type Output = $InnerType;
			fn index(&self, idx: $AddrType) -> &$InnerType {
				self.0.get(idx.0).unwrap()
			}
		}

		impl IndexMut<$AddrType> for $StoreType {
			fn index_mut(&mut self, idx: $AddrType) -> &mut $InnerType {
				self.0.get_mut(idx.0).unwrap()
			}
		}

		impl AddrCtor for $AddrType {
			fn new(addr: Addr) -> $AddrType {
				$AddrType { 0: addr }
			}
		}
	)
}

impl_inst_store!(FuncInstStore, FuncInst, FuncAddr);
impl_inst_store!(TableInstStore, TableInst, TableAddr);
impl_inst_store!(GlobalInstStore, GlobalInst, GlobalAddr);
impl_inst_store!(MemInstStore, MemInst, MemAddr);
/*

*/

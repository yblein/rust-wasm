#![feature(core_intrinsics)]
/// Provides the public Embedding interface
/// Note: the API does not take a Store and returns the new Store as stated in
/// the spec but takes a (possibly mutable) reference when needed
extern crate core;

#[macro_use]
mod interpreter;
mod ops;
mod valid;
mod binary;
mod runtime;

pub mod ast;
pub mod values;
pub mod types;
pub use runtime::{
	ModuleInst,
	ExternVal,
	FuncAddr,
	TableAddr,
	MemAddr,
	GlobalAddr,
	AddrCtor,
	HostFunc,
	PAGE_SIZE
};

use runtime::*;
use interpreter::{Interpreter, StackFrames, Trap};

use std::rc::Rc;
use std::io::{Read, Seek};
use std::collections::HashMap;


// Do not publish internal fields of the Store struct
pub struct Store {
	funcs: FuncInstStore,
	tables: TableInstStore,
	mems: MemInstStore,
	globals: GlobalInstStore,

	types_map: TypeHashMap,
}

#[derive(Debug, PartialEq)]
pub enum Error {
	DecodeModuleFailed,
	NotEnoughExternVal,
	UnknownImport,
	ImportTypeMismatch,
	ElemOffsetTooLarge(usize),
	DataOffsetTooLarge(usize),
	NotEnoughArgument,
	ArgumentTypeMismatch,
	CodeTrapped(Trap),
	InvalidModule,
	ExportNotFound,
	InvalidTableRead,
	InvalidTableWrite,
	InvalidMemoryRead,
	InvalidMemoryWrite,
	GlobalImmutable,
	GrowMemoryFailed,
}

/// Return the empty store
pub fn init_store() -> Store {
	Store {
		funcs: FuncInstStore::new(),
		tables: TableInstStore::new(),
		mems: MemInstStore::new(),
		globals: GlobalInstStore::new(),

		types_map: HashMap::new(),
	}
}

/// Decode a binary module
pub fn decode_module<R: Read + Seek>(reader: R) -> Result<ast::Module, Error> {
	binary::decode(reader).map_err(|_| Error::DecodeModuleFailed)
}

/// Parse a S-Expr module
pub fn parse_module(_codepoint: &str) -> Result<ast::Module, Error> {
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

/// List module imports with their types
pub fn module_imports(module: &ast::Module) -> Vec<(String, String, types::Extern)> {
	assert!(valid::is_valid(module));
	let mut types = Vec::new();

	for import in &module.imports {
		use types::*;
		use ast::*;
		let ex = match import.desc {
			ImportDesc::Func(idx)   => Extern::Func(module.types[idx as usize].clone()),
			ImportDesc::Table(ref type_)  => Extern::Table(type_.clone()),
			ImportDesc::Memory(ref type_) => Extern::Memory(type_.clone()),
			ImportDesc::Global(ref type_) => Extern::Global(type_.clone()),
		};
		types.push((import.module.clone(), import.name.clone(), ex));
	}
	types
}

/// List module exports with their types
pub fn module_exports(module: &ast::Module) -> Vec<(String, types::Extern)> {
	assert!(valid::is_valid(module));
	let mut types = Vec::new();

	for export in &module.exports {
		use types::*;
		use ast::*;
		let ex = match export.desc {
			ExportDesc::Func(idx)   => Extern::Func(module.types[module.funcs[idx as usize].type_index as usize].clone()),
			ExportDesc::Table(idx)  => Extern::Table(module.tables[idx as usize].type_.clone()),
			ExportDesc::Memory(idx) => Extern::Memory(module.memories[idx as usize].type_.clone()),
			ExportDesc::Global(idx) => Extern::Global(module.globals[idx as usize].type_.clone()),
		};
		types.push((export.name.clone(), ex));
	}
	types
}

/// Get an externval value according to the exported name
pub fn get_export(inst: &ModuleInst, name: &str) -> Result<ExternVal, Error> {
	for export in &inst.exports {
		if export.name == name {
			return Ok(export.value.clone());
		}
	}
	Err(Error::ExportNotFound)
}

/// Allocate a host function
pub fn alloc_func(store: &mut Store, functype: &types::Func, hostfunc: HostFunc) -> FuncAddr {
	store.funcs.alloc_host(&mut store.types_map, functype, hostfunc)
}

/// Get the type of a function
pub fn type_func(store: &Store, funcaddr: FuncAddr) -> types::Func {
	assert!(store.funcs.contains(funcaddr));
	match store.types_map.get(&TypeKey { extern_val: ExternVal::Func(funcaddr) }) {
		Some(&types::Extern::Func(ref type_)) => type_.clone(),
		_ => unreachable!(),
	}
}

/// Invoke a function
pub fn invoke_func(store: &mut Store, funcaddr: FuncAddr, args: Vec<values::Value>) -> Result<Vec<values::Value>, Error> {
	assert!(store.funcs.contains(funcaddr));
	let funcinst = &store.funcs[funcaddr];
	let functype = match funcinst {
		&FuncInst::Module(ref f) => &f.type_,
		&FuncInst::Host(ref f) => &f.type_,
	};

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
	for arg in args {
		int.stack.push(arg);
	}


	let mut sframe = interpreter::StackFrames::new();
	match int.call(funcaddr, &mut sframe, &store.funcs, &store.tables, &mut store.globals, &mut store.mems) {
		Err(err) => Err(Error::CodeTrapped(err)),
		_ => {
			let end_drain = int.stack.len() - functype.result.len();
			int.stack.drain(0..end_drain);
			Ok(int.stack)
		}
	}
}

/// Allocate a table
pub fn alloc_table(store: &mut Store, tabletype: &types::Table) -> TableAddr {
	store.tables.alloc(&mut store.types_map, tabletype)
}

/// Get the type of a table
pub fn type_table(store: &Store, tableaddr: TableAddr) -> types::Table {
	assert!(store.tables.contains(tableaddr));
	match store.types_map.get(&TypeKey { extern_val: ExternVal::Table(tableaddr) }) {
		Some(&types::Extern::Table(ref type_)) => type_.clone(),
		_ => unreachable!(),
	}
}

/// Read the content of a table at a given address
pub fn read_table(store: &Store, tableaddr: TableAddr, addr: usize) -> Result<Option<FuncAddr>, Error> {
	assert!(store.tables.contains(tableaddr));
	let ti = &store.tables[tableaddr];
	if addr >= ti.elem.len() {
		Err(Error::InvalidTableRead)
	} else {
		Ok(ti.elem[addr])
	}
}

/// Write AnyFunc to a specific table at a given address
pub fn write_table(store: &mut Store, tableaddr: TableAddr, addr: usize, funcaddr: Option<FuncAddr>) -> Option<Error> {
	assert!(store.tables.contains(tableaddr));
	let ti = &mut store.tables[tableaddr];
	if addr >= ti.elem.len() {
		Some(Error::InvalidTableWrite)
	} else {
		ti.elem[addr] = funcaddr;
		None
	}
}

/// Get the size of a table
pub fn size_table(store: &Store, tableaddr: TableAddr) -> usize {
	assert!(store.tables.contains(tableaddr));
	store.tables[tableaddr].elem.len()
}

/// Grow a table by new elements
pub fn grow_table(store: &mut Store, tableaddr: TableAddr, new: usize) -> Option<Error> {
	assert!(store.tables.contains(tableaddr));
	let table = &mut store.tables[tableaddr].elem;
	let sz = table.len();
	table.resize(sz + new, None);
	None
}

/// Allocate a memory
pub fn alloc_mem(store: &mut Store, memtype: &types::Memory) -> MemAddr {
	store.mems.alloc(&mut store.types_map, memtype)
}

/// Get the type of a memory
pub fn type_mem(store: &Store, memaddr: MemAddr) -> types::Memory {
	assert!(store.mems.contains(memaddr));
	match store.types_map.get(&TypeKey { extern_val: ExternVal::Memory(memaddr) }) {
		Some(&types::Extern::Memory(ref type_)) => type_.clone(),
		_ => unreachable!(),
	}
}

/// Read a byte of a memory at a given address
pub fn read_mem(store: &Store, memaddr: MemAddr, addr: usize) -> Result<u8, Error> {
	assert!(store.mems.contains(memaddr));
	let mi = &store.mems[memaddr];
	if addr >= mi.data.len() {
		Err(Error::InvalidMemoryRead)
	} else {
		Ok(mi.data[addr])
	}
}

/// Write a byte to a memory at a given address
pub fn write_mem(store: &mut Store, memaddr: MemAddr, addr: usize, byte: u8) -> Option<Error> {
	assert!(store.mems.contains(memaddr));
	let mi = &mut store.mems[memaddr];
	if addr >= mi.data.len() {
		Some(Error::InvalidMemoryWrite)
	} else {
		mi.data[addr] = byte;
		None
	}
}

/// Get the size of a memory
pub fn size_mem(store: &Store, memaddr: MemAddr) -> usize {
	assert!(store.mems.contains(memaddr));
	store.mems.size(memaddr)
}

/// Grow a memory by new pages
pub fn grow_mem(store: &mut Store, memaddr: MemAddr, new: usize) -> Option<Error> {
	assert!(store.mems.contains(memaddr));
	match store.mems.grow(memaddr, new) {
		Some(_) => None,
		None => Some(Error::GrowMemoryFailed)
	}
}

/// Allocate a new global
pub fn alloc_global(store: &mut Store, globaltype: &types::Global, val: values::Value) -> GlobalAddr {
	store.globals.alloc(&mut store.types_map, globaltype, val)
}

/// Get the type of a global
pub fn type_global(store: &Store, globaladdr: GlobalAddr) -> types::Global {
	assert!(store.globals.contains(globaladdr));
	match store.types_map.get(&TypeKey { extern_val: ExternVal::Global(globaladdr) }) {
		Some(&types::Extern::Global(ref type_)) => type_.clone(),
		_ => unreachable!(),
	}
}

/// Read a global
pub fn read_global(store: &Store, globaladdr: GlobalAddr) -> values::Value {
	assert!(store.globals.contains(globaladdr));
	let gi = &store.globals[globaladdr];
	gi.value
}

/// Write a global
pub fn write_global(store: &mut Store, globaladdr: GlobalAddr, val: values::Value) -> Option<Error> {
	assert!(store.globals.contains(globaladdr));
	let gi = &mut store.globals[globaladdr];
	if !gi.mutable {
		Some(Error::GlobalImmutable)
	} else {
		gi.value = val;
		None
	}
}


/// Instantiate a module
pub fn instantiate_module(store: &mut Store, module: ast::Module, extern_vals: &[ExternVal]) -> Result<Rc<ModuleInst>, Error> {

	// 1. If module is not valid, then: Fail
	if !valid::is_valid(&module) {
		return Err(Error::InvalidModule)
	}

	// 2. Assert: module is valid with external types externtype^{m}_{im} classifying its import
	// 3. If the number m of imports is not equal to the number n of provided external values, then: Fail
	if extern_vals.len() != module.imports.len() {
		return Err(Error::NotEnoughExternVal)
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

	for (import, value) in module.imports.iter().zip(extern_vals.iter()) {
		let type_match = match store.types_map.get(&TypeKey { extern_val: value.clone() }) {
			Some(type_) => {
				match (type_, &import.desc) {
					(&types::Extern::Func(ref exported_type), &ast::ImportDesc::Func(idx)) => {
						if let &ExternVal::Func(addr) = value {
							imported_funcs.push(addr);
						}
						exported_type == &module.types[idx as usize]
					},
					(&types::Extern::Table(ref exported_type), &ast::ImportDesc::Table(ref imported_type)) => {
						if let &ExternVal::Table(addr) = value {
							imported_tables.push(addr);
						}
						exported_type.elem == imported_type.elem && match_limits(&imported_type.limits, &exported_type.limits)
					},
					(&types::Extern::Memory(ref exported_type), &ast::ImportDesc::Memory(ref imported_type)) => {
						if let &ExternVal::Memory(addr) = value {
							imported_memories.push(addr);
						}
						match_limits(&imported_type.limits, &exported_type.limits)
					},
					(&types::Extern::Global(ref exported_type), &ast::ImportDesc::Global(ref imported_type)) => {
						if let &ExternVal::Global(addr) = value {
							imported_globals.push(addr);
						}
						exported_type == imported_type
					},
					_ => return Err(Error::ImportTypeMismatch),
				}
			},
			None => return Err(Error::UnknownImport),
		};
		if !type_match {
			return Err(Error::ImportTypeMismatch);
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
		let vals = module.globals.iter().map(|g| {
			interpreter_eval_expr_const!(&mut const_int, &mut sframe, store, &g.value).unwrap()
		}).collect();

		// 10. For each element segment elemi in module.elem, do:
		// ...
		// Intuition: check if the module does not try to init too many elements
		let mut elem_offsets = Vec::new();
		for elem in module.elems.iter() {
			let offset = match interpreter_eval_expr_const!(&mut const_int, &mut sframe, store, &elem.offset).unwrap() {
				values::Value::I32(c) => c as usize,
				_ => unreachable!(),
			};
			elem_offsets.push(offset);

			let table_size = {
				if (elem.index as usize) >= imported_tables.len() {
					module.tables[(elem.index as usize) - imported_tables.len()].type_.limits.min as usize
				} else {
					store.tables[imported_tables[elem.index as usize]].elem.len()
				}
			};

			// We will allocate limits.min empty elements when allocating the table
			if offset + elem.init.len() > table_size {
				return Err(Error::ElemOffsetTooLarge(elem.index as usize));
			}
		}

		// 11. For each data segment datai in module.data, do:
		// ...
		// Intuition: check if the module does not try to init too much memory
		let mut data_offsets = Vec::new();
		for data in module.data.iter() {
			let offset = match interpreter_eval_expr_const!(&mut const_int, &mut sframe, store, &data.offset).unwrap() {
				values::Value::I32(c) => c as usize,
				_ => unreachable!(),
			};
			data_offsets.push(offset);

			let memory_size = {
				if (data.index as usize) >= imported_memories.len() {
					(module.memories[(data.index as usize) - imported_memories.len()].type_.limits.min as usize) * PAGE_SIZE
				} else {
					store.mems[imported_memories[data.index as usize]].data.len()
				}
			};

			if offset + data.init.len() > memory_size {
				return Err(Error::DataOffsetTooLarge(data.index as usize));
			}
		}

		(vals, elem_offsets, data_offsets)
	};

	// 14. Let moduleinst be a new module instance allocated from module in
	// store S with imports externval∗ and glboal initializer values val∗.
	// Note: module tables/data/globals initializations are performed in the
	// following function
	let global_addrs = Rc::try_unwrap(mod_aux).ok().unwrap().global_addrs;
	allocate_and_init_module(store, module, imported_funcs, imported_tables, imported_memories, global_addrs, global_vals, elem_offsets, data_offsets)
}

fn allocate_and_init_module(
	store: &mut Store,
	module: ast::Module,
	extern_funcs: Vec<FuncAddr>,
	extern_tables: Vec<TableAddr>,
	extern_memories: Vec<MemAddr>,
	extern_globals: Vec<GlobalAddr>,
	vals: Vec<values::Value>,
	elem_offsets: Vec<usize>,
	data_offsets: Vec<usize>,
) -> Result<Rc<ModuleInst>, Error> {
	// Two passes algorithms
	// 1. do all modifications on the ModuleInst in a single scope
	let mut mi = ModuleInst::new();

	// Types copying
	mi.types = module.types;

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
	let fsi_min = store.funcs.len();
	let fsi_max = fsi_min + module.funcs.len();
	for addr in fsi_min..fsi_max {
		mi.func_addrs.push(FuncAddr::new(addr));
	}

	// Tables allocation
	for tab in module.tables {
		mi.table_addrs.push(store.tables.alloc(&mut store.types_map, &tab.type_));
	}

	// 15. For each element segment elemi in module.elem, do:
	// ...
	// Intuition: tables initialization with elem segments
	assert_eq!(module.elems.len(), elem_offsets.len());
	for elem in module.elems.iter().zip(elem_offsets.iter()) {
		let (elem, offset) = elem;

		for i in 0..elem.init.len() {
			let funcidx = elem.init[i] as usize;
			let funcaddr = mi.func_addrs[funcidx];
			store.tables[mi.table_addrs[elem.index as usize]].elem[*offset + i] = Some(funcaddr);
		}
	}

	// Memories allocation
	for mem in module.memories {
		mi.mem_addrs.push(store.mems.alloc(&mut store.types_map, &mem.type_));
	}

	// 16. For each data segment datai in module.data, do:
	// ...
	// Intuition: memories initialization with data segments
	assert_eq!(module.data.len(), data_offsets.len());
	for data in module.data.iter().zip(data_offsets.iter()) {
		let (data, offset) = data;

		for i in 0..data.init.len() {
			store.mems[mi.mem_addrs[data.index as usize]].data[*offset + i] = data.init[i];
		}
	}

	// Globals allocation
	assert_eq!(module.globals.len(), vals.len());
	let mut i = 0;
	for global in module.globals {
		mi.global_addrs.push(store.globals.alloc(&mut store.types_map, &global.type_, vals[i]));
		i += 1;
	}

	// 14. For each export exporti in module.exports, do:
	// ...
	for export in module.exports {
		let extern_val = match export.desc {
			ast::ExportDesc::Func(idx)   => ExternVal::Func(mi.func_addrs[idx as usize]),
			ast::ExportDesc::Table(idx)  => ExternVal::Table(mi.table_addrs[idx as usize]),
			ast::ExportDesc::Memory(idx) => ExternVal::Memory(mi.mem_addrs[idx as usize]),
			ast::ExportDesc::Global(idx) => ExternVal::Global(mi.global_addrs[idx as usize]),
		};
		mi.exports.push(ExportInst {
			name: export.name,
			value: extern_val,
		});
	}

	// 2. put the FuncInst (which have a ref to ModuleInst) into the store
	let inst = Rc::new(mi);
	for func in module.funcs {
		let type_ = &inst.types[func.type_index as usize];
		let _ = store.funcs.alloc_module(&mut store.types_map, type_, &inst, func);
	}

	// 17. If the start function module.start is not empty, then:
	// ...
	// Intuition: call the start function if it exists
	if let Some(idx) = module.start {
		let func_addr = inst.func_addrs[idx as usize];
		if let Err(err) = invoke_func(store, func_addr, Vec::new()) {
			return Err(err)
		}
	}

	Ok(inst)
}

/// Check if l1 matches l2 according to import matching rule on limits
fn match_limits(l1: &types::Limits, l2: &types::Limits) -> bool {
	l1.min >= l2.min && (l2.max.is_none() || (l1.max.is_some() && l1.max.unwrap() <= l2.max.unwrap()))
}

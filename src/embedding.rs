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

#[derive(Debug)]
pub struct ExternVal {
	val: vm::ExternVal,
}

pub type HostCode = ();
pub type FuncAddr = vm::FuncAddr;
pub type TableAddr = vm::TableAddr;
pub type MemAddr = vm::MemAddr;
pub type GlobalAddr = vm::GlobalAddr;

#[derive(Debug, PartialEq)]
pub enum Error {
	DecodeModuleFailed,
	CannotInstantiateModule,
	NotEnoughArgument,
	ArgumentTypeMismatch,
	CodeTrapped,
	InvalidModule,
	ExportNotFound,
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
pub fn instantiate_module(store: &mut Store, module: ast::Module, extern_vals: Vec<ExternVal>) -> Result<ModuleInst, Error> {
	let mut unwrap = Vec::new();
	for extern_val in extern_vals {
		unwrap.push(extern_val.val);
	}

	let res = store.vm.instantiate_module(module, &unwrap, &mut store.types_map);
	if let Ok(inst) = res {
		Ok(
			ModuleInst {
				inst
			}
		)
	} else {
		Err(Error::CannotInstantiateModule)
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
	for export in &inst.inst.exports {
		if export.name == name {
			return Ok(ExternVal { val: export.value.clone() });
		}
	}
	Err(Error::ExportNotFound)
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
		let end_drain = int.stack.len() - functype.result.len();
		int.stack.drain(0..end_drain);
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

#[cfg(test)]
mod tests {
	use ast::*;
	use embedding::*;

	#[test]
	fn global_const() {
		let mut m = Module::empty();
		m.globals.push(ast::Global {
			type_: types::Global { value: types::Value::Int(types::Int::I32), mutable: false },
			value: vec![
				Instr::Const(values::Value::I32(42)),
			],
		});

		let mut store = init_store();
		let mib = instantiate_module(&mut store, m, Vec::new()).unwrap();
		assert_eq!(read_global(&store, 0), values::Value::I32(42));
	}

	#[test]
	fn global_get_global() {
		let mut store = init_store();

		let mut m1 = Module::empty();
		let global_type = types::Global { value: types::Value::Int(types::Int::I32), mutable: false };
		m1.globals.push(ast::Global {
			type_: global_type.clone(),
			value: vec![
				Instr::Const(values::Value::I32(42)),
			],
		});
		m1.globals.push(ast::Global {
			type_: global_type.clone(),
			value: vec![
				Instr::Const(values::Value::I32(43)),
			],
		});
		m1.exports.push(ast::Export { name: String::from("wasm"), desc: ast::ExportDesc::Global(0) });
		m1.exports.push(ast::Export { name: String::from("wasm2"), desc: ast::ExportDesc::Global(1) });

		let m1b = instantiate_module(&mut store, m1, Vec::new()).unwrap();

		let mut m2 = Module::empty();
		m2.imports.push(ast::Import {
			module: String::from("first"),
			name: String::from("wasm"),
			desc: ast::ImportDesc::Global(global_type.clone()),
		});
		m2.imports.push(ast::Import {
			module: String::from("first"),
			name: String::from("wasm2"),
			desc: ast::ImportDesc::Global(global_type.clone()),
		});
		m2.globals.push(ast::Global {
			type_: global_type,
			value: vec![
				Instr::GetGlobal(0),
			],
		});

		// Resolve imports
		let mut extern_vals = Vec::new();
		for import in module_imports(&m2) {
			let (_, ref name, _) = import;
			extern_vals.push(get_export(&m1b, name).unwrap());
		}

		let m2b = instantiate_module(&mut store, m2, extern_vals).unwrap();
		assert_eq!(read_global(&store, 0), values::Value::I32(42));
		assert_eq!(read_global(&store, 1), values::Value::I32(43));
		assert_eq!(read_global(&store, 2), values::Value::I32(42));
	}

	#[test]
	fn init_data() {
		let mut store = init_store();
		let mut m = Module::empty();

		m.memories.push(ast::Memory {
			type_: types::Memory { limits: types::Limits { min: 1, max: None } },
		});

		m.data.push(ast::Segment::<u8> {
			index: 0,
			offset: vec![
				Instr::Const(values::Value::I32((vm::PAGE_SIZE as u32) - 4)),
			],
			init: vec![3, 4, 5],
		});

		let mut check = vec![0; vm::PAGE_SIZE - 4];
		check.extend(vec![3, 4, 5]);
		check.extend(vec![0]);

		assert!(instantiate_module(&mut store, m, Vec::new()).is_ok());
		for i in 0..check.len() {
			assert_eq!(read_mem(&store, 0, i).unwrap(), check[i]);
		}
	}


	#[test]
	fn init_table() {
		let mut store = init_store();
		let mut m = Module::empty();

		// Allocate "fake" FuncInst inside the store to see funcaddrs != funcidx
		// TODO: use alloc_func when implemented
		let len_shift = 5;
		for i in 0..len_shift {
			store.vm.store.funcs.push(vm::FuncInst::Host(vm::HostFuncInst {
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
				Instr::Const(values::Value::I32(1)),
			],
			init: vec![15, 16, 17],
		});

		let check = vec![None,
						 Some(len_shift + 15),
						 Some(len_shift + 16),
						 Some(len_shift + 17),
						 None];
		assert!(instantiate_module(&mut store, m, Vec::new()).is_ok());
		for i in 0..check.len() {
			assert_eq!(read_table(&store, 0, i).unwrap(), check[i]);
		}
	}

	#[test]
	fn start() {
		let mut store = init_store();
		let mut m = Module::empty();

		m.types.push(types::Func { args: Vec::new(), result: Vec::new() });
		m.globals.push(ast::Global {
			type_: types::Global { value: types::Value::Int(types::Int::I32), mutable: true },
			value: vec![
				Instr::Const(values::Value::I32(40)),
			],
		});
		m.funcs.push(ast::Func {
			type_index: 0,
			locals: Vec::new(),
			body: vec![
				Instr::Const(values::Value::I32(42)),
				Instr::SetGlobal(0)
			],
		});

		m.start = Some(0);
		assert!(instantiate_module(&mut store, m, Vec::new()).is_ok());
		assert_eq!(read_global(&store, 0), values::Value::I32(42));
	}

	#[test]
	fn import() {
		let mut store = init_store();
		let mut m1 = Module::empty();

		m1.types.push(types::Func { args: Vec::new(), result: Vec::new() });
		m1.funcs.push(ast::Func {
			type_index: 0,
			locals: Vec::new(),
			body: vec![
			],
		});
		m1.exports.push(ast::Export { name: String::from("wasm"), desc: ast::ExportDesc::Func(0) });
		let m1b = instantiate_module(&mut store, m1, Vec::new());
		assert!(m1b.is_ok());
		let m1b = m1b.unwrap();

		let mut m2 = Module::empty();
		m2.types.push(types::Func { args: Vec::new(), result: Vec::new() });
		m2.imports.push(ast::Import {
			module: String::from(""),
			name: String::from("wasm"),
			desc: ast::ImportDesc::Func(0),
		});

		// Resolve imports
		let mut extern_vals = Vec::new();
		for import in module_imports(&m2) {
			let (_, ref name, _) = import;
			if let Ok(val) = get_export(&m1b, name) {
				extern_vals.push(val);
			}
		}
		let m2b = instantiate_module(&mut store, m2, extern_vals);

		let mut m3 = Module::empty();
		m3.types.push(types::Func { args: Vec::new(), result: Vec::new() });
		m3.imports.push(ast::Import {
			module: String::from(""),
			name: String::from("unknown"),
			desc: ast::ImportDesc::Func(0),
		});

		let mut extern_vals = Vec::new();
		for import in module_imports(&m3) {
			let (_, ref name, _) = import;
			if let Ok(val) = get_export(&m1b, name) {
				extern_vals.push(val);
			}
		}
		let m3b = instantiate_module(&mut store, m3, extern_vals);
		assert_eq!(m3b.err(), Some(Error::CannotInstantiateModule));

		let mut m4 = Module::empty();
		m4.types.push(types::Func { args: Vec::new(), result: vec![types::Value::Int(types::Int::I32)] });
		m4.imports.push(ast::Import {
			module: String::from(""),
			name: String::from("wasm"),
			desc: ast::ImportDesc::Func(0),
		});
		let mut extern_vals = Vec::new();
		for import in module_imports(&m4) {
			let (_, ref name, _) = import;
			if let Ok(val) = get_export(&m1b, name) {
				extern_vals.push(val);
			}
		}
		let m4b = instantiate_module(&mut store, m4, extern_vals);
		assert_eq!(m4b.err(), Some(Error::CannotInstantiateModule));
	}

	#[test]
	fn export_addr() {
		let mut store = init_store();
		let mut m1 = Module::empty();

		let first_type = types::Func { args: Vec::new(), result: Vec::new() };
		let second_type = types::Func { args: Vec::new(), result: vec![types::Value::Int(types::Int::I32)] };

		m1.types.push(first_type.clone());
		m1.funcs.push(ast::Func {
			type_index: 0,
			locals: Vec::new(),
			body: vec![
			],
		});
		m1.exports.push(ast::Export { name: String::from("wasm"), desc: ast::ExportDesc::Func(0) });
		let m1b = instantiate_module(&mut store, m1, Vec::new());
		assert!(m1b.is_ok());
		let m1b = m1b.unwrap();

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
			],
		});
		let mut extern_vals = Vec::new();
		for import in module_imports(&m2) {
			let (_, ref name, _) = import;
			if let Ok(val) = get_export(&m1b, name) {
				extern_vals.push(val);
			}
		}
		let m2b = instantiate_module(&mut store, m2, extern_vals);
		assert!(m2b.is_ok());

		let m2b = m2b.unwrap();
		assert_eq!(type_func(&store, 0), first_type);
		assert_eq!(type_func(&store, 1), second_type);
	}

	#[test]
	fn export_addr_global() {
		let mut store = init_store();
		let mut m1 = Module::empty();

		let first_type = types::Global { value: types::Value::Int(types::Int::I32), mutable: false };
		let second_type = types::Global { value: types::Value::Int(types::Int::I64), mutable: true };
		let first_value = values::Value::I32(42);
		let second_value = values::Value::I64(43);

		m1.globals.push(ast::Global {
			type_: first_type.clone(),
			value: vec![
				Instr::Const(first_value.clone())
			],
		});
		m1.exports.push(ast::Export { name: String::from("wasm"), desc: ast::ExportDesc::Global(0) });
		let m1b = instantiate_module(&mut store, m1, Vec::new());
		assert!(m1b.is_ok());
		let m1b = m1b.unwrap();

		let mut m2 = Module::empty();
		m2.imports.push(ast::Import {
			module: String::from(""),
			name: String::from("wasm"),
			desc: ast::ImportDesc::Global(first_type.clone()),
		});
		m2.globals.push(ast::Global {
			type_: second_type,
			value: vec![
				Instr::Const(second_value.clone())
			],
		});
		let mut extern_vals = Vec::new();
		for import in module_imports(&m2) {
			let (_, ref name, _) = import;
			if let Ok(val) = get_export(&m1b, name) {
				extern_vals.push(val);
			}
		}
		let m2b = instantiate_module(&mut store, m2, extern_vals);
		assert!(m2b.is_ok());

		let m2b = m2b.unwrap();
		assert_eq!(read_global(&store, 0), first_value);
		assert_eq!(read_global(&store, 1), second_value);
	}

	#[test]
	fn exporting_immutable_global() {
		let mut store = init_store();
		let mut m1 = Module::empty();

		m1.globals.push(ast::Global {
			type_: types::Global {
				value: types::Value::Int(types::Int::I32),
				mutable: true,
			},
			value: vec![
				Instr::Const(values::Value::I32((vm::PAGE_SIZE as u32) - 4))
			],
		});
		m1.exports.push(ast::Export { name: String::from("global"), desc: ast::ExportDesc::Global(0) });
		assert_eq!(validate_module(&m1), Some(Error::InvalidModule));

		let mut m2 = Module::empty();
		m2.globals.push(ast::Global {
			type_: types::Global {
				value: types::Value::Int(types::Int::I32),
				mutable: false,
			},
			value: vec![
				Instr::Const(values::Value::I32((vm::PAGE_SIZE as u32) - 4))
			],
		});
		m2.exports.push(ast::Export { name: String::from("global"), desc: ast::ExportDesc::Global(0) });
		let m2b = instantiate_module(&mut store, m2, Vec::new());
		assert!(m2b.is_ok());
	}

	#[test]
	fn init_with_imported_global() {
		let mut store = init_store();
		let mut m1 = Module::empty();

		m1.globals.push(ast::Global {
			type_: types::Global {
				value: types::Value::Int(types::Int::I32),
				mutable: false,
			},
			value: vec![
				Instr::Const(values::Value::I32((vm::PAGE_SIZE as u32) - 4))
			],
		});
		m1.exports.push(ast::Export { name: String::from("global"), desc: ast::ExportDesc::Global(0) });
		let m1b = instantiate_module(&mut store, m1, Vec::new()).unwrap();

		let mut m2 = Module::empty();
		m2.memories.push(ast::Memory {
			type_: types::Memory { limits: types::Limits { min: 1, max: None } },
		});
		m2.data.push(ast::Segment::<u8> {
			index: 0,
			offset: vec![
				Instr::GetGlobal(0),
			],
			init: vec![3, 4, 5],
		});
		m2.imports.push(ast::Import {
			module: String::from(""),
			name: String::from("global"),
			desc: ast::ImportDesc::Global(types::Global { value: types::Value::Int(types::Int::I32), mutable: false }),
		});

		let mut check = vec![0; vm::PAGE_SIZE - 4];
		check.extend(vec![3, 4, 5]);
		check.extend(vec![0]);

		let mut extern_vals = Vec::new();
		for import in module_imports(&m2) {
			let (_, ref name, _) = import;
			if let Ok(val) = get_export(&m1b, name) {
				extern_vals.push(val);
			}
		}
		assert!(instantiate_module(&mut store, m2, extern_vals).is_ok());
		for i in 0..check.len() {
			assert_eq!(read_mem(&store, 0, i).unwrap(), check[i]);
		}
	}

	#[test]
	fn memory_init_other_module() {
		let mut store = init_store();
		let mut m1 = Module::empty();
		m1.memories.push(ast::Memory {
			type_: types::Memory {
				limits: types::Limits { min: 1, max: None }
			},
		});
		m1.exports.push(ast::Export { name: String::from("mem"), desc: ast::ExportDesc::Memory(0) });
		let m1b = instantiate_module(&mut store, m1, Vec::new());
		assert!(m1b.is_ok());
		let m1b = m1b.unwrap();

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
				Instr::Const(values::Value::I32(0)),
			],
			init: vec![3, 4, 5],
		});
		let mut check = vec![3, 4, 5];
		check.extend(vec![0; vm::PAGE_SIZE - 3]);

		let mut extern_vals = Vec::new();
		for import in module_imports(&m2) {
			let (_, ref name, _) = import;
			if let Ok(val) = get_export(&m1b, name) {
				extern_vals.push(val);
			}
		}
		assert!(instantiate_module(&mut store, m2, extern_vals).is_ok());
		for i in 0..check.len() {
			assert_eq!(read_mem(&store, 0, i).unwrap(), check[i]);
		}
	}

	#[test]
	fn args() {
		let mut store = init_store();
		let mut m = Module::empty();

		let type_ = types::Value::Int(types::Int::I32);
		m.types.push(types::Func { args: vec![type_.clone(), type_.clone()], result: vec![type_.clone()] });
		m.funcs.push(ast::Func {
			type_index: 0,
			locals: Vec::new(),
			body: vec![
				Instr::GetLocal(0),
				Instr::Const(values::Value::I32(1)),
				Instr::IBin(types::Int::I32, IBinOp::Shl),
				Instr::GetLocal(1),
				Instr::IBin(types::Int::I32, IBinOp::Add),
			],
		});
		let inst = instantiate_module(&mut store, m, Vec::new()).unwrap();
		let args = vec![values::Value::I32(1), values::Value::I32(2)];
		let res = invoke_func(&mut store, 0, args).unwrap();
		assert_eq!(res, vec![values::Value::I32(4)]);
	}


	#[test]
	fn locals() {
		let mut store = init_store();
		let mut m = Module::empty();

		let type_ = types::Value::Int(types::Int::I32);
		m.types.push(types::Func { args: vec![type_.clone(), type_.clone()], result: vec![type_.clone()] });
		m.funcs.push(ast::Func {
			type_index: 0,
			locals: vec![type_.clone(), type_.clone()],
			body: vec![
				Instr::GetLocal(0),
				Instr::Const(values::Value::I32(1)),
				Instr::IBin(types::Int::I32, IBinOp::Shl),
				Instr::GetLocal(2),
				Instr::IBin(types::Int::I32, IBinOp::Add),
			],
		});
		let inst = instantiate_module(&mut store, m, Vec::new()).unwrap();
		let args = vec![values::Value::I32(1), values::Value::I32(2)];
		let res = invoke_func(&mut store, 0, args).unwrap();
		assert_eq!(res, vec![values::Value::I32(2)]);
	}

	#[test]
	fn functions() {
		let mut store = init_store();
		let mut m = Module::empty();

		let type_ = types::Value::Int(types::Int::I32);
		m.types.push(types::Func { args: vec![type_.clone(), type_.clone()], result: vec![type_.clone()] });
		m.types.push(types::Func { args: Vec::new(), result: vec![type_.clone()] });
		m.funcs.push(ast::Func {
			type_index: 0,
			locals: Vec::new(),
			body: vec![
				Instr::GetLocal(0),
				Instr::Const(values::Value::I32(1)),
				Instr::IBin(types::Int::I32, IBinOp::Shl),
				Instr::GetLocal(1),
				Instr::IBin(types::Int::I32, IBinOp::Add),
			],
		});
		m.funcs.push(ast::Func {
			type_index: 1,
			locals: Vec::new(),
			body: vec![
				Instr::Const(values::Value::I32(1)),
				Instr::Const(values::Value::I32(2)),
				Instr::Call(0),
			],
		});
		let inst = instantiate_module(&mut store, m, Vec::new()).unwrap();
		let res = invoke_func(&mut store, 1, Vec::new()).unwrap();
		assert_eq!(res, vec![values::Value::I32(4)]);
	}

	#[test]
	fn return_() {
		let mut store = init_store();
		let mut m = Module::empty();

		let type_ = types::Value::Int(types::Int::I32);
		m.types.push(types::Func { args: vec![type_.clone(), type_.clone()], result: vec![type_.clone()] });
		m.types.push(types::Func { args: Vec::new(), result: vec![type_.clone()] });
		m.funcs.push(ast::Func {
			type_index: 0,
			locals: Vec::new(),
			body: vec![
				Instr::GetLocal(0),
				Instr::Const(values::Value::I32(1)),
				Instr::IBin(types::Int::I32, IBinOp::Shl),
				Instr::Block(vec![type_.clone()],
							 vec![
								 Instr::Const(values::Value::I32(5)),
								 Instr::Drop_,
								 Instr::Block(vec![type_.clone()],
											  vec![
												  Instr::Const(values::Value::I32(42)),
												  Instr::Return,
												  Instr::Const(values::Value::I32(43)),
											  ]
								 ),
								 Instr::Const(values::Value::I32(44)),
								 Instr::Drop_,
							 ],
				),
				Instr::IBin(types::Int::I32, IBinOp::Add),
			],
		});
		m.funcs.push(ast::Func {
			type_index: 1,
			locals: Vec::new(),
			body: vec![
				Instr::Const(values::Value::I32(1)),
				Instr::Const(values::Value::I32(2)),
				Instr::Call(0),
			],
		});
		let inst = instantiate_module(&mut store, m, Vec::new()).unwrap();
		let res = invoke_func(&mut store, 1, Vec::new()).unwrap();
		assert_eq!(res, vec![values::Value::I32(42)]);
	}

	#[test]
	fn call_indirect() {
		let mut store = init_store();
		let mut m = Module::empty();

		let type_ = types::Value::Int(types::Int::I32);
		m.types.push(types::Func { args: vec![type_.clone(), type_.clone()], result: vec![type_.clone()] });
		m.types.push(types::Func { args: Vec::new(), result: vec![type_.clone()] });
		m.funcs.push(ast::Func {
			type_index: 0,
			locals: Vec::new(),
			body: vec![
				Instr::GetLocal(0),
				Instr::Const(values::Value::I32(1)),
				Instr::IBin(types::Int::I32, IBinOp::Shl),
				Instr::GetLocal(1),
				Instr::IBin(types::Int::I32, IBinOp::Add),
			],
		});
		m.funcs.push(ast::Func {
			type_index: 1,
			locals: Vec::new(),
			body: vec![
				Instr::Const(values::Value::I32(1)),
				Instr::Const(values::Value::I32(2)),
				Instr::Const(values::Value::I32(4)),
				Instr::CallIndirect(0),
			],
		});
		m.tables.push(ast::Table {
			type_: types::Table { limits: types::Limits { min: 5, max: None }, elem: types::Elem::AnyFunc },
		});
		m.elems.push(ast::Segment::<Index> {
			index: 0,
			offset: vec![
				Instr::Const(values::Value::I32(4)),
			],
			init: vec![0],
		});
		let inst = instantiate_module(&mut store, m, Vec::new()).unwrap();
		let res = invoke_func(&mut store, 1, Vec::new()).unwrap();
		assert_eq!(res, vec![values::Value::I32(4)]);
	}

	#[test]
	fn current_memory() {
		let mut store = init_store();
		let mut m = Module::empty();
		let type_ = types::Value::Int(types::Int::I32);
		let memory_size = 42;

		m.types.push(types::Func { args: Vec::new(), result: vec![type_.clone()] });
		m.funcs.push(ast::Func {
			type_index: 0,
			locals: Vec::new(),
			body: vec![
				Instr::CurrentMemory,
			],
		});
		m.memories.push(ast::Memory {
			type_: types::Memory { limits: types::Limits { min: memory_size, max: None } },
		});
		let inst = instantiate_module(&mut store, m, Vec::new()).unwrap();
		let res = invoke_func(&mut store, 0, Vec::new()).unwrap();
		assert_eq!(res, vec![values::Value::I32(memory_size)]);
	}

	#[test]
	fn grow_memory() {
		let mut store = init_store();
		let mut m = Module::empty();
		let type_ = types::Value::Int(types::Int::I32);
		let memory_size = 42;

		m.types.push(types::Func { args: Vec::new(), result: vec![type_.clone()] });
		m.funcs.push(ast::Func {
			type_index: 0,
			locals: Vec::new(),
			body: vec![
				Instr::Const(values::Value::I32(4)),
				Instr::GrowMemory,
			],
		});
		m.memories.push(ast::Memory {
			type_: types::Memory { limits: types::Limits { min: memory_size, max: None } },
		});
		let inst = instantiate_module(&mut store, m, Vec::new()).unwrap();
		let res = invoke_func(&mut store, 0, Vec::new()).unwrap();
		assert_eq!(res, vec![values::Value::I32(memory_size)]);
		assert_eq!(size_mem(&store, 0), (memory_size as usize + 4));
	}

	#[test]
	fn if_() {
		let mut store = init_store();
		let mut m = Module::empty();

		let type_ = types::Value::Int(types::Int::I32);
		m.types.push(types::Func { args: Vec::new(), result: vec![type_.clone()] });
		m.funcs.push(ast::Func {
			type_index: 0,
			locals: Vec::new(),
			body: vec![
				Instr::Const(values::Value::I32(1)),
				Instr::If(vec![type_.clone()],
						  vec![
							  Instr::Const(values::Value::I32(5)),
						  ],
						  vec![
							  Instr::Const(values::Value::I32(0)),
						  ],
				),
				// Stack = [5]
				Instr::Const(values::Value::I32(0)),
				Instr::If(vec![type_.clone()],
						  vec![
							  Instr::Const(values::Value::I32(4)),
						  ],
						  vec![
							  Instr::Block(vec![type_.clone()],
										   vec![
											   // Note:
											   // If br=1, stack = [42]
											   // If br=0, stack = [43]
											   Instr::Const(values::Value::I32(42)),
											   Instr::Br(1),
										   ]
							  ),
							  Instr::Drop_,
							  Instr::Const(values::Value::I32(43)),
						  ]
				),
				// Stack = [5; 42]
				Instr::IBin(types::Int::I32, IBinOp::Add),
				// Stack = [47]
			],
		});
		let inst = instantiate_module(&mut store, m, Vec::new()).unwrap();
		let res = invoke_func(&mut store, 0, Vec::new()).unwrap();
		assert_eq!(res, vec![values::Value::I32(47)]);
	}

	#[test]
	fn brtable() {
		let mut store = init_store();
		let mut m = Module::empty();

		let type_ = types::Value::Int(types::Int::I32);
		m.types.push(types::Func { args: Vec::new(), result: vec![type_.clone()] });
		m.funcs.push(ast::Func {
			type_index: 0,
			locals: Vec::new(),
			body: vec![
				Instr::Const(values::Value::I32(1)),
				Instr::If(vec![type_.clone()],
						  vec![
							  Instr::Const(values::Value::I32(5)),
						  ],
						  vec![
							  Instr::Const(values::Value::I32(0)),
						  ],
				),
				// Stack = [5]
				Instr::Const(values::Value::I32(0)),
				Instr::If(vec![type_.clone()],
						  vec![
							  Instr::Const(values::Value::I32(4)),
						  ],
						  vec![
							  Instr::Block(vec![type_.clone()],
										   vec![
											   // Note:
											   // If br=1, stack = [42]
											   // If br=0, stack = [43]
											   Instr::Const(values::Value::I32(42)),
											   Instr::Const(values::Value::I32(3)),
											   Instr::BrTable(vec![0, 1], 1),
										   ]
							  ),
							  Instr::Drop_,
							  Instr::Const(values::Value::I32(43)),
						  ]
				),
				// Stack = [5; 42]
				Instr::IBin(types::Int::I32, IBinOp::Add),
				// Stack = [47]
			],
		});
		let inst = instantiate_module(&mut store, m, Vec::new()).unwrap();
		let res = invoke_func(&mut store, 0, Vec::new()).unwrap();
		assert_eq!(res, vec![values::Value::I32(47)]);
	}

	#[test]
	fn simple() {
		use std::io::prelude::*;
		use std::fs::File;

		let mut store = init_store();
		let mut f = File::open("test-wasms/simple.wasm").unwrap();
		let mut contents = Vec::new();
		f.read_to_end(&mut contents).expect("Unable to read the file");
		let m = decode_module(&contents).unwrap();
		let mib = instantiate_module(&mut store, m, Vec::new()).unwrap();

		assert_eq!(size_mem(&store, 0), 1);
		assert_eq!(size_table(&store, 0), 0);
		assert_eq!(type_func(&store, 0), types::Func { args: Vec::new(), result: vec![types::Value::Int(types::Int::I32)] });
		let ExternVal { val: m } = get_export(&mib, "memory").unwrap();
		assert_eq!(m, vm::ExternVal::Memory(0));
		let ExternVal { val: m } = get_export(&mib, "main").unwrap();
		assert_eq!(m, vm::ExternVal::Func(0));
	}
}

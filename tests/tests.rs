extern crate rust_wasm;

use rust_wasm::*;
use rust_wasm::ast::*;

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
	assert!(instantiate_module(&mut store, m, &[]).is_ok());
	assert_eq!(read_global(&store, GlobalAddr::new(0)), values::Value::I32(42));
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

	let m1b = instantiate_module(&mut store, m1, &[]).unwrap();

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

	assert!(instantiate_module(&mut store, m2, &extern_vals[..]).is_ok());
	assert_eq!(read_global(&store, GlobalAddr::new(0)), values::Value::I32(42));
	assert_eq!(read_global(&store, GlobalAddr::new(1)), values::Value::I32(43));
	assert_eq!(read_global(&store, GlobalAddr::new(2)), values::Value::I32(42));
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
			Instr::Const(values::Value::I32((PAGE_SIZE as u32) - 4)),
		],
		init: vec![3, 4, 5],
	});

	let mut check = vec![0; PAGE_SIZE - 4];
	check.extend(vec![3, 4, 5]);
	check.extend(vec![0]);

	assert!(instantiate_module(&mut store, m, &[]).is_ok());
	for i in 0..check.len() {
		assert_eq!(read_mem(&store, MemAddr::new(0), i).unwrap(), check[i]);
	}
}


#[test]
fn init_table() {
	let mut store = init_store();
	let mut m = Module::empty();

	// Allocate "fake" FuncInst inside the store to see funcaddrs != funcidx
	// TODO: use alloc_func when implemented
	let len_shift = 5;
	for _ in 0..len_shift {
		alloc_func(&mut store, &types::Func { args: Vec::new(), result: Vec::new() }, &());
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
					 Some(FuncAddr::new(len_shift + 15)),
					 Some(FuncAddr::new(len_shift + 16)),
					 Some(FuncAddr::new(len_shift + 17)),
					 None];
	assert!(instantiate_module(&mut store, m, &[]).is_ok());
	for i in 0..check.len() {
		assert_eq!(read_table(&store, TableAddr::new(0), i).unwrap(), check[i]);
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
	assert!(instantiate_module(&mut store, m, &[]).is_ok());
	assert_eq!(read_global(&store, GlobalAddr::new(0)), values::Value::I32(42));
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
	let m1b = instantiate_module(&mut store, m1, &[]);
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
	assert!(instantiate_module(&mut store, m2, &extern_vals[..]).is_ok());

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
	let m3b = instantiate_module(&mut store, m3, &extern_vals[..]);
	assert_eq!(m3b.err(), Some(Error::NotEnoughExternVal));

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
	let m4b = instantiate_module(&mut store, m4, &extern_vals[..]);
	assert_eq!(m4b.err(), Some(Error::ImportTypeMismatch));
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
	let m1b = instantiate_module(&mut store, m1, &[]);
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
	let m2b = instantiate_module(&mut store, m2, &extern_vals[..]);
	assert!(m2b.is_ok());

	assert_eq!(type_func(&store, FuncAddr::new(0)), first_type);
	assert_eq!(type_func(&store, FuncAddr::new(1)), second_type);
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
	let m1b = instantiate_module(&mut store, m1, &[]);
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
	let m2b = instantiate_module(&mut store, m2, &extern_vals[..]);
	assert!(m2b.is_ok());
	assert_eq!(read_global(&store, GlobalAddr::new(0)), first_value);
	assert_eq!(read_global(&store, GlobalAddr::new(1)), second_value);
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
			Instr::Const(values::Value::I32((PAGE_SIZE as u32) - 4))
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
			Instr::Const(values::Value::I32((PAGE_SIZE as u32) - 4))
		],
	});
	m2.exports.push(ast::Export { name: String::from("global"), desc: ast::ExportDesc::Global(0) });
	let m2b = instantiate_module(&mut store, m2, &[]);
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
			Instr::Const(values::Value::I32((PAGE_SIZE as u32) - 4))
		],
	});
	m1.exports.push(ast::Export { name: String::from("global"), desc: ast::ExportDesc::Global(0) });
	let m1b = instantiate_module(&mut store, m1, &[]).unwrap();

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

	let mut check = vec![0; PAGE_SIZE - 4];
	check.extend(vec![3, 4, 5]);
	check.extend(vec![0]);

	let mut extern_vals = Vec::new();
	for import in module_imports(&m2) {
		let (_, ref name, _) = import;
		if let Ok(val) = get_export(&m1b, name) {
			extern_vals.push(val);
		}
	}
	assert!(instantiate_module(&mut store, m2, &extern_vals[..]).is_ok());
	for i in 0..check.len() {
		assert_eq!(read_mem(&store, MemAddr::new(0), i).unwrap(), check[i]);
	}
}

#[test]
fn memory_init_other_module_public() {
	let mut store = init_store();
	let mut m1 = Module::empty();
	m1.memories.push(ast::Memory {
		type_: types::Memory {
			limits: types::Limits { min: 1, max: None }
		},
	});
	m1.exports.push(ast::Export { name: String::from("mem"), desc: ast::ExportDesc::Memory(0) });
	let m1b = instantiate_module(&mut store, m1, &[]);
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
	check.extend(vec![0; PAGE_SIZE - 3]);

	let mut extern_vals = Vec::new();
	for import in module_imports(&m2) {
		let (_, ref name, _) = import;
		if let Ok(val) = get_export(&m1b, name) {
			extern_vals.push(val);
		}
	}
	assert!(instantiate_module(&mut store, m2, &extern_vals[..]).is_ok());
	for i in 0..check.len() {
		assert_eq!(read_mem(&store, MemAddr::new(0), i).unwrap(), check[i]);
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
	assert!(instantiate_module(&mut store, m, &[]).is_ok());
	let args = vec![values::Value::I32(1), values::Value::I32(2)];
	let res = invoke_func(&mut store, FuncAddr::new(0), args).unwrap();
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
	assert!(instantiate_module(&mut store, m, &[]).is_ok());
	let args = vec![values::Value::I32(1), values::Value::I32(2)];
	let res = invoke_func(&mut store, FuncAddr::new(0), args).unwrap();
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
	assert!(instantiate_module(&mut store, m, &[]).is_ok());
	let res = invoke_func(&mut store, FuncAddr::new(1), Vec::new()).unwrap();
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
	assert!(instantiate_module(&mut store, m, &[]).is_ok());
	let res = invoke_func(&mut store, FuncAddr::new(1), Vec::new()).unwrap();
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
	assert!(instantiate_module(&mut store, m, &[]).is_ok());
	let res = invoke_func(&mut store, FuncAddr::new(1), Vec::new()).unwrap();
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
	assert!(instantiate_module(&mut store, m, &[]).is_ok());
	let res = invoke_func(&mut store, FuncAddr::new(0), Vec::new()).unwrap();
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
	assert!(instantiate_module(&mut store, m, &[]).is_ok());
	let res = invoke_func(&mut store, FuncAddr::new(0), Vec::new()).unwrap();
	assert_eq!(res, vec![values::Value::I32(memory_size)]);
	assert_eq!(size_mem(&store, MemAddr::new(0)), (memory_size as usize + 4));
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
	assert!(instantiate_module(&mut store, m, &[]).is_ok());
	let res = invoke_func(&mut store, FuncAddr::new(0), Vec::new()).unwrap();
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
	assert!(instantiate_module(&mut store, m, &[]).is_ok());
	let res = invoke_func(&mut store, FuncAddr::new(0), Vec::new()).unwrap();
	assert_eq!(res, vec![values::Value::I32(47)]);
}

#[test]
fn simple() {
	use std::io::BufReader;
	use std::fs::File;

	let mut store = init_store();
	let f = File::open("test-wasms/simple.wasm").unwrap();
	let m = decode_module(BufReader::new(f)).unwrap();
	let mib = instantiate_module(&mut store, m, &[]).unwrap();

	assert_eq!(size_mem(&store, MemAddr::new(0)), 1);
	assert_eq!(size_table(&store, TableAddr::new(0)), 0);
	assert_eq!(type_func(&store, FuncAddr::new(0)), types::Func { args: Vec::new(), result: vec![types::Value::Int(types::Int::I32)] });

	assert_eq!(get_export(&mib, "memory").unwrap(), ExternVal::Memory(MemAddr::new(0)));
	assert_eq!(get_export(&mib, "main").unwrap(), ExternVal::Func(FuncAddr::new(0)));
}


#[test]
fn elem_size_error() {
	let mut store = init_store();
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
	assert_eq!(instantiate_module(&mut store, m, &[]).err(), Some(Error::ElemOffsetTooLarge(0)));
}

#[test]
fn data_size_error() {
	let mut store = init_store();
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
	assert_eq!(instantiate_module(&mut store, m, &[]).err(), Some(Error::DataOffsetTooLarge(0)));
}

#[test]
fn memory_init_other_module_private() {
	let mut store = init_store();
	let mut m1 = Module::empty();
	m1.memories.push(ast::Memory {
		type_: types::Memory {
			limits: types::Limits { min: 1, max: None }
		},
	});
	m1.exports.push(ast::Export { name: String::from("mem"), desc: ast::ExportDesc::Memory(0) });
	let m1b = instantiate_module(&mut store, m1, &[]);
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
	assert_eq!(instantiate_module(&mut store, m2, &vec![ExternVal::Memory(MemAddr::new(0))]).err(), Some(Error::DataOffsetTooLarge(0)));
}

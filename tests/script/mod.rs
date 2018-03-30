mod parser;

use std::{f32, f64};
use std::rc::Rc;
use std::fs::File;
use std::path::Path;
use std::io::{Cursor, Read};
use std::collections::HashMap;
use rust_wasm::*;

#[derive(Debug)]
pub enum Cmd {
	ModuleSource(ModuleSource),
	Register { name: String, mod_ref: Option<String> },
	Action(Action),
	Assertion(Assertion),
}

#[derive(Debug)]
pub enum ModuleSource {
	Binary(Option<String>, Vec<u8>),
	Quoted(Option<String>, Vec<u8>),
}

#[derive(Debug)]
pub enum Assertion {
	Return(Action, Vec<values::Value>),
	ReturnCanonicalNan(Action),
	ReturnArithmeticNan(Action),
	TrapAction(Action, String),
	TrapInstantiate(ModuleSource, String),
	Exhaustion(Action, String),
	Invalid(ModuleSource, String),
	Malformed(ModuleSource, String),
	Unlinkable(ModuleSource, String),
}

#[derive(Debug)]
pub enum Action {
	Invoke { mod_ref: Option<String>, func: String, args: Vec<values::Value> },
	Get { mod_ref: Option<String>, global: String },
}

// There are two kinds of export HashMaps.
// 1. for module exports, where the requested import type does not matter
// 2. for host exports, where the type of the import matters
// https://github.com/WebAssembly/spec/blob/ad2fe24c7350ecba9dd804c91a7a38d79a373a22/interpreter/host/spectest.ml#L33
type ExportHashKey = Option<String>;
type HostLookupFunctionPointer = Rc<Fn(&mut Store, &String, &types::Extern) -> Option<ExternVal>>; // Use Rc to allow cloning the ExportHashValue
#[derive(Clone)]
enum ExportHashValue {
	Module(HashMap<String, ExternVal>),
	Host(HostLookupFunctionPointer),
}
struct ExportHashMap {
	hm: HashMap<ExportHashKey, ExportHashValue>,
	last_key: ExportHashKey,
}

pub fn run<P: AsRef<Path>>(path: P) {
	let mut f = File::open(path).unwrap();
	let mut src = String::new();
	f.read_to_string(&mut src).unwrap();
	let parser = parser::Parser::new(&src);

	let mut store = init_store();
	let mut instances = ExportHashMap {
		hm: HashMap::new(),
		last_key: None,
	};

	// Special test host module
	init_spectest(&mut store, &mut instances);

	for cmd in parser {
		match cmd {
			Cmd::ModuleSource(src) => {
				let (opt_name, m) = decode_module_src(&src);

				let extern_vals = resolve_imports(&m, &mut store, &mut instances);

				let mut all_exports = Vec::new();
				for (export_name, _) in module_exports(&m) {
					all_exports.push(export_name);
				}

				let inst = instantiate_module(&mut store, m, &extern_vals[..]).unwrap();

				let mut export_vals_hm: HashMap<String, ExternVal> = HashMap::new();
				for export_name in all_exports {
					let extern_val = get_export(&inst, &export_name).unwrap();
					export_vals_hm.insert(export_name, extern_val);
				}
				instances.last_key = opt_name.clone();
				instances.hm.insert(opt_name, ExportHashValue::Module(export_vals_hm));

			}
			Cmd::Assertion(a) => {
				run_assertion(&mut store, &instances, a);
			}
			Cmd::Action(a) => {
				let _ = run_action(&mut store, &instances, &a);
			}
			Cmd::Register { name, mod_ref } => {
				let mod_name = match mod_ref {
					None => &instances.last_key,
					Some(_) => &mod_ref,
				};
				let inst = instances.hm[&mod_name].clone();
				instances.hm.insert(Some(name), inst);
			}
		}
	}
}

fn decode_module_src(module: &ModuleSource) -> (Option<String>, ast::Module) {
	match *module {
		ModuleSource::Binary(ref name, ref bytes) => (name.clone(), decode_module(Cursor::new(bytes)).unwrap()),
		ModuleSource::Quoted(_, _) => unimplemented!("quoted modules are not supported"),
	}
}

fn run_assertion(store: &mut Store, instances: &ExportHashMap, assertion: Assertion) {
	use self::Assertion::*;

	println!("run assertion {:?}", assertion);
	match assertion {
		Return(action, expected) => {
			let result = run_action(store, instances, &action);
			match result {
				Ok(ref actual) if *actual == expected => {}
				_ => {
					panic!(
						"the result of the action `{:?}` is `{:?}` but should be `{:?}`",
						action, result, expected,
					);
				}
			}
		}
		ReturnCanonicalNan(action) => {
			let result = run_action(store, instances, &action).unwrap();
			assert!(result.len() == 1);
			let val = result[0];
			match val {
				values::Value::F32(f) if f.to_bits() == f32::NAN.to_bits() || f.to_bits() == (-f32::NAN).to_bits() => {},
				values::Value::F64(f) if f.to_bits() == f64::NAN.to_bits() || f.to_bits() == (-f64::NAN).to_bits() => {},
				_ => {
					panic!(
						"the result of the action `{:?}` is `{:?}` but should be a canonical NaN",
						action, result,
					);
				}
			};
		}
		ReturnArithmeticNan(action) => {
			let result = run_action(store, instances, &action).unwrap();
			assert!(result.len() == 1);
			let val = result[0];
			match val {
				values::Value::F32(f) if f.to_bits() & f32::NAN.to_bits() == f32::NAN.to_bits() => {},
				values::Value::F64(f) if f.to_bits() & f64::NAN.to_bits() == f64::NAN.to_bits() => {},
				_ => {
					panic!(
						"the result of the action `{:?}` is `{:?}` but should be an arithmetic NaN",
						action, result,
					);
				}
			};
		}
		TrapAction(action, _) => {
			if let Err(Error::CodeTrapped(_)) = run_action(store, instances, &action) {
				// There is no if let != in Rust?
			} else {
				panic!("the action `{:?}` should cause a trap", action);
			}
		}
		TrapInstantiate(module, _) => {
			let (_, m) = decode_module_src(&module);
			let extern_vals = resolve_imports(&m, store, instances);
			if let Err(Error::CodeTrapped(_)) = instantiate_module(store, m, &extern_vals[..]) {
			} else {
				panic!("instantiating module `{:?}` should cause a trap", module);
			}
		}
		Exhaustion(action, reason) => {
			match (reason.as_ref(), run_action(store, instances, &action)) {
				("call stack exhausted", Err(Error::StackOverflow)) => (),
				(reason, err) => panic!("the action `{:?}` should cause a stack overflow (reason = {}, err = {:?})", action, reason, err),
			};
		}
		Invalid(module, reason) => {
			let (_, m) = decode_module_src(&module);
			// Do not resolve the imports for invalid modules
			match (reason, instantiate_module(store, m, &[]).err()) {
				(_, Some(Error::InvalidModule)) => (),
				(reason, err) => panic!("instantiating module `{:?}` should not be valid (reason = {}, err = {:?})", module, reason, err),
			}
		}
		Malformed(mod_src, _) => {
			match mod_src {
				ModuleSource::Binary(_, bytes) => {
					assert_eq!(decode_module(Cursor::new(bytes)).unwrap_err(), Error::DecodeModuleFailed);
				},
				ModuleSource::Quoted(_, _) => {
					// NB: quoted sources use text format, which we do not support
				}
			}
		}
		Unlinkable(module, reason) => {
			let (_, m) = decode_module_src(&module);

			let extern_vals = resolve_imports(&m, store, instances);
			match (reason.as_ref(), instantiate_module(store, m, &extern_vals[..]).err()) {
				("unknown import", Some(Error::NotEnoughExternVal)) => (),
				("incompatible import type", Some(Error::ImportTypeMismatch)) => (),
				("elements segment does not fit", Some(Error::ElemOffsetTooLarge(_))) => (),
				("data segment does not fit", Some(Error::DataOffsetTooLarge(_))) => (),
				(reason, err) => panic!("instantiating module `{:?}` should not link (reason = {}, err = {:?})", module, reason, err),
			}
		}
	}
}

fn run_action(store: &mut Store, instances: &ExportHashMap, action: &Action) -> Result<Vec<values::Value>, Error> {
	match *action {
		Action::Invoke { mod_ref: ref mod_name, ref func, ref args } => {
			let mod_name = match mod_name {
				&None => &instances.last_key,
				&Some(_) => mod_name,
			};
			let extern_val = match instances.hm[mod_name] {
				ExportHashValue::Module(ref hm) => hm[func],
				ExportHashValue::Host(_) => unreachable!(),
			};
			match extern_val {
				ExternVal::Func(addr) => {
					invoke_func(store, addr, args.clone())
				}
				_ => panic!("extern val should be a function"),
			}
		}
		Action::Get { mod_ref: ref mod_name, ref global } => {
			let mod_name = match mod_name {
				&None => &instances.last_key,
				&Some(_) => mod_name,
			};
			let extern_val = match instances.hm[mod_name] {
				ExportHashValue::Module(ref hm) => hm[global],
				ExportHashValue::Host(_) => unreachable!(),
			};
			match extern_val {
				ExternVal::Global(addr) => {
					Ok(vec![read_global(store, addr)])
				}
				_ => panic!("extern val should be a global"),
			}
		}
	}
}

fn init_spectest(store: &mut Store, instances: &mut ExportHashMap) {
	let table_addr = ExternVal::Table(
		alloc_table(
			store,
			&types::Table { limits: types::Limits { min: 10, max: Some(20) }, elem: types::Elem::AnyFunc }
		)
	);

	let memory_addr = ExternVal::Memory(
		alloc_mem(
			store,
			&types::Memory { limits: types::Limits { min: 1, max: Some(2) } }
		)
	);

	fn print(store: &mut Store, args_types: Vec<types::Value>) -> Option<ExternVal> {
		let args_len = args_types.len();
		let func = move |stack: &mut Vec<values::Value>| {
			for val in &stack[(stack.len() - args_len)..stack.len()] {
				println!("{:?}", val);
			}
			None
		};

		Some(ExternVal::Func(
			alloc_func(
				store,
				&types::Func { args: args_types, result: Vec::new() },
				Box::new(func)
			)
		))
	}

	fn global(store: &mut Store, val: values::Value) -> Option<ExternVal> {
		Some(ExternVal::Global(
			alloc_global(
				store,
				&types::Global { value: val.type_(), mutable: false },
				val
			)
		))
	}

	let lookup = move |store: &mut Store, name: &String, type_: &types::Extern| {
		match (name.as_ref(), type_) {
			("print", _) => print(store, vec![]),
			("print_i32", _) => print(store, vec![types::I32]),
			("print_i32_f32", _) => print(store, vec![types::I32, types::F32]) ,
			("print_f32", _) => print(store, vec![types::F32]),
			("print_f64", _) => print(store, vec![types::F64]),
			("print_f64_f64", _) => print(store, vec![types::F64, types::F64]),
			("global_i32", _) => global(store, values::Value::I32(666)),
			("global_f32", _) => global(store, values::Value::F32(666.0)),
			("global_f64", _) => global(store, values::Value::F64(666.0)),
			("table", _) => Some(table_addr),
			("memory", _) => Some(memory_addr),
			_ => None
		}
	};

	instances.hm.insert(Some(String::from("spectest")), ExportHashValue::Host(Rc::new(lookup)));
}

fn resolve_imports(m: &ast::Module, store: &mut Store, instances: &ExportHashMap) -> Vec<ExternVal> {
	let mut extern_vals = Vec::new();
	for (mod_name, import_name, type_) in module_imports(m) {
		let val = match &instances.hm.get(&Some(mod_name)) {
			&Some(&ExportHashValue::Module(ref hm)) => {
				match hm.get(&import_name) {
					Some(val) => val.clone(),
					None => continue,
				}
			},
			&Some(&ExportHashValue::Host(ref lookup)) => {
				match lookup(store, &import_name, &type_) {
					Some(val) => val.clone(),
					None => continue,
				}
			},
			&None => continue,
		};
		extern_vals.push(val);
	}
	extern_vals
}

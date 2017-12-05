mod parser;

use std::io::Cursor;
use std::rc::Rc;
use std::collections::HashMap;
use rust_wasm::*;

pub type Script = Vec<Cmd>;

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
	Text(Option<String>, String),
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

pub fn run(input: &str) {
	let script = parser::parse_script(input).unwrap();
	let mut store = init_store();
	let mut instances: HashMap<Option<String>, Rc<ModuleInst>> = HashMap::new();

	let mut ok = 0;
	let mut ko = 0;

	for cmd in script {
		match cmd {
			Cmd::ModuleSource(src) => {
				let (opt_name, m) = decode_module_src(&src);

				let mut extern_vals = Vec::new();
				for (mod_name, import_name, _) in module_imports(&m) {
					extern_vals.push(get_export(&instances[&Some(mod_name)], &import_name).unwrap());
				}

				let mut extern_vals = Vec::new();
				for (mod_name, import_name, _) in module_imports(&m) {
					extern_vals.push(get_export(&instances[&Some(mod_name)], &import_name).unwrap());
				}

				let inst = instantiate_module(&mut store, m, &extern_vals[..]).unwrap();
				instances.insert(opt_name, inst);
			}
			Cmd::Assertion(Assertion::Malformed(_, _)) => {} // FIXME: this line is temporary for counting
			Cmd::Assertion(a) => {
				match run_assertion(&mut store, &instances, a) {
					Ok(()) => ok += 1,
					Err(e) => ko += 1,
				}
			}
			Cmd::Action(a) => {
				let _ = run_action(&mut store, &instances, &a);
			}
			Cmd::Register { name, mod_ref } => {
				let inst = instances[&mod_ref].clone();
				instances.insert(Some(name), inst);
			}
		}
	}

	println!("{} KO out of {}", ko, ok+ko);
}

fn decode_module_src(module: &ModuleSource) -> (Option<String>, ast::Module) {
	match *module {
		ModuleSource::Binary(ref name, ref bytes) => (name.clone(), decode_module(Cursor::new(bytes)).unwrap()),
		ModuleSource::Text(_, _) => unimplemented!("quoted modules are not supported"),
	}
}

fn run_assertion(store: &mut Store, instances: &HashMap<Option<String>, Rc<ModuleInst>>, assertion: Assertion) -> Result<(), String> {
	use self::Assertion::*;

	match assertion {
		Return(action, expected) => {
			let result = run_action(store, instances, &action);
			match result {
				Ok(ref actual) if *actual == expected => {}
				_ => {
					return Err(format!(
						"the result of the action `{:?}` is `{:?}` but should be `{:?}`",
						action, result, expected,
					));
				}
			}
		}
		ReturnCanonicalNan(action) => {
			// cf https://github.com/WebAssembly/spec/blob/master/interpreter/script/run.ml#L386
			unimplemented!("assert_return_canonical_nan")
		}
		ReturnArithmeticNan(action) => {
			// cf https://github.com/WebAssembly/spec/blob/master/interpreter/script/run.ml#L396
			unimplemented!("assert_return_arithmetic_nan")
		}
		TrapAction(action, _) => {
			if run_action(store, instances, &action) != Err(Error::CodeTrapped) {
				return Err(format!("the action `{:?}` should cause a trap", action));
			}
		}
		TrapInstantiate(module, _) => {
			let (_, m) = decode_module_src(&module);
			// TODO: imports
			if instantiate_module(store, m, &[]).err().unwrap() != Error::CodeTrapped {
				return Err(format!("instantiating module `{:?}` should cause a trap", module));
			}
		}
		Exhaustion(action, _) => {
			unimplemented!("assert_exhaustion")
		}
		Invalid(module, _) => {
			let (_, m) = decode_module_src(&module);
			// TODO: imports
			if instantiate_module(store, m, &[]).err().unwrap() != Error::InvalidModule {
				return Err(format!("instantiating module `{:?}` should not be possible because it is invalid", module));
			}
		}
		Malformed(_, _) => {
			// NB: only quoted module may be malformed and we do not suport them
			// TODO: there are binary sources in there too
		}
		Unlinkable(module, _) => {
			unimplemented!("assert_unlinkable")
		}
	}

	Ok(())
}

fn run_action(store: &mut Store, instances: &HashMap<Option<String>, Rc<ModuleInst>>, action: &Action) -> Result<Vec<values::Value>, Error> {
	match *action {
		Action::Invoke { mod_ref: ref mod_name, ref func, ref args } => {
			let extern_val = get_export(&instances[mod_name], func).unwrap();
			match extern_val {
				ExternVal::Func(addr) => {
					invoke_func(store, addr, args.clone())
				}
				_ => panic!("extern val should be a function"),
			}
		}
		Action::Get { mod_ref: ref mod_name, ref global } => {
			let extern_val = get_export(&instances[mod_name], global).unwrap();
			match extern_val {
				ExternVal::Global(addr) => {
					Ok(vec![read_global(store, addr)])
				}
				_ => panic!("extern val should be a global"),
			}
		}
	}
}

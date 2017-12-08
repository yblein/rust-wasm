mod parser;

use std::{f32, f64};
use std::io::Cursor;
use std::rc::Rc;
use std::collections::HashMap;
use std::convert::TryFrom;
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

	for cmd in script {
		match cmd {
			Cmd::ModuleSource(src) => {
				let (opt_name, m) = decode_module_src(&src);

				let mut extern_vals = Vec::new();
				for (mod_name, import_name, _) in module_imports(&m) {
					if mod_name == "spectest" {
						unimplemented!("spectest host module");
					}
					extern_vals.push(get_export(&instances[&Some(mod_name)], &import_name).unwrap());
				}

				let inst = instantiate_module(&mut store, m, &extern_vals[..]).unwrap();
				instances.insert(opt_name, inst);
			}
			Cmd::Assertion(a) => {
				run_assertion(&mut store, &instances, a);
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
}

fn decode_module_src(module: &ModuleSource) -> (Option<String>, ast::Module) {
	match *module {
		ModuleSource::Binary(ref name, ref bytes) => (name.clone(), decode_module(Cursor::new(bytes)).unwrap()),
		ModuleSource::Text(_, _) => unimplemented!("quoted modules are not supported"),
	}
}

fn run_assertion(store: &mut Store, instances: &HashMap<Option<String>, Rc<ModuleInst>>, assertion: Assertion) {
	use self::Assertion::*;

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
				values::Value::F32(f) if f == f32::NAN || f == -f32::NAN => {},
				values::Value::F64(f) if f == f64::NAN || f == -f64::NAN => {},
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
			// TODO: imports
			if let Err(Error::CodeTrapped(_)) = instantiate_module(store, m, &[]) {
			} else {
				panic!("instantiating module `{:?}` should cause a trap", module);
			}
		}
		Exhaustion(action, _) => {
			unimplemented!("assert_exhaustion")
		}
		Invalid(module, _) => {
			let (_, m) = decode_module_src(&module);
			// TODO: imports
			let res =  instantiate_module(store, m, &[]);
			if !res.is_err() || res.err().unwrap() != Error::InvalidModule {
				panic!("instantiating module `{:?}` should not be possible because it is invalid", module);
			}
		}
		Malformed(mod_src, _) => {
			match mod_src {
				ModuleSource::Binary(_, bytes) => {
					assert_eq!(decode_module(Cursor::new(bytes)).unwrap_err(), Error::DecodeModuleFailed);
				},
				ModuleSource::Text(_, _) => {
					// NB: only quoted module may be malformed and we do not suport them
				}
			}
		}
		Unlinkable(module, _) => {
			unimplemented!("assert_unlinkable")
		}
	}
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

fn unescape<'a>(s: &'a str) -> String {
	let mut res = String::new();

	enum State {
		Normal,
		Esc,
		Unicode,
		Scalar(u32),
	}

	let mut state = State::Normal;

	for c in s.chars() {
		match state {
			State::Normal => match c {
				'\\' => state = State::Esc,
				_ => res.push(c),
			},
			State::Esc => match c {
				't' => {
					res.push('\t');
					state = State::Normal;
				}
				'n' => {
					res.push('\n');
					state = State::Normal;
				}
				'r' => {
					res.push('\r');
					state = State::Normal;
				}
				'\"' => {
					res.push('\"');
					state = State::Normal;
				}
				'\'' => {
					res.push('\'');
					state = State::Normal;
				}
				'\\' => {
					res.push('\\');
					state = State::Normal;
				}
				'u' => {
					state = State::Unicode;
				}
				_ => panic!("unexpected escape `{}`", c),
			},
			State::Unicode => match c {
				'{' => {
					state = State::Scalar(0);
				}
				_ => panic!("expected `{{`, found `{}`", c),
			}
			State::Scalar(v) => match c {
				'}' => {
					res.push(char::try_from(v).expect("invalid unicode point"));
					state = State::Normal;
				}
				_ => {
					state = State::Scalar(v << 4 | c.to_digit(16).expect("expected hex digit"));
				}
			}
		}
	}

	res
}

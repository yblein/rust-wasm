mod parser;

use rust_wasm::values::Value;

pub type Script = Vec<Cmd>;

#[derive(Debug)]
pub enum Cmd {
	Module(Module),
	Register { name: String, module: Option<String> },
	Action(Action),
	Assertion(Assertion),
}

#[derive(Debug)]
pub enum Module {
	Binary(Option<String>, Vec<u8>),
	Text(Option<String>, String),
}

#[derive(Debug)]
pub enum Assertion {
	Return(Action, Vec<Value>),
	ReturnCanonicalNan(Action),
	ReturnArithmeticNan(Action),
	TrapAction(Action, String),
	TrapInstantiate(Module, String),
	Exhaustion(Action, String),
	Invalid(Module, String),
	Malformed(Module, String),
	Unlinkable(Module, String),
}

#[derive(Debug)]
pub enum Action {
	Invoke { module: Option<String>, func: String, args: Vec<Value> },
	Get { module: Option<String>, global: String },
}

pub fn parse(input: &str) -> Script {
	parser::parse_script(input).unwrap()
}

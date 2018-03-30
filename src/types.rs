#[derive(Debug, PartialEq, Clone, Copy)]
pub enum Float {
	F32,
	F64,
}

#[derive(Debug, PartialEq, Clone, Copy)]
pub enum Int {
	I32,
	I64,
}

#[derive(Debug, PartialEq, Clone, Copy)]
pub enum Value {
	Int(Int),
	Float(Float),
}

impl Value {
	pub fn bit_width(&self) -> u32 {
		match *self {
			Value::Int(Int::I32) | Value::Float(Float::F32) => 32,
			Value::Int(Int::I64) | Value::Float(Float::F64) => 64,
		}
	}
}

// Useful aliases for value types
pub static I32: Value = Value::Int(Int::I32);
pub static I64: Value = Value::Int(Int::I64);
pub static F32: Value = Value::Float(Float::F32);
pub static F64: Value = Value::Float(Float::F64);


#[derive(Debug, Clone, PartialEq)]
pub enum Elem {
	AnyFunc,
}

#[derive(Debug, Clone, PartialEq)]
pub struct Func {
	pub args: Vec<Value>,
	pub result: Vec<Value>,
}

// Note: Do not implement PartialEq on Limits, Limits comparison is specified and not straightforward
#[derive(Debug, Clone)]
pub struct Limits {
	pub min: u32,
	pub max: Option<u32>,
}

#[derive(Debug, Clone)]
pub struct Table {
	pub limits: Limits,
	pub elem: Elem,
}

#[derive(Debug, Clone)]
pub struct Memory {
	pub limits: Limits,
}

#[derive(Debug, Clone, PartialEq)]
pub struct Global {
	pub value: Value,
	pub mutable: bool,
}

/// Types of elements defined externally to the module
#[derive(Debug)]
pub enum Extern {
	Func(Func),
	Table(Table),
	Memory(Memory),
	Global(Global),
}

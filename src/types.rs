#[derive(Debug, Clone, Copy, PartialEq)]
pub enum Float {
	F32,
	F64,
}

#[derive(Debug, Clone, Copy, PartialEq)]
pub enum Int {
	I32,
	I64,
}

#[derive(Debug, Clone, PartialEq)]
pub enum Value {
	Int(Int),
	Float(Float),
}

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

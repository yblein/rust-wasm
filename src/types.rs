pub enum Float {
	F32, F64,
}

pub enum Int {
	I32, I64,
}

pub enum Value {
	Int(Int),
	Float(Float),
}

pub enum Elem {
	AnyFunc,
}

pub struct Func {
	pub args: Vec<Value>,
	pub result: Vec<Value>,
}


pub struct Limits {
	pub min: u32,
	pub max: Option<u32>,
}

pub struct Table {
	pub limits: Limits,
	pub elem: Elem,
}

pub struct Memory {
	pub limits: Limits,
}

pub struct Global {
	pub value: Value,
	pub mutable: bool,
}

/// Types of elements defined externally to the module
pub enum Extern {
	Func(Func),
	Table(Table),
	Memory(Memory),
	Global(Global),
}

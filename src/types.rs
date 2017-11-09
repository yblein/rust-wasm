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
	args: Vec<Value>,
	result: Vec<Value>,
}


pub struct Limits {
	min: u32,
	max: Option<u32>,
}

pub struct Table {
	limits: Limits,
	elem: Elem,
}

pub struct Memory {
	limits: Limits,
}

pub struct Global {
	value: Value,
	mutable: bool,
}

/// Types of elements defined externally to the module
pub enum Extern {
	Func(Func),
	Table(Table),
	Memory(Memory),
	Global(Global),
}

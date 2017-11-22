#[derive(Debug, Clone)]
pub enum Float {
	F32,
	F64,
}

#[derive(Debug, Clone)]
pub enum Int {
	I32,
	I64,
}

#[derive(Debug, Clone)]
pub enum Value {
	Int(Int),
	Float(Float),
}

#[derive(Debug)]
pub enum Elem {
	AnyFunc,
}

#[derive(Debug)]
pub struct Func {
	pub args: Vec<Value>,
	pub result: Vec<Value>,
}


#[derive(Debug)]
pub struct Limits {
	pub min: u32,
	pub max: Option<u32>,
}

#[derive(Debug)]
pub struct Table {
	pub limits: Limits,
	pub elem: Elem,
}

#[derive(Debug)]
pub struct Memory {
	pub limits: Limits,
}

#[derive(Debug)]
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

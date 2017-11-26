use types;

#[derive(Debug, PartialEq, Clone, Copy)]
pub enum Value {
	I32(u32),
	I64(u64),
	F32(f32),
	F64(f64),
}

impl Value {
	pub fn from_i32(v: i32) -> Value {
		Value::I32(v as u32)
	}

	pub fn from_i64(v: i64) -> Value {
		Value::I64(v as u64)
	}

	pub fn from_bool(v: bool) -> Value {
		if v {
			Value::true_()
		} else {
			Value::false_()
		}
	}

	pub fn false_() -> Value {
		Value::I32(0)
	}

	pub fn true_() -> Value {
		Value::I32(1)
	}

	pub fn type_(&self) -> types::Value {
		match *self {
			Value::I32(_) => types::Value::Int(types::Int::I32),
			Value::I64(_) => types::Value::Int(types::Int::I64),
			Value::F32(_) => types::Value::Float(types::Float::F32),
			Value::F64(_) => types::Value::Float(types::Float::F64),
		}
	}
}

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
}

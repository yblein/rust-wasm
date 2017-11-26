use vm;
use ast::*;
use types;
use values::Value;
use ops::{IntOp,FloatOp,FloatDemoteOp,FloatPromoteOp};


/// A struct storing the state of the current interpreted
pub struct Interpreter {
	stack: Vec<Value>,
	vm: vm::VM,
}

#[derive(Debug, PartialEq)]
/// Causes at the origin of a trap.
pub enum TrapOrigin {
	Unreachable,
	UndefinedResult,
}

#[derive(Debug, PartialEq)]
pub struct Trap {
	/// Original cause of the trap. Useful for debugging.
	pub origin: TrapOrigin
}

#[derive(Debug, PartialEq)]
enum Control {
	Continue,
}

use self::Control::*;

type IntResult = Result<Control, Trap>;

impl Interpreter {
	/// Instantiate a new interpreter
	pub fn new(vm: vm::VM) -> Interpreter {
		Interpreter {
			stack: Vec::new(),
			vm: vm
		}
	}

	/// Intrepret a single instruction.
	/// This is the main dispatching function of the interpreter.
	fn instr(&mut self, instr: &Instr) -> IntResult {
		use ast::Instr::*;

		match *instr {
			Unreachable => self.unreachable(),
			Nop => self.nop(),
			Const(c) => self.const_(c),
			IUnary(ref t, ref op) => self.iunary(t, op),
			FUnary(ref t, ref op) => self.funary(t, op),
			IBin(ref t, ref op) => self.ibin(t, op),
			FBin(ref t, ref op) => self.fbin(t, op),
			ITest(ref t, ref op) => self.itest(t, op),
			IRel(ref t, ref op) => self.irel(t, op),
			FRel(ref t, ref op) => self.frel(t, op),
			Convert(ref op) => self.cvtop(op),
			_ => unimplemented!()
		}
	}

	/// Raises an unconditional trap
	fn unreachable(&self) -> IntResult {
		Err(Trap { origin: TrapOrigin::Unreachable })
	}

	/// Do nothing
	fn nop(&self) -> IntResult {
		Ok(Continue)
	}

	/// Push c to the stack
	fn const_(&mut self, c: Value) -> IntResult {
		self.stack.push(c);
		Ok(Continue)
	}

	/// Dispatch an IUnop
	fn iunary(&mut self, _t: &types::Int, op: &IUnOp) -> IntResult {
		// Validation should assert that the top of the stack exists and has the type t
		let v = match self.stack.pop().unwrap() {
			Value::I32(c) => Value::I32(self.type_iunary(c, op)),
			Value::I64(c) => Value::I64(self.type_iunary(c, op)),
			_ => unreachable!(),
		};
		self.stack.push(v);
		Ok(Continue)
	}

	fn type_iunary<T>(&self, v: T, op: &IUnOp) -> T
		where T: IntOp
	{
		match *op {
			IUnOp::Clz => v.leading_zeros(),
			IUnOp::Ctz => v.trailing_zeros(),
			IUnOp::Popcnt => v.count_ones(),
		}
	}

	/// Dispatch an FUnOp
	fn funary(&mut self, _t: &types::Float, op: &FUnOp) -> IntResult {
		// Validation should assert that the top of the stack exists and has the type t
		let v = match self.stack.pop().unwrap() {
			Value::F32(c) => Value::F32(self.type_funary(c, op)),
			Value::F64(c) => Value::F64(self.type_funary(c, op)),
			_ => unreachable!(),
		};
		self.stack.push(v);
		Ok(Continue)
	}

	fn type_funary<T>(&self, v: T, op: &FUnOp) -> T
		where T: FloatOp
	{
		match *op {
			FUnOp::Neg => v.neg(),
			FUnOp::Abs => v.abs(),
			FUnOp::Ceil => v.ceil(),
			FUnOp::Floor => v.floor(),
			FUnOp::Trunc => v.trunc(),
			FUnOp::Nearest => v.nearest(),
			FUnOp::Sqrt => v.sqrt(),
		}
	}

	/// Dispatch an IBinOp
	fn ibin(&mut self, _t: &types::Int, op: &IBinOp) -> IntResult {
		// Validation should assert that there are two values on top of the
		// stack having the same integer type t
		let res = match self.pop2() {
			(Value::I32(c1), Value::I32(c2)) => self.type_ibin(c1, c2, op).map(Value::I32),
			(Value::I64(c1), Value::I64(c2)) => self.type_ibin(c1, c2, op).map(Value::I64),
			_ => unreachable!(),
		};

		if let Some(v) = res {
			self.stack.push(v);
			Ok(Continue)
		} else {
			Err(Trap { origin: TrapOrigin::UndefinedResult })
		}
	}

	// type_ibin returns None if the result is undefined
	fn type_ibin<T>(&self, c1: T, c2: T, op: &IBinOp) -> Option<T>
		where T: IntOp
	{
		let res = match *op {
			IBinOp::Add => c1.add(c2),
			IBinOp::Sub => c1.sub(c2),
			IBinOp::Mul => c1.mul(c2),
			IBinOp::DivS => c1.divs(c2)?,
			IBinOp::DivU => c1.divu(c2)?,
			IBinOp::RemS => c1.rems(c2)?,
			IBinOp::RemU => c1.remu(c2)?,
			IBinOp::And => c1.and(c2),
			IBinOp::Or => c1.or(c2),
			IBinOp::Xor => c1.xor(c2),
			IBinOp::Shl => c1.shl(c2),
			IBinOp::ShrS => c1.shrs(c2),
			IBinOp::ShrU => c1.shru(c2),
			IBinOp::Rotr => c1.rotr(c2),
			IBinOp::Rotl => c1.rotl(c2),
		};
		Some(res)
	}


	/// Dispatch an FBinOp
	fn fbin(&mut self, _t: &types::Float, op: &FBinOp) -> IntResult {
		// Validation should assert that there are two values on top of the
		// stack having the same type t
		let res = match self.pop2() {
			(Value::F32(c1), Value::F32(c2)) => Value::F32(self.type_fbin(c1, c2, op)),
			(Value::F64(c1), Value::F64(c2)) => Value::F64(self.type_fbin(c1, c2, op)),
			_ => unreachable!(),
		};
		self.stack.push(res);
		Ok(Continue)
	}

	fn type_fbin<T>(&self, c1: T, c2: T, op: &FBinOp) -> T
		where T: FloatOp
	{
		match *op {
			FBinOp::Add => c1.add(c2),
			FBinOp::Sub => c1.sub(c2),
			FBinOp::Mul => c1.mul(c2),
			FBinOp::Div => c1.div(c2),
			FBinOp::Min => c1.min(c2),
			FBinOp::Max => c1.max(c2),
			FBinOp::CopySign => c1.copysign(c2),
		}
	}

	/// Dispatch an ITestOp
	fn itest(&mut self, _t: &types::Int, op: &ITestOp) -> IntResult {
		// Validation should assert that the top of the stack exists and has the type t
		let v = match self.stack.pop().unwrap() {
			Value::I32(c) => Value::from_bool(self.type_itest(c, op)),
			Value::I64(c) => Value::from_bool(self.type_itest(c, op)),
			_ => unreachable!(),
		};
		self.stack.push(v);
		Ok(Continue)
	}

	fn type_itest<T>(&self, v: T, op: &ITestOp) -> bool
		where T: IntOp
	{
		match *op {
			ITestOp::Eqz => v.eqz(),
		}
	}

	/// Dispatch an IRelOp
	fn irel(&mut self, _t: &types::Int, op: &IRelOp) -> IntResult {
		// Validation should assert that there are two values on top of the
		// stack having the same integer type t
		let res = match self.pop2() {
			(Value::I32(c1), Value::I32(c2)) => Value::from_bool(self.type_irel(c1, c2, op)),
			(Value::I64(c1), Value::I64(c2)) => Value::from_bool(self.type_irel(c1, c2, op)),
			_ => unreachable!(),
		};
		self.stack.push(res);
		Ok(Continue)
	}

	fn type_irel<T>(&self, c1: T, c2: T, op: &IRelOp) -> bool
		where T: IntOp
	{
		match *op {
			IRelOp::Eq_ => c1.eq(c2),
			IRelOp::Ne => c1.ne(c2),
			IRelOp::LtS => c1.lts(c2),
			IRelOp::LtU => c1.ltu(c2),
			IRelOp::GtS => c1.gts(c2),
			IRelOp::GtU => c1.gtu(c2),
			IRelOp::LeS => c1.les(c2),
			IRelOp::LeU => c1.leu(c2),
			IRelOp::GeS => c1.ges(c2),
			IRelOp::GeU => c1.geu(c2),
		}
	}

	/// Dispatch an FRelOp
	fn frel(&mut self, _t: &types::Float, op: &FRelOp) -> IntResult {
		// Validation should assert that there are two values on top of the
		// stack having the same integer type t
		let res = match self.pop2() {
			(Value::F32(c1), Value::F32(c2)) => Value::from_bool(self.type_frel(c1, c2, op)),
			(Value::F64(c1), Value::F64(c2)) => Value::from_bool(self.type_frel(c1, c2, op)),
			_ => unreachable!(),
		};
		self.stack.push(res);
		Ok(Continue)
	}

	fn type_frel<T>(&self, c1: T, c2: T, op: &FRelOp) -> bool
		where T: FloatOp
	{
		match *op {
			FRelOp::Eq_ => c1.eq(c2),
			FRelOp::Ne => c1.ne(c2),
			FRelOp::Lt => c1.lt(c2),
			FRelOp::Gt => c1.gt(c2),
			FRelOp::Le => c1.le(c2),
			FRelOp::Ge => c1.ge(c2),
		}
	}

	/// Dispatch a ConvertOp
	fn cvtop(&mut self, op: &ConvertOp) -> IntResult {
		use types::{Int, Float};
		use types::Value as tv;

		let c = self.stack.pop().unwrap();
		let cls = |&op, &c| {
			Some(match (op, c) {
				(&ConvertOp::I32WrapI64, Value::I64(c)) => Value::I32(c.to_u32()),
				(&ConvertOp::I64ExtendUI32, Value::I32(c)) => Value::I64(c.to_u64()),
				(&ConvertOp::I64ExtendSI32, Value::I32(c)) => Value::from_i64(c.to_i64()),

				(&ConvertOp::Trunc{from: Float::F32, to: Int::I32, signed: false}, Value::F32(c)) => Value::I32(c.to_u32()?),
				(&ConvertOp::Trunc{from: Float::F32, to: Int::I32, signed: true }, Value::F32(c)) => Value::from_i32(c.to_i32()?),
				(&ConvertOp::Trunc{from: Float::F32, to: Int::I64, signed: false}, Value::F32(c)) => Value::I64(c.to_u64()?),
				(&ConvertOp::Trunc{from: Float::F32, to: Int::I64, signed: true }, Value::F32(c)) => Value::from_i64(c.to_i64()?),
				(&ConvertOp::Trunc{from: Float::F64, to: Int::I32, signed: false}, Value::F64(c)) => Value::I32(c.to_u32()?),
				(&ConvertOp::Trunc{from: Float::F64, to: Int::I32, signed: true }, Value::F64(c)) => Value::from_i32(c.to_i32()?),
				(&ConvertOp::Trunc{from: Float::F64, to: Int::I64, signed: false}, Value::F64(c)) => Value::I64(c.to_u64()?),
				(&ConvertOp::Trunc{from: Float::F64, to: Int::I64, signed: true }, Value::F64(c)) => Value::from_i64(c.to_i64()?),

				(&ConvertOp::Convert{from: Int::I32, to: Float::F32, signed: false}, Value::I32(c)) => Value::F32(c.to_uf32()),
				(&ConvertOp::Convert{from: Int::I32, to: Float::F32, signed: true }, Value::I32(c)) => Value::F32(c.to_if32()),
				(&ConvertOp::Convert{from: Int::I32, to: Float::F64, signed: false}, Value::I32(c)) => Value::F64(c.to_uf64()),
				(&ConvertOp::Convert{from: Int::I32, to: Float::F64, signed: true }, Value::I32(c)) => Value::F64(c.to_if64()),
				(&ConvertOp::Convert{from: Int::I64, to: Float::F32, signed: false}, Value::I64(c)) => Value::F32(c.to_uf32()),
				(&ConvertOp::Convert{from: Int::I64, to: Float::F32, signed: true }, Value::I64(c)) => Value::F32(c.to_if32()),
				(&ConvertOp::Convert{from: Int::I64, to: Float::F64, signed: false}, Value::I64(c)) => Value::F64(c.to_uf64()),
				(&ConvertOp::Convert{from: Int::I64, to: Float::F64, signed: true }, Value::I64(c)) => Value::F64(c.to_if64()),

				(&ConvertOp::Reinterpret{from: tv::Int(Int::I32), to: tv::Float(Float::F32) }, Value::I32(c)) => Value::F32(c.reinterpret()),
				(&ConvertOp::Reinterpret{from: tv::Int(Int::I64), to: tv::Float(Float::F64) }, Value::I64(c)) => Value::F64(c.reinterpret()),
				(&ConvertOp::Reinterpret{from: tv::Float(Float::F32), to: tv::Int(Int::I32) }, Value::F32(c)) => Value::I32(c.reinterpret()),
				(&ConvertOp::Reinterpret{from: tv::Float(Float::F32), to: tv::Int(Int::I64) }, Value::F64(c)) => Value::I64(c.reinterpret()),

				(&ConvertOp::F32DemoteF64, Value::F64(c)) => Value::F32(c.demote()),
				(&ConvertOp::F64PromoteF32, Value::F32(c)) => Value::F64(c.promote()),
				_ =>  unimplemented!()
			})
		};

		if let Some(v) = cls(&op, &c) {
			self.stack.push(v);
			Ok(Continue)
		} else {
			Err(Trap { origin: TrapOrigin::UndefinedResult })
		}
	}

	/// Pops two values from the stack, assuming that the stack is large enough to do so.
	fn pop2(&mut self) -> (Value, Value) {
		(self.stack.pop().unwrap(), self.stack.pop().unwrap())
	}
}

#[cfg(test)]
mod tests {
	use super::*;
	use ast::Instr::*;

	#[test]
	fn empty() {
		let v = [];
		assert_seq_stack(&v, &[]);
	}

	#[test]
	fn unreachable() {
		let v = [Instr::Unreachable];
		assert_eq!(run_seq(&v), Err(Trap { origin: TrapOrigin::Unreachable }));
	}

	#[test]
	fn nop() {
		let v = [Nop];
		assert!(run_seq(&v).is_ok());
	}

	#[test]
	fn nop_then_unreachable() {
		let v = [Nop, Instr::Unreachable];
		assert_eq!(run_seq(&v), Err(Trap { origin: TrapOrigin::Unreachable }));
	}

	#[test]
	fn const_() {
		let v = [Const(Value::I32(42))];
		assert_seq_stack1(&v, Value::I32(42));
	}

	#[test]
	#[should_panic]
	fn iunary_unreachable() {
		use types::Int;

		let v = [Const(Value::F32(42.0)), IUnary(Int::I32, IUnOp::Clz)];
		let _ = run_seq(&v);
	}

	#[test]
	fn iclz() {
		use types::Int;

		let v = [Const(Value::I32(42)), IUnary(Int::I32, IUnOp::Clz)];
		assert_seq_stack1(&v, Value::I32(26));

		let v = [Const(Value::I64(42)), IUnary(Int::I64, IUnOp::Clz)];
		assert_seq_stack1(&v, Value::I64(32+26));

		let v = [Const(Value::I32(0)), IUnary(Int::I32, IUnOp::Clz)];
		assert_seq_stack1(&v, Value::I32(32));

		let v = [Const(Value::I64(0)), IUnary(Int::I64, IUnOp::Clz)];
		assert_seq_stack1(&v, Value::I64(64));

		let v = [Const(Value::from_i32(-1)), IUnary(Int::I32, IUnOp::Clz)];
		assert_seq_stack1(&v, Value::I32(0));

		let v = [Const(Value::from_i64(-1)), IUnary(Int::I64, IUnOp::Clz)];
		assert_seq_stack1(&v, Value::I64(0));
	}

	#[test]
	fn ictz() {
		use types::Int;

		let v = [Const(Value::I32(42)), IUnary(Int::I32, IUnOp::Ctz)];
		assert_seq_stack1(&v, Value::I32(1));

		let v = [Const(Value::I64(42)), IUnary(Int::I64, IUnOp::Ctz)];
		assert_seq_stack1(&v, Value::I64(1));

		let v = [Const(Value::I32(0)), IUnary(Int::I32, IUnOp::Ctz)];
		assert_seq_stack1(&v, Value::I32(32));

		let v = [Const(Value::I64(0)), IUnary(Int::I64, IUnOp::Ctz)];
		assert_seq_stack1(&v, Value::I64(64));

		let v = [Const(Value::from_i32(-1)), IUnary(Int::I32, IUnOp::Ctz)];
		assert_seq_stack1(&v, Value::I32(0));

		let v = [Const(Value::from_i64(-1)), IUnary(Int::I64, IUnOp::Ctz)];
		assert_seq_stack1(&v, Value::I64(0));
	}

	#[test]
	fn ipopcnt() {
		use types::Int;

		let v = [Const(Value::I32(42)), IUnary(Int::I32, IUnOp::Popcnt)];
		assert_seq_stack1(&v, Value::I32(3));

		let v = [Const(Value::I64(42)), IUnary(Int::I64, IUnOp::Popcnt)];
		assert_seq_stack1(&v, Value::I64(3));

		let v = [Const(Value::I32(0)), IUnary(Int::I32, IUnOp::Popcnt)];
		assert_seq_stack1(&v, Value::I32(0));

		let v = [Const(Value::I64(0)), IUnary(Int::I64, IUnOp::Popcnt)];
		assert_seq_stack1(&v, Value::I64(0));

		let v = [Const(Value::from_i32(-1)), IUnary(Int::I32, IUnOp::Popcnt)];
		assert_seq_stack1(&v, Value::I32(32));

		let v = [Const(Value::from_i64(-1i64)), IUnary(Int::I64, IUnOp::Popcnt)];
		assert_seq_stack1(&v, Value::I64(64));
	}

	#[test]
	fn ibin() {
		use types::Int;

		let v = [Const(Value::I32(u32::max_value() - 2)), Const(Value::I32(4)), IBin(Int::I32, IBinOp::Add)];
		assert_seq_stack1(&v, Value::I32(1));

		let v = [Const(Value::I32(0)), Const(Value::I32(1)), IBin(Int::I32, IBinOp::DivU)];
		assert_eq!(run_seq(&v), Err(Trap { origin: TrapOrigin::UndefinedResult }));

		let v = [Const(Value::I32(-1i32 as u32)), Const(Value::I32((i32::min_value() as u32))), IBin(Int::I32, IBinOp::DivS)];
		assert_eq!(run_seq(&v), Err(Trap { origin: TrapOrigin::UndefinedResult }));

		let v = [Const(Value::I32(-1i32 as u32)), Const(Value::I32((i32::min_value() as u32))), IBin(Int::I32, IBinOp::DivU)];
		assert_seq_stack1(&v, Value::I32(0));

		let v = [Const(Value::I32(0)), Const(Value::I32(1)), IBin(Int::I32, IBinOp::RemU)];
		assert_eq!(run_seq(&v), Err(Trap { origin: TrapOrigin::UndefinedResult }));

		let v = [Const(Value::I32(8)), Const(Value::I32(-13i32 as u32)), IBin(Int::I32, IBinOp::RemS)];
		assert_seq_stack1(&v, Value::I32(-5i32 as u32));

		let v = [Const(Value::I64(54)), Const(Value::I64(58)), IBin(Int::I64, IBinOp::Shl)];
		assert_seq_stack1(&v, Value::I64(1044835113549955072));

		let v = [Const(Value::I32(54)), Const(Value::I32(58)), IBin(Int::I32, IBinOp::Shl)];
		assert_seq_stack1(&v, Value::I32(243269632));

		let v = [Const(Value::I32(16)), Const(Value::I32(0xFFFFFFFF)), IBin(Int::I32, IBinOp::ShrU)];
		assert_seq_stack1(&v, Value::I32(0x0000FFFF));

		let v = [Const(Value::I32(16)), Const(Value::I32(0xFFFFFFFF)), IBin(Int::I32, IBinOp::ShrS)];
		assert_seq_stack1(&v, Value::I32(0xFFFFFFFF));
	}

	#[test]
	fn itest() {
		use types::Int;

		let v = [Const(Value::I32(0)), ITest(Int::I32, ITestOp::Eqz)];
		assert_seq_stack1(&v, Value::true_());

		let v = [Const(Value::I32(42)), ITest(Int::I32, ITestOp::Eqz)];
		assert_seq_stack1(&v, Value::false_());
	}

	#[test]
	fn irel() {
		use types::Int;
		let v = [Const(Value::I32(42)), Const(Value::I32(43)), IRel(Int::I32, IRelOp::Eq_)];
		assert_seq_stack1(&v, Value::false_());

		let v = [Const(Value::I32(42)), Const(Value::I32(43)), IRel(Int::I32, IRelOp::Ne)];
		assert_seq_stack1(&v, Value::true_());

		let v = [Const(Value::I32(-42i32 as u32)), Const(Value::I32(43)), IRel(Int::I32, IRelOp::LtS)];
		assert_seq_stack1(&v, Value::false_());

		let v = [Const(Value::I32(-42i32 as u32)), Const(Value::I32(43)), IRel(Int::I32, IRelOp::LtU)];
		assert_seq_stack1(&v, Value::true_());
	}

	#[test]
	fn funary() {
		use types::Float;

		let v = [Const(Value::F32(3.0)), FUnary(Float::F32, FUnOp::Neg)];
		assert_seq_stack1(&v, Value::F32(-3.0));

		let v = [Const(Value::F32(3.0)), FUnary(Float::F32, FUnOp::Neg)];
		assert_seq_stack1(&v, Value::F32(-3.0));

		let v = [Const(Value::F32(-3.0)), FUnary(Float::F32, FUnOp::Abs)];
		assert_seq_stack1(&v, Value::F32(3.0));

		let v = [Const(Value::F32(-3.5)), FUnary(Float::F32, FUnOp::Ceil)];
		assert_seq_stack1(&v, Value::F32(-3.0));

		let v = [Const(Value::F32(-3.5)), FUnary(Float::F32, FUnOp::Floor)];
		assert_seq_stack1(&v, Value::F32(-4.0));

		let v = [Const(Value::F32(-3.5)), FUnary(Float::F32, FUnOp::Trunc)];
		assert_seq_stack1(&v, Value::F32(-3.0));

		let v = [Const(Value::F32(3.2)), FUnary(Float::F32, FUnOp::Nearest)];
		assert_seq_stack1(&v, Value::F32(3.0));

		let v = [Const(Value::F32(4.0)), FUnary(Float::F32, FUnOp::Sqrt)];
		assert_seq_stack1(&v, Value::F32(2.0));
	}

	#[test]
	fn fbin() {
		use types::Float;
		use std::f32;

		let v = [Const(Value::F32(3.0)), Const(Value::F32(5.0)), FBin(Float::F32, FBinOp::Add)];
		assert_seq_stack1(&v, Value::F32(8.0));

		let v = [Const(Value::F32(3.0)), Const(Value::F32(-5.0)), FBin(Float::F32, FBinOp::Sub)];
		assert_seq_stack1(&v, Value::F32(-8.0));

		let v = [Const(Value::F32(3.0)), Const(Value::F32(5.5)), FBin(Float::F32, FBinOp::Mul)];
		assert_seq_stack1(&v, Value::F32(16.5));

		let v = [Const(Value::F32(-0.0)), Const(Value::F32(5.0)), FBin(Float::F32, FBinOp::Div)];
		assert_seq_stack1(&v, Value::F32(f32::NEG_INFINITY));

		let v = [Const(Value::F32(-3.0)), Const(Value::F32(5.0)), FBin(Float::F32, FBinOp::Min)];
		assert_seq_stack1(&v, Value::F32(-3.0));

		let v = [Const(Value::F32(3.0)), Const(Value::F32(-5.0)), FBin(Float::F32, FBinOp::Max)];
		assert_seq_stack1(&v, Value::F32(3.0));

		let v = [Const(Value::F32(-3.0)), Const(Value::F32(-5.0)), FBin(Float::F32, FBinOp::CopySign)];
		assert_seq_stack1(&v, Value::F32(-5.0));
	}


	#[test]
	fn frel() {
		use types::Float;

		let v = [Const(Value::F32(3.0)), Const(Value::F32(5.0)), FRel(Float::F32, FRelOp::Eq_)];
		assert_seq_stack1(&v, Value::false_());

		let v = [Const(Value::F32(3.0)), Const(Value::F32(5.0)), FRel(Float::F32, FRelOp::Ne)];
		assert_seq_stack1(&v, Value::true_());

		let v = [Const(Value::F32(3.0)), Const(Value::F32(5.0)), FRel(Float::F32, FRelOp::Lt)];
		assert_seq_stack1(&v, Value::false_());

		let v = [Const(Value::F32(3.0)), Const(Value::F32(5.0)), FRel(Float::F32, FRelOp::Gt)];
		assert_seq_stack1(&v, Value::true_());

		let v = [Const(Value::F32(5.0)), Const(Value::F32(5.0)), FRel(Float::F32, FRelOp::Le)];
		assert_seq_stack1(&v, Value::true_());

		let v = [Const(Value::F32(3.0)), Const(Value::F32(5.0)), FRel(Float::F32, FRelOp::Ge)];
		assert_seq_stack1(&v, Value::true_());
	}

	#[test]
	fn cvtop() {
		t(|mut int: Interpreter| {
			use types::Int;
			let v = [Const(Value::I64(0xFFFFDEADC0DEFFFF)), Convert(ConvertOp::I32WrapI64)];
			assert_seq_stack1(&v, Value::I32(0xC0DEFFFF));

			let v = [Const(Value::I32(0xDEADC0DE)), Convert(ConvertOp::I64ExtendUI32)];
			assert_seq_stack1(&v, Value::I64(0x00000000DEADC0DE));

			let v = [Const(Value::I32(-3i32 as u32)), Convert(ConvertOp::I64ExtendSI32)];
			assert_seq_stack1(&v, Value::I64(-3i64 as u64));
		})
	}

	#[test]
	fn interpret_vm_ownership() {
		t(|mut int: Interpreter| {
			assert_eq!(int.vm.modules.len(), 0);
			let mut m = int.vm.modules;
			m.push(Module::empty());

			assert_eq!(m.len(), 1);
		})
	}

	// Inspired from
	// https://medium.com/@ericdreichert/test-setup-and-teardown-in-rust-without-a-framework-ba32d97aa5ab
	fn t<F, T>(test: F) -> T
		where F: FnOnce(Interpreter) -> T
	{
		let vm = vm::VM::new();
		let int = Interpreter::new(vm);

		test(int)
	}

	/// Run a sequence of instructions in the given interpreter `int`.
	fn run_seq_in(int: &mut Interpreter, instrs: &[Instr]) -> Result<(), Trap> {
		for instr in instrs {
			int.instr(instr)?;
		}
		Ok(())
	}

	/// Run a sequence of instructions in a new empty interpreter.
	fn run_seq(instrs: &[Instr]) -> Result<(), Trap> {
		t(|mut int: Interpreter| {
			run_seq_in(&mut int, instrs)
		})
	}

	/// Assert that executing the sequence of instructions `instrs` in a clean context
	/// is sucessful and that the resulting stack is equal to `final_stack`.
	fn assert_seq_stack(instrs: &[Instr], final_stack: &[Value]) {
		t(|mut int: Interpreter| {
			assert_eq!(run_seq_in(&mut int, instrs), Ok(()));
			assert_eq!(int.stack, final_stack);
		})
	}

	/// Variant of `assert_seq_stack` where the resulting stack holds a single value.
	fn assert_seq_stack1(instrs: &[Instr], v: Value) {
		assert_seq_stack(instrs, &[v]);
	}
}

use vm;
use ast::*;
use types;
use values::Value;
use ops::{IntOp,FloatOp};


/// A struct storing the state of the current interpreted
pub struct Interpreter {
	stack: Vec<Value>,
	vm: vm::VM,
}

type IntResult = Result<(), InterpreterError>;

#[derive(Debug, PartialEq)]
/// All possible errors the interpreter can raise
pub enum InterpreterError {
	UnconditionalTrap,
	UnknownLocal(Index),
	UndefinedResult,
}
use self::InterpreterError::*;

impl Interpreter {
	/// Instantiate a new interpreter
	pub fn new(vm: vm::VM) -> Interpreter {
		Interpreter {
			stack: Vec::new(),
			vm: vm
		}
	}

	/// Interpret a, Expr (a vector of instruction)
	/// This is the main dispatching function of the interpreter
	pub fn interpret(&mut self, expr: &Expr) -> IntResult {
		for ins in expr {
			use ast::Instr::*;

			match *ins {
				Unreachable => self.unreachable(),
				Nop => self.nop(),
				GetLocal(idx) => self.get_local(idx),
				Const(c) => self.const_(c),
				IUnary(ref t, ref op) => self.iunary(&t, &op),
				FUnary(ref t, ref op) => self.funary(&t, &op),
				IBin(ref t, ref op) => self.ibin(&t, &op),
				FBin(ref t, ref op) => self.fbin(&t, &op),
				ITest(ref t, ref op) => self.itest(&t, &op),
				IRel(ref t, ref op) => self.irel(&t, &op),
				_ => unimplemented!()
			}?
		}
		Ok(())
	}

	/// Raises an unconditional trap
	fn unreachable(&self) -> IntResult {
		Err(UnconditionalTrap)
	}

	/// Do nothing
	fn nop(&self) -> IntResult {
		Ok(())
	}

	/// Get local from the stack
	fn get_local(&self, idx: Index)-> IntResult {
		if (idx as usize) >= self.stack.len() {
			return Err(UnknownLocal(idx))
		}
		Ok(())
	}

	/// Push c to the stack
	fn const_(&mut self, c: Value) -> IntResult {
		self.stack.push(c);
		Ok(())
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
		Ok(())
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
		Ok(())
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
		// stack having the same type t
		let res = match self.stack.pop().unwrap() {
			Value::I32(c1) => match self.stack.pop().unwrap() {
				Value::I32(c2) => match self.type_ibin(c1, c2, op) {
					Some(r) => Some(Value::I32(r)),
					None => None
				},
				_ => unreachable!()
			},
			Value::I64(c1) => match self.stack.pop().unwrap() {
				Value::I64(c2) => match self.type_ibin(c1, c2, op) {
					Some(r) => Some(Value::I64(r)),
					None => None
				},
				_ => unreachable!()
			},
			_ => unreachable!(),
		};
		if res.is_none() {
			return Err(UndefinedResult)
		} else {
			self.stack.push(res.unwrap());
			return Ok(())
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
		let res = match self.stack.pop().unwrap() {
			Value::F32(c1) => match self.stack.pop().unwrap() {
				Value::F32(c2) => Value::F32(self.type_fbin(c1, c2, op)),
				_ => unreachable!()
			},
			Value::F64(c1) => match self.stack.pop().unwrap() {
				Value::F64(c2) => Value::F64(self.type_fbin(c1, c2, op)),
				_ => unreachable!()
			},
			_ => unreachable!(),
		};
		self.stack.push(res);
		Ok(())
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
			Value::I32(c) => Value::I32(self.type_itest(c, op)),
			Value::I64(c) => Value::I64(self.type_itest(c, op)),
			_ => unreachable!(),
		};
		self.stack.push(v);
		Ok(())
	}

	fn type_itest<T>(&self, v: T, op: &ITestOp) -> T
		where T: IntOp
	{
		match *op {
			ITestOp::Eqz => v.eqz(),
		}
	}

	/// Dispatch an IRelOp
	fn irel(&mut self, _t: &types::Int, op: &IRelOp) -> IntResult {
		// Validation should assert that there are two values on top of the
		// stack having the same type t
		let res = match self.stack.pop().unwrap() {
			Value::I32(c1) => match self.stack.pop().unwrap() {
				Value::I32(c2) => Value::I32(self.type_irel(c1, c2, op)),
				_ => unreachable!()
			},
			Value::I64(c1) => match self.stack.pop().unwrap() {
				Value::I64(c2) => Value::I64(self.type_irel(c1, c2, op)),
				_ => unreachable!()
			},
			_ => unreachable!(),
		};
		self.stack.push(res);
		Ok(())
	}

	fn type_irel<T>(&self, c1: T, c2: T, op: &IRelOp) -> T
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
}

#[cfg(test)]
mod tests {
	use super::*;
	use ast::Instr::*;

	#[test]
	fn empty() {
		t(|mut int: Interpreter| {
			let v = vec![];
			assert!(int.interpret(&v).is_ok());
		})
	}

	#[test]
	fn unreachable() {
		t(|mut int: Interpreter| {
			let v = vec![Unreachable];
			assert_eq!(int.interpret(&v).err().unwrap(), UnconditionalTrap)
		})
	}

	#[test]
	fn nop() {
		t(|mut int: Interpreter| {
			let v = vec![Nop];
			assert!(int.interpret(&v).is_ok());
		})
	}

	#[test]
	fn nop_then_unreachable() {
		t(|mut int: Interpreter| {
			let v = vec![Nop, Unreachable];
			assert_eq!(int.interpret(&v).err().unwrap(), UnconditionalTrap)
		})
	}

	#[test]
	fn get_local() {
		t(|mut int: Interpreter| {
			let v = vec![GetLocal(0)];
			assert_eq!(int.interpret(&v).err().unwrap(), UnknownLocal(0))
		})
	}

	#[test]
	fn const_() {
		t(|mut int: Interpreter| {
			let v = vec![Const(Value::I32(42))];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I32(42));
		})
	}

	#[test]
	#[should_panic]
	fn iunary_unreachable() {
		t(|mut int: Interpreter| {
			use types::Int;

			let v = vec![Const(Value::F32(42.0)), IUnary(Int::I32, IUnOp::Clz)];
			int.interpret(&v);
		})
	}

	#[test]
	fn iclz() {
		t(|mut int: Interpreter| {
			use types::Int;

			let v = vec![Const(Value::I32(42)), IUnary(Int::I32, IUnOp::Clz)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I32(26));

			let v = vec![Const(Value::I64(42)), IUnary(Int::I64, IUnOp::Clz)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I64(32+26));

			let v = vec![Const(Value::I32(0)), IUnary(Int::I32, IUnOp::Clz)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I32(32));

			let v = vec![Const(Value::I64(0)), IUnary(Int::I64, IUnOp::Clz)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I64(64));

			let v = vec![Const(Value::from_i32(-1)), IUnary(Int::I32, IUnOp::Clz)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I32(0));

			let v = vec![Const(Value::from_i64(-1)), IUnary(Int::I64, IUnOp::Clz)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I64(0));
		})
	}

	#[test]
	fn ictz() {
		t(|mut int: Interpreter| {
			use types::Int;

			let v = vec![Const(Value::I32(42)), IUnary(Int::I32, IUnOp::Ctz)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I32(1));

			let v = vec![Const(Value::I64(42)), IUnary(Int::I64, IUnOp::Ctz)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I64(1));

			let v = vec![Const(Value::I32(0)), IUnary(Int::I32, IUnOp::Ctz)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I32(32));

			let v = vec![Const(Value::I64(0)), IUnary(Int::I64, IUnOp::Ctz)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I64(64));

			let v = vec![Const(Value::from_i32(-1)), IUnary(Int::I32, IUnOp::Ctz)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I32(0));

			let v = vec![Const(Value::from_i64(-1)), IUnary(Int::I64, IUnOp::Ctz)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I64(0));
		})
	}

	#[test]
	fn ipopcnt() {
		t(|mut int: Interpreter| {
			use types::Int;

			let v = vec![Const(Value::I32(42)), IUnary(Int::I32, IUnOp::Popcnt)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I32(3));

			let v = vec![Const(Value::I64(42)), IUnary(Int::I64, IUnOp::Popcnt)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I64(3));

			let v = vec![Const(Value::I32(0)), IUnary(Int::I32, IUnOp::Popcnt)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I32(0));

			let v = vec![Const(Value::I64(0)), IUnary(Int::I64, IUnOp::Popcnt)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I64(0));

			let v = vec![Const(Value::from_i32(-1)), IUnary(Int::I32, IUnOp::Popcnt)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I32(32));

			let v = vec![Const(Value::from_i64(-1i64)), IUnary(Int::I64, IUnOp::Popcnt)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I64(64));
		})
	}

	#[test]
	fn ibin() {
		t(|mut int: Interpreter| {
			use types::Int;
			let v = vec![Const(Value::I32(u32::max_value() - 2)), Const(Value::I32(4)), IBin(Int::I32, IBinOp::Add)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I32(1));

			let v = vec![Const(Value::I32(0)), Const(Value::I32(1)), IBin(Int::I32, IBinOp::DivU)];
			assert_eq!(int.interpret(&v).err().unwrap(), UndefinedResult);

			let v = vec![Const(Value::I32(-1i32 as u32)), Const(Value::I32((i32::min_value() as u32))), IBin(Int::I32, IBinOp::DivS)];
			assert_eq!(int.interpret(&v).err().unwrap(), UndefinedResult);

			let v = vec![Const(Value::I32(-1i32 as u32)), Const(Value::I32((i32::min_value() as u32))), IBin(Int::I32, IBinOp::DivU)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I32(0));

			let v = vec![Const(Value::I32(0)), Const(Value::I32(1)), IBin(Int::I32, IBinOp::RemU)];
			assert_eq!(int.interpret(&v).err().unwrap(), UndefinedResult);

			let v = vec![Const(Value::I32(8)), Const(Value::I32(-13i32 as u32)), IBin(Int::I32, IBinOp::RemS)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I32(-5i32 as u32));

			let v = vec![Const(Value::I64(54)), Const(Value::I64(58)), IBin(Int::I64, IBinOp::Shl)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I64(1044835113549955072));

			let v = vec![Const(Value::I32(54)), Const(Value::I32(58)), IBin(Int::I32, IBinOp::Shl)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I32(243269632));

			let v = vec![Const(Value::I32(16)), Const(Value::I32(0xFFFFFFFF)), IBin(Int::I32, IBinOp::ShrU)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I32(0x0000FFFF));

			let v = vec![Const(Value::I32(16)), Const(Value::I32(0xFFFFFFFF)), IBin(Int::I32, IBinOp::ShrS)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I32(0xFFFFFFFF));
		})
	}

	#[test]
	fn itest() {
		t(|mut int: Interpreter| {
			use types::Int;
			let v = vec![Const(Value::I32(0)), ITest(Int::I32, ITestOp::Eqz)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I32(1));

			let v = vec![Const(Value::I32(42)), ITest(Int::I32, ITestOp::Eqz)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I32(0));
		})
	}

	#[test]
	fn irel() {
		t(|mut int: Interpreter| {
			use types::Int;
			let v = vec![Const(Value::I32(42)), Const(Value::I32(43)), IRel(Int::I32, IRelOp::Eq_)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I32(0));

			let v = vec![Const(Value::I32(42)), Const(Value::I32(43)), IRel(Int::I32, IRelOp::Ne)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I32(1));

			let v = vec![Const(Value::I32(-42i32 as u32)), Const(Value::I32(43)), IRel(Int::I32, IRelOp::LtS)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I32(0));

			let v = vec![Const(Value::I32(-42i32 as u32)), Const(Value::I32(43)), IRel(Int::I32, IRelOp::LtU)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::I32(1));
		})
	}

	#[test]
	fn funary() {
		t(|mut int: Interpreter| {
			use types::Float;
			let v = vec![Const(Value::F32(3.0)), FUnary(Float::F32, FUnOp::Neg)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::F32(-3.0));

			let v = vec![Const(Value::F32(3.0)), FUnary(Float::F32, FUnOp::Neg)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::F32(-3.0));

			let v = vec![Const(Value::F32(-3.0)), FUnary(Float::F32, FUnOp::Abs)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::F32(3.0));

			let v = vec![Const(Value::F32(-3.5)), FUnary(Float::F32, FUnOp::Ceil)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::F32(-3.0));

			let v = vec![Const(Value::F32(-3.5)), FUnary(Float::F32, FUnOp::Floor)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::F32(-4.0));

			let v = vec![Const(Value::F32(-3.5)), FUnary(Float::F32, FUnOp::Trunc)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::F32(-3.0));

			let v = vec![Const(Value::F32(3.2)), FUnary(Float::F32, FUnOp::Nearest)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::F32(3.0));

			let v = vec![Const(Value::F32(4.0)), FUnary(Float::F32, FUnOp::Sqrt)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::F32(2.0));
		})
	}

	#[test]
	fn fbin() {
		t(|mut int: Interpreter| {
			use types::Float;
			use std::f32;

			let v = vec![Const(Value::F32(3.0)), Const(Value::F32(5.0)), FBin(Float::F32, FBinOp::Add)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::F32(8.0));

			let v = vec![Const(Value::F32(3.0)), Const(Value::F32(-5.0)), FBin(Float::F32, FBinOp::Sub)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::F32(-8.0));

			let v = vec![Const(Value::F32(3.0)), Const(Value::F32(5.5)), FBin(Float::F32, FBinOp::Mul)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::F32(16.5));

			let v = vec![Const(Value::F32(-0.0)), Const(Value::F32(5.0)), FBin(Float::F32, FBinOp::Div)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::F32(f32::NEG_INFINITY));

			let v = vec![Const(Value::F32(-3.0)), Const(Value::F32(5.0)), FBin(Float::F32, FBinOp::Min)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::F32(-3.0));

			let v = vec![Const(Value::F32(3.0)), Const(Value::F32(-5.0)), FBin(Float::F32, FBinOp::Max)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::F32(3.0));

			let v = vec![Const(Value::F32(-3.0)), Const(Value::F32(-5.0)), FBin(Float::F32, FBinOp::CopySign)];
			assert!(int.interpret(&v).is_ok());
			assert_eq!(*int.stack.last().unwrap(), Value::F32(-5.0));
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
	fn t<T>(test: T) -> ()
		where T: FnOnce(Interpreter) -> ()
	{
		let vm = vm::VM::new();
		let int = Interpreter::new(vm);

		test(int)
	}
}

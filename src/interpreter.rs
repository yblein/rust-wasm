use std::intrinsics;

use vm;
use ast::*;
use types;
use values::Value;



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
				IUnary(t, op) => self.iunary(t, op),
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

	/// Dispath an IUnop
	fn iunary(&mut self, t: types::Int, op: IUnOp) -> IntResult {
		// Validation should assert that the top of the stack exists and has the type t
		let v = match self.stack.pop().unwrap() {
			Value::I32(c) => Value::I32(self.type_iunary(c, op)),
			Value::I64(c) => Value::I64(self.type_iunary(c, op)),
			_ => unreachable!(),
		};
		self.stack.push(v);
		Ok(())
	}

	// Type should be i32 or i64 (how to make it explicit?)
	fn type_iunary<T>(&self, v: T, op: IUnOp) -> T {
		// Use std::intrinsics to use X86 instruction instead of reimplementing the
		// algorithms
		match op {
			IUnOp::Clz => unsafe { intrinsics::ctlz(v) },
			IUnOp::Ctz => unsafe { intrinsics::cttz(v) },
			IUnOp::Popcnt => unsafe { intrinsics::ctpop(v) },
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
			use types::{Int, Float};

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

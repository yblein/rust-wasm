use vm;
use ast::*;
use types;

/// A struct storing the state of the current interpreted
pub struct Interpreter {
	stack: Vec<types::Value>,
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
}

#[cfg(test)]
mod tests {
	use super::*;

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
			let v = vec![Instr::Unreachable];
			assert_eq!(int.interpret(&v).err().unwrap(), InterpreterError::UnconditionalTrap)
		})
	}

	#[test]
	fn nop() {
		t(|mut int: Interpreter| {
			let v = vec![Instr::Nop];
			assert!(int.interpret(&v).is_ok());
		})
	}

	#[test]
	fn nop_then_unreachable() {
		t(|mut int: Interpreter| {
			let v = vec![Instr::Nop, Instr::Unreachable];
			assert_eq!(int.interpret(&v).err().unwrap(), InterpreterError::UnconditionalTrap)
		})
	}

	#[test]
	fn get_local() {
		t(|mut int: Interpreter| {
			let v = vec![Instr::GetLocal(0)];
			assert_eq!(int.interpret(&v).err().unwrap(), InterpreterError::UnknownLocal(0))
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

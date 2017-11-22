use vm;
use ast;
use types;

/// A struct storing the state of the current interpreted
pub struct Interpreter {
    stack: Vec<types::Value>
}

#[derive(Debug, PartialEq)]
/// All possible errors the interpreter can raise
pub enum InterpreterError {
    UnconditionalTrap,
    UnknownLocal(ast::Index),
    UnknownInstruction,
}

impl Interpreter {
    /// Instantiate a new interpreter
    pub fn new() -> Interpreter {
        Interpreter {
            stack: Vec::new(),
        }
    }

    /// Interpret a, ast::Expr (a vector of instruction)
    /// This is the main dispatching function of the interpreter
    pub fn interpret(&mut self, instr: &ast::Expr, vm: &mut vm::VM) -> Result<(), InterpreterError> {
        for ins in instr {
            match *ins {
                ast::Instr::Unreachable => self.unreachable(vm),
                ast::Instr::Nop => self.nop(vm),
                ast::Instr::GetLocal(idx) => self.get_local(vm, idx),
                _ => Err(InterpreterError::UnknownInstruction)
            }?
        }
        Ok(())
    }

    /// Raises an unconditional trap
    fn unreachable(&self, _vm: &vm::VM) -> Result<(), InterpreterError> {
        Err(InterpreterError::UnconditionalTrap)
    }

    /// Do nothing
    fn nop(&self, _vm: &vm::VM) -> Result<(), InterpreterError> {
        Ok(())
    }

    /// Get local from the stack
    fn get_local(&self, _vm: &vm::VM, idx: ast::Index)-> Result<(), InterpreterError> {
        if (idx as usize) >= self.stack.len() {
            return Err(InterpreterError::UnknownLocal(idx))
        }
        Ok(())
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn empty() {
        t(|mut vm: vm::VM, mut int: Interpreter| {
            let v = vec![];
            assert!(int.interpret(&v, &mut vm).is_ok());
        })
    }

    #[test]
    fn unreachable() {
        t(|mut vm: vm::VM, mut int: Interpreter| {
            let v = vec![ast::Instr::Unreachable];
            assert_eq!(int.interpret(&v, &mut vm).err().unwrap(), InterpreterError::UnconditionalTrap)
        })
    }

    #[test]
    fn nop() {
        t(|mut vm: vm::VM, mut int: Interpreter| {
            let v = vec![ast::Instr::Nop];
            assert!(int.interpret(&v, &mut vm).is_ok());
        })
    }

    #[test]
    fn nop_then_unreachable() {
        t(|mut vm: vm::VM, mut int: Interpreter| {
            let v = vec![ast::Instr::Nop, ast::Instr::Unreachable];
            assert_eq!(int.interpret(&v, &mut vm).err().unwrap(), InterpreterError::UnconditionalTrap)
        })
    }

    #[test]
    fn get_local() {
        t(|mut vm: vm::VM, mut int: Interpreter| {
            let v = vec![ast::Instr::GetLocal(0)];
            assert_eq!(int.interpret(&v, &mut vm).err().unwrap(), InterpreterError::UnknownLocal(0))
        })
    }

    // Inspired from
    // https://medium.com/@ericdreichert/test-setup-and-teardown-in-rust-without-a-framework-ba32d97aa5ab
    fn t<T>(test: T) -> ()
        where T: FnOnce(vm::VM, Interpreter) -> ()
    {
        let vm = vm::VM::new();
        let int = Interpreter::new();

        test(vm, int)
    }
}

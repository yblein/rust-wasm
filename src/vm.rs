use ast;
use interpreter;

/// A struct storing the state of the virtual machine
pub struct VM {
    pub modules: Vec<ast::Module>,
}

impl VM {

    /// Make a new VM context
    ///
    /// # Examples
    ///
    /// ```
    /// use rust_wasm::vm::VM;
    ///
    /// let v = VM::new();
    /// assert_eq!(v.modules.len(), 0)
    /// ```
    pub fn new() -> VM {
        // TODO: setup linear memory, stack, etc.
        VM {
            modules: Vec::new()
        }
    }

    /// Instantiate a new module inside the VM context
    ///
    /// Note: the ownership of the module is transfered to the VM.
    ///
    /// # Examples
    ///
    /// ```
    /// use rust_wasm::vm::VM;
    /// use rust_wasm::ast;
    ///
    /// let v = VM::new();
    /// let m = ast::Module::new();
    ///
    /// v.instantiate_module(m).unwrap();
    /// assert_eq!(v.modules.len(), 1)
    /// ```
    pub fn instantiate_module(&self, m: ast::Module) -> Result<(), &str> {
        // TODO
        Err("Not implemented yet")
    }
}
use vm::{FuncInst, TableInst, GlobalInst, MemInst, GlobalAddr};
use ast::*;
use types;
use values::Value;
use ops::{IntOp,FloatOp,FloatDemoteOp,FloatPromoteOp};


/// A struct storing the state of the current interpreted
pub struct Interpreter {
	pub stack: Vec<Value>,
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
pub enum Control {
	/// Continue the execution linearly
	Continue,
	/// Branch to the `nesting_levels` outer scope, 0 being the innermost surrounding scope.
	Branch { nesting_levels: u32 },
}

use self::Control::*;

type IntResult = Result<Control, Trap>;

impl Interpreter {
	/// Instantiate a new interpreter
	pub fn new() -> Interpreter {
		Interpreter {
			stack: Vec::new()
		}
	}

	/// Intrepret a single instruction.
	/// This is the main dispatching function of the interpreter.
	pub fn instr(&mut self,
			 instr: &Instr,
			 funcs: &[FuncInst],
			 tables: &[TableInst],
			 globals: &[GlobalInst],
			 mems: &mut Vec<MemInst>) -> IntResult {
		use ast::Instr::*;

		// Note: passing VM (mut/imut) is case by case
		match *instr {
			Unreachable => self.unreachable(),
			Nop => self.nop(),
			Block(ref result_type, ref instrs) => self.block(result_type, instrs, funcs, tables, globals, mems),
			Br(nesting_levels) => self.branch(nesting_levels),
			Drop_ => self.drop(),
			Select => self.select(),
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

	/// Interpret a single const instruction.
	// TODO: replace frame_globals by a Frame
	pub fn instr_const(&mut self,
					   instr: &Instr,
					   globals: &[GlobalInst],
					   frame_globals: &[GlobalAddr]) -> IntResult {
		match *instr {
			Instr::Const(c) => self.const_(c),
			Instr::GetGlobal(idx) => self.get_global(idx, globals, frame_globals),
			_ => unreachable!(),
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

	/// Interpret a block
	fn block(&mut self,
			 result_type: &[types::Value],
			 instrs: &[Instr],
			 funcs: &[FuncInst],
			 tables: &[TableInst],
			 globals: &[GlobalInst],
			 mems: &mut Vec<MemInst>) -> IntResult {
		let local_stack_begin = self.stack.len();

		for instr in instrs {
			let res = self.instr(instr, funcs, tables, globals, mems)?;

			if let Branch { nesting_levels } = res {
				// If the instruction caused a branch, we need to exit the block early on.
				// The way to do so depends if the current block is the target of the branch.
				return Ok(if nesting_levels == 0 {
					// We have reached the target block.
					// Unwind values that could be left on the stack, except for the result,
					// and resume normal execution.
					let junk_end = self.stack.len() - result_type.len();
					self.stack.drain(local_stack_begin..junk_end);
					Continue
				} else {
					// Keep traversing nesting levels
					Branch { nesting_levels: nesting_levels - 1 }
				})
			}
		}

		Ok(Continue)
	}

	/// Perform a unconditional branch to the nesting_levels+1 surrouding block.
	fn branch(&self, nesting_levels: u32) -> IntResult {
		Ok(Branch { nesting_levels })
	}

	/// Drop a value from the stack
	fn drop(&mut self) -> IntResult {
		self.stack.pop();
		Ok(Continue)
	}

	/// branchless conditional
	fn select(&mut self) -> IntResult {
		let b = self.stack.pop().unwrap();
		let (v1, v2) = self.pop2();

		match b {
			Value::I32(c) => self.stack.push(if c != 0 { v1 } else { v2 }),
			_ => unreachable!()
		}

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

				(&ConvertOp::Trunc { from: Float::F32, to: Int::I32, signed: false }, Value::F32(c)) => Value::I32(c.to_u32()?),
				(&ConvertOp::Trunc { from: Float::F32, to: Int::I32, signed: true }, Value::F32(c)) => Value::from_i32(c.to_i32()?),
				(&ConvertOp::Trunc { from: Float::F32, to: Int::I64, signed: false }, Value::F32(c)) => Value::I64(c.to_u64()?),
				(&ConvertOp::Trunc { from: Float::F32, to: Int::I64, signed: true }, Value::F32(c)) => Value::from_i64(c.to_i64()?),
				(&ConvertOp::Trunc { from: Float::F64, to: Int::I32, signed: false }, Value::F64(c)) => Value::I32(c.to_u32()?),
				(&ConvertOp::Trunc { from: Float::F64, to: Int::I32, signed: true }, Value::F64(c)) => Value::from_i32(c.to_i32()?),
				(&ConvertOp::Trunc { from: Float::F64, to: Int::I64, signed: false }, Value::F64(c)) => Value::I64(c.to_u64()?),
				(&ConvertOp::Trunc { from: Float::F64, to: Int::I64, signed: true }, Value::F64(c)) => Value::from_i64(c.to_i64()?),

				(&ConvertOp::Convert { from: Int::I32, to: Float::F32, signed: false }, Value::I32(c)) => Value::F32(c.to_uf32()),
				(&ConvertOp::Convert { from: Int::I32, to: Float::F32, signed: true }, Value::I32(c)) => Value::F32(c.to_if32()),
				(&ConvertOp::Convert { from: Int::I32, to: Float::F64, signed: false }, Value::I32(c)) => Value::F64(c.to_uf64()),
				(&ConvertOp::Convert { from: Int::I32, to: Float::F64, signed: true }, Value::I32(c)) => Value::F64(c.to_if64()),
				(&ConvertOp::Convert { from: Int::I64, to: Float::F32, signed: false }, Value::I64(c)) => Value::F32(c.to_uf32()),
				(&ConvertOp::Convert { from: Int::I64, to: Float::F32, signed: true }, Value::I64(c)) => Value::F32(c.to_if32()),
				(&ConvertOp::Convert { from: Int::I64, to: Float::F64, signed: false }, Value::I64(c)) => Value::F64(c.to_uf64()),
				(&ConvertOp::Convert { from: Int::I64, to: Float::F64, signed: true }, Value::I64(c)) => Value::F64(c.to_if64()),

				(&ConvertOp::Reinterpret { from: tv::Int(Int::I32), to: tv::Float(Float::F32) }, Value::I32(c)) => Value::F32(c.reinterpret()),
				(&ConvertOp::Reinterpret { from: tv::Int(Int::I64), to: tv::Float(Float::F64) }, Value::I64(c)) => Value::F64(c.reinterpret()),
				(&ConvertOp::Reinterpret { from: tv::Float(Float::F32), to: tv::Int(Int::I32) }, Value::F32(c)) => Value::I32(c.reinterpret()),
				(&ConvertOp::Reinterpret { from: tv::Float(Float::F32), to: tv::Int(Int::I64) }, Value::F64(c)) => Value::I64(c.reinterpret()),

				(&ConvertOp::F32DemoteF64, Value::F64(c)) => Value::F32(c.demote()),
				(&ConvertOp::F64PromoteF32, Value::F32(c)) => Value::F64(c.promote()),
				_ =>  unreachable!()
			})
		};

		if let Some(v) = cls(&op, &c) {
			self.stack.push(v);
			Ok(Continue)
		} else {
			Err(Trap { origin: TrapOrigin::UndefinedResult })
		}
	}

	/// GetGlobal
	// TODO: replace frame_globals by a Frame
	fn get_global(&mut self, idx: Index, globals: &[GlobalInst], frame_globals: &[GlobalAddr]) -> IntResult {
		self.stack.push(globals[frame_globals[idx as usize]].value);
		Ok(Continue)
	}

	/// Pops two values from the stack, assuming that the stack is large enough to do so.
	fn pop2(&mut self) -> (Value, Value) {
		(self.stack.pop().unwrap(), self.stack.pop().unwrap())
	}
}

/// Evaluate an ExprConst and return a given value
/// Use for global/segment initialization
#[macro_export]
macro_rules! interpreter_eval_expr {
	($int: expr, $vm: ident, $instrs: expr) => {
		{
			let mut cls = |funcs: &[FuncInst], tables: &[TableInst], globals: &[GlobalInst], mems: &mut Vec<MemInst>| {
				for instr in $instrs {
					// Cannot use ? because Rust is not able to infer the type
					match $int.instr(instr, funcs, tables, globals, mems) {
						Ok(_) => continue,
						Err(c) => return Err(c),
					};
				}
				Ok(())
			};
			cls(& $vm.store.funcs, & $vm.store.tables, & $vm.store.globals, &mut $vm.store.mems)
		}
	}
}

/// Evaluate an ExprConst and return a given value, returning a Value::I32
/// (validation)
/// Used for global/segment initialization
// TODO: replace $frame_globals by a Frame
#[macro_export]
macro_rules! interpreter_eval_expr_const {
	($int: expr, $vm: ident, $instrs: expr, $frame_globals: expr) => {
		{
			let mut cls = |globals: &[GlobalInst]| {
				// Only the last value matters for ExprConst
				$int.instr_const($instrs.last().unwrap(), globals, $frame_globals).ok()?;
				$int.stack.pop()
			};
			cls(& $vm.store.globals)
		}
	}
}

/// Evaluate a Func
#[macro_export]
macro_rules! interpreter_eval_func {
	($int: expr, $vm: ident, $func: expr) => {
		interpreter_eval_expr!($int, $vm, &$func.body)
	}
}

#[cfg(test)]
mod tests {
	use super::*;
	use ast::Instr::*;
	use vm;

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
	/// Test running a block to completion
	fn block_no_br() {
		let const_i32 = |v| Instr::Const(Value::I32(v));
		let seq = [
			Instr::Block(
				vec![types::Value::Int(types::Int::I32)],
				vec![const_i32(42)],
			),
		];
		// 1 is expected to remain on the stack since the block returns a single value.
		assert_seq_stack1(&seq, Value::I32(42));
	}

	#[test]
	/// Test branching two levels of block nesting at once
	fn block_br2() {
		let const_i32 = |v| Instr::Const(Value::I32(v));
		let seq = [
			Instr::Block(
				vec![types::Value::Int(types::Int::I32)],
				vec![
					const_i32(0),
					Instr::Block(
						vec![],
						vec![
							const_i32(1),
							const_i32(2),
							Instr::Br(1),
							const_i32(3),
						],
					),
					const_i32(4),
				]
			),
		];
		// We expect the final stack to contain only 2 because:
		// - 0 is dropped as junk in the outer block
		// - 1 is dropped as junk in the inner block
		// - 3 is never reached
		// - 4 is never reached
		// 2 remains on the stack because the target block (the outer one) returns a value.
		assert_seq_stack1(&seq, Value::I32(2));
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
		let v = [Const(Value::I64(0xFFFFDEADC0DEFFFF)), Convert(ConvertOp::I32WrapI64)];
		assert_seq_stack1(&v, Value::I32(0xC0DEFFFF));

		let v = [Const(Value::I32(0xDEADC0DE)), Convert(ConvertOp::I64ExtendUI32)];
		assert_seq_stack1(&v, Value::I64(0x00000000DEADC0DE));

		let v = [Const(Value::I32(-3i32 as u32)), Convert(ConvertOp::I64ExtendSI32)];
		assert_seq_stack1(&v, Value::I64(-3i64 as u64));
	}

	#[test]
	fn drop() {
		let v = [Const(Value::I64(0xFFFFDEADC0DEFFFF)), Drop_];
		assert_seq_stack0(&v);
	}

	#[test]
	fn select() {
		let v = [Const(Value::I64(1)), Const(Value::I64(2)), Const(Value::I32(0)), Select];
		assert_seq_stack1(&v, Value::I64(1));

		let v = [Const(Value::F64(1.0)), Const(Value::F64(2.0)), Const(Value::I32(42)), Select];
		assert_seq_stack1(&v, Value::F64(2.0));
	}

	// Inspired from
	// https://medium.com/@ericdreichert/test-setup-and-teardown-in-rust-without-a-framework-ba32d97aa5ab
	fn t<F, T>(test: F) -> T
		where F: FnOnce(Interpreter, vm::VM) -> T
	{
		let vm = vm::VM::new();
		let int = Interpreter::new();

		test(int, vm)
	}

	/// Run a sequence of instructions in a new empty interpreter.
	fn run_seq(instrs: &[Instr]) -> Result<(), Trap> {
		t(|mut int: Interpreter, mut vm: vm::VM| {
			interpreter_eval_expr!(&mut int, vm, instrs)
		})
	}

	/// Assert that executing the sequence of instructions `instrs` in a clean context
	/// is sucessful and that the resulting stack is equal to `final_stack`.
	fn assert_seq_stack(instrs: &[Instr], final_stack: &[Value]) {
		t(|mut int: Interpreter, mut vm: vm::VM| {
			assert_eq!(interpreter_eval_expr!(&mut int, vm, instrs), Ok(()));
			assert_eq!(int.stack, final_stack);
		})
	}

	/// Variant of `assert_seq_stack` where the resulting stack holds a single value.
	fn assert_seq_stack1(instrs: &[Instr], v: Value) {
		assert_seq_stack(instrs, &[v]);
	}

	/// Variant of `assert_seq_stack` where the resulting stack holds no value.
	fn assert_seq_stack0(instrs: &[Instr]) {
		assert_seq_stack(instrs, &[]);
	}
}

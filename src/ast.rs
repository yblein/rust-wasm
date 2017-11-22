use types;

#[derive(Debug)]
pub enum Literal {
	I32(i32),
	I64(i64),
	F32(f32),
	F64(f64),
}

#[derive(Debug)]
pub enum IUnOp {
	Clz, Ctz, Popcnt,
}

#[derive(Debug)]
pub enum FUnOp {
	Neg, Abs, Ceil, Floor, Trunc, Nearest, Sqrt,
}

#[derive(Debug)]
pub enum IBinOp {
	Add, Sub, Mul, DivS, DivU, RemS, RemU, And, Or, Xor, Shl, ShrS, ShrU, Rotl, Rotr,
}

#[derive(Debug)]
pub enum FBinOp {
	Add, Sub, Mul, Div, Min, Max, CopySign,
}

#[derive(Debug)]
pub enum ITestOp {
	Eqz,
}

#[derive(Debug)]
pub enum IRelOp {
	Eq_, Ne, LtS, LtU, GtS, GtU, LeS, LeU, GeS, GeU,
}

#[derive(Debug)]
pub enum FRelOp {
	Eq_, Ne, Lt, Gt, Le, Ge
}

#[derive(Debug)]
pub enum ConvertOp {
	I32WrapI64,
	I64ExtendUI32,
	I64ExtendSI32,
	Trunc { from: types::Float, to: types::Int, signed: bool },
	Convert { from: types::Int, to: types::Float, signed: bool },
	Reinterpret { from: types::Value, to: types::Value },
	F32DemoteF64,
	F64PromoteF32,
}

#[derive(Debug)]
pub struct LoadOp {
	pub align: u32,
	pub offset: u32,
	pub type_: types::Value,
	pub size_signed: Option<(u32, bool)>,
}

#[derive(Debug)]
pub struct StoreOp {
	pub align: u32,
	pub offset: u32,
	pub type_: types::Value,
	pub size: Option<u32>,
}

#[derive(Debug)]
pub enum Instr {
	Unreachable,                                   // trap unconditionally
	Nop,                                           // do nothing
	Block(Vec<types::Value>, Vec<Instr>),          // execute in sequence
	Loop(Vec<types::Value>, Vec<Instr>),           // loop header
	If(Vec<types::Value>, Vec<Instr>, Vec<Instr>), // conditional
	Br(Index),                                     // break to n-th surrounding label
	BrIf(Index),                                   // conditional break
	BrTable(Vec<Index>, Index),                    // indexed break
	Return,                                        // break from function body
	Call(Index),                                   // call function
	CallIndirect(Index),                           // call function through table
	Drop_,                                         // forget a value
	Select,                                        // branchless conditional
	GetLocal(Index),                               // read local variable
	SetLocal(Index),                               // write local variable
	TeeLocal(Index),                               // write local variable and keep value
	GetGlobal(Index),                              // read global variable
	SetGlobal(Index),                              // write global variable
	Load(LoadOp),                                  // read memory at address
	Store(StoreOp),                                // write memory at address
	CurrentMemory,                                 // size(linear memory
	GrowMemory,                                    // grow linear memory
	Const(Literal),                                // constant
	IUnary(types::Int, IUnOp),                     // integer unary numeric operators
	FUnary(types::Float, FUnOp),                   // floating unary numeric operators
	IBin(types::Int, IBinOp),                      // integer binary numeric operators
	FBin(types::Float, FBinOp),                    // floating binary numeric operators
	ITest(types::Int, ITestOp),                    // integer numeric test
	IRel(types::Int, IRelOp),                      // integer numeric comparison
	FRel(types::Float, FRelOp),                    // floating numeric comparison
	Convert(ConvertOp),                            // conversion
}

pub type Expr = Vec<Instr>;

#[derive(Debug)]
pub struct Module {
	pub types: Vec<types::Func>,
	pub funcs: Vec<Func>,
	pub tables: Vec<Table>,
	pub memories: Vec<Memory>,
	pub globals: Vec<Global>,
	pub elems: Vec<Segment<Index>>, // initial values for tables
	pub data: Vec<Segment<u8>>,     // initial values for memories
	pub start: Option<Index>,       // optionnal index to a start function
	pub imports: Vec<Import>,
	pub exports: Vec<Export>,
}

pub type Index = u32;

#[derive(Debug)]
pub struct Func {
	pub type_index: Index,
	pub locals: Vec<types::Value>,
	pub body: Expr,
}

#[derive(Debug)]
pub struct Table {
	pub type_: types::Table,
}

#[derive(Debug)]
pub struct Memory {
	pub type_: types::Memory,
}

#[derive(Debug)]
pub struct Global {
	pub type_: types::Global,
	pub value: Expr, // NB: Must be a constant expression
}

#[derive(Debug)]
pub struct Segment<T> {
	pub index: Index,
	pub offset: Expr, // NB: Must be a constant expression
	pub init: Vec<T>,
}

#[derive(Debug)]
pub struct Export {
	pub name: String,
	pub desc: ExportDesc,
}

#[derive(Debug)]
pub enum ExportDesc {
	Func(Index),
	Table(Index),
	Memory(Index),
	Global(Index),
}

#[derive(Debug)]
pub struct Import {
	pub module: String,
	pub name: String,
	pub desc: ImportDesc,
}

#[derive(Debug)]
pub enum ImportDesc {
	Func(Index),
	Table(types::Table),
	Memory(types::Memory),
	Global(types::Global),
}


// Helper function for tests
impl Module {
    // Right now, we cannot only publish this function for test
    // See https://github.com/rust-lang/rust/issues/45599
    // #[cfg(test)]
    pub fn new() -> Module {
        Module {
            types: Vec::new(),
            funcs: Vec::new(),
            tables: Vec::new(),
            memories: Vec::new(),
            globals: Vec::new(),
            elems: Vec::new(),
            data: Vec::new(),
            start: None,
            imports: Vec::new(),
            exports: Vec::new(),
        }
    }
}

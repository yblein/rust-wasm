use types;

enum Literal {
	I32(i32),
	I64(i64),
	F32(f32),
	F64(f64),
}

enum IUnOp {
	Clz, Ctz, Popcnt,
}

enum FUnOp {
	Neg, Abs, Ceil, Floor, Trunc, Nearest, Sqrt,
}

enum IBinOp {
	Add, Sub, Mul, DivS, DivU, RemS, RemU, And, Or, Xor, Shl, ShrS, ShrU, Rotl, Rotr,
}

enum FBinOp {
	Add, Sub, Mul, Div, Min, Max, CopySign,
}

enum ITestOp {
	Eqz,
}

enum IRelOp {
	Eq_, Ne, LtS, LtU, GtS, GtU, LeS, LeU, GeS, GeU,
}

enum FRelOp {
	Eq_, Ne, Lt, Gt, Le, Ge
}

enum ConvertOp {
	I32WrapI64,
	I64ExtendUI32,
	I64ExtendSI32,
	Trunc { from: types::Float, to: types::Int, signed: bool },
	Convert { from: types::Int, to: types::Float, signed: bool },
	Reinterpret { from: types::Value, to: types::Value },
	F32DemoteF64,
	F64PromoteF32,
}

struct LoadOp {
	offset: u32,
	align: u32,
	type_: types::Value,
	size: Option<u32>,
	signed: bool,
}

struct StoreOp {
	offset: u32,
	align: u32,
	type_: types::Value,
	size: Option<u32>,
}

enum Instr {
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

type Expr = Vec<Instr>;

struct Module {
	types: Vec<types::Func>,
	funcs: Vec<Func>,
	tables: Vec<Table>,
	memories: Vec<Memory>,
	globals: Vec<Global>,
	elems: Vec<Segment<Index>>, // initial values for tables
	data: Vec<Segment<u8>>,     // initial values for memories
	start: Option<Index>,       // optionnal index to a start function
	imports: Vec<Import>,
	exports: Vec<Export>,
}

type Index = u32;

struct Func {
	type_index: Index,
	locals: Vec<types::Value>,
	body: Expr,
}

struct Table {
	type_: types::Table,
}

struct Memory {
	type_: types::Memory,
}

struct Global {
	type_: types::Global,
	value: Expr, // NB: Must be a constant expression
}

struct Segment<T> {
	index: Index,
	offset: Expr, // NB: Must be a constant expression
	init: Vec<T>,
}

struct Export {
	name: String,
	desc: ExportDesc,
}

enum ExportDesc {
	Func(Index),
	Table(Index),
	Memory(Index),
	Global(Index),
}

struct Import {
	name: String,
	desc: ImportDesc,
}

enum ImportDesc {
	Func(Index),
	Table(types::Table),
	Memory(types::Memory),
	Global(types::Global),
}

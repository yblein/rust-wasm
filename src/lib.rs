#![feature(core_intrinsics)]
extern crate core;

// Note: only VM (and maybe interpreter) should be exported, all the rest is internal to the library
// E.g., generating an AST should be a function on VM and the returned type should be opaque
mod types;
mod values;
mod ops;

#[macro_use]
pub mod interpreter;
pub mod ast;
pub mod vm;
pub mod binary;
pub mod valid;

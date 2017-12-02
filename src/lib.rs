#![feature(core_intrinsics)]
extern crate core;

mod ops;
#[macro_use]
mod interpreter;
mod vm;
mod binary;
mod valid;

// Expose only necessary modules
// Note: we expose ast/values/types because the user can interact with the vm,
// e.g., to call a function, a user needs to setup correct arguments.
pub mod ast;
pub mod values;
pub mod types;
pub mod embedding;


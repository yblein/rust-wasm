extern crate lalrpop;

use std::fs::{self, File};
use std::io::prelude::*;

fn main() {
	// generate parsers
	lalrpop::process_root().unwrap();

	// generate a driver for the test suite
	let mut f = File::create("tests/run.rs").unwrap();
	f.write_all(
b"#![feature(try_from)]

extern crate lalrpop_util;
extern crate rust_wasm;
#[macro_use]
extern crate hexf;

mod script;

use std::fs::File;
use std::io::Read;
"
	).unwrap();

	for entry in fs::read_dir("tests/suite").unwrap() {
		let path = entry.unwrap().path();
		let name = path.file_name().unwrap().to_str().unwrap().split('.').next().unwrap().replace("-", "_");

		write!(f,
"#[test]
fn run_{}() {{
	let mut f = File::open(\"{}\").unwrap();
	let mut src = String::new();
	f.read_to_string(&mut src).unwrap();
	script::run(&src[..]);
}}\n",
			name,
			path.display(),
		).unwrap();
	}
}

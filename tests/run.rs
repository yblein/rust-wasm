extern crate lalrpop_util;
extern crate rust_wasm;

mod script;

use std::path::PathBuf;
use std::fs::{self, File};
use std::io::prelude::*;

#[test]
fn run_suite() {
	let mut dir = PathBuf::from(env!("CARGO_MANIFEST_DIR"));
	dir.push("tests/suite");

	for entry in fs::read_dir(dir).unwrap() {
		let path = entry.unwrap().path();

		println!("running script `{}`", path.file_name().unwrap().to_str().unwrap());

		let mut f = File::open(path).unwrap();
		let mut src = String::new();
		f.read_to_string(&mut src).unwrap();

		script::run(&src[..]);
	}
}

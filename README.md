# Rust-WASM

A [WASM](http://webassembly.org/) interpreter written in Rust.

Expect for parsing the text format, the implementation is complete, i.e., all the [specification](https://webassembly.github.io/spec/core/index.html) is implemented and the [official test suite](https://github.com/WebAssembly/spec/tree/master/test) is fully covered (as of 2019-10-27).

## Getting Started

The project is composed of a library (`rust_wasm`) as well as a test suite.

### Prerequisites

You need [Rust (at least 1.34.0)](https://www.rustup.rs/) to build the project.

### Building the library

```bash
cargo build [--release]
```

## Running the tests

```bash
cargo test
```

## Using the API

The [official embedding API](https://webassembly.github.io/spec/core/appendix/embedding.html) is supported.
Because the API specification is written in a pure style, we slightly modified it to best fit Rust (e.g., using mutable reference instead of returning a new store each time).

### Invoking the `main` function

```rust
use rust_wasm::*;
use std::fs::File;
use std::io::BufReader;

fn main() {
	let mut store = init_store();

	let f = File::open("filename").unwrap();
	let module = decode_module(BufReader::new(f)).unwrap();
	let module_instance = instantiate_module(&mut store, module, &[]).unwrap();

	if let ExternVal::Func(main_addr) = get_export(&module_instance, "main").unwrap() {
		let res = invoke_func(&mut store, main_addr, Vec::new());
		println!("{:?}", res);
	}
}
```

### Listing module exports/imports

```rust
use rust_wasm::*;
use std::fs::File;
use std::io::BufReader;

fn main() {
	let f = File::open("filename").unwrap();
	let module = decode_module(BufReader::new(f)).unwrap();
	let mod_exports = module_exports(&module);
	let mod_imports = module_imports(&module);
}
```

### Declaring a host function

```rust
use rust_wasm::*;

fn main() {
	let mut store = init_store();
	let func_type = types::Func { args: vec![types::I32, types::F64], result: vec![types::I64] };
	let print_count_args = |args: &[values::Value], ret: &mut[values::Value]| {
		println!("{:?}", args);
		ret[0] = values::Value::I64(args.len() as u64);
		None
	};
	let func_addr = alloc_func(&mut store, &func_type, Box::new(print_count_args));
}
```

### Managing imports resolution when instantiating multiple modules

This is left to the embedder. Nonetheless, you can see a working example inside `tests/scripts/run.rs`.

## Authors

* **[Yoann Blein](https://github.com/yblein)**
* **[Hugo Guiroux](https://github.com/HugoGuiroux)**

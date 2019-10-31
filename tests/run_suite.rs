extern crate hexf_parse;
extern crate rust_wasm;

mod script;

include!(concat!(env!("OUT_DIR"), "/test_suite.rs"));

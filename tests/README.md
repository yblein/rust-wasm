# Official Test Suite

Since this implementation of WebAssembly aims for compliance with the official specification, it is tested against the [official test suite](https://github.com/WebAssembly/spec/tree/master/test).
The `script` module handles parsing and execution of the official test script format.
However, this implementation does not support the WebAssembly text format, which used in most of the scripts.
Therefore, test scripts must be converted into the binary format, which can be done with the official interpreter:

```bash
for f in test/core/*.wast; do
	interpreter/wasm -d $f -o ${f%.wast}.bin.wast
done
```

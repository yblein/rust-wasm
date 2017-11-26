(module
  (type $type0 (func (result i32)))
  (table 0 anyfunc)
  (memory 1)
  (export "memory" memory)
  (export "main" $func0)
  (func $func0 (result i32)
    i32.const 42
  )
)

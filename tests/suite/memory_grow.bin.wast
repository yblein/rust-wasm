(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\03\60"
  "\00\01\7f\60\00\00\60\01\7f\01\7f\03\87\80\80\80"
  "\00\06\00\01\00\01\02\00\05\83\80\80\80\00\01\00"
  "\00\07\d7\80\80\80\00\06\0c\6c\6f\61\64\5f\61\74"
  "\5f\7a\65\72\6f\00\00\0d\73\74\6f\72\65\5f\61\74"
  "\5f\7a\65\72\6f\00\01\11\6c\6f\61\64\5f\61\74\5f"
  "\70\61\67\65\5f\73\69\7a\65\00\02\12\73\74\6f\72"
  "\65\5f\61\74\5f\70\61\67\65\5f\73\69\7a\65\00\03"
  "\04\67\72\6f\77\00\04\04\73\69\7a\65\00\05\0a\cd"
  "\80\80\80\00\06\87\80\80\80\00\00\41\00\28\02\00"
  "\0b\89\80\80\80\00\00\41\00\41\02\36\02\00\0b\89"
  "\80\80\80\00\00\41\80\80\04\28\02\00\0b\8b\80\80"
  "\80\00\00\41\80\80\04\41\03\36\02\00\0b\86\80\80"
  "\80\00\00\20\00\40\00\0b\84\80\80\80\00\00\3f\00"
  "\0b"
)
(assert_return (invoke "size") (i32.const 0))
(assert_trap (invoke "store_at_zero") "out of bounds memory access")
(assert_trap (invoke "load_at_zero") "out of bounds memory access")
(assert_trap (invoke "store_at_page_size") "out of bounds memory access")
(assert_trap (invoke "load_at_page_size") "out of bounds memory access")
(assert_return (invoke "grow" (i32.const 1)) (i32.const 0))
(assert_return (invoke "size") (i32.const 1))
(assert_return (invoke "load_at_zero") (i32.const 0))
(assert_return (invoke "store_at_zero"))
(assert_return (invoke "load_at_zero") (i32.const 2))
(assert_trap (invoke "store_at_page_size") "out of bounds memory access")
(assert_trap (invoke "load_at_page_size") "out of bounds memory access")
(assert_return (invoke "grow" (i32.const 4)) (i32.const 1))
(assert_return (invoke "size") (i32.const 5))
(assert_return (invoke "load_at_zero") (i32.const 2))
(assert_return (invoke "store_at_zero"))
(assert_return (invoke "load_at_zero") (i32.const 2))
(assert_return (invoke "load_at_page_size") (i32.const 0))
(assert_return (invoke "store_at_page_size"))
(assert_return (invoke "load_at_page_size") (i32.const 3))
(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\05\83\80\80"
  "\80\00\01\00\00\07\88\80\80\80\00\01\04\67\72\6f"
  "\77\00\00\0a\8c\80\80\80\00\01\86\80\80\80\00\00"
  "\20\00\40\00\0b"
)
(assert_return (invoke "grow" (i32.const 0)) (i32.const 0))
(assert_return (invoke "grow" (i32.const 1)) (i32.const 0))
(assert_return (invoke "grow" (i32.const 0)) (i32.const 1))
(assert_return (invoke "grow" (i32.const 2)) (i32.const 1))
(assert_return (invoke "grow" (i32.const 800)) (i32.const 3))
(assert_return (invoke "grow" (i32.const 65_536)) (i32.const -1))
(assert_return (invoke "grow" (i32.const 64_736)) (i32.const -1))
(assert_return (invoke "grow" (i32.const 1)) (i32.const 803))
(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7f\03\82\80\80\80\00\01\00\05\84\80\80"
  "\80\00\01\01\00\0a\07\88\80\80\80\00\01\04\67\72"
  "\6f\77\00\00\0a\8c\80\80\80\00\01\86\80\80\80\00"
  "\00\20\00\40\00\0b"
)
(assert_return (invoke "grow" (i32.const 0)) (i32.const 0))
(assert_return (invoke "grow" (i32.const 1)) (i32.const 0))
(assert_return (invoke "grow" (i32.const 1)) (i32.const 1))
(assert_return (invoke "grow" (i32.const 2)) (i32.const 2))
(assert_return (invoke "grow" (i32.const 6)) (i32.const 4))
(assert_return (invoke "grow" (i32.const 0)) (i32.const 10))
(assert_return (invoke "grow" (i32.const 1)) (i32.const -1))
(assert_return (invoke "grow" (i32.const 65_536)) (i32.const -1))
(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\02\60"
  "\01\7f\01\7f\60\02\7f\7f\01\7f\03\83\80\80\80\00"
  "\02\00\01\05\83\80\80\80\00\01\00\01\07\9c\80\80"
  "\80\00\02\04\67\72\6f\77\00\00\11\63\68\65\63\6b"
  "\2d\6d\65\6d\6f\72\79\2d\7a\65\72\6f\00\01\0a\c4"
  "\80\80\80\00\02\86\80\80\80\00\00\20\00\40\00\0b"
  "\b3\80\80\80\00\01\01\7f\41\01\21\02\02\40\03\40"
  "\20\00\2d\00\00\21\02\20\02\41\00\47\0d\01\20\00"
  "\20\01\4f\0d\01\20\00\41\01\6a\21\00\20\00\20\01"
  "\4d\0d\00\0b\0b\20\02\0b"
)
(assert_return
  (invoke "check-memory-zero" (i32.const 0) (i32.const 65_535))
  (i32.const 0)
)
(assert_return (invoke "grow" (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "check-memory-zero" (i32.const 65_536) (i32.const 131_071))
  (i32.const 0)
)
(assert_return (invoke "grow" (i32.const 1)) (i32.const 2))
(assert_return
  (invoke "check-memory-zero" (i32.const 131_072) (i32.const 196_607))
  (i32.const 0)
)
(assert_return (invoke "grow" (i32.const 1)) (i32.const 3))
(assert_return
  (invoke "check-memory-zero" (i32.const 196_608) (i32.const 262_143))
  (i32.const 0)
)
(assert_return (invoke "grow" (i32.const 1)) (i32.const 4))
(assert_return
  (invoke "check-memory-zero" (i32.const 262_144) (i32.const 327_679))
  (i32.const 0)
)
(assert_return (invoke "grow" (i32.const 1)) (i32.const 5))
(assert_return
  (invoke "check-memory-zero" (i32.const 327_680) (i32.const 393_215))
  (i32.const 0)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\95\80\80\80\00\04\60"
  "\03\7f\7f\7f\01\7f\60\00\01\7f\60\00\00\60\02\7f"
  "\7f\01\7f\03\a7\80\80\80\00\26\01\02\01\01\02\01"
  "\01\01\01\01\01\03\03\01\00\01\01\01\01\01\01\01"
  "\02\01\02\01\01\02\02\02\02\01\01\01\01\01\01\01"
  "\04\85\80\80\80\00\01\70\01\01\01\05\83\80\80\80"
  "\00\01\00\01\06\86\80\80\80\00\01\7f\01\41\00\0b"
  "\07\b7\85\80\80\00\25\0b\61\73\2d\62\72\2d\76\61"
  "\6c\75\65\00\00\0d\61\73\2d\62\72\5f\69\66\2d\63"
  "\6f\6e\64\00\01\0e\61\73\2d\62\72\5f\69\66\2d\76"
  "\61\6c\75\65\00\02\13\61\73\2d\62\72\5f\69\66\2d"
  "\76\61\6c\75\65\2d\63\6f\6e\64\00\03\11\61\73\2d"
  "\62\72\5f\74\61\62\6c\65\2d\69\6e\64\65\78\00\04"
  "\11\61\73\2d\62\72\5f\74\61\62\6c\65\2d\76\61\6c"
  "\75\65\00\05\17\61\73\2d\62\72\5f\74\61\62\6c\65"
  "\2d\76\61\6c\75\65\2d\69\6e\64\65\78\00\06\0f\61"
  "\73\2d\72\65\74\75\72\6e\2d\76\61\6c\75\65\00\07"
  "\0a\61\73\2d\69\66\2d\63\6f\6e\64\00\08\0a\61\73"
  "\2d\69\66\2d\74\68\65\6e\00\09\0a\61\73\2d\69\66"
  "\2d\65\6c\73\65\00\0a\0f\61\73\2d\73\65\6c\65\63"
  "\74\2d\66\69\72\73\74\00\0b\10\61\73\2d\73\65\6c"
  "\65\63\74\2d\73\65\63\6f\6e\64\00\0c\0e\61\73\2d"
  "\73\65\6c\65\63\74\2d\63\6f\6e\64\00\0d\0d\61\73"
  "\2d\63\61\6c\6c\2d\66\69\72\73\74\00\0f\0b\61\73"
  "\2d\63\61\6c\6c\2d\6d\69\64\00\10\0c\61\73\2d\63"
  "\61\6c\6c\2d\6c\61\73\74\00\11\16\61\73\2d\63\61"
  "\6c\6c\5f\69\6e\64\69\72\65\63\74\2d\66\69\72\73"
  "\74\00\12\14\61\73\2d\63\61\6c\6c\5f\69\6e\64\69"
  "\72\65\63\74\2d\6d\69\64\00\13\15\61\73\2d\63\61"
  "\6c\6c\5f\69\6e\64\69\72\65\63\74\2d\6c\61\73\74"
  "\00\14\16\61\73\2d\63\61\6c\6c\5f\69\6e\64\69\72"
  "\65\63\74\2d\69\6e\64\65\78\00\15\12\61\73\2d\6c"
  "\6f\63\61\6c\2e\73\65\74\2d\76\61\6c\75\65\00\16"
  "\12\61\73\2d\6c\6f\63\61\6c\2e\74\65\65\2d\76\61"
  "\6c\75\65\00\17\13\61\73\2d\67\6c\6f\62\61\6c\2e"
  "\73\65\74\2d\76\61\6c\75\65\00\18\0f\61\73\2d\6c"
  "\6f\61\64\2d\61\64\64\72\65\73\73\00\19\10\61\73"
  "\2d\6c\6f\61\64\4e\2d\61\64\64\72\65\73\73\00\1a"
  "\10\61\73\2d\73\74\6f\72\65\2d\61\64\64\72\65\73"
  "\73\00\1b\0e\61\73\2d\73\74\6f\72\65\2d\76\61\6c"
  "\75\65\00\1c\11\61\73\2d\73\74\6f\72\65\4e\2d\61"
  "\64\64\72\65\73\73\00\1d\0f\61\73\2d\73\74\6f\72"
  "\65\4e\2d\76\61\6c\75\65\00\1e\10\61\73\2d\75\6e"
  "\61\72\79\2d\6f\70\65\72\61\6e\64\00\1f\0e\61\73"
  "\2d\62\69\6e\61\72\79\2d\6c\65\66\74\00\20\0f\61"
  "\73\2d\62\69\6e\61\72\79\2d\72\69\67\68\74\00\21"
  "\0f\61\73\2d\74\65\73\74\2d\6f\70\65\72\61\6e\64"
  "\00\22\0f\61\73\2d\63\6f\6d\70\61\72\65\2d\6c\65"
  "\66\74\00\23\10\61\73\2d\63\6f\6d\70\61\72\65\2d"
  "\72\69\67\68\74\00\24\13\61\73\2d\6d\65\6d\6f\72"
  "\79\2e\67\72\6f\77\2d\73\69\7a\65\00\25\09\87\80"
  "\80\80\00\01\00\41\00\0b\01\0e\0a\f2\84\80\80\00"
  "\26\8b\80\80\80\00\00\02\7f\41\00\40\00\0c\00\0b"
  "\0b\8b\80\80\80\00\00\02\40\41\00\40\00\0d\00\0b"
  "\0b\90\80\80\80\00\00\02\7f\41\00\40\00\41\01\0d"
  "\00\1a\41\07\0b\0b\90\80\80\80\00\00\02\7f\41\06"
  "\41\00\40\00\0d\00\1a\41\07\0b\0b\8e\80\80\80\00"
  "\00\02\40\41\00\40\00\0e\02\00\00\00\0b\0b\92\80"
  "\80\80\00\00\02\7f\41\00\40\00\41\01\0e\02\00\00"
  "\00\41\07\0b\0b\91\80\80\80\00\00\02\7f\41\06\41"
  "\00\40\00\0e\01\00\00\41\07\0b\0b\87\80\80\80\00"
  "\00\41\00\40\00\0f\0b\8e\80\80\80\00\00\41\00\40"
  "\00\04\7f\41\00\05\41\01\0b\0b\8e\80\80\80\00\00"
  "\41\01\04\7f\41\00\40\00\05\41\00\0b\0b\8e\80\80"
  "\80\00\00\41\00\04\7f\41\00\05\41\00\40\00\0b\0b"
  "\8b\80\80\80\00\00\41\00\40\00\20\00\20\01\1b\0b"
  "\8b\80\80\80\00\00\20\00\41\00\40\00\20\01\1b\0b"
  "\8b\80\80\80\00\00\41\00\41\01\41\00\40\00\1b\0b"
  "\84\80\80\80\00\00\41\7f\0b\8c\80\80\80\00\00\41"
  "\00\40\00\41\02\41\03\10\0e\0b\8c\80\80\80\00\00"
  "\41\01\41\00\40\00\41\03\10\0e\0b\8c\80\80\80\00"
  "\00\41\01\41\02\41\00\40\00\10\0e\0b\8f\80\80\80"
  "\00\00\41\00\40\00\41\02\41\03\41\00\11\00\00\0b"
  "\8f\80\80\80\00\00\41\01\41\00\40\00\41\03\41\00"
  "\11\00\00\0b\8f\80\80\80\00\00\41\01\41\02\41\00"
  "\40\00\41\00\11\00\00\0b\8f\80\80\80\00\00\41\01"
  "\41\02\41\03\41\00\40\00\11\00\00\0b\8a\80\80\80"
  "\00\01\01\7f\41\00\40\00\21\00\0b\8a\80\80\80\00"
  "\01\01\7f\41\00\40\00\22\00\0b\8a\80\80\80\00\01"
  "\01\7f\41\00\40\00\24\00\0b\89\80\80\80\00\00\41"
  "\00\40\00\28\02\00\0b\89\80\80\80\00\00\41\00\40"
  "\00\2c\00\00\0b\8b\80\80\80\00\00\41\00\40\00\41"
  "\07\36\02\00\0b\8b\80\80\80\00\00\41\02\41\00\40"
  "\00\36\02\00\0b\8b\80\80\80\00\00\41\00\40\00\41"
  "\07\3a\00\00\0b\8b\80\80\80\00\00\41\02\41\00\40"
  "\00\3b\01\00\0b\87\80\80\80\00\00\41\00\40\00\67"
  "\0b\89\80\80\80\00\00\41\00\40\00\41\0a\6a\0b\89"
  "\80\80\80\00\00\41\0a\41\00\40\00\6b\0b\87\80\80"
  "\80\00\00\41\00\40\00\45\0b\89\80\80\80\00\00\41"
  "\00\40\00\41\0a\4c\0b\89\80\80\80\00\00\41\0a\41"
  "\00\40\00\47\0b\88\80\80\80\00\00\41\00\40\00\40"
  "\00\0b"
)
(assert_return (invoke "as-br-value") (i32.const 1))
(assert_return (invoke "as-br_if-cond"))
(assert_return (invoke "as-br_if-value") (i32.const 1))
(assert_return (invoke "as-br_if-value-cond") (i32.const 6))
(assert_return (invoke "as-br_table-index"))
(assert_return (invoke "as-br_table-value") (i32.const 1))
(assert_return (invoke "as-br_table-value-index") (i32.const 6))
(assert_return (invoke "as-return-value") (i32.const 1))
(assert_return (invoke "as-if-cond") (i32.const 0))
(assert_return (invoke "as-if-then") (i32.const 1))
(assert_return (invoke "as-if-else") (i32.const 1))
(assert_return
  (invoke "as-select-first" (i32.const 0) (i32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "as-select-second" (i32.const 0) (i32.const 0))
  (i32.const 1)
)
(assert_return (invoke "as-select-cond") (i32.const 0))
(assert_return (invoke "as-call-first") (i32.const -1))
(assert_return (invoke "as-call-mid") (i32.const -1))
(assert_return (invoke "as-call-last") (i32.const -1))
(assert_return (invoke "as-call_indirect-first") (i32.const -1))
(assert_return (invoke "as-call_indirect-mid") (i32.const -1))
(assert_return (invoke "as-call_indirect-last") (i32.const -1))
(assert_trap (invoke "as-call_indirect-index") "undefined element")
(assert_return (invoke "as-local.set-value"))
(assert_return (invoke "as-local.tee-value") (i32.const 1))
(assert_return (invoke "as-global.set-value"))
(assert_return (invoke "as-load-address") (i32.const 0))
(assert_return (invoke "as-loadN-address") (i32.const 0))
(assert_return (invoke "as-store-address"))
(assert_return (invoke "as-store-value"))
(assert_return (invoke "as-storeN-address"))
(assert_return (invoke "as-storeN-value"))
(assert_return (invoke "as-unary-operand") (i32.const 31))
(assert_return (invoke "as-binary-left") (i32.const 11))
(assert_return (invoke "as-binary-right") (i32.const 9))
(assert_return (invoke "as-test-operand") (i32.const 0))
(assert_return (invoke "as-compare-left") (i32.const 1))
(assert_return (invoke "as-compare-right") (i32.const 1))
(assert_return (invoke "as-memory.grow-size") (i32.const 1))
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\05\83\80\80\80\00"
    "\01\00\00\0a\8b\80\80\80\00\01\85\80\80\80\00\00"
    "\40\00\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\05\83\80\80\80\00"
    "\01\00\00\0a\90\80\80\80\00\01\8a\80\80\80\00\00"
    "\41\00\02\40\40\00\1a\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\05\83\80\80\80\00"
    "\01\00\00\0a\90\80\80\80\00\01\8a\80\80\80\00\00"
    "\41\00\03\40\40\00\1a\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\05\83\80\80\80\00"
    "\01\00\00\0a\92\80\80\80\00\01\8c\80\80\80\00\00"
    "\41\00\41\00\04\40\40\00\1a\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\05\83\80\80\80"
    "\00\01\00\01\0a\8f\80\80\80\00\01\89\80\80\80\00"
    "\00\43\00\00\00\00\40\00\0b"
  )
  "type mismatch"
)

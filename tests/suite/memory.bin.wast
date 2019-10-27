(module binary "\00\61\73\6d\01\00\00\00\05\84\80\80\80\00\01\01" "\00\00")
(module binary "\00\61\73\6d\01\00\00\00\05\84\80\80\80\00\01\01" "\00\01")
(module binary "\00\61\73\6d\01\00\00\00\05\85\80\80\80\00\01\01" "\01\80\02")
(module binary
  "\00\61\73\6d\01\00\00\00\05\86\80\80\80\00\01\01"
  "\00\80\80\04"
)
(assert_invalid
  (module binary "\00\61\73\6d\01\00\00\00\05\85\80\80\80\00\02\00" "\00\00\00")
  "multiple memories"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\02\94\80\80\80\00\01\08"
    "\73\70\65\63\74\65\73\74\06\6d\65\6d\6f\72\79\02"
    "\00\00\05\83\80\80\80\00\01\00\00"
  )
  "multiple memories"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\03\82\80\80\80\00\01\00\05\84\80\80\80"
  "\00\01\01\00\00\07\8b\80\80\80\00\01\07\6d\65\6d"
  "\73\69\7a\65\00\00\0a\8a\80\80\80\00\01\84\80\80"
  "\80\00\00\3f\00\0b\0b\86\80\80\80\00\01\00\41\00"
  "\0b\00"
)
(assert_return (invoke "memsize") (i32.const 0))
(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\03\82\80\80\80\00\01\00\05\84\80\80\80"
  "\00\01\01\00\00\07\8b\80\80\80\00\01\07\6d\65\6d"
  "\73\69\7a\65\00\00\0a\8a\80\80\80\00\01\84\80\80"
  "\80\00\00\3f\00\0b\0b\86\80\80\80\00\01\00\41\00"
  "\0b\00"
)
(assert_return (invoke "memsize") (i32.const 0))
(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\03\82\80\80\80\00\01\00\05\84\80\80\80"
  "\00\01\01\01\01\07\8b\80\80\80\00\01\07\6d\65\6d"
  "\73\69\7a\65\00\00\0a\8a\80\80\80\00\01\84\80\80"
  "\80\00\00\3f\00\0b\0b\87\80\80\80\00\01\00\41\00"
  "\0b\01\78"
)
(assert_return (invoke "memsize") (i32.const 1))
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\0b\86\80\80\80\00\01\00"
    "\41\00\0b\00"
  )
  "unknown memory"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\0b\86\80\80\80\00\01\00"
    "\41\00\0b\00"
  )
  "unknown memory"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\0b\87\80\80\80\00\01\00"
    "\41\00\0b\01\78"
  )
  "unknown memory"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\8e\80\80\80\00"
    "\01\88\80\80\80\00\00\41\00\2a\02\00\1a\0b"
  )
  "unknown memory"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\92\80\80\80\00"
    "\01\8c\80\80\80\00\00\41\00\43\00\00\00\00\38\02"
    "\00\0b"
  )
  "unknown memory"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\8e\80\80\80\00"
    "\01\88\80\80\80\00\00\41\00\2c\00\00\1a\0b"
  )
  "unknown memory"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\8f\80\80\80\00"
    "\01\89\80\80\80\00\00\41\00\41\00\3a\00\00\0b"
  )
  "unknown memory"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\8b\80\80\80\00"
    "\01\85\80\80\80\00\00\3f\00\1a\0b"
  )
  "unknown memory"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\8d\80\80\80\00"
    "\01\87\80\80\80\00\00\41\00\40\00\1a\0b"
  )
  "unknown memory"
)
(assert_invalid
  (module binary "\00\61\73\6d\01\00\00\00\05\84\80\80\80\00\01\01" "\01\00")
  "size minimum must not be greater than maximum"
)
(assert_invalid
  (module binary "\00\61\73\6d\01\00\00\00\05\85\80\80\80\00\01\00" "\81\80\04")
  "memory size must be at most 65536 pages (4GiB)"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\05\87\80\80\80\00\01\00"
    "\80\80\80\80\08"
  )
  "memory size must be at most 65536 pages (4GiB)"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\05\87\80\80\80\00\01\00"
    "\ff\ff\ff\ff\0f"
  )
  "memory size must be at most 65536 pages (4GiB)"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\05\86\80\80\80\00\01\01"
    "\00\81\80\04"
  )
  "memory size must be at most 65536 pages (4GiB)"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\05\88\80\80\80\00\01\01"
    "\00\80\80\80\80\08"
  )
  "memory size must be at most 65536 pages (4GiB)"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\05\88\80\80\80\00\01\01"
    "\00\ff\ff\ff\ff\0f"
  )
  "memory size must be at most 65536 pages (4GiB)"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\93\80\80\80\00\04\60"
  "\00\01\7f\60\00\01\7c\60\01\7f\01\7f\60\01\7e\01"
  "\7e\03\8d\80\80\80\00\0c\00\01\02\02\02\02\03\03"
  "\03\03\03\03\05\83\80\80\80\00\01\00\01\07\a1\81"
  "\80\80\00\0c\04\64\61\74\61\00\00\04\63\61\73\74"
  "\00\01\0b\69\33\32\5f\6c\6f\61\64\38\5f\73\00\02"
  "\0b\69\33\32\5f\6c\6f\61\64\38\5f\75\00\03\0c\69"
  "\33\32\5f\6c\6f\61\64\31\36\5f\73\00\04\0c\69\33"
  "\32\5f\6c\6f\61\64\31\36\5f\75\00\05\0b\69\36\34"
  "\5f\6c\6f\61\64\38\5f\73\00\06\0b\69\36\34\5f\6c"
  "\6f\61\64\38\5f\75\00\07\0c\69\36\34\5f\6c\6f\61"
  "\64\31\36\5f\73\00\08\0c\69\36\34\5f\6c\6f\61\64"
  "\31\36\5f\75\00\09\0c\69\36\34\5f\6c\6f\61\64\33"
  "\32\5f\73\00\0a\0c\69\36\34\5f\6c\6f\61\64\33\32"
  "\5f\75\00\0b\0a\cf\82\80\80\00\0c\ce\80\80\80\00"
  "\00\41\00\2d\00\00\41\c1\00\46\41\03\2d\00\00\41"
  "\a7\01\46\71\41\06\2d\00\00\41\00\46\41\13\2d\00"
  "\00\41\00\46\71\71\41\14\2d\00\00\41\d7\00\46\41"
  "\17\2d\00\00\41\cd\00\46\71\41\18\2d\00\00\41\00"
  "\46\41\ff\07\2d\00\00\41\00\46\71\71\71\0b\b8\80"
  "\80\80\00\00\41\08\42\c7\9f\7f\37\03\00\41\08\2b"
  "\03\00\42\c7\9f\7f\bf\61\04\40\44\00\00\00\00\00"
  "\00\00\00\0f\0b\41\09\42\00\37\00\00\41\0f\41\c5"
  "\80\01\3b\00\00\41\09\2b\00\00\0b\8e\80\80\80\00"
  "\00\41\08\20\00\3a\00\00\41\08\2c\00\00\0b\8e\80"
  "\80\80\00\00\41\08\20\00\3a\00\00\41\08\2d\00\00"
  "\0b\8e\80\80\80\00\00\41\08\20\00\3b\01\00\41\08"
  "\2e\01\00\0b\8e\80\80\80\00\00\41\08\20\00\3b\01"
  "\00\41\08\2f\01\00\0b\8e\80\80\80\00\00\41\08\20"
  "\00\3c\00\00\41\08\30\00\00\0b\8e\80\80\80\00\00"
  "\41\08\20\00\3c\00\00\41\08\31\00\00\0b\8e\80\80"
  "\80\00\00\41\08\20\00\3d\01\00\41\08\32\01\00\0b"
  "\8e\80\80\80\00\00\41\08\20\00\3d\01\00\41\08\33"
  "\01\00\0b\8e\80\80\80\00\00\41\08\20\00\3e\02\00"
  "\41\08\34\02\00\0b\8e\80\80\80\00\00\41\08\20\00"
  "\3e\02\00\41\08\35\02\00\0b\0b\94\80\80\80\00\02"
  "\00\41\00\0b\05\41\42\43\a7\44\00\41\14\0b\04\57"
  "\41\53\4d"
)
(assert_return (invoke "data") (i32.const 1))
(assert_return (invoke "cast") (f64.const 42))
(assert_return (invoke "i32_load8_s" (i32.const -1)) (i32.const -1))
(assert_return (invoke "i32_load8_u" (i32.const -1)) (i32.const 255))
(assert_return (invoke "i32_load16_s" (i32.const -1)) (i32.const -1))
(assert_return (invoke "i32_load16_u" (i32.const -1)) (i32.const 65_535))
(assert_return (invoke "i32_load8_s" (i32.const 100)) (i32.const 100))
(assert_return (invoke "i32_load8_u" (i32.const 200)) (i32.const 200))
(assert_return (invoke "i32_load16_s" (i32.const 20_000)) (i32.const 20_000))
(assert_return (invoke "i32_load16_u" (i32.const 40_000)) (i32.const 40_000))
(assert_return (invoke "i32_load8_s" (i32.const -19_110_589)) (i32.const 67))
(assert_return (invoke "i32_load8_s" (i32.const 878_104_047)) (i32.const -17))
(assert_return (invoke "i32_load8_u" (i32.const -19_110_589)) (i32.const 67))
(assert_return (invoke "i32_load8_u" (i32.const 878_104_047)) (i32.const 239))
(assert_return
  (invoke "i32_load16_s" (i32.const -19_110_589))
  (i32.const 25_923)
)
(assert_return
  (invoke "i32_load16_s" (i32.const 878_104_047))
  (i32.const -12_817)
)
(assert_return
  (invoke "i32_load16_u" (i32.const -19_110_589))
  (i32.const 25_923)
)
(assert_return
  (invoke "i32_load16_u" (i32.const 878_104_047))
  (i32.const 52_719)
)
(assert_return (invoke "i64_load8_s" (i64.const -1)) (i64.const -1))
(assert_return (invoke "i64_load8_u" (i64.const -1)) (i64.const 255))
(assert_return (invoke "i64_load16_s" (i64.const -1)) (i64.const -1))
(assert_return (invoke "i64_load16_u" (i64.const -1)) (i64.const 65_535))
(assert_return (invoke "i64_load32_s" (i64.const -1)) (i64.const -1))
(assert_return (invoke "i64_load32_u" (i64.const -1)) (i64.const 4_294_967_295))
(assert_return (invoke "i64_load8_s" (i64.const 100)) (i64.const 100))
(assert_return (invoke "i64_load8_u" (i64.const 200)) (i64.const 200))
(assert_return (invoke "i64_load16_s" (i64.const 20_000)) (i64.const 20_000))
(assert_return (invoke "i64_load16_u" (i64.const 40_000)) (i64.const 40_000))
(assert_return (invoke "i64_load32_s" (i64.const 20_000)) (i64.const 20_000))
(assert_return (invoke "i64_load32_u" (i64.const 40_000)) (i64.const 40_000))
(assert_return
  (invoke "i64_load8_s" (i64.const -81_985_529_755_441_853))
  (i64.const 67)
)
(assert_return
  (invoke "i64_load8_s" (i64.const 3_771_275_841_602_506_223))
  (i64.const -17)
)
(assert_return
  (invoke "i64_load8_u" (i64.const -81_985_529_755_441_853))
  (i64.const 67)
)
(assert_return
  (invoke "i64_load8_u" (i64.const 3_771_275_841_602_506_223))
  (i64.const 239)
)
(assert_return
  (invoke "i64_load16_s" (i64.const -81_985_529_755_441_853))
  (i64.const 25_923)
)
(assert_return
  (invoke "i64_load16_s" (i64.const 3_771_275_841_602_506_223))
  (i64.const -12_817)
)
(assert_return
  (invoke "i64_load16_u" (i64.const -81_985_529_755_441_853))
  (i64.const 25_923)
)
(assert_return
  (invoke "i64_load16_u" (i64.const 3_771_275_841_602_506_223))
  (i64.const 52_719)
)
(assert_return
  (invoke "i64_load32_s" (i64.const -81_985_529_755_441_853))
  (i64.const 1_446_274_371)
)
(assert_return
  (invoke "i64_load32_s" (i64.const 3_771_275_841_602_506_223))
  (i64.const -1_732_588_049)
)
(assert_return
  (invoke "i64_load32_u" (i64.const -81_985_529_755_441_853))
  (i64.const 1_446_274_371)
)
(assert_return
  (invoke "i64_load32_u" (i64.const 3_771_275_841_602_506_223))
  (i64.const 2_562_379_247)
)

(module binary
  "\00\61\73\6d\01\00\00\00\01\97\80\80\80\00\04\60"
  "\02\7e\7e\01\7e\60\01\7e\01\7e\60\01\7e\01\7f\60"
  "\02\7e\7e\01\7f\03\9e\80\80\80\00\1d\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\00\00\01\01\01\02\03"
  "\03\03\03\03\03\03\03\03\03\07\c5\81\80\80\00\1d"
  "\03\61\64\64\00\00\03\73\75\62\00\01\03\6d\75\6c"
  "\00\02\05\64\69\76\5f\73\00\03\05\64\69\76\5f\75"
  "\00\04\05\72\65\6d\5f\73\00\05\05\72\65\6d\5f\75"
  "\00\06\03\61\6e\64\00\07\02\6f\72\00\08\03\78\6f"
  "\72\00\09\03\73\68\6c\00\0a\05\73\68\72\5f\73\00"
  "\0b\05\73\68\72\5f\75\00\0c\04\72\6f\74\6c\00\0d"
  "\04\72\6f\74\72\00\0e\03\63\6c\7a\00\0f\03\63\74"
  "\7a\00\10\06\70\6f\70\63\6e\74\00\11\03\65\71\7a"
  "\00\12\02\65\71\00\13\02\6e\65\00\14\04\6c\74\5f"
  "\73\00\15\04\6c\74\5f\75\00\16\04\6c\65\5f\73\00"
  "\17\04\6c\65\5f\75\00\18\04\67\74\5f\73\00\19\04"
  "\67\74\5f\75\00\1a\04\67\65\5f\73\00\1b\04\67\65"
  "\5f\75\00\1c\0a\d5\82\80\80\00\1d\87\80\80\80\00"
  "\00\20\00\20\01\7c\0b\87\80\80\80\00\00\20\00\20"
  "\01\7d\0b\87\80\80\80\00\00\20\00\20\01\7e\0b\87"
  "\80\80\80\00\00\20\00\20\01\7f\0b\87\80\80\80\00"
  "\00\20\00\20\01\80\0b\87\80\80\80\00\00\20\00\20"
  "\01\81\0b\87\80\80\80\00\00\20\00\20\01\82\0b\87"
  "\80\80\80\00\00\20\00\20\01\83\0b\87\80\80\80\00"
  "\00\20\00\20\01\84\0b\87\80\80\80\00\00\20\00\20"
  "\01\85\0b\87\80\80\80\00\00\20\00\20\01\86\0b\87"
  "\80\80\80\00\00\20\00\20\01\87\0b\87\80\80\80\00"
  "\00\20\00\20\01\88\0b\87\80\80\80\00\00\20\00\20"
  "\01\89\0b\87\80\80\80\00\00\20\00\20\01\8a\0b\85"
  "\80\80\80\00\00\20\00\79\0b\85\80\80\80\00\00\20"
  "\00\7a\0b\85\80\80\80\00\00\20\00\7b\0b\85\80\80"
  "\80\00\00\20\00\50\0b\87\80\80\80\00\00\20\00\20"
  "\01\51\0b\87\80\80\80\00\00\20\00\20\01\52\0b\87"
  "\80\80\80\00\00\20\00\20\01\53\0b\87\80\80\80\00"
  "\00\20\00\20\01\54\0b\87\80\80\80\00\00\20\00\20"
  "\01\57\0b\87\80\80\80\00\00\20\00\20\01\58\0b\87"
  "\80\80\80\00\00\20\00\20\01\55\0b\87\80\80\80\00"
  "\00\20\00\20\01\56\0b\87\80\80\80\00\00\20\00\20"
  "\01\59\0b\87\80\80\80\00\00\20\00\20\01\5a\0b"
)
(assert_return (invoke "add" (i64.const 1) (i64.const 1)) (i64.const 2))
(assert_return (invoke "add" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return (invoke "add" (i64.const -1) (i64.const -1)) (i64.const -2))
(assert_return (invoke "add" (i64.const -1) (i64.const 1)) (i64.const 0))
(assert_return
  (invoke "add" (i64.const 9_223_372_036_854_775_807) (i64.const 1))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return
  (invoke "add" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i64.const 9_223_372_036_854_775_807)
)
(assert_return
  (invoke "add"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i64.const 0)
)
(assert_return
  (invoke "add" (i64.const 1_073_741_823) (i64.const 1))
  (i64.const 1_073_741_824)
)
(assert_return (invoke "sub" (i64.const 1) (i64.const 1)) (i64.const 0))
(assert_return (invoke "sub" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return (invoke "sub" (i64.const -1) (i64.const -1)) (i64.const 0))
(assert_return
  (invoke "sub" (i64.const 9_223_372_036_854_775_807) (i64.const -1))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return
  (invoke "sub" (i64.const -9_223_372_036_854_775_808) (i64.const 1))
  (i64.const 9_223_372_036_854_775_807)
)
(assert_return
  (invoke "sub"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i64.const 0)
)
(assert_return
  (invoke "sub" (i64.const 1_073_741_823) (i64.const -1))
  (i64.const 1_073_741_824)
)
(assert_return (invoke "mul" (i64.const 1) (i64.const 1)) (i64.const 1))
(assert_return (invoke "mul" (i64.const 1) (i64.const 0)) (i64.const 0))
(assert_return (invoke "mul" (i64.const -1) (i64.const -1)) (i64.const 1))
(assert_return
  (invoke "mul" (i64.const 1_152_921_504_606_846_976) (i64.const 4_096))
  (i64.const 0)
)
(assert_return
  (invoke "mul" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i64.const 0)
)
(assert_return
  (invoke "mul" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return
  (invoke "mul" (i64.const 9_223_372_036_854_775_807) (i64.const -1))
  (i64.const -9_223_372_036_854_775_807)
)
(assert_return
  (invoke "mul"
    (i64.const 81_985_529_216_486_895)
    (i64.const -81_985_529_216_486_896)
  )
  (i64.const 2_465_395_958_572_223_728)
)
(assert_return
  (invoke "mul"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i64.const 1)
)
(assert_trap
  (invoke "div_s" (i64.const 1) (i64.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "div_s" (i64.const 0) (i64.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "div_s" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  "integer overflow"
)
(assert_trap
  (invoke "div_s" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  "integer divide by zero"
)
(assert_return (invoke "div_s" (i64.const 1) (i64.const 1)) (i64.const 1))
(assert_return (invoke "div_s" (i64.const 0) (i64.const 1)) (i64.const 0))
(assert_return (invoke "div_s" (i64.const 0) (i64.const -1)) (i64.const 0))
(assert_return (invoke "div_s" (i64.const -1) (i64.const -1)) (i64.const 1))
(assert_return
  (invoke "div_s" (i64.const -9_223_372_036_854_775_808) (i64.const 2))
  (i64.const -4_611_686_018_427_387_904)
)
(assert_return
  (invoke "div_s" (i64.const -9_223_372_036_854_775_807) (i64.const 1_000))
  (i64.const -9_223_372_036_854_775)
)
(assert_return (invoke "div_s" (i64.const 5) (i64.const 2)) (i64.const 2))
(assert_return (invoke "div_s" (i64.const -5) (i64.const 2)) (i64.const -2))
(assert_return (invoke "div_s" (i64.const 5) (i64.const -2)) (i64.const -2))
(assert_return (invoke "div_s" (i64.const -5) (i64.const -2)) (i64.const 2))
(assert_return (invoke "div_s" (i64.const 7) (i64.const 3)) (i64.const 2))
(assert_return (invoke "div_s" (i64.const -7) (i64.const 3)) (i64.const -2))
(assert_return (invoke "div_s" (i64.const 7) (i64.const -3)) (i64.const -2))
(assert_return (invoke "div_s" (i64.const -7) (i64.const -3)) (i64.const 2))
(assert_return (invoke "div_s" (i64.const 11) (i64.const 5)) (i64.const 2))
(assert_return (invoke "div_s" (i64.const 17) (i64.const 7)) (i64.const 2))
(assert_trap
  (invoke "div_u" (i64.const 1) (i64.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "div_u" (i64.const 0) (i64.const 0))
  "integer divide by zero"
)
(assert_return (invoke "div_u" (i64.const 1) (i64.const 1)) (i64.const 1))
(assert_return (invoke "div_u" (i64.const 0) (i64.const 1)) (i64.const 0))
(assert_return (invoke "div_u" (i64.const -1) (i64.const -1)) (i64.const 1))
(assert_return
  (invoke "div_u" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i64.const 0)
)
(assert_return
  (invoke "div_u" (i64.const -9_223_372_036_854_775_808) (i64.const 2))
  (i64.const 4_611_686_018_427_387_904)
)
(assert_return
  (invoke "div_u"
    (i64.const -8_074_936_608_141_340_688)
    (i64.const 4_294_967_297)
  )
  (i64.const 2_414_874_607)
)
(assert_return
  (invoke "div_u" (i64.const -9_223_372_036_854_775_807) (i64.const 1_000))
  (i64.const 9_223_372_036_854_775)
)
(assert_return (invoke "div_u" (i64.const 5) (i64.const 2)) (i64.const 2))
(assert_return
  (invoke "div_u" (i64.const -5) (i64.const 2))
  (i64.const 9_223_372_036_854_775_805)
)
(assert_return (invoke "div_u" (i64.const 5) (i64.const -2)) (i64.const 0))
(assert_return (invoke "div_u" (i64.const -5) (i64.const -2)) (i64.const 0))
(assert_return (invoke "div_u" (i64.const 7) (i64.const 3)) (i64.const 2))
(assert_return (invoke "div_u" (i64.const 11) (i64.const 5)) (i64.const 2))
(assert_return (invoke "div_u" (i64.const 17) (i64.const 7)) (i64.const 2))
(assert_trap
  (invoke "rem_s" (i64.const 1) (i64.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "rem_s" (i64.const 0) (i64.const 0))
  "integer divide by zero"
)
(assert_return
  (invoke "rem_s" (i64.const 9_223_372_036_854_775_807) (i64.const -1))
  (i64.const 0)
)
(assert_return (invoke "rem_s" (i64.const 1) (i64.const 1)) (i64.const 0))
(assert_return (invoke "rem_s" (i64.const 0) (i64.const 1)) (i64.const 0))
(assert_return (invoke "rem_s" (i64.const 0) (i64.const -1)) (i64.const 0))
(assert_return (invoke "rem_s" (i64.const -1) (i64.const -1)) (i64.const 0))
(assert_return
  (invoke "rem_s" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i64.const 0)
)
(assert_return
  (invoke "rem_s" (i64.const -9_223_372_036_854_775_808) (i64.const 2))
  (i64.const 0)
)
(assert_return
  (invoke "rem_s" (i64.const -9_223_372_036_854_775_807) (i64.const 1_000))
  (i64.const -807)
)
(assert_return (invoke "rem_s" (i64.const 5) (i64.const 2)) (i64.const 1))
(assert_return (invoke "rem_s" (i64.const -5) (i64.const 2)) (i64.const -1))
(assert_return (invoke "rem_s" (i64.const 5) (i64.const -2)) (i64.const 1))
(assert_return (invoke "rem_s" (i64.const -5) (i64.const -2)) (i64.const -1))
(assert_return (invoke "rem_s" (i64.const 7) (i64.const 3)) (i64.const 1))
(assert_return (invoke "rem_s" (i64.const -7) (i64.const 3)) (i64.const -1))
(assert_return (invoke "rem_s" (i64.const 7) (i64.const -3)) (i64.const 1))
(assert_return (invoke "rem_s" (i64.const -7) (i64.const -3)) (i64.const -1))
(assert_return (invoke "rem_s" (i64.const 11) (i64.const 5)) (i64.const 1))
(assert_return (invoke "rem_s" (i64.const 17) (i64.const 7)) (i64.const 3))
(assert_trap
  (invoke "rem_u" (i64.const 1) (i64.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "rem_u" (i64.const 0) (i64.const 0))
  "integer divide by zero"
)
(assert_return (invoke "rem_u" (i64.const 1) (i64.const 1)) (i64.const 0))
(assert_return (invoke "rem_u" (i64.const 0) (i64.const 1)) (i64.const 0))
(assert_return (invoke "rem_u" (i64.const -1) (i64.const -1)) (i64.const 0))
(assert_return
  (invoke "rem_u" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return
  (invoke "rem_u" (i64.const -9_223_372_036_854_775_808) (i64.const 2))
  (i64.const 0)
)
(assert_return
  (invoke "rem_u"
    (i64.const -8_074_936_608_141_340_688)
    (i64.const 4_294_967_297)
  )
  (i64.const 2_147_483_649)
)
(assert_return
  (invoke "rem_u" (i64.const -9_223_372_036_854_775_807) (i64.const 1_000))
  (i64.const 809)
)
(assert_return (invoke "rem_u" (i64.const 5) (i64.const 2)) (i64.const 1))
(assert_return (invoke "rem_u" (i64.const -5) (i64.const 2)) (i64.const 1))
(assert_return (invoke "rem_u" (i64.const 5) (i64.const -2)) (i64.const 5))
(assert_return (invoke "rem_u" (i64.const -5) (i64.const -2)) (i64.const -5))
(assert_return (invoke "rem_u" (i64.const 7) (i64.const 3)) (i64.const 1))
(assert_return (invoke "rem_u" (i64.const 11) (i64.const 5)) (i64.const 1))
(assert_return (invoke "rem_u" (i64.const 17) (i64.const 7)) (i64.const 3))
(assert_return (invoke "and" (i64.const 1) (i64.const 0)) (i64.const 0))
(assert_return (invoke "and" (i64.const 0) (i64.const 1)) (i64.const 0))
(assert_return (invoke "and" (i64.const 1) (i64.const 1)) (i64.const 1))
(assert_return (invoke "and" (i64.const 0) (i64.const 0)) (i64.const 0))
(assert_return
  (invoke "and"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i64.const 0)
)
(assert_return
  (invoke "and" (i64.const 9_223_372_036_854_775_807) (i64.const -1))
  (i64.const 9_223_372_036_854_775_807)
)
(assert_return
  (invoke "and" (i64.const 4_042_326_015) (i64.const 4_294_963_440))
  (i64.const 4_042_322_160)
)
(assert_return (invoke "and" (i64.const -1) (i64.const -1)) (i64.const -1))
(assert_return (invoke "or" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return (invoke "or" (i64.const 0) (i64.const 1)) (i64.const 1))
(assert_return (invoke "or" (i64.const 1) (i64.const 1)) (i64.const 1))
(assert_return (invoke "or" (i64.const 0) (i64.const 0)) (i64.const 0))
(assert_return
  (invoke "or"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i64.const -1)
)
(assert_return
  (invoke "or" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return
  (invoke "or" (i64.const 4_042_326_015) (i64.const 4_294_963_440))
  (i64.const 4_294_967_295)
)
(assert_return (invoke "or" (i64.const -1) (i64.const -1)) (i64.const -1))
(assert_return (invoke "xor" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return (invoke "xor" (i64.const 0) (i64.const 1)) (i64.const 1))
(assert_return (invoke "xor" (i64.const 1) (i64.const 1)) (i64.const 0))
(assert_return (invoke "xor" (i64.const 0) (i64.const 0)) (i64.const 0))
(assert_return
  (invoke "xor"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i64.const -1)
)
(assert_return
  (invoke "xor" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return
  (invoke "xor" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i64.const 9_223_372_036_854_775_807)
)
(assert_return
  (invoke "xor" (i64.const -1) (i64.const 9_223_372_036_854_775_807))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return
  (invoke "xor" (i64.const 4_042_326_015) (i64.const 4_294_963_440))
  (i64.const 252_645_135)
)
(assert_return (invoke "xor" (i64.const -1) (i64.const -1)) (i64.const 0))
(assert_return (invoke "shl" (i64.const 1) (i64.const 1)) (i64.const 2))
(assert_return (invoke "shl" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return
  (invoke "shl" (i64.const 9_223_372_036_854_775_807) (i64.const 1))
  (i64.const -2)
)
(assert_return (invoke "shl" (i64.const -1) (i64.const 1)) (i64.const -2))
(assert_return
  (invoke "shl" (i64.const -9_223_372_036_854_775_808) (i64.const 1))
  (i64.const 0)
)
(assert_return
  (invoke "shl" (i64.const 4_611_686_018_427_387_904) (i64.const 1))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return
  (invoke "shl" (i64.const 1) (i64.const 63))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return (invoke "shl" (i64.const 1) (i64.const 64)) (i64.const 1))
(assert_return (invoke "shl" (i64.const 1) (i64.const 65)) (i64.const 2))
(assert_return
  (invoke "shl" (i64.const 1) (i64.const -1))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return
  (invoke "shl" (i64.const 1) (i64.const 9_223_372_036_854_775_807))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return (invoke "shr_s" (i64.const 1) (i64.const 1)) (i64.const 0))
(assert_return (invoke "shr_s" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return (invoke "shr_s" (i64.const -1) (i64.const 1)) (i64.const -1))
(assert_return
  (invoke "shr_s" (i64.const 9_223_372_036_854_775_807) (i64.const 1))
  (i64.const 4_611_686_018_427_387_903)
)
(assert_return
  (invoke "shr_s" (i64.const -9_223_372_036_854_775_808) (i64.const 1))
  (i64.const -4_611_686_018_427_387_904)
)
(assert_return
  (invoke "shr_s" (i64.const 4_611_686_018_427_387_904) (i64.const 1))
  (i64.const 2_305_843_009_213_693_952)
)
(assert_return (invoke "shr_s" (i64.const 1) (i64.const 64)) (i64.const 1))
(assert_return (invoke "shr_s" (i64.const 1) (i64.const 65)) (i64.const 0))
(assert_return (invoke "shr_s" (i64.const 1) (i64.const -1)) (i64.const 0))
(assert_return
  (invoke "shr_s" (i64.const 1) (i64.const 9_223_372_036_854_775_807))
  (i64.const 0)
)
(assert_return
  (invoke "shr_s" (i64.const 1) (i64.const -9_223_372_036_854_775_808))
  (i64.const 1)
)
(assert_return
  (invoke "shr_s" (i64.const -9_223_372_036_854_775_808) (i64.const 63))
  (i64.const -1)
)
(assert_return (invoke "shr_s" (i64.const -1) (i64.const 64)) (i64.const -1))
(assert_return (invoke "shr_s" (i64.const -1) (i64.const 65)) (i64.const -1))
(assert_return (invoke "shr_s" (i64.const -1) (i64.const -1)) (i64.const -1))
(assert_return
  (invoke "shr_s" (i64.const -1) (i64.const 9_223_372_036_854_775_807))
  (i64.const -1)
)
(assert_return
  (invoke "shr_s" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i64.const -1)
)
(assert_return (invoke "shr_u" (i64.const 1) (i64.const 1)) (i64.const 0))
(assert_return (invoke "shr_u" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return
  (invoke "shr_u" (i64.const -1) (i64.const 1))
  (i64.const 9_223_372_036_854_775_807)
)
(assert_return
  (invoke "shr_u" (i64.const 9_223_372_036_854_775_807) (i64.const 1))
  (i64.const 4_611_686_018_427_387_903)
)
(assert_return
  (invoke "shr_u" (i64.const -9_223_372_036_854_775_808) (i64.const 1))
  (i64.const 4_611_686_018_427_387_904)
)
(assert_return
  (invoke "shr_u" (i64.const 4_611_686_018_427_387_904) (i64.const 1))
  (i64.const 2_305_843_009_213_693_952)
)
(assert_return (invoke "shr_u" (i64.const 1) (i64.const 64)) (i64.const 1))
(assert_return (invoke "shr_u" (i64.const 1) (i64.const 65)) (i64.const 0))
(assert_return (invoke "shr_u" (i64.const 1) (i64.const -1)) (i64.const 0))
(assert_return
  (invoke "shr_u" (i64.const 1) (i64.const 9_223_372_036_854_775_807))
  (i64.const 0)
)
(assert_return
  (invoke "shr_u" (i64.const 1) (i64.const -9_223_372_036_854_775_808))
  (i64.const 1)
)
(assert_return
  (invoke "shr_u" (i64.const -9_223_372_036_854_775_808) (i64.const 63))
  (i64.const 1)
)
(assert_return (invoke "shr_u" (i64.const -1) (i64.const 64)) (i64.const -1))
(assert_return
  (invoke "shr_u" (i64.const -1) (i64.const 65))
  (i64.const 9_223_372_036_854_775_807)
)
(assert_return (invoke "shr_u" (i64.const -1) (i64.const -1)) (i64.const 1))
(assert_return
  (invoke "shr_u" (i64.const -1) (i64.const 9_223_372_036_854_775_807))
  (i64.const 1)
)
(assert_return
  (invoke "shr_u" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i64.const -1)
)
(assert_return (invoke "rotl" (i64.const 1) (i64.const 1)) (i64.const 2))
(assert_return (invoke "rotl" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return (invoke "rotl" (i64.const -1) (i64.const 1)) (i64.const -1))
(assert_return (invoke "rotl" (i64.const 1) (i64.const 64)) (i64.const 1))
(assert_return
  (invoke "rotl" (i64.const -6_067_025_490_386_449_714) (i64.const 1))
  (i64.const 6_312_693_092_936_652_189)
)
(assert_return
  (invoke "rotl" (i64.const -144_115_184_384_868_352) (i64.const 4))
  (i64.const -2_305_842_950_157_893_617)
)
(assert_return
  (invoke "rotl" (i64.const -6_067_173_104_435_169_271) (i64.const 53))
  (i64.const 87_109_505_680_009_935)
)
(assert_return
  (invoke "rotl" (i64.const -6_066_028_401_059_725_156) (i64.const 63))
  (i64.const 6_190_357_836_324_913_230)
)
(assert_return
  (invoke "rotl" (i64.const -6_067_173_104_435_169_271) (i64.const 245))
  (i64.const 87_109_505_680_009_935)
)
(assert_return
  (invoke "rotl" (i64.const -6_067_067_139_002_042_359) (i64.const -19))
  (i64.const -3_530_481_836_149_793_302)
)
(assert_return
  (invoke "rotl"
    (i64.const -6_066_028_401_059_725_156)
    (i64.const -9_223_372_036_854_775_745)
  )
  (i64.const 6_190_357_836_324_913_230)
)
(assert_return
  (invoke "rotl" (i64.const 1) (i64.const 63))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return
  (invoke "rotl" (i64.const -9_223_372_036_854_775_808) (i64.const 1))
  (i64.const 1)
)
(assert_return
  (invoke "rotr" (i64.const 1) (i64.const 1))
  (i64.const -9_223_372_036_854_775_808)
)
(assert_return (invoke "rotr" (i64.const 1) (i64.const 0)) (i64.const 1))
(assert_return (invoke "rotr" (i64.const -1) (i64.const 1)) (i64.const -1))
(assert_return (invoke "rotr" (i64.const 1) (i64.const 64)) (i64.const 1))
(assert_return
  (invoke "rotr" (i64.const -6_067_025_490_386_449_714) (i64.const 1))
  (i64.const 6_189_859_291_661_550_951)
)
(assert_return
  (invoke "rotr" (i64.const -144_115_184_384_868_352) (i64.const 4))
  (i64.const 1_143_914_305_582_792_704)
)
(assert_return
  (invoke "rotr" (i64.const -6_067_173_104_435_169_271) (i64.const 53))
  (i64.const 7_534_987_797_011_123_550)
)
(assert_return
  (invoke "rotr" (i64.const -6_066_028_401_059_725_156) (i64.const 63))
  (i64.const 6_314_687_271_590_101_305)
)
(assert_return
  (invoke "rotr" (i64.const -6_067_173_104_435_169_271) (i64.const 245))
  (i64.const 7_534_987_797_011_123_550)
)
(assert_return
  (invoke "rotr" (i64.const -6_067_067_139_002_042_359) (i64.const -19))
  (i64.const -7_735_078_922_541_506_965)
)
(assert_return
  (invoke "rotr"
    (i64.const -6_066_028_401_059_725_156)
    (i64.const -9_223_372_036_854_775_745)
  )
  (i64.const 6_314_687_271_590_101_305)
)
(assert_return (invoke "rotr" (i64.const 1) (i64.const 63)) (i64.const 2))
(assert_return
  (invoke "rotr" (i64.const -9_223_372_036_854_775_808) (i64.const 63))
  (i64.const 1)
)
(assert_return (invoke "clz" (i64.const -1)) (i64.const 0))
(assert_return (invoke "clz" (i64.const 0)) (i64.const 64))
(assert_return (invoke "clz" (i64.const 32_768)) (i64.const 48))
(assert_return (invoke "clz" (i64.const 255)) (i64.const 56))
(assert_return
  (invoke "clz" (i64.const -9_223_372_036_854_775_808))
  (i64.const 0)
)
(assert_return (invoke "clz" (i64.const 1)) (i64.const 63))
(assert_return (invoke "clz" (i64.const 2)) (i64.const 62))
(assert_return
  (invoke "clz" (i64.const 9_223_372_036_854_775_807))
  (i64.const 1)
)
(assert_return (invoke "ctz" (i64.const -1)) (i64.const 0))
(assert_return (invoke "ctz" (i64.const 0)) (i64.const 64))
(assert_return (invoke "ctz" (i64.const 32_768)) (i64.const 15))
(assert_return (invoke "ctz" (i64.const 65_536)) (i64.const 16))
(assert_return
  (invoke "ctz" (i64.const -9_223_372_036_854_775_808))
  (i64.const 63)
)
(assert_return
  (invoke "ctz" (i64.const 9_223_372_036_854_775_807))
  (i64.const 0)
)
(assert_return (invoke "popcnt" (i64.const -1)) (i64.const 64))
(assert_return (invoke "popcnt" (i64.const 0)) (i64.const 0))
(assert_return (invoke "popcnt" (i64.const 32_768)) (i64.const 1))
(assert_return
  (invoke "popcnt" (i64.const -9_223_231_297_218_904_064))
  (i64.const 4)
)
(assert_return
  (invoke "popcnt" (i64.const 9_223_372_036_854_775_807))
  (i64.const 63)
)
(assert_return
  (invoke "popcnt" (i64.const -6_148_914_692_668_172_971))
  (i64.const 32)
)
(assert_return
  (invoke "popcnt" (i64.const -7_378_697_629_197_489_494))
  (i64.const 32)
)
(assert_return
  (invoke "popcnt" (i64.const -2_401_053_088_876_216_593))
  (i64.const 48)
)
(assert_return (invoke "eqz" (i64.const 0)) (i32.const 1))
(assert_return (invoke "eqz" (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "eqz" (i64.const -9_223_372_036_854_775_808))
  (i32.const 0)
)
(assert_return
  (invoke "eqz" (i64.const 9_223_372_036_854_775_807))
  (i32.const 0)
)
(assert_return (invoke "eqz" (i64.const -1)) (i32.const 0))
(assert_return (invoke "eq" (i64.const 0) (i64.const 0)) (i32.const 1))
(assert_return (invoke "eq" (i64.const 1) (i64.const 1)) (i32.const 1))
(assert_return (invoke "eq" (i64.const -1) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "eq"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 1)
)
(assert_return
  (invoke "eq"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 1)
)
(assert_return (invoke "eq" (i64.const -1) (i64.const -1)) (i32.const 1))
(assert_return (invoke "eq" (i64.const 1) (i64.const 0)) (i32.const 0))
(assert_return (invoke "eq" (i64.const 0) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "eq" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i64.const 0) (i64.const -9_223_372_036_854_775_808))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 0)
)
(assert_return
  (invoke "eq"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 0)
)
(assert_return (invoke "ne" (i64.const 0) (i64.const 0)) (i32.const 0))
(assert_return (invoke "ne" (i64.const 1) (i64.const 1)) (i32.const 0))
(assert_return (invoke "ne" (i64.const -1) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "ne"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ne"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 0)
)
(assert_return (invoke "ne" (i64.const -1) (i64.const -1)) (i32.const 0))
(assert_return (invoke "ne" (i64.const 1) (i64.const 0)) (i32.const 1))
(assert_return (invoke "ne" (i64.const 0) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "ne" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i64.const 0) (i64.const -9_223_372_036_854_775_808))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ne"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 1)
)
(assert_return (invoke "lt_s" (i64.const 0) (i64.const 0)) (i32.const 0))
(assert_return (invoke "lt_s" (i64.const 1) (i64.const 1)) (i32.const 0))
(assert_return (invoke "lt_s" (i64.const -1) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "lt_s"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt_s"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 0)
)
(assert_return (invoke "lt_s" (i64.const -1) (i64.const -1)) (i32.const 0))
(assert_return (invoke "lt_s" (i64.const 1) (i64.const 0)) (i32.const 0))
(assert_return (invoke "lt_s" (i64.const 0) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "lt_s" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "lt_s" (i64.const 0) (i64.const -9_223_372_036_854_775_808))
  (i32.const 0)
)
(assert_return
  (invoke "lt_s" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "lt_s" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i32.const 0)
)
(assert_return
  (invoke "lt_s"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 1)
)
(assert_return
  (invoke "lt_s"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 0)
)
(assert_return (invoke "lt_u" (i64.const 0) (i64.const 0)) (i32.const 0))
(assert_return (invoke "lt_u" (i64.const 1) (i64.const 1)) (i32.const 0))
(assert_return (invoke "lt_u" (i64.const -1) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "lt_u"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt_u"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 0)
)
(assert_return (invoke "lt_u" (i64.const -1) (i64.const -1)) (i32.const 0))
(assert_return (invoke "lt_u" (i64.const 1) (i64.const 0)) (i32.const 0))
(assert_return (invoke "lt_u" (i64.const 0) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "lt_u" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "lt_u" (i64.const 0) (i64.const -9_223_372_036_854_775_808))
  (i32.const 1)
)
(assert_return
  (invoke "lt_u" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "lt_u" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i32.const 0)
)
(assert_return
  (invoke "lt_u"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 0)
)
(assert_return
  (invoke "lt_u"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 1)
)
(assert_return (invoke "le_s" (i64.const 0) (i64.const 0)) (i32.const 1))
(assert_return (invoke "le_s" (i64.const 1) (i64.const 1)) (i32.const 1))
(assert_return (invoke "le_s" (i64.const -1) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "le_s"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le_s"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 1)
)
(assert_return (invoke "le_s" (i64.const -1) (i64.const -1)) (i32.const 1))
(assert_return (invoke "le_s" (i64.const 1) (i64.const 0)) (i32.const 0))
(assert_return (invoke "le_s" (i64.const 0) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "le_s" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "le_s" (i64.const 0) (i64.const -9_223_372_036_854_775_808))
  (i32.const 0)
)
(assert_return
  (invoke "le_s" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "le_s" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i32.const 0)
)
(assert_return
  (invoke "le_s"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le_s"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 0)
)
(assert_return (invoke "le_u" (i64.const 0) (i64.const 0)) (i32.const 1))
(assert_return (invoke "le_u" (i64.const 1) (i64.const 1)) (i32.const 1))
(assert_return (invoke "le_u" (i64.const -1) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "le_u"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 1)
)
(assert_return
  (invoke "le_u"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 1)
)
(assert_return (invoke "le_u" (i64.const -1) (i64.const -1)) (i32.const 1))
(assert_return (invoke "le_u" (i64.const 1) (i64.const 0)) (i32.const 0))
(assert_return (invoke "le_u" (i64.const 0) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "le_u" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "le_u" (i64.const 0) (i64.const -9_223_372_036_854_775_808))
  (i32.const 1)
)
(assert_return
  (invoke "le_u" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "le_u" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i32.const 0)
)
(assert_return
  (invoke "le_u"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 0)
)
(assert_return
  (invoke "le_u"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 1)
)
(assert_return (invoke "gt_s" (i64.const 0) (i64.const 0)) (i32.const 0))
(assert_return (invoke "gt_s" (i64.const 1) (i64.const 1)) (i32.const 0))
(assert_return (invoke "gt_s" (i64.const -1) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "gt_s"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt_s"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 0)
)
(assert_return (invoke "gt_s" (i64.const -1) (i64.const -1)) (i32.const 0))
(assert_return (invoke "gt_s" (i64.const 1) (i64.const 0)) (i32.const 1))
(assert_return (invoke "gt_s" (i64.const 0) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "gt_s" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "gt_s" (i64.const 0) (i64.const -9_223_372_036_854_775_808))
  (i32.const 1)
)
(assert_return
  (invoke "gt_s" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "gt_s" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i32.const 1)
)
(assert_return
  (invoke "gt_s"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt_s"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 1)
)
(assert_return (invoke "gt_u" (i64.const 0) (i64.const 0)) (i32.const 0))
(assert_return (invoke "gt_u" (i64.const 1) (i64.const 1)) (i32.const 0))
(assert_return (invoke "gt_u" (i64.const -1) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "gt_u"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 0)
)
(assert_return
  (invoke "gt_u"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 0)
)
(assert_return (invoke "gt_u" (i64.const -1) (i64.const -1)) (i32.const 0))
(assert_return (invoke "gt_u" (i64.const 1) (i64.const 0)) (i32.const 1))
(assert_return (invoke "gt_u" (i64.const 0) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "gt_u" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "gt_u" (i64.const 0) (i64.const -9_223_372_036_854_775_808))
  (i32.const 0)
)
(assert_return
  (invoke "gt_u" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "gt_u" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i32.const 1)
)
(assert_return
  (invoke "gt_u"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 1)
)
(assert_return
  (invoke "gt_u"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 0)
)
(assert_return (invoke "ge_s" (i64.const 0) (i64.const 0)) (i32.const 1))
(assert_return (invoke "ge_s" (i64.const 1) (i64.const 1)) (i32.const 1))
(assert_return (invoke "ge_s" (i64.const -1) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "ge_s"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge_s"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 1)
)
(assert_return (invoke "ge_s" (i64.const -1) (i64.const -1)) (i32.const 1))
(assert_return (invoke "ge_s" (i64.const 1) (i64.const 0)) (i32.const 1))
(assert_return (invoke "ge_s" (i64.const 0) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "ge_s" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "ge_s" (i64.const 0) (i64.const -9_223_372_036_854_775_808))
  (i32.const 1)
)
(assert_return
  (invoke "ge_s" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "ge_s" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i32.const 1)
)
(assert_return
  (invoke "ge_s"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 0)
)
(assert_return
  (invoke "ge_s"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 1)
)
(assert_return (invoke "ge_u" (i64.const 0) (i64.const 0)) (i32.const 1))
(assert_return (invoke "ge_u" (i64.const 1) (i64.const 1)) (i32.const 1))
(assert_return (invoke "ge_u" (i64.const -1) (i64.const 1)) (i32.const 1))
(assert_return
  (invoke "ge_u"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge_u"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 1)
)
(assert_return (invoke "ge_u" (i64.const -1) (i64.const -1)) (i32.const 1))
(assert_return (invoke "ge_u" (i64.const 1) (i64.const 0)) (i32.const 1))
(assert_return (invoke "ge_u" (i64.const 0) (i64.const 1)) (i32.const 0))
(assert_return
  (invoke "ge_u" (i64.const -9_223_372_036_854_775_808) (i64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ge_u" (i64.const 0) (i64.const -9_223_372_036_854_775_808))
  (i32.const 0)
)
(assert_return
  (invoke "ge_u" (i64.const -9_223_372_036_854_775_808) (i64.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "ge_u" (i64.const -1) (i64.const -9_223_372_036_854_775_808))
  (i32.const 1)
)
(assert_return
  (invoke "ge_u"
    (i64.const -9_223_372_036_854_775_808)
    (i64.const 9_223_372_036_854_775_807)
  )
  (i32.const 1)
)
(assert_return
  (invoke "ge_u"
    (i64.const 9_223_372_036_854_775_807)
    (i64.const -9_223_372_036_854_775_808)
  )
  (i32.const 0)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\00\43\00\00\00\00\7c"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\00\43\00\00\00\00\83"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\00\43\00\00\00\00\7f"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\00\43\00\00\00\00\80"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\00\43\00\00\00\00\7e"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\00\43\00\00\00\00\84"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\00\43\00\00\00\00\81"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\00\43\00\00\00\00\82"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\00\43\00\00\00\00\89"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\00\43\00\00\00\00\8a"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\00\43\00\00\00\00\86"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\00\43\00\00\00\00\87"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\00\43\00\00\00\00\88"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\00\43\00\00\00\00\7d"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\00\43\00\00\00\00\85"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\41\00\50\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\41\00\79\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\41\00\7a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\41\00\7b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\00\43\00\00\00\00\51"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\00\43\00\00\00\00\59"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\00\43\00\00\00\00\5a"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\00\43\00\00\00\00\55"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\00\43\00\00\00\00\56"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\00\43\00\00\00\00\57"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\00\43\00\00\00\00\58"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\00\43\00\00\00\00\53"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\00\43\00\00\00\00\54"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7e\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\41\00\43\00\00\00\00\52"
    "\0b"
  )
  "type mismatch"
)

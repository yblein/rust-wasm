(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\02\60"
  "\02\7f\7f\01\7f\60\01\7f\01\7f\03\9e\80\80\80\00"
  "\1d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"
  "\01\01\01\01\00\00\00\00\00\00\00\00\00\00\07\c5"
  "\81\80\80\00\1d\03\61\64\64\00\00\03\73\75\62\00"
  "\01\03\6d\75\6c\00\02\05\64\69\76\5f\73\00\03\05"
  "\64\69\76\5f\75\00\04\05\72\65\6d\5f\73\00\05\05"
  "\72\65\6d\5f\75\00\06\03\61\6e\64\00\07\02\6f\72"
  "\00\08\03\78\6f\72\00\09\03\73\68\6c\00\0a\05\73"
  "\68\72\5f\73\00\0b\05\73\68\72\5f\75\00\0c\04\72"
  "\6f\74\6c\00\0d\04\72\6f\74\72\00\0e\03\63\6c\7a"
  "\00\0f\03\63\74\7a\00\10\06\70\6f\70\63\6e\74\00"
  "\11\03\65\71\7a\00\12\02\65\71\00\13\02\6e\65\00"
  "\14\04\6c\74\5f\73\00\15\04\6c\74\5f\75\00\16\04"
  "\6c\65\5f\73\00\17\04\6c\65\5f\75\00\18\04\67\74"
  "\5f\73\00\19\04\67\74\5f\75\00\1a\04\67\65\5f\73"
  "\00\1b\04\67\65\5f\75\00\1c\0a\d5\82\80\80\00\1d"
  "\87\80\80\80\00\00\20\00\20\01\6a\0b\87\80\80\80"
  "\00\00\20\00\20\01\6b\0b\87\80\80\80\00\00\20\00"
  "\20\01\6c\0b\87\80\80\80\00\00\20\00\20\01\6d\0b"
  "\87\80\80\80\00\00\20\00\20\01\6e\0b\87\80\80\80"
  "\00\00\20\00\20\01\6f\0b\87\80\80\80\00\00\20\00"
  "\20\01\70\0b\87\80\80\80\00\00\20\00\20\01\71\0b"
  "\87\80\80\80\00\00\20\00\20\01\72\0b\87\80\80\80"
  "\00\00\20\00\20\01\73\0b\87\80\80\80\00\00\20\00"
  "\20\01\74\0b\87\80\80\80\00\00\20\00\20\01\75\0b"
  "\87\80\80\80\00\00\20\00\20\01\76\0b\87\80\80\80"
  "\00\00\20\00\20\01\77\0b\87\80\80\80\00\00\20\00"
  "\20\01\78\0b\85\80\80\80\00\00\20\00\67\0b\85\80"
  "\80\80\00\00\20\00\68\0b\85\80\80\80\00\00\20\00"
  "\69\0b\85\80\80\80\00\00\20\00\45\0b\87\80\80\80"
  "\00\00\20\00\20\01\46\0b\87\80\80\80\00\00\20\00"
  "\20\01\47\0b\87\80\80\80\00\00\20\00\20\01\48\0b"
  "\87\80\80\80\00\00\20\00\20\01\49\0b\87\80\80\80"
  "\00\00\20\00\20\01\4c\0b\87\80\80\80\00\00\20\00"
  "\20\01\4d\0b\87\80\80\80\00\00\20\00\20\01\4a\0b"
  "\87\80\80\80\00\00\20\00\20\01\4b\0b\87\80\80\80"
  "\00\00\20\00\20\01\4e\0b\87\80\80\80\00\00\20\00"
  "\20\01\4f\0b"
)
(assert_return (invoke "add" (i32.const 1) (i32.const 1)) (i32.const 2))
(assert_return (invoke "add" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "add" (i32.const -1) (i32.const -1)) (i32.const -2))
(assert_return (invoke "add" (i32.const -1) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "add" (i32.const 2_147_483_647) (i32.const 1))
  (i32.const -2_147_483_648)
)
(assert_return
  (invoke "add" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 2_147_483_647)
)
(assert_return
  (invoke "add" (i32.const -2_147_483_648) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "add" (i32.const 1_073_741_823) (i32.const 1))
  (i32.const 1_073_741_824)
)
(assert_return (invoke "sub" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "sub" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "sub" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return
  (invoke "sub" (i32.const 2_147_483_647) (i32.const -1))
  (i32.const -2_147_483_648)
)
(assert_return
  (invoke "sub" (i32.const -2_147_483_648) (i32.const 1))
  (i32.const 2_147_483_647)
)
(assert_return
  (invoke "sub" (i32.const -2_147_483_648) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "sub" (i32.const 1_073_741_823) (i32.const -1))
  (i32.const 1_073_741_824)
)
(assert_return (invoke "mul" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "mul" (i32.const 1) (i32.const 0)) (i32.const 0))
(assert_return (invoke "mul" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return
  (invoke "mul" (i32.const 268_435_456) (i32.const 4_096))
  (i32.const 0)
)
(assert_return
  (invoke "mul" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "mul" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const -2_147_483_648)
)
(assert_return
  (invoke "mul" (i32.const 2_147_483_647) (i32.const -1))
  (i32.const -2_147_483_647)
)
(assert_return
  (invoke "mul" (i32.const 19_088_743) (i32.const 1_985_229_328))
  (i32.const 898_528_368)
)
(assert_return
  (invoke "mul" (i32.const 2_147_483_647) (i32.const 2_147_483_647))
  (i32.const 1)
)
(assert_trap
  (invoke "div_s" (i32.const 1) (i32.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "div_s" (i32.const 0) (i32.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "div_s" (i32.const -2_147_483_648) (i32.const -1))
  "integer overflow"
)
(assert_trap
  (invoke "div_s" (i32.const -2_147_483_648) (i32.const 0))
  "integer divide by zero"
)
(assert_return (invoke "div_s" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "div_s" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return (invoke "div_s" (i32.const 0) (i32.const -1)) (i32.const 0))
(assert_return (invoke "div_s" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return
  (invoke "div_s" (i32.const -2_147_483_648) (i32.const 2))
  (i32.const -1_073_741_824)
)
(assert_return
  (invoke "div_s" (i32.const -2_147_483_647) (i32.const 1_000))
  (i32.const -2_147_483)
)
(assert_return (invoke "div_s" (i32.const 5) (i32.const 2)) (i32.const 2))
(assert_return (invoke "div_s" (i32.const -5) (i32.const 2)) (i32.const -2))
(assert_return (invoke "div_s" (i32.const 5) (i32.const -2)) (i32.const -2))
(assert_return (invoke "div_s" (i32.const -5) (i32.const -2)) (i32.const 2))
(assert_return (invoke "div_s" (i32.const 7) (i32.const 3)) (i32.const 2))
(assert_return (invoke "div_s" (i32.const -7) (i32.const 3)) (i32.const -2))
(assert_return (invoke "div_s" (i32.const 7) (i32.const -3)) (i32.const -2))
(assert_return (invoke "div_s" (i32.const -7) (i32.const -3)) (i32.const 2))
(assert_return (invoke "div_s" (i32.const 11) (i32.const 5)) (i32.const 2))
(assert_return (invoke "div_s" (i32.const 17) (i32.const 7)) (i32.const 2))
(assert_trap
  (invoke "div_u" (i32.const 1) (i32.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "div_u" (i32.const 0) (i32.const 0))
  "integer divide by zero"
)
(assert_return (invoke "div_u" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "div_u" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return (invoke "div_u" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return
  (invoke "div_u" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "div_u" (i32.const -2_147_483_648) (i32.const 2))
  (i32.const 1_073_741_824)
)
(assert_return
  (invoke "div_u" (i32.const -1_880_092_688) (i32.const 65_537))
  (i32.const 36_847)
)
(assert_return
  (invoke "div_u" (i32.const -2_147_483_647) (i32.const 1_000))
  (i32.const 2_147_483)
)
(assert_return (invoke "div_u" (i32.const 5) (i32.const 2)) (i32.const 2))
(assert_return
  (invoke "div_u" (i32.const -5) (i32.const 2))
  (i32.const 2_147_483_645)
)
(assert_return (invoke "div_u" (i32.const 5) (i32.const -2)) (i32.const 0))
(assert_return (invoke "div_u" (i32.const -5) (i32.const -2)) (i32.const 0))
(assert_return (invoke "div_u" (i32.const 7) (i32.const 3)) (i32.const 2))
(assert_return (invoke "div_u" (i32.const 11) (i32.const 5)) (i32.const 2))
(assert_return (invoke "div_u" (i32.const 17) (i32.const 7)) (i32.const 2))
(assert_trap
  (invoke "rem_s" (i32.const 1) (i32.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "rem_s" (i32.const 0) (i32.const 0))
  "integer divide by zero"
)
(assert_return
  (invoke "rem_s" (i32.const 2_147_483_647) (i32.const -1))
  (i32.const 0)
)
(assert_return (invoke "rem_s" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "rem_s" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return (invoke "rem_s" (i32.const 0) (i32.const -1)) (i32.const 0))
(assert_return (invoke "rem_s" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return
  (invoke "rem_s" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "rem_s" (i32.const -2_147_483_648) (i32.const 2))
  (i32.const 0)
)
(assert_return
  (invoke "rem_s" (i32.const -2_147_483_647) (i32.const 1_000))
  (i32.const -647)
)
(assert_return (invoke "rem_s" (i32.const 5) (i32.const 2)) (i32.const 1))
(assert_return (invoke "rem_s" (i32.const -5) (i32.const 2)) (i32.const -1))
(assert_return (invoke "rem_s" (i32.const 5) (i32.const -2)) (i32.const 1))
(assert_return (invoke "rem_s" (i32.const -5) (i32.const -2)) (i32.const -1))
(assert_return (invoke "rem_s" (i32.const 7) (i32.const 3)) (i32.const 1))
(assert_return (invoke "rem_s" (i32.const -7) (i32.const 3)) (i32.const -1))
(assert_return (invoke "rem_s" (i32.const 7) (i32.const -3)) (i32.const 1))
(assert_return (invoke "rem_s" (i32.const -7) (i32.const -3)) (i32.const -1))
(assert_return (invoke "rem_s" (i32.const 11) (i32.const 5)) (i32.const 1))
(assert_return (invoke "rem_s" (i32.const 17) (i32.const 7)) (i32.const 3))
(assert_trap
  (invoke "rem_u" (i32.const 1) (i32.const 0))
  "integer divide by zero"
)
(assert_trap
  (invoke "rem_u" (i32.const 0) (i32.const 0))
  "integer divide by zero"
)
(assert_return (invoke "rem_u" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "rem_u" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return (invoke "rem_u" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return
  (invoke "rem_u" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const -2_147_483_648)
)
(assert_return
  (invoke "rem_u" (i32.const -2_147_483_648) (i32.const 2))
  (i32.const 0)
)
(assert_return
  (invoke "rem_u" (i32.const -1_880_092_688) (i32.const 65_537))
  (i32.const 32_769)
)
(assert_return
  (invoke "rem_u" (i32.const -2_147_483_647) (i32.const 1_000))
  (i32.const 649)
)
(assert_return (invoke "rem_u" (i32.const 5) (i32.const 2)) (i32.const 1))
(assert_return (invoke "rem_u" (i32.const -5) (i32.const 2)) (i32.const 1))
(assert_return (invoke "rem_u" (i32.const 5) (i32.const -2)) (i32.const 5))
(assert_return (invoke "rem_u" (i32.const -5) (i32.const -2)) (i32.const -5))
(assert_return (invoke "rem_u" (i32.const 7) (i32.const 3)) (i32.const 1))
(assert_return (invoke "rem_u" (i32.const 11) (i32.const 5)) (i32.const 1))
(assert_return (invoke "rem_u" (i32.const 17) (i32.const 7)) (i32.const 3))
(assert_return (invoke "and" (i32.const 1) (i32.const 0)) (i32.const 0))
(assert_return (invoke "and" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return (invoke "and" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "and" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return
  (invoke "and" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "and" (i32.const 2_147_483_647) (i32.const -1))
  (i32.const 2_147_483_647)
)
(assert_return
  (invoke "and" (i32.const -252_641_281) (i32.const -3_856))
  (i32.const -252_645_136)
)
(assert_return (invoke "and" (i32.const -1) (i32.const -1)) (i32.const -1))
(assert_return (invoke "or" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "or" (i32.const 0) (i32.const 1)) (i32.const 1))
(assert_return (invoke "or" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "or" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return
  (invoke "or" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const -1)
)
(assert_return
  (invoke "or" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const -2_147_483_648)
)
(assert_return
  (invoke "or" (i32.const -252_641_281) (i32.const -3_856))
  (i32.const -1)
)
(assert_return (invoke "or" (i32.const -1) (i32.const -1)) (i32.const -1))
(assert_return (invoke "xor" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "xor" (i32.const 0) (i32.const 1)) (i32.const 1))
(assert_return (invoke "xor" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "xor" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return
  (invoke "xor" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const -1)
)
(assert_return
  (invoke "xor" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const -2_147_483_648)
)
(assert_return
  (invoke "xor" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const 2_147_483_647)
)
(assert_return
  (invoke "xor" (i32.const -1) (i32.const 2_147_483_647))
  (i32.const -2_147_483_648)
)
(assert_return
  (invoke "xor" (i32.const -252_641_281) (i32.const -3_856))
  (i32.const 252_645_135)
)
(assert_return (invoke "xor" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return (invoke "shl" (i32.const 1) (i32.const 1)) (i32.const 2))
(assert_return (invoke "shl" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return
  (invoke "shl" (i32.const 2_147_483_647) (i32.const 1))
  (i32.const -2)
)
(assert_return (invoke "shl" (i32.const -1) (i32.const 1)) (i32.const -2))
(assert_return
  (invoke "shl" (i32.const -2_147_483_648) (i32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "shl" (i32.const 1_073_741_824) (i32.const 1))
  (i32.const -2_147_483_648)
)
(assert_return
  (invoke "shl" (i32.const 1) (i32.const 31))
  (i32.const -2_147_483_648)
)
(assert_return (invoke "shl" (i32.const 1) (i32.const 32)) (i32.const 1))
(assert_return (invoke "shl" (i32.const 1) (i32.const 33)) (i32.const 2))
(assert_return
  (invoke "shl" (i32.const 1) (i32.const -1))
  (i32.const -2_147_483_648)
)
(assert_return
  (invoke "shl" (i32.const 1) (i32.const 2_147_483_647))
  (i32.const -2_147_483_648)
)
(assert_return (invoke "shr_s" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "shr_s" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "shr_s" (i32.const -1) (i32.const 1)) (i32.const -1))
(assert_return
  (invoke "shr_s" (i32.const 2_147_483_647) (i32.const 1))
  (i32.const 1_073_741_823)
)
(assert_return
  (invoke "shr_s" (i32.const -2_147_483_648) (i32.const 1))
  (i32.const -1_073_741_824)
)
(assert_return
  (invoke "shr_s" (i32.const 1_073_741_824) (i32.const 1))
  (i32.const 536_870_912)
)
(assert_return (invoke "shr_s" (i32.const 1) (i32.const 32)) (i32.const 1))
(assert_return (invoke "shr_s" (i32.const 1) (i32.const 33)) (i32.const 0))
(assert_return (invoke "shr_s" (i32.const 1) (i32.const -1)) (i32.const 0))
(assert_return
  (invoke "shr_s" (i32.const 1) (i32.const 2_147_483_647))
  (i32.const 0)
)
(assert_return
  (invoke "shr_s" (i32.const 1) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "shr_s" (i32.const -2_147_483_648) (i32.const 31))
  (i32.const -1)
)
(assert_return (invoke "shr_s" (i32.const -1) (i32.const 32)) (i32.const -1))
(assert_return (invoke "shr_s" (i32.const -1) (i32.const 33)) (i32.const -1))
(assert_return (invoke "shr_s" (i32.const -1) (i32.const -1)) (i32.const -1))
(assert_return
  (invoke "shr_s" (i32.const -1) (i32.const 2_147_483_647))
  (i32.const -1)
)
(assert_return
  (invoke "shr_s" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const -1)
)
(assert_return (invoke "shr_u" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "shr_u" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return
  (invoke "shr_u" (i32.const -1) (i32.const 1))
  (i32.const 2_147_483_647)
)
(assert_return
  (invoke "shr_u" (i32.const 2_147_483_647) (i32.const 1))
  (i32.const 1_073_741_823)
)
(assert_return
  (invoke "shr_u" (i32.const -2_147_483_648) (i32.const 1))
  (i32.const 1_073_741_824)
)
(assert_return
  (invoke "shr_u" (i32.const 1_073_741_824) (i32.const 1))
  (i32.const 536_870_912)
)
(assert_return (invoke "shr_u" (i32.const 1) (i32.const 32)) (i32.const 1))
(assert_return (invoke "shr_u" (i32.const 1) (i32.const 33)) (i32.const 0))
(assert_return (invoke "shr_u" (i32.const 1) (i32.const -1)) (i32.const 0))
(assert_return
  (invoke "shr_u" (i32.const 1) (i32.const 2_147_483_647))
  (i32.const 0)
)
(assert_return
  (invoke "shr_u" (i32.const 1) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "shr_u" (i32.const -2_147_483_648) (i32.const 31))
  (i32.const 1)
)
(assert_return (invoke "shr_u" (i32.const -1) (i32.const 32)) (i32.const -1))
(assert_return
  (invoke "shr_u" (i32.const -1) (i32.const 33))
  (i32.const 2_147_483_647)
)
(assert_return (invoke "shr_u" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return
  (invoke "shr_u" (i32.const -1) (i32.const 2_147_483_647))
  (i32.const 1)
)
(assert_return
  (invoke "shr_u" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const -1)
)
(assert_return (invoke "rotl" (i32.const 1) (i32.const 1)) (i32.const 2))
(assert_return (invoke "rotl" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "rotl" (i32.const -1) (i32.const 1)) (i32.const -1))
(assert_return (invoke "rotl" (i32.const 1) (i32.const 32)) (i32.const 1))
(assert_return
  (invoke "rotl" (i32.const -1_412_589_450) (i32.const 1))
  (i32.const 1_469_788_397)
)
(assert_return
  (invoke "rotl" (i32.const -33_498_112) (i32.const 4))
  (i32.const -535_969_777)
)
(assert_return
  (invoke "rotl" (i32.const -1_329_474_845) (i32.const 5))
  (i32.const 406_477_942)
)
(assert_return
  (invoke "rotl" (i32.const 32_768) (i32.const 37))
  (i32.const 1_048_576)
)
(assert_return
  (invoke "rotl" (i32.const -1_329_474_845) (i32.const 65_285))
  (i32.const 406_477_942)
)
(assert_return
  (invoke "rotl" (i32.const 1_989_852_383) (i32.const -19))
  (i32.const 1_469_837_011)
)
(assert_return
  (invoke "rotl" (i32.const 1_989_852_383) (i32.const -2_147_483_635))
  (i32.const 1_469_837_011)
)
(assert_return
  (invoke "rotl" (i32.const 1) (i32.const 31))
  (i32.const -2_147_483_648)
)
(assert_return
  (invoke "rotl" (i32.const -2_147_483_648) (i32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "rotr" (i32.const 1) (i32.const 1))
  (i32.const -2_147_483_648)
)
(assert_return (invoke "rotr" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "rotr" (i32.const -1) (i32.const 1)) (i32.const -1))
(assert_return (invoke "rotr" (i32.const 1) (i32.const 32)) (i32.const 1))
(assert_return
  (invoke "rotr" (i32.const -16_724_992) (i32.const 1))
  (i32.const 2_139_121_152)
)
(assert_return
  (invoke "rotr" (i32.const 524_288) (i32.const 4))
  (i32.const 32_768)
)
(assert_return
  (invoke "rotr" (i32.const -1_329_474_845) (i32.const 5))
  (i32.const 495_324_823)
)
(assert_return
  (invoke "rotr" (i32.const 32_768) (i32.const 37))
  (i32.const 1_024)
)
(assert_return
  (invoke "rotr" (i32.const -1_329_474_845) (i32.const 65_285))
  (i32.const 495_324_823)
)
(assert_return
  (invoke "rotr" (i32.const 1_989_852_383) (i32.const -19))
  (i32.const -419_711_787)
)
(assert_return
  (invoke "rotr" (i32.const 1_989_852_383) (i32.const -2_147_483_635))
  (i32.const -419_711_787)
)
(assert_return (invoke "rotr" (i32.const 1) (i32.const 31)) (i32.const 2))
(assert_return
  (invoke "rotr" (i32.const -2_147_483_648) (i32.const 31))
  (i32.const 1)
)
(assert_return (invoke "clz" (i32.const -1)) (i32.const 0))
(assert_return (invoke "clz" (i32.const 0)) (i32.const 32))
(assert_return (invoke "clz" (i32.const 32_768)) (i32.const 16))
(assert_return (invoke "clz" (i32.const 255)) (i32.const 24))
(assert_return (invoke "clz" (i32.const -2_147_483_648)) (i32.const 0))
(assert_return (invoke "clz" (i32.const 1)) (i32.const 31))
(assert_return (invoke "clz" (i32.const 2)) (i32.const 30))
(assert_return (invoke "clz" (i32.const 2_147_483_647)) (i32.const 1))
(assert_return (invoke "ctz" (i32.const -1)) (i32.const 0))
(assert_return (invoke "ctz" (i32.const 0)) (i32.const 32))
(assert_return (invoke "ctz" (i32.const 32_768)) (i32.const 15))
(assert_return (invoke "ctz" (i32.const 65_536)) (i32.const 16))
(assert_return (invoke "ctz" (i32.const -2_147_483_648)) (i32.const 31))
(assert_return (invoke "ctz" (i32.const 2_147_483_647)) (i32.const 0))
(assert_return (invoke "popcnt" (i32.const -1)) (i32.const 32))
(assert_return (invoke "popcnt" (i32.const 0)) (i32.const 0))
(assert_return (invoke "popcnt" (i32.const 32_768)) (i32.const 1))
(assert_return (invoke "popcnt" (i32.const -2_147_450_880)) (i32.const 2))
(assert_return (invoke "popcnt" (i32.const 2_147_483_647)) (i32.const 31))
(assert_return (invoke "popcnt" (i32.const -1_431_655_766)) (i32.const 16))
(assert_return (invoke "popcnt" (i32.const 1_431_655_765)) (i32.const 16))
(assert_return (invoke "popcnt" (i32.const -559_038_737)) (i32.const 24))
(assert_return (invoke "eqz" (i32.const 0)) (i32.const 1))
(assert_return (invoke "eqz" (i32.const 1)) (i32.const 0))
(assert_return (invoke "eqz" (i32.const -2_147_483_648)) (i32.const 0))
(assert_return (invoke "eqz" (i32.const 2_147_483_647)) (i32.const 0))
(assert_return (invoke "eqz" (i32.const -1)) (i32.const 0))
(assert_return (invoke "eq" (i32.const 0) (i32.const 0)) (i32.const 1))
(assert_return (invoke "eq" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "eq" (i32.const -1) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "eq" (i32.const -2_147_483_648) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "eq" (i32.const 2_147_483_647) (i32.const 2_147_483_647))
  (i32.const 1)
)
(assert_return (invoke "eq" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return (invoke "eq" (i32.const 1) (i32.const 0)) (i32.const 0))
(assert_return (invoke "eq" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "eq" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i32.const 0) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i32.const -2_147_483_648) (i32.const 2_147_483_647))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return (invoke "ne" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return (invoke "ne" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "ne" (i32.const -1) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "ne" (i32.const -2_147_483_648) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "ne" (i32.const 2_147_483_647) (i32.const 2_147_483_647))
  (i32.const 0)
)
(assert_return (invoke "ne" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return (invoke "ne" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "ne" (i32.const 0) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "ne" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i32.const 0) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i32.const -2_147_483_648) (i32.const 2_147_483_647))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return (invoke "lt_s" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return (invoke "lt_s" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "lt_s" (i32.const -1) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "lt_s" (i32.const -2_147_483_648) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "lt_s" (i32.const 2_147_483_647) (i32.const 2_147_483_647))
  (i32.const 0)
)
(assert_return (invoke "lt_s" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return (invoke "lt_s" (i32.const 1) (i32.const 0)) (i32.const 0))
(assert_return (invoke "lt_s" (i32.const 0) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "lt_s" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "lt_s" (i32.const 0) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "lt_s" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "lt_s" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "lt_s" (i32.const -2_147_483_648) (i32.const 2_147_483_647))
  (i32.const 1)
)
(assert_return
  (invoke "lt_s" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return (invoke "lt_u" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return (invoke "lt_u" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "lt_u" (i32.const -1) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "lt_u" (i32.const -2_147_483_648) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "lt_u" (i32.const 2_147_483_647) (i32.const 2_147_483_647))
  (i32.const 0)
)
(assert_return (invoke "lt_u" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return (invoke "lt_u" (i32.const 1) (i32.const 0)) (i32.const 0))
(assert_return (invoke "lt_u" (i32.const 0) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "lt_u" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "lt_u" (i32.const 0) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "lt_u" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "lt_u" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "lt_u" (i32.const -2_147_483_648) (i32.const 2_147_483_647))
  (i32.const 0)
)
(assert_return
  (invoke "lt_u" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return (invoke "le_s" (i32.const 0) (i32.const 0)) (i32.const 1))
(assert_return (invoke "le_s" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "le_s" (i32.const -1) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "le_s" (i32.const -2_147_483_648) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "le_s" (i32.const 2_147_483_647) (i32.const 2_147_483_647))
  (i32.const 1)
)
(assert_return (invoke "le_s" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return (invoke "le_s" (i32.const 1) (i32.const 0)) (i32.const 0))
(assert_return (invoke "le_s" (i32.const 0) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "le_s" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "le_s" (i32.const 0) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "le_s" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "le_s" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "le_s" (i32.const -2_147_483_648) (i32.const 2_147_483_647))
  (i32.const 1)
)
(assert_return
  (invoke "le_s" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return (invoke "le_u" (i32.const 0) (i32.const 0)) (i32.const 1))
(assert_return (invoke "le_u" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "le_u" (i32.const -1) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "le_u" (i32.const -2_147_483_648) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "le_u" (i32.const 2_147_483_647) (i32.const 2_147_483_647))
  (i32.const 1)
)
(assert_return (invoke "le_u" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return (invoke "le_u" (i32.const 1) (i32.const 0)) (i32.const 0))
(assert_return (invoke "le_u" (i32.const 0) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "le_u" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "le_u" (i32.const 0) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "le_u" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 1)
)
(assert_return
  (invoke "le_u" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "le_u" (i32.const -2_147_483_648) (i32.const 2_147_483_647))
  (i32.const 0)
)
(assert_return
  (invoke "le_u" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return (invoke "gt_s" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return (invoke "gt_s" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "gt_s" (i32.const -1) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "gt_s" (i32.const -2_147_483_648) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "gt_s" (i32.const 2_147_483_647) (i32.const 2_147_483_647))
  (i32.const 0)
)
(assert_return (invoke "gt_s" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return (invoke "gt_s" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "gt_s" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "gt_s" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "gt_s" (i32.const 0) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "gt_s" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "gt_s" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "gt_s" (i32.const -2_147_483_648) (i32.const 2_147_483_647))
  (i32.const 0)
)
(assert_return
  (invoke "gt_s" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return (invoke "gt_u" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return (invoke "gt_u" (i32.const 1) (i32.const 1)) (i32.const 0))
(assert_return (invoke "gt_u" (i32.const -1) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "gt_u" (i32.const -2_147_483_648) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "gt_u" (i32.const 2_147_483_647) (i32.const 2_147_483_647))
  (i32.const 0)
)
(assert_return (invoke "gt_u" (i32.const -1) (i32.const -1)) (i32.const 0))
(assert_return (invoke "gt_u" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "gt_u" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "gt_u" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "gt_u" (i32.const 0) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "gt_u" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "gt_u" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "gt_u" (i32.const -2_147_483_648) (i32.const 2_147_483_647))
  (i32.const 1)
)
(assert_return
  (invoke "gt_u" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return (invoke "ge_s" (i32.const 0) (i32.const 0)) (i32.const 1))
(assert_return (invoke "ge_s" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "ge_s" (i32.const -1) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "ge_s" (i32.const -2_147_483_648) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "ge_s" (i32.const 2_147_483_647) (i32.const 2_147_483_647))
  (i32.const 1)
)
(assert_return (invoke "ge_s" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return (invoke "ge_s" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "ge_s" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "ge_s" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const 0)
)
(assert_return
  (invoke "ge_s" (i32.const 0) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "ge_s" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "ge_s" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "ge_s" (i32.const -2_147_483_648) (i32.const 2_147_483_647))
  (i32.const 0)
)
(assert_return
  (invoke "ge_s" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return (invoke "ge_u" (i32.const 0) (i32.const 0)) (i32.const 1))
(assert_return (invoke "ge_u" (i32.const 1) (i32.const 1)) (i32.const 1))
(assert_return (invoke "ge_u" (i32.const -1) (i32.const 1)) (i32.const 1))
(assert_return
  (invoke "ge_u" (i32.const -2_147_483_648) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "ge_u" (i32.const 2_147_483_647) (i32.const 2_147_483_647))
  (i32.const 1)
)
(assert_return (invoke "ge_u" (i32.const -1) (i32.const -1)) (i32.const 1))
(assert_return (invoke "ge_u" (i32.const 1) (i32.const 0)) (i32.const 1))
(assert_return (invoke "ge_u" (i32.const 0) (i32.const 1)) (i32.const 0))
(assert_return
  (invoke "ge_u" (i32.const -2_147_483_648) (i32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "ge_u" (i32.const 0) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_return
  (invoke "ge_u" (i32.const -2_147_483_648) (i32.const -1))
  (i32.const 0)
)
(assert_return
  (invoke "ge_u" (i32.const -1) (i32.const -2_147_483_648))
  (i32.const 1)
)
(assert_return
  (invoke "ge_u" (i32.const -2_147_483_648) (i32.const 2_147_483_647))
  (i32.const 1)
)
(assert_return
  (invoke "ge_u" (i32.const 2_147_483_647) (i32.const -2_147_483_648))
  (i32.const 0)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\8a\80\80\80\00"
    "\01\84\80\80\80\00\00\45\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\8f\80\80\80\00"
    "\01\89\80\80\80\00\00\41\00\02\40\45\1a\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\8f\80\80\80\00"
    "\01\89\80\80\80\00\00\41\00\03\40\45\1a\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\91\80\80\80\00"
    "\01\8b\80\80\80\00\00\41\00\41\00\04\40\45\1a\0b"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\94\80\80\80\00"
    "\01\8e\80\80\80\00\00\41\00\41\00\04\7f\41\00\05"
    "\45\0b\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\91\80\80\80\00"
    "\01\8b\80\80\80\00\00\41\00\02\40\45\0c\00\1a\0b"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\93\80\80\80\00"
    "\01\8d\80\80\80\00\00\41\00\02\40\45\41\01\0d\00"
    "\1a\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\92\80\80\80\00"
    "\01\8c\80\80\80\00\00\41\00\02\40\45\0e\00\00\1a"
    "\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\8b\80\80\80\00"
    "\01\85\80\80\80\00\00\45\0f\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\8f\80\80\80\00"
    "\01\89\80\80\80\00\00\45\41\01\41\02\1b\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\89\80\80\80\00\02\60"
    "\00\00\60\01\7f\01\7f\03\83\80\80\80\00\02\00\01"
    "\0a\95\80\80\80\00\02\86\80\80\80\00\00\45\10\01"
    "\1a\0b\84\80\80\80\00\00\20\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\89\80\80\80\00\02\60"
    "\01\7f\01\7f\60\00\00\03\83\80\80\80\00\02\00\01"
    "\04\85\80\80\80\00\01\70\01\01\01\09\87\80\80\80"
    "\00\01\00\41\00\0b\01\00\0a\9b\80\80\80\00\02\84"
    "\80\80\80\00\00\20\00\0b\8c\80\80\80\00\00\02\7f"
    "\45\41\00\11\00\00\1a\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\90\80\80\80\00"
    "\01\8a\80\80\80\00\01\01\7f\45\21\00\20\00\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\8e\80\80\80\00"
    "\01\88\80\80\80\00\01\01\7f\45\22\00\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\06\86\80\80\80\00"
    "\01\7f\01\41\00\0b\0a\8e\80\80\80\00\01\88\80\80"
    "\80\00\00\45\24\00\23\00\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\05\83\80\80\80\00"
    "\01\00\00\0a\8c\80\80\80\00\01\86\80\80\80\00\00"
    "\45\40\00\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\05\83\80\80\80\00"
    "\01\00\00\0a\8d\80\80\80\00\01\87\80\80\80\00\00"
    "\45\28\02\00\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\05\83\80\80\80\00"
    "\01\00\01\0a\8e\80\80\80\00\01\88\80\80\80\00\00"
    "\45\41\01\36\02\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\8a\80\80\80\00"
    "\01\84\80\80\80\00\00\6a\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\8c\80\80\80\00"
    "\01\86\80\80\80\00\00\41\00\6a\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\91\80\80\80\00"
    "\01\8b\80\80\80\00\00\41\00\41\00\02\40\6a\1a\0b"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\91\80\80\80\00"
    "\01\8b\80\80\80\00\00\41\00\02\40\41\00\6a\1a\0b"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\91\80\80\80\00"
    "\01\8b\80\80\80\00\00\41\00\41\00\03\40\6a\1a\0b"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\91\80\80\80\00"
    "\01\8b\80\80\80\00\00\41\00\03\40\41\00\6a\1a\0b"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\93\80\80\80\00"
    "\01\8d\80\80\80\00\00\41\00\41\00\41\00\6a\04\40"
    "\1a\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\94\80\80\80\00"
    "\01\8e\80\80\80\00\00\41\00\41\00\41\00\04\40\6a"
    "\05\1a\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\99\80\80\80\00"
    "\01\93\80\80\80\00\00\41\00\41\00\41\00\04\7f\41"
    "\00\05\6a\41\00\0b\1a\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\94\80\80\80\00"
    "\01\8e\80\80\80\00\00\41\00\41\00\04\7f\41\00\05"
    "\6a\0b\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\93\80\80\80\00"
    "\01\8d\80\80\80\00\00\41\00\41\00\02\40\6a\0c\00"
    "\1a\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\93\80\80\80\00"
    "\01\8d\80\80\80\00\00\41\00\02\40\41\00\6a\0c\00"
    "\1a\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\95\80\80\80\00"
    "\01\8f\80\80\80\00\00\41\00\41\00\02\40\6a\41\01"
    "\0d\00\1a\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\95\80\80\80\00"
    "\01\8f\80\80\80\00\00\41\00\02\40\41\00\6a\41\01"
    "\0d\00\1a\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\94\80\80\80\00"
    "\01\8e\80\80\80\00\00\41\00\41\00\02\40\6a\0e\00"
    "\00\1a\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\94\80\80\80\00"
    "\01\8e\80\80\80\00\00\41\00\02\40\41\00\6a\0e\00"
    "\00\1a\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\8b\80\80\80\00"
    "\01\85\80\80\80\00\00\6a\0f\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\8d\80\80\80\00"
    "\01\87\80\80\80\00\00\41\00\6a\0f\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\8f\80\80\80\00"
    "\01\89\80\80\80\00\00\6a\41\01\41\02\1b\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\91\80\80\80\00"
    "\01\8b\80\80\80\00\00\41\00\6a\41\01\41\02\1b\1a"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\02\60"
    "\00\00\60\02\7f\7f\01\7f\03\83\80\80\80\00\02\00"
    "\01\0a\95\80\80\80\00\02\86\80\80\80\00\00\6a\10"
    "\01\1a\0b\84\80\80\80\00\00\20\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\02\60"
    "\00\00\60\02\7f\7f\01\7f\03\83\80\80\80\00\02\00"
    "\01\0a\97\80\80\80\00\02\88\80\80\80\00\00\41\00"
    "\6a\10\01\1a\0b\84\80\80\80\00\00\20\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\89\80\80\80\00\02\60"
    "\01\7f\01\7f\60\00\00\03\83\80\80\80\00\02\00\01"
    "\04\85\80\80\80\00\01\70\01\01\01\09\87\80\80\80"
    "\00\01\00\41\00\0b\01\00\0a\9b\80\80\80\00\02\84"
    "\80\80\80\00\00\20\00\0b\8c\80\80\80\00\00\02\7f"
    "\6a\41\00\11\00\00\1a\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\89\80\80\80\00\02\60"
    "\01\7f\01\7f\60\00\00\03\83\80\80\80\00\02\00\01"
    "\04\85\80\80\80\00\01\70\01\01\01\09\87\80\80\80"
    "\00\01\00\41\00\0b\01\00\0a\9d\80\80\80\00\02\84"
    "\80\80\80\00\00\20\00\0b\8e\80\80\80\00\00\02\7f"
    "\41\00\6a\41\00\11\00\00\1a\0b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\90\80\80\80\00"
    "\01\8a\80\80\80\00\01\01\7f\6a\21\00\20\00\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\92\80\80\80\00"
    "\01\8c\80\80\80\00\01\01\7f\41\00\6a\21\00\20\00"
    "\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\8e\80\80\80\00"
    "\01\88\80\80\80\00\01\01\7f\6a\22\00\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\0a\90\80\80\80\00"
    "\01\8a\80\80\80\00\01\01\7f\41\00\6a\22\00\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\06\86\80\80\80\00"
    "\01\7f\01\41\00\0b\0a\8e\80\80\80\00\01\88\80\80"
    "\80\00\00\6a\24\00\23\00\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\06\86\80\80\80\00"
    "\01\7f\01\41\00\0b\0a\90\80\80\80\00\01\8a\80\80"
    "\80\00\00\41\00\6a\24\00\23\00\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\05\83\80\80\80\00"
    "\01\00\00\0a\8c\80\80\80\00\01\86\80\80\80\00\00"
    "\6a\40\00\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\05\83\80\80\80\00"
    "\01\00\00\0a\8e\80\80\80\00\01\88\80\80\80\00\00"
    "\41\00\6a\40\00\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\05\83\80\80\80\00"
    "\01\00\00\0a\8d\80\80\80\00\01\87\80\80\80\00\00"
    "\6a\28\02\00\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\05\83\80\80\80\00"
    "\01\00\00\0a\8f\80\80\80\00\01\89\80\80\80\00\00"
    "\41\00\6a\28\02\00\1a\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\05\83\80\80\80\00"
    "\01\00\01\0a\8e\80\80\80\00\01\88\80\80\80\00\00"
    "\6a\41\01\36\02\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\05\83\80\80\80\00"
    "\01\00\01\0a\90\80\80\80\00\01\8a\80\80\80\00\00"
    "\41\01\6a\41\00\36\02\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\6a"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\71"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\6d"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\6e"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\6c"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\72"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\6f"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\70"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\77"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\78"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\74"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\75"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\76"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\6b"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\73"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\42\00\45\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\42\00\67\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\42\00\68\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\42\00\69\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\46"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\4e"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\4f"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\4a"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\4b"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\4c"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\4d"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\48"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\49"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\47"
    "\0b"
  )
  "type mismatch"
)

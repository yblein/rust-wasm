(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\02\60"
  "\02\7c\7c\01\7c\60\01\7c\01\7c\03\8c\80\80\80\00"
  "\0b\00\00\00\00\01\00\00\01\01\01\01\07\cd\80\80"
  "\80\00\0b\03\61\64\64\00\00\03\73\75\62\00\01\03"
  "\6d\75\6c\00\02\03\64\69\76\00\03\04\73\71\72\74"
  "\00\04\03\6d\69\6e\00\05\03\6d\61\78\00\06\04\63"
  "\65\69\6c\00\07\05\66\6c\6f\6f\72\00\08\05\74\72"
  "\75\6e\63\00\09\07\6e\65\61\72\65\73\74\00\0a\0a"
  "\fb\80\80\80\00\0b\87\80\80\80\00\00\20\00\20\01"
  "\a0\0b\87\80\80\80\00\00\20\00\20\01\a1\0b\87\80"
  "\80\80\00\00\20\00\20\01\a2\0b\87\80\80\80\00\00"
  "\20\00\20\01\a3\0b\85\80\80\80\00\00\20\00\9f\0b"
  "\87\80\80\80\00\00\20\00\20\01\a4\0b\87\80\80\80"
  "\00\00\20\00\20\01\a5\0b\85\80\80\80\00\00\20\00"
  "\9b\0b\85\80\80\80\00\00\20\00\9c\0b\85\80\80\80"
  "\00\00\20\00\9d\0b\85\80\80\80\00\00\20\00\9e\0b"
)
(assert_return (invoke "add" (f64.const -0.) (f64.const -0.)) (f64.const -0.))
(assert_return (invoke "add" (f64.const -0.) (f64.const 0.)) (f64.const 0.))
(assert_return (invoke "add" (f64.const 0.) (f64.const -0.)) (f64.const 0.))
(assert_return (invoke "add" (f64.const 0.) (f64.const 0.)) (f64.const 0.))
(assert_return
  (invoke "add" (f64.const -0.) (f64.const -4.94065645841e-324))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "add" (f64.const -0.) (f64.const 4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "add" (f64.const 0.) (f64.const -4.94065645841e-324))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "add" (f64.const 0.) (f64.const 4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "add" (f64.const -0.) (f64.const -2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "add" (f64.const -0.) (f64.const 2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "add" (f64.const 0.) (f64.const -2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "add" (f64.const 0.) (f64.const 2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return (invoke "add" (f64.const -0.) (f64.const -0.5)) (f64.const -0.5))
(assert_return (invoke "add" (f64.const -0.) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "add" (f64.const 0.) (f64.const -0.5)) (f64.const -0.5))
(assert_return (invoke "add" (f64.const 0.) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "add" (f64.const -0.) (f64.const -1.)) (f64.const -1.))
(assert_return (invoke "add" (f64.const -0.) (f64.const 1.)) (f64.const 1.))
(assert_return (invoke "add" (f64.const 0.) (f64.const -1.)) (f64.const -1.))
(assert_return (invoke "add" (f64.const 0.) (f64.const 1.)) (f64.const 1.))
(assert_return
  (invoke "add" (f64.const -0.) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "add" (f64.const -0.) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "add" (f64.const 0.) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "add" (f64.const 0.) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "add" (f64.const -0.) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const -0.) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const 0.) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const 0.) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return (invoke "add" (f64.const -0.) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "add" (f64.const -0.) (f64.const inf)) (f64.const inf))
(assert_return (invoke "add" (f64.const 0.) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "add" (f64.const 0.) (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan
  (invoke "add" (f64.const -0.) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -0.) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -0.) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -0.) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 0.) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 0.) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 0.) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 0.) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "add" (f64.const -4.94065645841e-324) (f64.const -0.))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "add" (f64.const -4.94065645841e-324) (f64.const 0.))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "add" (f64.const 4.94065645841e-324) (f64.const -0.))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "add" (f64.const 4.94065645841e-324) (f64.const 0.))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "add" (f64.const -4.94065645841e-324) (f64.const -4.94065645841e-324))
  (f64.const -9.88131291682e-324)
)
(assert_return
  (invoke "add" (f64.const -4.94065645841e-324) (f64.const 4.94065645841e-324))
  (f64.const 0.)
)
(assert_return
  (invoke "add" (f64.const 4.94065645841e-324) (f64.const -4.94065645841e-324))
  (f64.const 0.)
)
(assert_return
  (invoke "add" (f64.const 4.94065645841e-324) (f64.const 4.94065645841e-324))
  (f64.const 9.88131291682e-324)
)
(assert_return
  (invoke "add" (f64.const -4.94065645841e-324) (f64.const -2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "add" (f64.const -4.94065645841e-324) (f64.const 2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "add" (f64.const 4.94065645841e-324) (f64.const -2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "add" (f64.const 4.94065645841e-324) (f64.const 2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "add" (f64.const -4.94065645841e-324) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "add" (f64.const -4.94065645841e-324) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "add" (f64.const 4.94065645841e-324) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "add" (f64.const 4.94065645841e-324) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "add" (f64.const -4.94065645841e-324) (f64.const -1.))
  (f64.const -1.)
)
(assert_return
  (invoke "add" (f64.const -4.94065645841e-324) (f64.const 1.))
  (f64.const 1.)
)
(assert_return
  (invoke "add" (f64.const 4.94065645841e-324) (f64.const -1.))
  (f64.const -1.)
)
(assert_return
  (invoke "add" (f64.const 4.94065645841e-324) (f64.const 1.))
  (f64.const 1.)
)
(assert_return
  (invoke "add" (f64.const -4.94065645841e-324) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "add" (f64.const -4.94065645841e-324) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "add" (f64.const 4.94065645841e-324) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "add" (f64.const 4.94065645841e-324) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "add" (f64.const -4.94065645841e-324) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const -4.94065645841e-324) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const 4.94065645841e-324) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const 4.94065645841e-324) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const -4.94065645841e-324) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -4.94065645841e-324) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const 4.94065645841e-324) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const 4.94065645841e-324) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -4.94065645841e-324)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -4.94065645841e-324)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -4.94065645841e-324) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -4.94065645841e-324) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 4.94065645841e-324) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 4.94065645841e-324) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 4.94065645841e-324) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 4.94065645841e-324) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "add" (f64.const -2.22507385851e-308) (f64.const -0.))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "add" (f64.const -2.22507385851e-308) (f64.const 0.))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "add" (f64.const 2.22507385851e-308) (f64.const -0.))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "add" (f64.const 2.22507385851e-308) (f64.const 0.))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "add" (f64.const -2.22507385851e-308) (f64.const -4.94065645841e-324))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "add" (f64.const -2.22507385851e-308) (f64.const 4.94065645841e-324))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "add" (f64.const 2.22507385851e-308) (f64.const -4.94065645841e-324))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "add" (f64.const 2.22507385851e-308) (f64.const 4.94065645841e-324))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "add" (f64.const -2.22507385851e-308) (f64.const -2.22507385851e-308))
  (f64.const -4.45014771701e-308)
)
(assert_return
  (invoke "add" (f64.const -2.22507385851e-308) (f64.const 2.22507385851e-308))
  (f64.const 0.)
)
(assert_return
  (invoke "add" (f64.const 2.22507385851e-308) (f64.const -2.22507385851e-308))
  (f64.const 0.)
)
(assert_return
  (invoke "add" (f64.const 2.22507385851e-308) (f64.const 2.22507385851e-308))
  (f64.const 4.45014771701e-308)
)
(assert_return
  (invoke "add" (f64.const -2.22507385851e-308) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "add" (f64.const -2.22507385851e-308) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "add" (f64.const 2.22507385851e-308) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "add" (f64.const 2.22507385851e-308) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "add" (f64.const -2.22507385851e-308) (f64.const -1.))
  (f64.const -1.)
)
(assert_return
  (invoke "add" (f64.const -2.22507385851e-308) (f64.const 1.))
  (f64.const 1.)
)
(assert_return
  (invoke "add" (f64.const 2.22507385851e-308) (f64.const -1.))
  (f64.const -1.)
)
(assert_return
  (invoke "add" (f64.const 2.22507385851e-308) (f64.const 1.))
  (f64.const 1.)
)
(assert_return
  (invoke "add" (f64.const -2.22507385851e-308) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "add" (f64.const -2.22507385851e-308) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "add" (f64.const 2.22507385851e-308) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "add" (f64.const 2.22507385851e-308) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "add" (f64.const -2.22507385851e-308) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const -2.22507385851e-308) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const 2.22507385851e-308) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const 2.22507385851e-308) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const -2.22507385851e-308) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -2.22507385851e-308) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const 2.22507385851e-308) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const 2.22507385851e-308) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -2.22507385851e-308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -2.22507385851e-308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -2.22507385851e-308) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -2.22507385851e-308) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 2.22507385851e-308) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 2.22507385851e-308) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 2.22507385851e-308) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 2.22507385851e-308) (f64.const nan:0x4000000000000))
)
(assert_return (invoke "add" (f64.const -0.5) (f64.const -0.)) (f64.const -0.5))
(assert_return (invoke "add" (f64.const -0.5) (f64.const 0.)) (f64.const -0.5))
(assert_return (invoke "add" (f64.const 0.5) (f64.const -0.)) (f64.const 0.5))
(assert_return (invoke "add" (f64.const 0.5) (f64.const 0.)) (f64.const 0.5))
(assert_return
  (invoke "add" (f64.const -0.5) (f64.const -4.94065645841e-324))
  (f64.const -0.5)
)
(assert_return
  (invoke "add" (f64.const -0.5) (f64.const 4.94065645841e-324))
  (f64.const -0.5)
)
(assert_return
  (invoke "add" (f64.const 0.5) (f64.const -4.94065645841e-324))
  (f64.const 0.5)
)
(assert_return
  (invoke "add" (f64.const 0.5) (f64.const 4.94065645841e-324))
  (f64.const 0.5)
)
(assert_return
  (invoke "add" (f64.const -0.5) (f64.const -2.22507385851e-308))
  (f64.const -0.5)
)
(assert_return
  (invoke "add" (f64.const -0.5) (f64.const 2.22507385851e-308))
  (f64.const -0.5)
)
(assert_return
  (invoke "add" (f64.const 0.5) (f64.const -2.22507385851e-308))
  (f64.const 0.5)
)
(assert_return
  (invoke "add" (f64.const 0.5) (f64.const 2.22507385851e-308))
  (f64.const 0.5)
)
(assert_return (invoke "add" (f64.const -0.5) (f64.const -0.5)) (f64.const -1.))
(assert_return (invoke "add" (f64.const -0.5) (f64.const 0.5)) (f64.const 0.))
(assert_return (invoke "add" (f64.const 0.5) (f64.const -0.5)) (f64.const 0.))
(assert_return (invoke "add" (f64.const 0.5) (f64.const 0.5)) (f64.const 1.))
(assert_return (invoke "add" (f64.const -0.5) (f64.const -1.)) (f64.const -1.5))
(assert_return (invoke "add" (f64.const -0.5) (f64.const 1.)) (f64.const 0.5))
(assert_return (invoke "add" (f64.const 0.5) (f64.const -1.)) (f64.const -0.5))
(assert_return (invoke "add" (f64.const 0.5) (f64.const 1.)) (f64.const 1.5))
(assert_return
  (invoke "add" (f64.const -0.5) (f64.const -6.28318530718))
  (f64.const -6.78318530718)
)
(assert_return
  (invoke "add" (f64.const -0.5) (f64.const 6.28318530718))
  (f64.const 5.78318530718)
)
(assert_return
  (invoke "add" (f64.const 0.5) (f64.const -6.28318530718))
  (f64.const -5.78318530718)
)
(assert_return
  (invoke "add" (f64.const 0.5) (f64.const 6.28318530718))
  (f64.const 6.78318530718)
)
(assert_return
  (invoke "add" (f64.const -0.5) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const -0.5) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const 0.5) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const 0.5) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const -0.5) (f64.const -inf))
  (f64.const -inf)
)
(assert_return (invoke "add" (f64.const -0.5) (f64.const inf)) (f64.const inf))
(assert_return (invoke "add" (f64.const 0.5) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "add" (f64.const 0.5) (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan
  (invoke "add" (f64.const -0.5) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -0.5) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -0.5) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -0.5) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 0.5) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 0.5) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 0.5) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 0.5) (f64.const nan:0x4000000000000))
)
(assert_return (invoke "add" (f64.const -1.) (f64.const -0.)) (f64.const -1.))
(assert_return (invoke "add" (f64.const -1.) (f64.const 0.)) (f64.const -1.))
(assert_return (invoke "add" (f64.const 1.) (f64.const -0.)) (f64.const 1.))
(assert_return (invoke "add" (f64.const 1.) (f64.const 0.)) (f64.const 1.))
(assert_return
  (invoke "add" (f64.const -1.) (f64.const -4.94065645841e-324))
  (f64.const -1.)
)
(assert_return
  (invoke "add" (f64.const -1.) (f64.const 4.94065645841e-324))
  (f64.const -1.)
)
(assert_return
  (invoke "add" (f64.const 1.) (f64.const -4.94065645841e-324))
  (f64.const 1.)
)
(assert_return
  (invoke "add" (f64.const 1.) (f64.const 4.94065645841e-324))
  (f64.const 1.)
)
(assert_return
  (invoke "add" (f64.const -1.) (f64.const -2.22507385851e-308))
  (f64.const -1.)
)
(assert_return
  (invoke "add" (f64.const -1.) (f64.const 2.22507385851e-308))
  (f64.const -1.)
)
(assert_return
  (invoke "add" (f64.const 1.) (f64.const -2.22507385851e-308))
  (f64.const 1.)
)
(assert_return
  (invoke "add" (f64.const 1.) (f64.const 2.22507385851e-308))
  (f64.const 1.)
)
(assert_return (invoke "add" (f64.const -1.) (f64.const -0.5)) (f64.const -1.5))
(assert_return (invoke "add" (f64.const -1.) (f64.const 0.5)) (f64.const -0.5))
(assert_return (invoke "add" (f64.const 1.) (f64.const -0.5)) (f64.const 0.5))
(assert_return (invoke "add" (f64.const 1.) (f64.const 0.5)) (f64.const 1.5))
(assert_return (invoke "add" (f64.const -1.) (f64.const -1.)) (f64.const -2.))
(assert_return (invoke "add" (f64.const -1.) (f64.const 1.)) (f64.const 0.))
(assert_return (invoke "add" (f64.const 1.) (f64.const -1.)) (f64.const 0.))
(assert_return (invoke "add" (f64.const 1.) (f64.const 1.)) (f64.const 2.))
(assert_return
  (invoke "add" (f64.const -1.) (f64.const -6.28318530718))
  (f64.const -7.28318530718)
)
(assert_return
  (invoke "add" (f64.const -1.) (f64.const 6.28318530718))
  (f64.const 5.28318530718)
)
(assert_return
  (invoke "add" (f64.const 1.) (f64.const -6.28318530718))
  (f64.const -5.28318530718)
)
(assert_return
  (invoke "add" (f64.const 1.) (f64.const 6.28318530718))
  (f64.const 7.28318530718)
)
(assert_return
  (invoke "add" (f64.const -1.) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const -1.) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const 1.) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const 1.) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return (invoke "add" (f64.const -1.) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "add" (f64.const -1.) (f64.const inf)) (f64.const inf))
(assert_return (invoke "add" (f64.const 1.) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "add" (f64.const 1.) (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan
  (invoke "add" (f64.const -1.) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -1.) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -1.) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -1.) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 1.) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 1.) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 1.) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 1.) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "add" (f64.const -6.28318530718) (f64.const -0.))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "add" (f64.const -6.28318530718) (f64.const 0.))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "add" (f64.const 6.28318530718) (f64.const -0.))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "add" (f64.const 6.28318530718) (f64.const 0.))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "add" (f64.const -6.28318530718) (f64.const -4.94065645841e-324))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "add" (f64.const -6.28318530718) (f64.const 4.94065645841e-324))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "add" (f64.const 6.28318530718) (f64.const -4.94065645841e-324))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "add" (f64.const 6.28318530718) (f64.const 4.94065645841e-324))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "add" (f64.const -6.28318530718) (f64.const -2.22507385851e-308))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "add" (f64.const -6.28318530718) (f64.const 2.22507385851e-308))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "add" (f64.const 6.28318530718) (f64.const -2.22507385851e-308))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "add" (f64.const 6.28318530718) (f64.const 2.22507385851e-308))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "add" (f64.const -6.28318530718) (f64.const -0.5))
  (f64.const -6.78318530718)
)
(assert_return
  (invoke "add" (f64.const -6.28318530718) (f64.const 0.5))
  (f64.const -5.78318530718)
)
(assert_return
  (invoke "add" (f64.const 6.28318530718) (f64.const -0.5))
  (f64.const 5.78318530718)
)
(assert_return
  (invoke "add" (f64.const 6.28318530718) (f64.const 0.5))
  (f64.const 6.78318530718)
)
(assert_return
  (invoke "add" (f64.const -6.28318530718) (f64.const -1.))
  (f64.const -7.28318530718)
)
(assert_return
  (invoke "add" (f64.const -6.28318530718) (f64.const 1.))
  (f64.const -5.28318530718)
)
(assert_return
  (invoke "add" (f64.const 6.28318530718) (f64.const -1.))
  (f64.const 5.28318530718)
)
(assert_return
  (invoke "add" (f64.const 6.28318530718) (f64.const 1.))
  (f64.const 7.28318530718)
)
(assert_return
  (invoke "add" (f64.const -6.28318530718) (f64.const -6.28318530718))
  (f64.const -12.5663706144)
)
(assert_return
  (invoke "add" (f64.const -6.28318530718) (f64.const 6.28318530718))
  (f64.const 0.)
)
(assert_return
  (invoke "add" (f64.const 6.28318530718) (f64.const -6.28318530718))
  (f64.const 0.)
)
(assert_return
  (invoke "add" (f64.const 6.28318530718) (f64.const 6.28318530718))
  (f64.const 12.5663706144)
)
(assert_return
  (invoke "add" (f64.const -6.28318530718) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const -6.28318530718) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const 6.28318530718) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const 6.28318530718) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const -6.28318530718) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -6.28318530718) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const 6.28318530718) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const 6.28318530718) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -6.28318530718) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -6.28318530718) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -6.28318530718) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -6.28318530718) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 6.28318530718) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 6.28318530718) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 6.28318530718) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 6.28318530718) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "add" (f64.const -1.79769313486e+308) (f64.const -0.))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const -1.79769313486e+308) (f64.const 0.))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const 1.79769313486e+308) (f64.const -0.))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const 1.79769313486e+308) (f64.const 0.))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const -1.79769313486e+308) (f64.const -4.94065645841e-324))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const -1.79769313486e+308) (f64.const 4.94065645841e-324))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const 1.79769313486e+308) (f64.const -4.94065645841e-324))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const 1.79769313486e+308) (f64.const 4.94065645841e-324))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const -1.79769313486e+308) (f64.const -2.22507385851e-308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const -1.79769313486e+308) (f64.const 2.22507385851e-308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const 1.79769313486e+308) (f64.const -2.22507385851e-308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const 1.79769313486e+308) (f64.const 2.22507385851e-308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const -1.79769313486e+308) (f64.const -0.5))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const -1.79769313486e+308) (f64.const 0.5))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const 1.79769313486e+308) (f64.const -0.5))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const 1.79769313486e+308) (f64.const 0.5))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const -1.79769313486e+308) (f64.const -1.))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const -1.79769313486e+308) (f64.const 1.))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const 1.79769313486e+308) (f64.const -1.))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const 1.79769313486e+308) (f64.const 1.))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const -1.79769313486e+308) (f64.const -6.28318530718))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const -1.79769313486e+308) (f64.const 6.28318530718))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const 1.79769313486e+308) (f64.const -6.28318530718))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const 1.79769313486e+308) (f64.const 6.28318530718))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "add" (f64.const -1.79769313486e+308) (f64.const -1.79769313486e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -1.79769313486e+308) (f64.const 1.79769313486e+308))
  (f64.const 0.)
)
(assert_return
  (invoke "add" (f64.const 1.79769313486e+308) (f64.const -1.79769313486e+308))
  (f64.const 0.)
)
(assert_return
  (invoke "add" (f64.const 1.79769313486e+308) (f64.const 1.79769313486e+308))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const -1.79769313486e+308) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -1.79769313486e+308) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const 1.79769313486e+308) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const 1.79769313486e+308) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -1.79769313486e+308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -1.79769313486e+308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -1.79769313486e+308) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -1.79769313486e+308) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 1.79769313486e+308) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 1.79769313486e+308) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 1.79769313486e+308) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 1.79769313486e+308) (f64.const nan:0x4000000000000))
)
(assert_return (invoke "add" (f64.const -inf) (f64.const -0.)) (f64.const -inf))
(assert_return (invoke "add" (f64.const -inf) (f64.const 0.)) (f64.const -inf))
(assert_return (invoke "add" (f64.const inf) (f64.const -0.)) (f64.const inf))
(assert_return (invoke "add" (f64.const inf) (f64.const 0.)) (f64.const inf))
(assert_return
  (invoke "add" (f64.const -inf) (f64.const -4.94065645841e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const 4.94065645841e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const -4.94065645841e-324))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const 4.94065645841e-324))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const -2.22507385851e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const 2.22507385851e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const -2.22507385851e-308))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const 2.22507385851e-308))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const -0.5))
  (f64.const -inf)
)
(assert_return (invoke "add" (f64.const -inf) (f64.const 0.5)) (f64.const -inf))
(assert_return (invoke "add" (f64.const inf) (f64.const -0.5)) (f64.const inf))
(assert_return (invoke "add" (f64.const inf) (f64.const 0.5)) (f64.const inf))
(assert_return (invoke "add" (f64.const -inf) (f64.const -1.)) (f64.const -inf))
(assert_return (invoke "add" (f64.const -inf) (f64.const 1.)) (f64.const -inf))
(assert_return (invoke "add" (f64.const inf) (f64.const -1.)) (f64.const inf))
(assert_return (invoke "add" (f64.const inf) (f64.const 1.)) (f64.const inf))
(assert_return
  (invoke "add" (f64.const -inf) (f64.const -6.28318530718))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const 6.28318530718))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const -6.28318530718))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const 6.28318530718))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const -1.79769313486e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const 1.79769313486e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const -1.79769313486e+308))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const 1.79769313486e+308))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const -inf))
  (f64.const -inf)
)
(assert_return_canonical_nan (invoke "add" (f64.const -inf) (f64.const inf)))
(assert_return_canonical_nan (invoke "add" (f64.const inf) (f64.const -inf)))
(assert_return (invoke "add" (f64.const inf) (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan
  (invoke "add" (f64.const -inf) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -inf) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -inf) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -inf) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const inf) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const inf) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const inf) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const inf) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const -0.))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const -0.))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const 0.))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const 0.))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const -0.))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const -0.))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const 0.))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const 0.))
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -nan:0x8000000000000)
    (f64.const -4.94065645841e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x4000000000000)
    (f64.const -4.94065645841e-324)
  )
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const 4.94065645841e-324))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const 4.94065645841e-324))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const -4.94065645841e-324))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const -4.94065645841e-324))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const 4.94065645841e-324))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const 4.94065645841e-324))
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -nan:0x8000000000000)
    (f64.const -2.22507385851e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x4000000000000)
    (f64.const -2.22507385851e-308)
  )
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const 2.22507385851e-308))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const 2.22507385851e-308))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const -2.22507385851e-308))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const -2.22507385851e-308))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const 2.22507385851e-308))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const 2.22507385851e-308))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const -0.5))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const 0.5))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const -0.5))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const 0.5))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const -1.))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const -1.))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const 1.))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const 1.))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const -1.))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const -1.))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const 1.))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const 1.))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const -6.28318530718))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const -6.28318530718))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const 6.28318530718))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const 6.28318530718))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const -6.28318530718))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const -6.28318530718))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const 6.28318530718))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const 6.28318530718))
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -nan:0x8000000000000)
    (f64.const -1.79769313486e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x4000000000000)
    (f64.const -1.79769313486e+308)
  )
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const 1.79769313486e+308))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const 1.79769313486e+308))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const -1.79769313486e+308))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const -1.79769313486e+308))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const 1.79769313486e+308))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const 1.79769313486e+308))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const -inf))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const inf))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const inf))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const -inf))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const inf))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const inf))
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x4000000000000)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x4000000000000)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const nan:0x4000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const nan:0x4000000000000))
)
(assert_return (invoke "sub" (f64.const -0.) (f64.const -0.)) (f64.const 0.))
(assert_return (invoke "sub" (f64.const -0.) (f64.const 0.)) (f64.const -0.))
(assert_return (invoke "sub" (f64.const 0.) (f64.const -0.)) (f64.const 0.))
(assert_return (invoke "sub" (f64.const 0.) (f64.const 0.)) (f64.const 0.))
(assert_return
  (invoke "sub" (f64.const -0.) (f64.const -4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "sub" (f64.const -0.) (f64.const 4.94065645841e-324))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "sub" (f64.const 0.) (f64.const -4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "sub" (f64.const 0.) (f64.const 4.94065645841e-324))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "sub" (f64.const -0.) (f64.const -2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "sub" (f64.const -0.) (f64.const 2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "sub" (f64.const 0.) (f64.const -2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "sub" (f64.const 0.) (f64.const 2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return (invoke "sub" (f64.const -0.) (f64.const -0.5)) (f64.const 0.5))
(assert_return (invoke "sub" (f64.const -0.) (f64.const 0.5)) (f64.const -0.5))
(assert_return (invoke "sub" (f64.const 0.) (f64.const -0.5)) (f64.const 0.5))
(assert_return (invoke "sub" (f64.const 0.) (f64.const 0.5)) (f64.const -0.5))
(assert_return (invoke "sub" (f64.const -0.) (f64.const -1.)) (f64.const 1.))
(assert_return (invoke "sub" (f64.const -0.) (f64.const 1.)) (f64.const -1.))
(assert_return (invoke "sub" (f64.const 0.) (f64.const -1.)) (f64.const 1.))
(assert_return (invoke "sub" (f64.const 0.) (f64.const 1.)) (f64.const -1.))
(assert_return
  (invoke "sub" (f64.const -0.) (f64.const -6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "sub" (f64.const -0.) (f64.const 6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "sub" (f64.const 0.) (f64.const -6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "sub" (f64.const 0.) (f64.const 6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "sub" (f64.const -0.) (f64.const -1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const -0.) (f64.const 1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const 0.) (f64.const -1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const 0.) (f64.const 1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return (invoke "sub" (f64.const -0.) (f64.const -inf)) (f64.const inf))
(assert_return (invoke "sub" (f64.const -0.) (f64.const inf)) (f64.const -inf))
(assert_return (invoke "sub" (f64.const 0.) (f64.const -inf)) (f64.const inf))
(assert_return (invoke "sub" (f64.const 0.) (f64.const inf)) (f64.const -inf))
(assert_return_canonical_nan
  (invoke "sub" (f64.const -0.) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -0.) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -0.) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -0.) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 0.) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 0.) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 0.) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 0.) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "sub" (f64.const -4.94065645841e-324) (f64.const -0.))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "sub" (f64.const -4.94065645841e-324) (f64.const 0.))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "sub" (f64.const 4.94065645841e-324) (f64.const -0.))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "sub" (f64.const 4.94065645841e-324) (f64.const 0.))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "sub" (f64.const -4.94065645841e-324) (f64.const -4.94065645841e-324))
  (f64.const 0.)
)
(assert_return
  (invoke "sub" (f64.const -4.94065645841e-324) (f64.const 4.94065645841e-324))
  (f64.const -9.88131291682e-324)
)
(assert_return
  (invoke "sub" (f64.const 4.94065645841e-324) (f64.const -4.94065645841e-324))
  (f64.const 9.88131291682e-324)
)
(assert_return
  (invoke "sub" (f64.const 4.94065645841e-324) (f64.const 4.94065645841e-324))
  (f64.const 0.)
)
(assert_return
  (invoke "sub" (f64.const -4.94065645841e-324) (f64.const -2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "sub" (f64.const -4.94065645841e-324) (f64.const 2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "sub" (f64.const 4.94065645841e-324) (f64.const -2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "sub" (f64.const 4.94065645841e-324) (f64.const 2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "sub" (f64.const -4.94065645841e-324) (f64.const -0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "sub" (f64.const -4.94065645841e-324) (f64.const 0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "sub" (f64.const 4.94065645841e-324) (f64.const -0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "sub" (f64.const 4.94065645841e-324) (f64.const 0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "sub" (f64.const -4.94065645841e-324) (f64.const -1.))
  (f64.const 1.)
)
(assert_return
  (invoke "sub" (f64.const -4.94065645841e-324) (f64.const 1.))
  (f64.const -1.)
)
(assert_return
  (invoke "sub" (f64.const 4.94065645841e-324) (f64.const -1.))
  (f64.const 1.)
)
(assert_return
  (invoke "sub" (f64.const 4.94065645841e-324) (f64.const 1.))
  (f64.const -1.)
)
(assert_return
  (invoke "sub" (f64.const -4.94065645841e-324) (f64.const -6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "sub" (f64.const -4.94065645841e-324) (f64.const 6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "sub" (f64.const 4.94065645841e-324) (f64.const -6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "sub" (f64.const 4.94065645841e-324) (f64.const 6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "sub" (f64.const -4.94065645841e-324) (f64.const -1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const -4.94065645841e-324) (f64.const 1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const 4.94065645841e-324) (f64.const -1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const 4.94065645841e-324) (f64.const 1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const -4.94065645841e-324) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -4.94065645841e-324) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const 4.94065645841e-324) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const 4.94065645841e-324) (f64.const inf))
  (f64.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -4.94065645841e-324)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -4.94065645841e-324)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -4.94065645841e-324) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -4.94065645841e-324) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 4.94065645841e-324) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 4.94065645841e-324) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 4.94065645841e-324) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 4.94065645841e-324) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "sub" (f64.const -2.22507385851e-308) (f64.const -0.))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "sub" (f64.const -2.22507385851e-308) (f64.const 0.))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "sub" (f64.const 2.22507385851e-308) (f64.const -0.))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "sub" (f64.const 2.22507385851e-308) (f64.const 0.))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "sub" (f64.const -2.22507385851e-308) (f64.const -4.94065645841e-324))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "sub" (f64.const -2.22507385851e-308) (f64.const 4.94065645841e-324))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "sub" (f64.const 2.22507385851e-308) (f64.const -4.94065645841e-324))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "sub" (f64.const 2.22507385851e-308) (f64.const 4.94065645841e-324))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "sub" (f64.const -2.22507385851e-308) (f64.const -2.22507385851e-308))
  (f64.const 0.)
)
(assert_return
  (invoke "sub" (f64.const -2.22507385851e-308) (f64.const 2.22507385851e-308))
  (f64.const -4.45014771701e-308)
)
(assert_return
  (invoke "sub" (f64.const 2.22507385851e-308) (f64.const -2.22507385851e-308))
  (f64.const 4.45014771701e-308)
)
(assert_return
  (invoke "sub" (f64.const 2.22507385851e-308) (f64.const 2.22507385851e-308))
  (f64.const 0.)
)
(assert_return
  (invoke "sub" (f64.const -2.22507385851e-308) (f64.const -0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "sub" (f64.const -2.22507385851e-308) (f64.const 0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "sub" (f64.const 2.22507385851e-308) (f64.const -0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "sub" (f64.const 2.22507385851e-308) (f64.const 0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "sub" (f64.const -2.22507385851e-308) (f64.const -1.))
  (f64.const 1.)
)
(assert_return
  (invoke "sub" (f64.const -2.22507385851e-308) (f64.const 1.))
  (f64.const -1.)
)
(assert_return
  (invoke "sub" (f64.const 2.22507385851e-308) (f64.const -1.))
  (f64.const 1.)
)
(assert_return
  (invoke "sub" (f64.const 2.22507385851e-308) (f64.const 1.))
  (f64.const -1.)
)
(assert_return
  (invoke "sub" (f64.const -2.22507385851e-308) (f64.const -6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "sub" (f64.const -2.22507385851e-308) (f64.const 6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "sub" (f64.const 2.22507385851e-308) (f64.const -6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "sub" (f64.const 2.22507385851e-308) (f64.const 6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "sub" (f64.const -2.22507385851e-308) (f64.const -1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const -2.22507385851e-308) (f64.const 1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const 2.22507385851e-308) (f64.const -1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const 2.22507385851e-308) (f64.const 1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const -2.22507385851e-308) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -2.22507385851e-308) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const 2.22507385851e-308) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const 2.22507385851e-308) (f64.const inf))
  (f64.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -2.22507385851e-308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -2.22507385851e-308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -2.22507385851e-308) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -2.22507385851e-308) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 2.22507385851e-308) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 2.22507385851e-308) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 2.22507385851e-308) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 2.22507385851e-308) (f64.const nan:0x4000000000000))
)
(assert_return (invoke "sub" (f64.const -0.5) (f64.const -0.)) (f64.const -0.5))
(assert_return (invoke "sub" (f64.const -0.5) (f64.const 0.)) (f64.const -0.5))
(assert_return (invoke "sub" (f64.const 0.5) (f64.const -0.)) (f64.const 0.5))
(assert_return (invoke "sub" (f64.const 0.5) (f64.const 0.)) (f64.const 0.5))
(assert_return
  (invoke "sub" (f64.const -0.5) (f64.const -4.94065645841e-324))
  (f64.const -0.5)
)
(assert_return
  (invoke "sub" (f64.const -0.5) (f64.const 4.94065645841e-324))
  (f64.const -0.5)
)
(assert_return
  (invoke "sub" (f64.const 0.5) (f64.const -4.94065645841e-324))
  (f64.const 0.5)
)
(assert_return
  (invoke "sub" (f64.const 0.5) (f64.const 4.94065645841e-324))
  (f64.const 0.5)
)
(assert_return
  (invoke "sub" (f64.const -0.5) (f64.const -2.22507385851e-308))
  (f64.const -0.5)
)
(assert_return
  (invoke "sub" (f64.const -0.5) (f64.const 2.22507385851e-308))
  (f64.const -0.5)
)
(assert_return
  (invoke "sub" (f64.const 0.5) (f64.const -2.22507385851e-308))
  (f64.const 0.5)
)
(assert_return
  (invoke "sub" (f64.const 0.5) (f64.const 2.22507385851e-308))
  (f64.const 0.5)
)
(assert_return (invoke "sub" (f64.const -0.5) (f64.const -0.5)) (f64.const 0.))
(assert_return (invoke "sub" (f64.const -0.5) (f64.const 0.5)) (f64.const -1.))
(assert_return (invoke "sub" (f64.const 0.5) (f64.const -0.5)) (f64.const 1.))
(assert_return (invoke "sub" (f64.const 0.5) (f64.const 0.5)) (f64.const 0.))
(assert_return (invoke "sub" (f64.const -0.5) (f64.const -1.)) (f64.const 0.5))
(assert_return (invoke "sub" (f64.const -0.5) (f64.const 1.)) (f64.const -1.5))
(assert_return (invoke "sub" (f64.const 0.5) (f64.const -1.)) (f64.const 1.5))
(assert_return (invoke "sub" (f64.const 0.5) (f64.const 1.)) (f64.const -0.5))
(assert_return
  (invoke "sub" (f64.const -0.5) (f64.const -6.28318530718))
  (f64.const 5.78318530718)
)
(assert_return
  (invoke "sub" (f64.const -0.5) (f64.const 6.28318530718))
  (f64.const -6.78318530718)
)
(assert_return
  (invoke "sub" (f64.const 0.5) (f64.const -6.28318530718))
  (f64.const 6.78318530718)
)
(assert_return
  (invoke "sub" (f64.const 0.5) (f64.const 6.28318530718))
  (f64.const -5.78318530718)
)
(assert_return
  (invoke "sub" (f64.const -0.5) (f64.const -1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const -0.5) (f64.const 1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const 0.5) (f64.const -1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const 0.5) (f64.const 1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return (invoke "sub" (f64.const -0.5) (f64.const -inf)) (f64.const inf))
(assert_return (invoke "sub" (f64.const -0.5) (f64.const inf)) (f64.const -inf))
(assert_return (invoke "sub" (f64.const 0.5) (f64.const -inf)) (f64.const inf))
(assert_return (invoke "sub" (f64.const 0.5) (f64.const inf)) (f64.const -inf))
(assert_return_canonical_nan
  (invoke "sub" (f64.const -0.5) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -0.5) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -0.5) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -0.5) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 0.5) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 0.5) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 0.5) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 0.5) (f64.const nan:0x4000000000000))
)
(assert_return (invoke "sub" (f64.const -1.) (f64.const -0.)) (f64.const -1.))
(assert_return (invoke "sub" (f64.const -1.) (f64.const 0.)) (f64.const -1.))
(assert_return (invoke "sub" (f64.const 1.) (f64.const -0.)) (f64.const 1.))
(assert_return (invoke "sub" (f64.const 1.) (f64.const 0.)) (f64.const 1.))
(assert_return
  (invoke "sub" (f64.const -1.) (f64.const -4.94065645841e-324))
  (f64.const -1.)
)
(assert_return
  (invoke "sub" (f64.const -1.) (f64.const 4.94065645841e-324))
  (f64.const -1.)
)
(assert_return
  (invoke "sub" (f64.const 1.) (f64.const -4.94065645841e-324))
  (f64.const 1.)
)
(assert_return
  (invoke "sub" (f64.const 1.) (f64.const 4.94065645841e-324))
  (f64.const 1.)
)
(assert_return
  (invoke "sub" (f64.const -1.) (f64.const -2.22507385851e-308))
  (f64.const -1.)
)
(assert_return
  (invoke "sub" (f64.const -1.) (f64.const 2.22507385851e-308))
  (f64.const -1.)
)
(assert_return
  (invoke "sub" (f64.const 1.) (f64.const -2.22507385851e-308))
  (f64.const 1.)
)
(assert_return
  (invoke "sub" (f64.const 1.) (f64.const 2.22507385851e-308))
  (f64.const 1.)
)
(assert_return (invoke "sub" (f64.const -1.) (f64.const -0.5)) (f64.const -0.5))
(assert_return (invoke "sub" (f64.const -1.) (f64.const 0.5)) (f64.const -1.5))
(assert_return (invoke "sub" (f64.const 1.) (f64.const -0.5)) (f64.const 1.5))
(assert_return (invoke "sub" (f64.const 1.) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "sub" (f64.const -1.) (f64.const -1.)) (f64.const 0.))
(assert_return (invoke "sub" (f64.const -1.) (f64.const 1.)) (f64.const -2.))
(assert_return (invoke "sub" (f64.const 1.) (f64.const -1.)) (f64.const 2.))
(assert_return (invoke "sub" (f64.const 1.) (f64.const 1.)) (f64.const 0.))
(assert_return
  (invoke "sub" (f64.const -1.) (f64.const -6.28318530718))
  (f64.const 5.28318530718)
)
(assert_return
  (invoke "sub" (f64.const -1.) (f64.const 6.28318530718))
  (f64.const -7.28318530718)
)
(assert_return
  (invoke "sub" (f64.const 1.) (f64.const -6.28318530718))
  (f64.const 7.28318530718)
)
(assert_return
  (invoke "sub" (f64.const 1.) (f64.const 6.28318530718))
  (f64.const -5.28318530718)
)
(assert_return
  (invoke "sub" (f64.const -1.) (f64.const -1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const -1.) (f64.const 1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const 1.) (f64.const -1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const 1.) (f64.const 1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return (invoke "sub" (f64.const -1.) (f64.const -inf)) (f64.const inf))
(assert_return (invoke "sub" (f64.const -1.) (f64.const inf)) (f64.const -inf))
(assert_return (invoke "sub" (f64.const 1.) (f64.const -inf)) (f64.const inf))
(assert_return (invoke "sub" (f64.const 1.) (f64.const inf)) (f64.const -inf))
(assert_return_canonical_nan
  (invoke "sub" (f64.const -1.) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -1.) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -1.) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -1.) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 1.) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 1.) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 1.) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 1.) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "sub" (f64.const -6.28318530718) (f64.const -0.))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "sub" (f64.const -6.28318530718) (f64.const 0.))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "sub" (f64.const 6.28318530718) (f64.const -0.))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "sub" (f64.const 6.28318530718) (f64.const 0.))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "sub" (f64.const -6.28318530718) (f64.const -4.94065645841e-324))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "sub" (f64.const -6.28318530718) (f64.const 4.94065645841e-324))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "sub" (f64.const 6.28318530718) (f64.const -4.94065645841e-324))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "sub" (f64.const 6.28318530718) (f64.const 4.94065645841e-324))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "sub" (f64.const -6.28318530718) (f64.const -2.22507385851e-308))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "sub" (f64.const -6.28318530718) (f64.const 2.22507385851e-308))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "sub" (f64.const 6.28318530718) (f64.const -2.22507385851e-308))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "sub" (f64.const 6.28318530718) (f64.const 2.22507385851e-308))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "sub" (f64.const -6.28318530718) (f64.const -0.5))
  (f64.const -5.78318530718)
)
(assert_return
  (invoke "sub" (f64.const -6.28318530718) (f64.const 0.5))
  (f64.const -6.78318530718)
)
(assert_return
  (invoke "sub" (f64.const 6.28318530718) (f64.const -0.5))
  (f64.const 6.78318530718)
)
(assert_return
  (invoke "sub" (f64.const 6.28318530718) (f64.const 0.5))
  (f64.const 5.78318530718)
)
(assert_return
  (invoke "sub" (f64.const -6.28318530718) (f64.const -1.))
  (f64.const -5.28318530718)
)
(assert_return
  (invoke "sub" (f64.const -6.28318530718) (f64.const 1.))
  (f64.const -7.28318530718)
)
(assert_return
  (invoke "sub" (f64.const 6.28318530718) (f64.const -1.))
  (f64.const 7.28318530718)
)
(assert_return
  (invoke "sub" (f64.const 6.28318530718) (f64.const 1.))
  (f64.const 5.28318530718)
)
(assert_return
  (invoke "sub" (f64.const -6.28318530718) (f64.const -6.28318530718))
  (f64.const 0.)
)
(assert_return
  (invoke "sub" (f64.const -6.28318530718) (f64.const 6.28318530718))
  (f64.const -12.5663706144)
)
(assert_return
  (invoke "sub" (f64.const 6.28318530718) (f64.const -6.28318530718))
  (f64.const 12.5663706144)
)
(assert_return
  (invoke "sub" (f64.const 6.28318530718) (f64.const 6.28318530718))
  (f64.const 0.)
)
(assert_return
  (invoke "sub" (f64.const -6.28318530718) (f64.const -1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const -6.28318530718) (f64.const 1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const 6.28318530718) (f64.const -1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const 6.28318530718) (f64.const 1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const -6.28318530718) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -6.28318530718) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const 6.28318530718) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const 6.28318530718) (f64.const inf))
  (f64.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -6.28318530718) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -6.28318530718) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -6.28318530718) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -6.28318530718) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 6.28318530718) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 6.28318530718) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 6.28318530718) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 6.28318530718) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "sub" (f64.const -1.79769313486e+308) (f64.const -0.))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const -1.79769313486e+308) (f64.const 0.))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const 1.79769313486e+308) (f64.const -0.))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const 1.79769313486e+308) (f64.const 0.))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const -1.79769313486e+308) (f64.const -4.94065645841e-324))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const -1.79769313486e+308) (f64.const 4.94065645841e-324))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const 1.79769313486e+308) (f64.const -4.94065645841e-324))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const 1.79769313486e+308) (f64.const 4.94065645841e-324))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const -1.79769313486e+308) (f64.const -2.22507385851e-308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const -1.79769313486e+308) (f64.const 2.22507385851e-308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const 1.79769313486e+308) (f64.const -2.22507385851e-308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const 1.79769313486e+308) (f64.const 2.22507385851e-308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const -1.79769313486e+308) (f64.const -0.5))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const -1.79769313486e+308) (f64.const 0.5))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const 1.79769313486e+308) (f64.const -0.5))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const 1.79769313486e+308) (f64.const 0.5))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const -1.79769313486e+308) (f64.const -1.))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const -1.79769313486e+308) (f64.const 1.))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const 1.79769313486e+308) (f64.const -1.))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const 1.79769313486e+308) (f64.const 1.))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const -1.79769313486e+308) (f64.const -6.28318530718))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const -1.79769313486e+308) (f64.const 6.28318530718))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const 1.79769313486e+308) (f64.const -6.28318530718))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const 1.79769313486e+308) (f64.const 6.28318530718))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "sub" (f64.const -1.79769313486e+308) (f64.const -1.79769313486e+308))
  (f64.const 0.)
)
(assert_return
  (invoke "sub" (f64.const -1.79769313486e+308) (f64.const 1.79769313486e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const 1.79769313486e+308) (f64.const -1.79769313486e+308))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const 1.79769313486e+308) (f64.const 1.79769313486e+308))
  (f64.const 0.)
)
(assert_return
  (invoke "sub" (f64.const -1.79769313486e+308) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -1.79769313486e+308) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const 1.79769313486e+308) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const 1.79769313486e+308) (f64.const inf))
  (f64.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -1.79769313486e+308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -1.79769313486e+308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -1.79769313486e+308) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -1.79769313486e+308) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 1.79769313486e+308) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 1.79769313486e+308) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 1.79769313486e+308) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 1.79769313486e+308) (f64.const nan:0x4000000000000))
)
(assert_return (invoke "sub" (f64.const -inf) (f64.const -0.)) (f64.const -inf))
(assert_return (invoke "sub" (f64.const -inf) (f64.const 0.)) (f64.const -inf))
(assert_return (invoke "sub" (f64.const inf) (f64.const -0.)) (f64.const inf))
(assert_return (invoke "sub" (f64.const inf) (f64.const 0.)) (f64.const inf))
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const -4.94065645841e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const 4.94065645841e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const -4.94065645841e-324))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const 4.94065645841e-324))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const -2.22507385851e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const 2.22507385851e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const -2.22507385851e-308))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const 2.22507385851e-308))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const -0.5))
  (f64.const -inf)
)
(assert_return (invoke "sub" (f64.const -inf) (f64.const 0.5)) (f64.const -inf))
(assert_return (invoke "sub" (f64.const inf) (f64.const -0.5)) (f64.const inf))
(assert_return (invoke "sub" (f64.const inf) (f64.const 0.5)) (f64.const inf))
(assert_return (invoke "sub" (f64.const -inf) (f64.const -1.)) (f64.const -inf))
(assert_return (invoke "sub" (f64.const -inf) (f64.const 1.)) (f64.const -inf))
(assert_return (invoke "sub" (f64.const inf) (f64.const -1.)) (f64.const inf))
(assert_return (invoke "sub" (f64.const inf) (f64.const 1.)) (f64.const inf))
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const -6.28318530718))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const 6.28318530718))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const -6.28318530718))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const 6.28318530718))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const -1.79769313486e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const 1.79769313486e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const -1.79769313486e+308))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const 1.79769313486e+308))
  (f64.const inf)
)
(assert_return_canonical_nan (invoke "sub" (f64.const -inf) (f64.const -inf)))
(assert_return (invoke "sub" (f64.const -inf) (f64.const inf)) (f64.const -inf))
(assert_return (invoke "sub" (f64.const inf) (f64.const -inf)) (f64.const inf))
(assert_return_canonical_nan (invoke "sub" (f64.const inf) (f64.const inf)))
(assert_return_canonical_nan
  (invoke "sub" (f64.const -inf) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -inf) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -inf) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -inf) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const inf) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const inf) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const inf) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const inf) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const -0.))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const -0.))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const 0.))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const 0.))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const -0.))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const -0.))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const 0.))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const 0.))
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -nan:0x8000000000000)
    (f64.const -4.94065645841e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x4000000000000)
    (f64.const -4.94065645841e-324)
  )
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const 4.94065645841e-324))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const 4.94065645841e-324))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const -4.94065645841e-324))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const -4.94065645841e-324))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const 4.94065645841e-324))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const 4.94065645841e-324))
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -nan:0x8000000000000)
    (f64.const -2.22507385851e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x4000000000000)
    (f64.const -2.22507385851e-308)
  )
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const 2.22507385851e-308))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const 2.22507385851e-308))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const -2.22507385851e-308))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const -2.22507385851e-308))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const 2.22507385851e-308))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const 2.22507385851e-308))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const -0.5))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const 0.5))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const -0.5))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const 0.5))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const -1.))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const -1.))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const 1.))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const 1.))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const -1.))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const -1.))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const 1.))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const 1.))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const -6.28318530718))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const -6.28318530718))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const 6.28318530718))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const 6.28318530718))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const -6.28318530718))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const -6.28318530718))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const 6.28318530718))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const 6.28318530718))
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -nan:0x8000000000000)
    (f64.const -1.79769313486e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x4000000000000)
    (f64.const -1.79769313486e+308)
  )
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const 1.79769313486e+308))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const 1.79769313486e+308))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const -1.79769313486e+308))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const -1.79769313486e+308))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const 1.79769313486e+308))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const 1.79769313486e+308))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const -inf))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const inf))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const inf))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const -inf))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const inf))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const inf))
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x4000000000000)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x4000000000000)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const nan:0x4000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const nan:0x4000000000000))
)
(assert_return (invoke "mul" (f64.const -0.) (f64.const -0.)) (f64.const 0.))
(assert_return (invoke "mul" (f64.const -0.) (f64.const 0.)) (f64.const -0.))
(assert_return (invoke "mul" (f64.const 0.) (f64.const -0.)) (f64.const -0.))
(assert_return (invoke "mul" (f64.const 0.) (f64.const 0.)) (f64.const 0.))
(assert_return
  (invoke "mul" (f64.const -0.) (f64.const -4.94065645841e-324))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -0.) (f64.const 4.94065645841e-324))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 0.) (f64.const -4.94065645841e-324))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 0.) (f64.const 4.94065645841e-324))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -0.) (f64.const -2.22507385851e-308))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -0.) (f64.const 2.22507385851e-308))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 0.) (f64.const -2.22507385851e-308))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 0.) (f64.const 2.22507385851e-308))
  (f64.const 0.)
)
(assert_return (invoke "mul" (f64.const -0.) (f64.const -0.5)) (f64.const 0.))
(assert_return (invoke "mul" (f64.const -0.) (f64.const 0.5)) (f64.const -0.))
(assert_return (invoke "mul" (f64.const 0.) (f64.const -0.5)) (f64.const -0.))
(assert_return (invoke "mul" (f64.const 0.) (f64.const 0.5)) (f64.const 0.))
(assert_return (invoke "mul" (f64.const -0.) (f64.const -1.)) (f64.const 0.))
(assert_return (invoke "mul" (f64.const -0.) (f64.const 1.)) (f64.const -0.))
(assert_return (invoke "mul" (f64.const 0.) (f64.const -1.)) (f64.const -0.))
(assert_return (invoke "mul" (f64.const 0.) (f64.const 1.)) (f64.const 0.))
(assert_return
  (invoke "mul" (f64.const -0.) (f64.const -6.28318530718))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -0.) (f64.const 6.28318530718))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 0.) (f64.const -6.28318530718))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 0.) (f64.const 6.28318530718))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -0.) (f64.const -1.79769313486e+308))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -0.) (f64.const 1.79769313486e+308))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 0.) (f64.const -1.79769313486e+308))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 0.) (f64.const 1.79769313486e+308))
  (f64.const 0.)
)
(assert_return_canonical_nan (invoke "mul" (f64.const -0.) (f64.const -inf)))
(assert_return_canonical_nan (invoke "mul" (f64.const -0.) (f64.const inf)))
(assert_return_canonical_nan (invoke "mul" (f64.const 0.) (f64.const -inf)))
(assert_return_canonical_nan (invoke "mul" (f64.const 0.) (f64.const inf)))
(assert_return_canonical_nan
  (invoke "mul" (f64.const -0.) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -0.) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -0.) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -0.) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 0.) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 0.) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 0.) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 0.) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "mul" (f64.const -4.94065645841e-324) (f64.const -0.))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -4.94065645841e-324) (f64.const 0.))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 4.94065645841e-324) (f64.const -0.))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 4.94065645841e-324) (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -4.94065645841e-324) (f64.const -4.94065645841e-324))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -4.94065645841e-324) (f64.const 4.94065645841e-324))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 4.94065645841e-324) (f64.const -4.94065645841e-324))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 4.94065645841e-324) (f64.const 4.94065645841e-324))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -4.94065645841e-324) (f64.const -2.22507385851e-308))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -4.94065645841e-324) (f64.const 2.22507385851e-308))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 4.94065645841e-324) (f64.const -2.22507385851e-308))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 4.94065645841e-324) (f64.const 2.22507385851e-308))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -4.94065645841e-324) (f64.const -0.5))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -4.94065645841e-324) (f64.const 0.5))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 4.94065645841e-324) (f64.const -0.5))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 4.94065645841e-324) (f64.const 0.5))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -4.94065645841e-324) (f64.const -1.))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "mul" (f64.const -4.94065645841e-324) (f64.const 1.))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "mul" (f64.const 4.94065645841e-324) (f64.const -1.))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "mul" (f64.const 4.94065645841e-324) (f64.const 1.))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "mul" (f64.const -4.94065645841e-324) (f64.const -6.28318530718))
  (f64.const 2.96439387505e-323)
)
(assert_return
  (invoke "mul" (f64.const -4.94065645841e-324) (f64.const 6.28318530718))
  (f64.const -2.96439387505e-323)
)
(assert_return
  (invoke "mul" (f64.const 4.94065645841e-324) (f64.const -6.28318530718))
  (f64.const -2.96439387505e-323)
)
(assert_return
  (invoke "mul" (f64.const 4.94065645841e-324) (f64.const 6.28318530718))
  (f64.const 2.96439387505e-323)
)
(assert_return
  (invoke "mul" (f64.const -4.94065645841e-324) (f64.const -1.79769313486e+308))
  (f64.const 8.881784197e-16)
)
(assert_return
  (invoke "mul" (f64.const -4.94065645841e-324) (f64.const 1.79769313486e+308))
  (f64.const -8.881784197e-16)
)
(assert_return
  (invoke "mul" (f64.const 4.94065645841e-324) (f64.const -1.79769313486e+308))
  (f64.const -8.881784197e-16)
)
(assert_return
  (invoke "mul" (f64.const 4.94065645841e-324) (f64.const 1.79769313486e+308))
  (f64.const 8.881784197e-16)
)
(assert_return
  (invoke "mul" (f64.const -4.94065645841e-324) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -4.94065645841e-324) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 4.94065645841e-324) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 4.94065645841e-324) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -4.94065645841e-324)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -4.94065645841e-324)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -4.94065645841e-324) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -4.94065645841e-324) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 4.94065645841e-324) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 4.94065645841e-324) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 4.94065645841e-324) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 4.94065645841e-324) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "mul" (f64.const -2.22507385851e-308) (f64.const -0.))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -2.22507385851e-308) (f64.const 0.))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 2.22507385851e-308) (f64.const -0.))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 2.22507385851e-308) (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -2.22507385851e-308) (f64.const -4.94065645841e-324))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -2.22507385851e-308) (f64.const 4.94065645841e-324))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 2.22507385851e-308) (f64.const -4.94065645841e-324))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 2.22507385851e-308) (f64.const 4.94065645841e-324))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -2.22507385851e-308) (f64.const -2.22507385851e-308))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -2.22507385851e-308) (f64.const 2.22507385851e-308))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 2.22507385851e-308) (f64.const -2.22507385851e-308))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 2.22507385851e-308) (f64.const 2.22507385851e-308))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -2.22507385851e-308) (f64.const -0.5))
  (f64.const 1.11253692925e-308)
)
(assert_return
  (invoke "mul" (f64.const -2.22507385851e-308) (f64.const 0.5))
  (f64.const -1.11253692925e-308)
)
(assert_return
  (invoke "mul" (f64.const 2.22507385851e-308) (f64.const -0.5))
  (f64.const -1.11253692925e-308)
)
(assert_return
  (invoke "mul" (f64.const 2.22507385851e-308) (f64.const 0.5))
  (f64.const 1.11253692925e-308)
)
(assert_return
  (invoke "mul" (f64.const -2.22507385851e-308) (f64.const -1.))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "mul" (f64.const -2.22507385851e-308) (f64.const 1.))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "mul" (f64.const 2.22507385851e-308) (f64.const -1.))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "mul" (f64.const 2.22507385851e-308) (f64.const 1.))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "mul" (f64.const -2.22507385851e-308) (f64.const -6.28318530718))
  (f64.const 1.39805513752e-307)
)
(assert_return
  (invoke "mul" (f64.const -2.22507385851e-308) (f64.const 6.28318530718))
  (f64.const -1.39805513752e-307)
)
(assert_return
  (invoke "mul" (f64.const 2.22507385851e-308) (f64.const -6.28318530718))
  (f64.const -1.39805513752e-307)
)
(assert_return
  (invoke "mul" (f64.const 2.22507385851e-308) (f64.const 6.28318530718))
  (f64.const 1.39805513752e-307)
)
(assert_return
  (invoke "mul" (f64.const -2.22507385851e-308) (f64.const -1.79769313486e+308))
  (f64.const 4.)
)
(assert_return
  (invoke "mul" (f64.const -2.22507385851e-308) (f64.const 1.79769313486e+308))
  (f64.const -4.)
)
(assert_return
  (invoke "mul" (f64.const 2.22507385851e-308) (f64.const -1.79769313486e+308))
  (f64.const -4.)
)
(assert_return
  (invoke "mul" (f64.const 2.22507385851e-308) (f64.const 1.79769313486e+308))
  (f64.const 4.)
)
(assert_return
  (invoke "mul" (f64.const -2.22507385851e-308) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -2.22507385851e-308) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 2.22507385851e-308) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 2.22507385851e-308) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -2.22507385851e-308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -2.22507385851e-308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -2.22507385851e-308) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -2.22507385851e-308) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 2.22507385851e-308) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 2.22507385851e-308) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 2.22507385851e-308) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 2.22507385851e-308) (f64.const nan:0x4000000000000))
)
(assert_return (invoke "mul" (f64.const -0.5) (f64.const -0.)) (f64.const 0.))
(assert_return (invoke "mul" (f64.const -0.5) (f64.const 0.)) (f64.const -0.))
(assert_return (invoke "mul" (f64.const 0.5) (f64.const -0.)) (f64.const -0.))
(assert_return (invoke "mul" (f64.const 0.5) (f64.const 0.)) (f64.const 0.))
(assert_return
  (invoke "mul" (f64.const -0.5) (f64.const -4.94065645841e-324))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -0.5) (f64.const 4.94065645841e-324))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 0.5) (f64.const -4.94065645841e-324))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 0.5) (f64.const 4.94065645841e-324))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -0.5) (f64.const -2.22507385851e-308))
  (f64.const 1.11253692925e-308)
)
(assert_return
  (invoke "mul" (f64.const -0.5) (f64.const 2.22507385851e-308))
  (f64.const -1.11253692925e-308)
)
(assert_return
  (invoke "mul" (f64.const 0.5) (f64.const -2.22507385851e-308))
  (f64.const -1.11253692925e-308)
)
(assert_return
  (invoke "mul" (f64.const 0.5) (f64.const 2.22507385851e-308))
  (f64.const 1.11253692925e-308)
)
(assert_return
  (invoke "mul" (f64.const -0.5) (f64.const -0.5))
  (f64.const 0.25)
)
(assert_return
  (invoke "mul" (f64.const -0.5) (f64.const 0.5))
  (f64.const -0.25)
)
(assert_return
  (invoke "mul" (f64.const 0.5) (f64.const -0.5))
  (f64.const -0.25)
)
(assert_return (invoke "mul" (f64.const 0.5) (f64.const 0.5)) (f64.const 0.25))
(assert_return (invoke "mul" (f64.const -0.5) (f64.const -1.)) (f64.const 0.5))
(assert_return (invoke "mul" (f64.const -0.5) (f64.const 1.)) (f64.const -0.5))
(assert_return (invoke "mul" (f64.const 0.5) (f64.const -1.)) (f64.const -0.5))
(assert_return (invoke "mul" (f64.const 0.5) (f64.const 1.)) (f64.const 0.5))
(assert_return
  (invoke "mul" (f64.const -0.5) (f64.const -6.28318530718))
  (f64.const 3.14159265359)
)
(assert_return
  (invoke "mul" (f64.const -0.5) (f64.const 6.28318530718))
  (f64.const -3.14159265359)
)
(assert_return
  (invoke "mul" (f64.const 0.5) (f64.const -6.28318530718))
  (f64.const -3.14159265359)
)
(assert_return
  (invoke "mul" (f64.const 0.5) (f64.const 6.28318530718))
  (f64.const 3.14159265359)
)
(assert_return
  (invoke "mul" (f64.const -0.5) (f64.const -1.79769313486e+308))
  (f64.const 8.98846567431e+307)
)
(assert_return
  (invoke "mul" (f64.const -0.5) (f64.const 1.79769313486e+308))
  (f64.const -8.98846567431e+307)
)
(assert_return
  (invoke "mul" (f64.const 0.5) (f64.const -1.79769313486e+308))
  (f64.const -8.98846567431e+307)
)
(assert_return
  (invoke "mul" (f64.const 0.5) (f64.const 1.79769313486e+308))
  (f64.const 8.98846567431e+307)
)
(assert_return (invoke "mul" (f64.const -0.5) (f64.const -inf)) (f64.const inf))
(assert_return (invoke "mul" (f64.const -0.5) (f64.const inf)) (f64.const -inf))
(assert_return (invoke "mul" (f64.const 0.5) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "mul" (f64.const 0.5) (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan
  (invoke "mul" (f64.const -0.5) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -0.5) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -0.5) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -0.5) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 0.5) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 0.5) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 0.5) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 0.5) (f64.const nan:0x4000000000000))
)
(assert_return (invoke "mul" (f64.const -1.) (f64.const -0.)) (f64.const 0.))
(assert_return (invoke "mul" (f64.const -1.) (f64.const 0.)) (f64.const -0.))
(assert_return (invoke "mul" (f64.const 1.) (f64.const -0.)) (f64.const -0.))
(assert_return (invoke "mul" (f64.const 1.) (f64.const 0.)) (f64.const 0.))
(assert_return
  (invoke "mul" (f64.const -1.) (f64.const -4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "mul" (f64.const -1.) (f64.const 4.94065645841e-324))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "mul" (f64.const 1.) (f64.const -4.94065645841e-324))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "mul" (f64.const 1.) (f64.const 4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "mul" (f64.const -1.) (f64.const -2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "mul" (f64.const -1.) (f64.const 2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "mul" (f64.const 1.) (f64.const -2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "mul" (f64.const 1.) (f64.const 2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return (invoke "mul" (f64.const -1.) (f64.const -0.5)) (f64.const 0.5))
(assert_return (invoke "mul" (f64.const -1.) (f64.const 0.5)) (f64.const -0.5))
(assert_return (invoke "mul" (f64.const 1.) (f64.const -0.5)) (f64.const -0.5))
(assert_return (invoke "mul" (f64.const 1.) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "mul" (f64.const -1.) (f64.const -1.)) (f64.const 1.))
(assert_return (invoke "mul" (f64.const -1.) (f64.const 1.)) (f64.const -1.))
(assert_return (invoke "mul" (f64.const 1.) (f64.const -1.)) (f64.const -1.))
(assert_return (invoke "mul" (f64.const 1.) (f64.const 1.)) (f64.const 1.))
(assert_return
  (invoke "mul" (f64.const -1.) (f64.const -6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "mul" (f64.const -1.) (f64.const 6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "mul" (f64.const 1.) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "mul" (f64.const 1.) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "mul" (f64.const -1.) (f64.const -1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "mul" (f64.const -1.) (f64.const 1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "mul" (f64.const 1.) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "mul" (f64.const 1.) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return (invoke "mul" (f64.const -1.) (f64.const -inf)) (f64.const inf))
(assert_return (invoke "mul" (f64.const -1.) (f64.const inf)) (f64.const -inf))
(assert_return (invoke "mul" (f64.const 1.) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "mul" (f64.const 1.) (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan
  (invoke "mul" (f64.const -1.) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -1.) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -1.) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -1.) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 1.) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 1.) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 1.) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 1.) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "mul" (f64.const -6.28318530718) (f64.const -0.))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -6.28318530718) (f64.const 0.))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 6.28318530718) (f64.const -0.))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 6.28318530718) (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -6.28318530718) (f64.const -4.94065645841e-324))
  (f64.const 2.96439387505e-323)
)
(assert_return
  (invoke "mul" (f64.const -6.28318530718) (f64.const 4.94065645841e-324))
  (f64.const -2.96439387505e-323)
)
(assert_return
  (invoke "mul" (f64.const 6.28318530718) (f64.const -4.94065645841e-324))
  (f64.const -2.96439387505e-323)
)
(assert_return
  (invoke "mul" (f64.const 6.28318530718) (f64.const 4.94065645841e-324))
  (f64.const 2.96439387505e-323)
)
(assert_return
  (invoke "mul" (f64.const -6.28318530718) (f64.const -2.22507385851e-308))
  (f64.const 1.39805513752e-307)
)
(assert_return
  (invoke "mul" (f64.const -6.28318530718) (f64.const 2.22507385851e-308))
  (f64.const -1.39805513752e-307)
)
(assert_return
  (invoke "mul" (f64.const 6.28318530718) (f64.const -2.22507385851e-308))
  (f64.const -1.39805513752e-307)
)
(assert_return
  (invoke "mul" (f64.const 6.28318530718) (f64.const 2.22507385851e-308))
  (f64.const 1.39805513752e-307)
)
(assert_return
  (invoke "mul" (f64.const -6.28318530718) (f64.const -0.5))
  (f64.const 3.14159265359)
)
(assert_return
  (invoke "mul" (f64.const -6.28318530718) (f64.const 0.5))
  (f64.const -3.14159265359)
)
(assert_return
  (invoke "mul" (f64.const 6.28318530718) (f64.const -0.5))
  (f64.const -3.14159265359)
)
(assert_return
  (invoke "mul" (f64.const 6.28318530718) (f64.const 0.5))
  (f64.const 3.14159265359)
)
(assert_return
  (invoke "mul" (f64.const -6.28318530718) (f64.const -1.))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "mul" (f64.const -6.28318530718) (f64.const 1.))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "mul" (f64.const 6.28318530718) (f64.const -1.))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "mul" (f64.const 6.28318530718) (f64.const 1.))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "mul" (f64.const -6.28318530718) (f64.const -6.28318530718))
  (f64.const 39.4784176044)
)
(assert_return
  (invoke "mul" (f64.const -6.28318530718) (f64.const 6.28318530718))
  (f64.const -39.4784176044)
)
(assert_return
  (invoke "mul" (f64.const 6.28318530718) (f64.const -6.28318530718))
  (f64.const -39.4784176044)
)
(assert_return
  (invoke "mul" (f64.const 6.28318530718) (f64.const 6.28318530718))
  (f64.const 39.4784176044)
)
(assert_return
  (invoke "mul" (f64.const -6.28318530718) (f64.const -1.79769313486e+308))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -6.28318530718) (f64.const 1.79769313486e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 6.28318530718) (f64.const -1.79769313486e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 6.28318530718) (f64.const 1.79769313486e+308))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -6.28318530718) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -6.28318530718) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 6.28318530718) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 6.28318530718) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -6.28318530718) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -6.28318530718) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -6.28318530718) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -6.28318530718) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 6.28318530718) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 6.28318530718) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 6.28318530718) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 6.28318530718) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "mul" (f64.const -1.79769313486e+308) (f64.const -0.))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -1.79769313486e+308) (f64.const 0.))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 1.79769313486e+308) (f64.const -0.))
  (f64.const -0.)
)
(assert_return
  (invoke "mul" (f64.const 1.79769313486e+308) (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "mul" (f64.const -1.79769313486e+308) (f64.const -4.94065645841e-324))
  (f64.const 8.881784197e-16)
)
(assert_return
  (invoke "mul" (f64.const -1.79769313486e+308) (f64.const 4.94065645841e-324))
  (f64.const -8.881784197e-16)
)
(assert_return
  (invoke "mul" (f64.const 1.79769313486e+308) (f64.const -4.94065645841e-324))
  (f64.const -8.881784197e-16)
)
(assert_return
  (invoke "mul" (f64.const 1.79769313486e+308) (f64.const 4.94065645841e-324))
  (f64.const 8.881784197e-16)
)
(assert_return
  (invoke "mul" (f64.const -1.79769313486e+308) (f64.const -2.22507385851e-308))
  (f64.const 4.)
)
(assert_return
  (invoke "mul" (f64.const -1.79769313486e+308) (f64.const 2.22507385851e-308))
  (f64.const -4.)
)
(assert_return
  (invoke "mul" (f64.const 1.79769313486e+308) (f64.const -2.22507385851e-308))
  (f64.const -4.)
)
(assert_return
  (invoke "mul" (f64.const 1.79769313486e+308) (f64.const 2.22507385851e-308))
  (f64.const 4.)
)
(assert_return
  (invoke "mul" (f64.const -1.79769313486e+308) (f64.const -0.5))
  (f64.const 8.98846567431e+307)
)
(assert_return
  (invoke "mul" (f64.const -1.79769313486e+308) (f64.const 0.5))
  (f64.const -8.98846567431e+307)
)
(assert_return
  (invoke "mul" (f64.const 1.79769313486e+308) (f64.const -0.5))
  (f64.const -8.98846567431e+307)
)
(assert_return
  (invoke "mul" (f64.const 1.79769313486e+308) (f64.const 0.5))
  (f64.const 8.98846567431e+307)
)
(assert_return
  (invoke "mul" (f64.const -1.79769313486e+308) (f64.const -1.))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "mul" (f64.const -1.79769313486e+308) (f64.const 1.))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "mul" (f64.const 1.79769313486e+308) (f64.const -1.))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "mul" (f64.const 1.79769313486e+308) (f64.const 1.))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "mul" (f64.const -1.79769313486e+308) (f64.const -6.28318530718))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -1.79769313486e+308) (f64.const 6.28318530718))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 1.79769313486e+308) (f64.const -6.28318530718))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 1.79769313486e+308) (f64.const 6.28318530718))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -1.79769313486e+308) (f64.const -1.79769313486e+308))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -1.79769313486e+308) (f64.const 1.79769313486e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 1.79769313486e+308) (f64.const -1.79769313486e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 1.79769313486e+308) (f64.const 1.79769313486e+308))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -1.79769313486e+308) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -1.79769313486e+308) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 1.79769313486e+308) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 1.79769313486e+308) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -1.79769313486e+308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -1.79769313486e+308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -1.79769313486e+308) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -1.79769313486e+308) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 1.79769313486e+308) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 1.79769313486e+308) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 1.79769313486e+308) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 1.79769313486e+308) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan (invoke "mul" (f64.const -inf) (f64.const -0.)))
(assert_return_canonical_nan (invoke "mul" (f64.const -inf) (f64.const 0.)))
(assert_return_canonical_nan (invoke "mul" (f64.const inf) (f64.const -0.)))
(assert_return_canonical_nan (invoke "mul" (f64.const inf) (f64.const 0.)))
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const -4.94065645841e-324))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const 4.94065645841e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const -4.94065645841e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const 4.94065645841e-324))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const -2.22507385851e-308))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const 2.22507385851e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const -2.22507385851e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const 2.22507385851e-308))
  (f64.const inf)
)
(assert_return (invoke "mul" (f64.const -inf) (f64.const -0.5)) (f64.const inf))
(assert_return (invoke "mul" (f64.const -inf) (f64.const 0.5)) (f64.const -inf))
(assert_return (invoke "mul" (f64.const inf) (f64.const -0.5)) (f64.const -inf))
(assert_return (invoke "mul" (f64.const inf) (f64.const 0.5)) (f64.const inf))
(assert_return (invoke "mul" (f64.const -inf) (f64.const -1.)) (f64.const inf))
(assert_return (invoke "mul" (f64.const -inf) (f64.const 1.)) (f64.const -inf))
(assert_return (invoke "mul" (f64.const inf) (f64.const -1.)) (f64.const -inf))
(assert_return (invoke "mul" (f64.const inf) (f64.const 1.)) (f64.const inf))
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const -6.28318530718))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const 6.28318530718))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const -6.28318530718))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const 6.28318530718))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const -1.79769313486e+308))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const 1.79769313486e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const -1.79769313486e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const 1.79769313486e+308))
  (f64.const inf)
)
(assert_return (invoke "mul" (f64.const -inf) (f64.const -inf)) (f64.const inf))
(assert_return (invoke "mul" (f64.const -inf) (f64.const inf)) (f64.const -inf))
(assert_return (invoke "mul" (f64.const inf) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "mul" (f64.const inf) (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan
  (invoke "mul" (f64.const -inf) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -inf) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -inf) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -inf) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const inf) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const inf) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const inf) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const inf) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const -0.))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const -0.))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const 0.))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const 0.))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const -0.))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const -0.))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const 0.))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const 0.))
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -nan:0x8000000000000)
    (f64.const -4.94065645841e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x4000000000000)
    (f64.const -4.94065645841e-324)
  )
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const 4.94065645841e-324))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const 4.94065645841e-324))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const -4.94065645841e-324))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const -4.94065645841e-324))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const 4.94065645841e-324))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const 4.94065645841e-324))
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -nan:0x8000000000000)
    (f64.const -2.22507385851e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x4000000000000)
    (f64.const -2.22507385851e-308)
  )
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const 2.22507385851e-308))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const 2.22507385851e-308))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const -2.22507385851e-308))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const -2.22507385851e-308))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const 2.22507385851e-308))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const 2.22507385851e-308))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const -0.5))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const 0.5))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const -0.5))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const 0.5))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const -1.))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const -1.))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const 1.))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const 1.))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const -1.))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const -1.))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const 1.))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const 1.))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const -6.28318530718))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const -6.28318530718))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const 6.28318530718))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const 6.28318530718))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const -6.28318530718))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const -6.28318530718))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const 6.28318530718))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const 6.28318530718))
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -nan:0x8000000000000)
    (f64.const -1.79769313486e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x4000000000000)
    (f64.const -1.79769313486e+308)
  )
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const 1.79769313486e+308))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const 1.79769313486e+308))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const -1.79769313486e+308))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const -1.79769313486e+308))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const 1.79769313486e+308))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const 1.79769313486e+308))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const -inf))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const inf))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const inf))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const -inf))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const inf))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const inf))
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x4000000000000)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x4000000000000)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const nan:0x4000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan (invoke "div" (f64.const -0.) (f64.const -0.)))
(assert_return_canonical_nan (invoke "div" (f64.const -0.) (f64.const 0.)))
(assert_return_canonical_nan (invoke "div" (f64.const 0.) (f64.const -0.)))
(assert_return_canonical_nan (invoke "div" (f64.const 0.) (f64.const 0.)))
(assert_return
  (invoke "div" (f64.const -0.) (f64.const -4.94065645841e-324))
  (f64.const 0.)
)
(assert_return
  (invoke "div" (f64.const -0.) (f64.const 4.94065645841e-324))
  (f64.const -0.)
)
(assert_return
  (invoke "div" (f64.const 0.) (f64.const -4.94065645841e-324))
  (f64.const -0.)
)
(assert_return
  (invoke "div" (f64.const 0.) (f64.const 4.94065645841e-324))
  (f64.const 0.)
)
(assert_return
  (invoke "div" (f64.const -0.) (f64.const -2.22507385851e-308))
  (f64.const 0.)
)
(assert_return
  (invoke "div" (f64.const -0.) (f64.const 2.22507385851e-308))
  (f64.const -0.)
)
(assert_return
  (invoke "div" (f64.const 0.) (f64.const -2.22507385851e-308))
  (f64.const -0.)
)
(assert_return
  (invoke "div" (f64.const 0.) (f64.const 2.22507385851e-308))
  (f64.const 0.)
)
(assert_return (invoke "div" (f64.const -0.) (f64.const -0.5)) (f64.const 0.))
(assert_return (invoke "div" (f64.const -0.) (f64.const 0.5)) (f64.const -0.))
(assert_return (invoke "div" (f64.const 0.) (f64.const -0.5)) (f64.const -0.))
(assert_return (invoke "div" (f64.const 0.) (f64.const 0.5)) (f64.const 0.))
(assert_return (invoke "div" (f64.const -0.) (f64.const -1.)) (f64.const 0.))
(assert_return (invoke "div" (f64.const -0.) (f64.const 1.)) (f64.const -0.))
(assert_return (invoke "div" (f64.const 0.) (f64.const -1.)) (f64.const -0.))
(assert_return (invoke "div" (f64.const 0.) (f64.const 1.)) (f64.const 0.))
(assert_return
  (invoke "div" (f64.const -0.) (f64.const -6.28318530718))
  (f64.const 0.)
)
(assert_return
  (invoke "div" (f64.const -0.) (f64.const 6.28318530718))
  (f64.const -0.)
)
(assert_return
  (invoke "div" (f64.const 0.) (f64.const -6.28318530718))
  (f64.const -0.)
)
(assert_return
  (invoke "div" (f64.const 0.) (f64.const 6.28318530718))
  (f64.const 0.)
)
(assert_return
  (invoke "div" (f64.const -0.) (f64.const -1.79769313486e+308))
  (f64.const 0.)
)
(assert_return
  (invoke "div" (f64.const -0.) (f64.const 1.79769313486e+308))
  (f64.const -0.)
)
(assert_return
  (invoke "div" (f64.const 0.) (f64.const -1.79769313486e+308))
  (f64.const -0.)
)
(assert_return
  (invoke "div" (f64.const 0.) (f64.const 1.79769313486e+308))
  (f64.const 0.)
)
(assert_return (invoke "div" (f64.const -0.) (f64.const -inf)) (f64.const 0.))
(assert_return (invoke "div" (f64.const -0.) (f64.const inf)) (f64.const -0.))
(assert_return (invoke "div" (f64.const 0.) (f64.const -inf)) (f64.const -0.))
(assert_return (invoke "div" (f64.const 0.) (f64.const inf)) (f64.const 0.))
(assert_return_canonical_nan
  (invoke "div" (f64.const -0.) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -0.) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -0.) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -0.) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 0.) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 0.) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 0.) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 0.) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "div" (f64.const -4.94065645841e-324) (f64.const -0.))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -4.94065645841e-324) (f64.const 0.))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 4.94065645841e-324) (f64.const -0.))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 4.94065645841e-324) (f64.const 0.))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -4.94065645841e-324) (f64.const -4.94065645841e-324))
  (f64.const 1.)
)
(assert_return
  (invoke "div" (f64.const -4.94065645841e-324) (f64.const 4.94065645841e-324))
  (f64.const -1.)
)
(assert_return
  (invoke "div" (f64.const 4.94065645841e-324) (f64.const -4.94065645841e-324))
  (f64.const -1.)
)
(assert_return
  (invoke "div" (f64.const 4.94065645841e-324) (f64.const 4.94065645841e-324))
  (f64.const 1.)
)
(assert_return
  (invoke "div" (f64.const -4.94065645841e-324) (f64.const -2.22507385851e-308))
  (f64.const 2.22044604925e-16)
)
(assert_return
  (invoke "div" (f64.const -4.94065645841e-324) (f64.const 2.22507385851e-308))
  (f64.const -2.22044604925e-16)
)
(assert_return
  (invoke "div" (f64.const 4.94065645841e-324) (f64.const -2.22507385851e-308))
  (f64.const -2.22044604925e-16)
)
(assert_return
  (invoke "div" (f64.const 4.94065645841e-324) (f64.const 2.22507385851e-308))
  (f64.const 2.22044604925e-16)
)
(assert_return
  (invoke "div" (f64.const -4.94065645841e-324) (f64.const -0.5))
  (f64.const 9.88131291682e-324)
)
(assert_return
  (invoke "div" (f64.const -4.94065645841e-324) (f64.const 0.5))
  (f64.const -9.88131291682e-324)
)
(assert_return
  (invoke "div" (f64.const 4.94065645841e-324) (f64.const -0.5))
  (f64.const -9.88131291682e-324)
)
(assert_return
  (invoke "div" (f64.const 4.94065645841e-324) (f64.const 0.5))
  (f64.const 9.88131291682e-324)
)
(assert_return
  (invoke "div" (f64.const -4.94065645841e-324) (f64.const -1.))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "div" (f64.const -4.94065645841e-324) (f64.const 1.))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "div" (f64.const 4.94065645841e-324) (f64.const -1.))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "div" (f64.const 4.94065645841e-324) (f64.const 1.))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "div" (f64.const -4.94065645841e-324) (f64.const -6.28318530718))
  (f64.const 0.)
)
(assert_return
  (invoke "div" (f64.const -4.94065645841e-324) (f64.const 6.28318530718))
  (f64.const -0.)
)
(assert_return
  (invoke "div" (f64.const 4.94065645841e-324) (f64.const -6.28318530718))
  (f64.const -0.)
)
(assert_return
  (invoke "div" (f64.const 4.94065645841e-324) (f64.const 6.28318530718))
  (f64.const 0.)
)
(assert_return
  (invoke "div" (f64.const -4.94065645841e-324) (f64.const -1.79769313486e+308))
  (f64.const 0.)
)
(assert_return
  (invoke "div" (f64.const -4.94065645841e-324) (f64.const 1.79769313486e+308))
  (f64.const -0.)
)
(assert_return
  (invoke "div" (f64.const 4.94065645841e-324) (f64.const -1.79769313486e+308))
  (f64.const -0.)
)
(assert_return
  (invoke "div" (f64.const 4.94065645841e-324) (f64.const 1.79769313486e+308))
  (f64.const 0.)
)
(assert_return
  (invoke "div" (f64.const -4.94065645841e-324) (f64.const -inf))
  (f64.const 0.)
)
(assert_return
  (invoke "div" (f64.const -4.94065645841e-324) (f64.const inf))
  (f64.const -0.)
)
(assert_return
  (invoke "div" (f64.const 4.94065645841e-324) (f64.const -inf))
  (f64.const -0.)
)
(assert_return
  (invoke "div" (f64.const 4.94065645841e-324) (f64.const inf))
  (f64.const 0.)
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -4.94065645841e-324)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -4.94065645841e-324)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -4.94065645841e-324) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -4.94065645841e-324) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 4.94065645841e-324) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 4.94065645841e-324) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 4.94065645841e-324) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 4.94065645841e-324) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "div" (f64.const -2.22507385851e-308) (f64.const -0.))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -2.22507385851e-308) (f64.const 0.))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 2.22507385851e-308) (f64.const -0.))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 2.22507385851e-308) (f64.const 0.))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -2.22507385851e-308) (f64.const -4.94065645841e-324))
  (f64.const 4.50359962737e+15)
)
(assert_return
  (invoke "div" (f64.const -2.22507385851e-308) (f64.const 4.94065645841e-324))
  (f64.const -4.50359962737e+15)
)
(assert_return
  (invoke "div" (f64.const 2.22507385851e-308) (f64.const -4.94065645841e-324))
  (f64.const -4.50359962737e+15)
)
(assert_return
  (invoke "div" (f64.const 2.22507385851e-308) (f64.const 4.94065645841e-324))
  (f64.const 4.50359962737e+15)
)
(assert_return
  (invoke "div" (f64.const -2.22507385851e-308) (f64.const -2.22507385851e-308))
  (f64.const 1.)
)
(assert_return
  (invoke "div" (f64.const -2.22507385851e-308) (f64.const 2.22507385851e-308))
  (f64.const -1.)
)
(assert_return
  (invoke "div" (f64.const 2.22507385851e-308) (f64.const -2.22507385851e-308))
  (f64.const -1.)
)
(assert_return
  (invoke "div" (f64.const 2.22507385851e-308) (f64.const 2.22507385851e-308))
  (f64.const 1.)
)
(assert_return
  (invoke "div" (f64.const -2.22507385851e-308) (f64.const -0.5))
  (f64.const 4.45014771701e-308)
)
(assert_return
  (invoke "div" (f64.const -2.22507385851e-308) (f64.const 0.5))
  (f64.const -4.45014771701e-308)
)
(assert_return
  (invoke "div" (f64.const 2.22507385851e-308) (f64.const -0.5))
  (f64.const -4.45014771701e-308)
)
(assert_return
  (invoke "div" (f64.const 2.22507385851e-308) (f64.const 0.5))
  (f64.const 4.45014771701e-308)
)
(assert_return
  (invoke "div" (f64.const -2.22507385851e-308) (f64.const -1.))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "div" (f64.const -2.22507385851e-308) (f64.const 1.))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "div" (f64.const 2.22507385851e-308) (f64.const -1.))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "div" (f64.const 2.22507385851e-308) (f64.const 1.))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "div" (f64.const -2.22507385851e-308) (f64.const -6.28318530718))
  (f64.const 3.54131503326e-309)
)
(assert_return
  (invoke "div" (f64.const -2.22507385851e-308) (f64.const 6.28318530718))
  (f64.const -3.54131503326e-309)
)
(assert_return
  (invoke "div" (f64.const 2.22507385851e-308) (f64.const -6.28318530718))
  (f64.const -3.54131503326e-309)
)
(assert_return
  (invoke "div" (f64.const 2.22507385851e-308) (f64.const 6.28318530718))
  (f64.const 3.54131503326e-309)
)
(assert_return
  (invoke "div" (f64.const -2.22507385851e-308) (f64.const -1.79769313486e+308))
  (f64.const 0.)
)
(assert_return
  (invoke "div" (f64.const -2.22507385851e-308) (f64.const 1.79769313486e+308))
  (f64.const -0.)
)
(assert_return
  (invoke "div" (f64.const 2.22507385851e-308) (f64.const -1.79769313486e+308))
  (f64.const -0.)
)
(assert_return
  (invoke "div" (f64.const 2.22507385851e-308) (f64.const 1.79769313486e+308))
  (f64.const 0.)
)
(assert_return
  (invoke "div" (f64.const -2.22507385851e-308) (f64.const -inf))
  (f64.const 0.)
)
(assert_return
  (invoke "div" (f64.const -2.22507385851e-308) (f64.const inf))
  (f64.const -0.)
)
(assert_return
  (invoke "div" (f64.const 2.22507385851e-308) (f64.const -inf))
  (f64.const -0.)
)
(assert_return
  (invoke "div" (f64.const 2.22507385851e-308) (f64.const inf))
  (f64.const 0.)
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -2.22507385851e-308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -2.22507385851e-308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -2.22507385851e-308) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -2.22507385851e-308) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 2.22507385851e-308) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 2.22507385851e-308) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 2.22507385851e-308) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 2.22507385851e-308) (f64.const nan:0x4000000000000))
)
(assert_return (invoke "div" (f64.const -0.5) (f64.const -0.)) (f64.const inf))
(assert_return (invoke "div" (f64.const -0.5) (f64.const 0.)) (f64.const -inf))
(assert_return (invoke "div" (f64.const 0.5) (f64.const -0.)) (f64.const -inf))
(assert_return (invoke "div" (f64.const 0.5) (f64.const 0.)) (f64.const inf))
(assert_return
  (invoke "div" (f64.const -0.5) (f64.const -4.94065645841e-324))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -0.5) (f64.const 4.94065645841e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0.5) (f64.const -4.94065645841e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0.5) (f64.const 4.94065645841e-324))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -0.5) (f64.const -2.22507385851e-308))
  (f64.const 2.24711641858e+307)
)
(assert_return
  (invoke "div" (f64.const -0.5) (f64.const 2.22507385851e-308))
  (f64.const -2.24711641858e+307)
)
(assert_return
  (invoke "div" (f64.const 0.5) (f64.const -2.22507385851e-308))
  (f64.const -2.24711641858e+307)
)
(assert_return
  (invoke "div" (f64.const 0.5) (f64.const 2.22507385851e-308))
  (f64.const 2.24711641858e+307)
)
(assert_return (invoke "div" (f64.const -0.5) (f64.const -0.5)) (f64.const 1.))
(assert_return (invoke "div" (f64.const -0.5) (f64.const 0.5)) (f64.const -1.))
(assert_return (invoke "div" (f64.const 0.5) (f64.const -0.5)) (f64.const -1.))
(assert_return (invoke "div" (f64.const 0.5) (f64.const 0.5)) (f64.const 1.))
(assert_return (invoke "div" (f64.const -0.5) (f64.const -1.)) (f64.const 0.5))
(assert_return (invoke "div" (f64.const -0.5) (f64.const 1.)) (f64.const -0.5))
(assert_return (invoke "div" (f64.const 0.5) (f64.const -1.)) (f64.const -0.5))
(assert_return (invoke "div" (f64.const 0.5) (f64.const 1.)) (f64.const 0.5))
(assert_return
  (invoke "div" (f64.const -0.5) (f64.const -6.28318530718))
  (f64.const 0.0795774715459)
)
(assert_return
  (invoke "div" (f64.const -0.5) (f64.const 6.28318530718))
  (f64.const -0.0795774715459)
)
(assert_return
  (invoke "div" (f64.const 0.5) (f64.const -6.28318530718))
  (f64.const -0.0795774715459)
)
(assert_return
  (invoke "div" (f64.const 0.5) (f64.const 6.28318530718))
  (f64.const 0.0795774715459)
)
(assert_return
  (invoke "div" (f64.const -0.5) (f64.const -1.79769313486e+308))
  (f64.const 2.78134232313e-309)
)
(assert_return
  (invoke "div" (f64.const -0.5) (f64.const 1.79769313486e+308))
  (f64.const -2.78134232313e-309)
)
(assert_return
  (invoke "div" (f64.const 0.5) (f64.const -1.79769313486e+308))
  (f64.const -2.78134232313e-309)
)
(assert_return
  (invoke "div" (f64.const 0.5) (f64.const 1.79769313486e+308))
  (f64.const 2.78134232313e-309)
)
(assert_return (invoke "div" (f64.const -0.5) (f64.const -inf)) (f64.const 0.))
(assert_return (invoke "div" (f64.const -0.5) (f64.const inf)) (f64.const -0.))
(assert_return (invoke "div" (f64.const 0.5) (f64.const -inf)) (f64.const -0.))
(assert_return (invoke "div" (f64.const 0.5) (f64.const inf)) (f64.const 0.))
(assert_return_canonical_nan
  (invoke "div" (f64.const -0.5) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -0.5) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -0.5) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -0.5) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 0.5) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 0.5) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 0.5) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 0.5) (f64.const nan:0x4000000000000))
)
(assert_return (invoke "div" (f64.const -1.) (f64.const -0.)) (f64.const inf))
(assert_return (invoke "div" (f64.const -1.) (f64.const 0.)) (f64.const -inf))
(assert_return (invoke "div" (f64.const 1.) (f64.const -0.)) (f64.const -inf))
(assert_return (invoke "div" (f64.const 1.) (f64.const 0.)) (f64.const inf))
(assert_return
  (invoke "div" (f64.const -1.) (f64.const -4.94065645841e-324))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -1.) (f64.const 4.94065645841e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 1.) (f64.const -4.94065645841e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 1.) (f64.const 4.94065645841e-324))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -1.) (f64.const -2.22507385851e-308))
  (f64.const 4.49423283716e+307)
)
(assert_return
  (invoke "div" (f64.const -1.) (f64.const 2.22507385851e-308))
  (f64.const -4.49423283716e+307)
)
(assert_return
  (invoke "div" (f64.const 1.) (f64.const -2.22507385851e-308))
  (f64.const -4.49423283716e+307)
)
(assert_return
  (invoke "div" (f64.const 1.) (f64.const 2.22507385851e-308))
  (f64.const 4.49423283716e+307)
)
(assert_return (invoke "div" (f64.const -1.) (f64.const -0.5)) (f64.const 2.))
(assert_return (invoke "div" (f64.const -1.) (f64.const 0.5)) (f64.const -2.))
(assert_return (invoke "div" (f64.const 1.) (f64.const -0.5)) (f64.const -2.))
(assert_return (invoke "div" (f64.const 1.) (f64.const 0.5)) (f64.const 2.))
(assert_return (invoke "div" (f64.const -1.) (f64.const -1.)) (f64.const 1.))
(assert_return (invoke "div" (f64.const -1.) (f64.const 1.)) (f64.const -1.))
(assert_return (invoke "div" (f64.const 1.) (f64.const -1.)) (f64.const -1.))
(assert_return (invoke "div" (f64.const 1.) (f64.const 1.)) (f64.const 1.))
(assert_return
  (invoke "div" (f64.const -1.) (f64.const -6.28318530718))
  (f64.const 0.159154943092)
)
(assert_return
  (invoke "div" (f64.const -1.) (f64.const 6.28318530718))
  (f64.const -0.159154943092)
)
(assert_return
  (invoke "div" (f64.const 1.) (f64.const -6.28318530718))
  (f64.const -0.159154943092)
)
(assert_return
  (invoke "div" (f64.const 1.) (f64.const 6.28318530718))
  (f64.const 0.159154943092)
)
(assert_return
  (invoke "div" (f64.const -1.) (f64.const -1.79769313486e+308))
  (f64.const 5.56268464627e-309)
)
(assert_return
  (invoke "div" (f64.const -1.) (f64.const 1.79769313486e+308))
  (f64.const -5.56268464627e-309)
)
(assert_return
  (invoke "div" (f64.const 1.) (f64.const -1.79769313486e+308))
  (f64.const -5.56268464627e-309)
)
(assert_return
  (invoke "div" (f64.const 1.) (f64.const 1.79769313486e+308))
  (f64.const 5.56268464627e-309)
)
(assert_return (invoke "div" (f64.const -1.) (f64.const -inf)) (f64.const 0.))
(assert_return (invoke "div" (f64.const -1.) (f64.const inf)) (f64.const -0.))
(assert_return (invoke "div" (f64.const 1.) (f64.const -inf)) (f64.const -0.))
(assert_return (invoke "div" (f64.const 1.) (f64.const inf)) (f64.const 0.))
(assert_return_canonical_nan
  (invoke "div" (f64.const -1.) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -1.) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -1.) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -1.) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 1.) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 1.) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 1.) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 1.) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "div" (f64.const -6.28318530718) (f64.const -0.))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -6.28318530718) (f64.const 0.))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 6.28318530718) (f64.const -0.))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 6.28318530718) (f64.const 0.))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -6.28318530718) (f64.const -4.94065645841e-324))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -6.28318530718) (f64.const 4.94065645841e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 6.28318530718) (f64.const -4.94065645841e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 6.28318530718) (f64.const 4.94065645841e-324))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -6.28318530718) (f64.const -2.22507385851e-308))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -6.28318530718) (f64.const 2.22507385851e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 6.28318530718) (f64.const -2.22507385851e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 6.28318530718) (f64.const 2.22507385851e-308))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -6.28318530718) (f64.const -0.5))
  (f64.const 12.5663706144)
)
(assert_return
  (invoke "div" (f64.const -6.28318530718) (f64.const 0.5))
  (f64.const -12.5663706144)
)
(assert_return
  (invoke "div" (f64.const 6.28318530718) (f64.const -0.5))
  (f64.const -12.5663706144)
)
(assert_return
  (invoke "div" (f64.const 6.28318530718) (f64.const 0.5))
  (f64.const 12.5663706144)
)
(assert_return
  (invoke "div" (f64.const -6.28318530718) (f64.const -1.))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "div" (f64.const -6.28318530718) (f64.const 1.))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "div" (f64.const 6.28318530718) (f64.const -1.))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "div" (f64.const 6.28318530718) (f64.const 1.))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "div" (f64.const -6.28318530718) (f64.const -6.28318530718))
  (f64.const 1.)
)
(assert_return
  (invoke "div" (f64.const -6.28318530718) (f64.const 6.28318530718))
  (f64.const -1.)
)
(assert_return
  (invoke "div" (f64.const 6.28318530718) (f64.const -6.28318530718))
  (f64.const -1.)
)
(assert_return
  (invoke "div" (f64.const 6.28318530718) (f64.const 6.28318530718))
  (f64.const 1.)
)
(assert_return
  (invoke "div" (f64.const -6.28318530718) (f64.const -1.79769313486e+308))
  (f64.const 3.49513784379e-308)
)
(assert_return
  (invoke "div" (f64.const -6.28318530718) (f64.const 1.79769313486e+308))
  (f64.const -3.49513784379e-308)
)
(assert_return
  (invoke "div" (f64.const 6.28318530718) (f64.const -1.79769313486e+308))
  (f64.const -3.49513784379e-308)
)
(assert_return
  (invoke "div" (f64.const 6.28318530718) (f64.const 1.79769313486e+308))
  (f64.const 3.49513784379e-308)
)
(assert_return
  (invoke "div" (f64.const -6.28318530718) (f64.const -inf))
  (f64.const 0.)
)
(assert_return
  (invoke "div" (f64.const -6.28318530718) (f64.const inf))
  (f64.const -0.)
)
(assert_return
  (invoke "div" (f64.const 6.28318530718) (f64.const -inf))
  (f64.const -0.)
)
(assert_return
  (invoke "div" (f64.const 6.28318530718) (f64.const inf))
  (f64.const 0.)
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -6.28318530718) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -6.28318530718) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -6.28318530718) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -6.28318530718) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 6.28318530718) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 6.28318530718) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 6.28318530718) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 6.28318530718) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "div" (f64.const -1.79769313486e+308) (f64.const -0.))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -1.79769313486e+308) (f64.const 0.))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 1.79769313486e+308) (f64.const -0.))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 1.79769313486e+308) (f64.const 0.))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -1.79769313486e+308) (f64.const -4.94065645841e-324))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -1.79769313486e+308) (f64.const 4.94065645841e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 1.79769313486e+308) (f64.const -4.94065645841e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 1.79769313486e+308) (f64.const 4.94065645841e-324))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -1.79769313486e+308) (f64.const -2.22507385851e-308))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -1.79769313486e+308) (f64.const 2.22507385851e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 1.79769313486e+308) (f64.const -2.22507385851e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 1.79769313486e+308) (f64.const 2.22507385851e-308))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -1.79769313486e+308) (f64.const -0.5))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -1.79769313486e+308) (f64.const 0.5))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 1.79769313486e+308) (f64.const -0.5))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 1.79769313486e+308) (f64.const 0.5))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -1.79769313486e+308) (f64.const -1.))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "div" (f64.const -1.79769313486e+308) (f64.const 1.))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "div" (f64.const 1.79769313486e+308) (f64.const -1.))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "div" (f64.const 1.79769313486e+308) (f64.const 1.))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "div" (f64.const -1.79769313486e+308) (f64.const -6.28318530718))
  (f64.const 2.86111748576e+307)
)
(assert_return
  (invoke "div" (f64.const -1.79769313486e+308) (f64.const 6.28318530718))
  (f64.const -2.86111748576e+307)
)
(assert_return
  (invoke "div" (f64.const 1.79769313486e+308) (f64.const -6.28318530718))
  (f64.const -2.86111748576e+307)
)
(assert_return
  (invoke "div" (f64.const 1.79769313486e+308) (f64.const 6.28318530718))
  (f64.const 2.86111748576e+307)
)
(assert_return
  (invoke "div" (f64.const -1.79769313486e+308) (f64.const -1.79769313486e+308))
  (f64.const 1.)
)
(assert_return
  (invoke "div" (f64.const -1.79769313486e+308) (f64.const 1.79769313486e+308))
  (f64.const -1.)
)
(assert_return
  (invoke "div" (f64.const 1.79769313486e+308) (f64.const -1.79769313486e+308))
  (f64.const -1.)
)
(assert_return
  (invoke "div" (f64.const 1.79769313486e+308) (f64.const 1.79769313486e+308))
  (f64.const 1.)
)
(assert_return
  (invoke "div" (f64.const -1.79769313486e+308) (f64.const -inf))
  (f64.const 0.)
)
(assert_return
  (invoke "div" (f64.const -1.79769313486e+308) (f64.const inf))
  (f64.const -0.)
)
(assert_return
  (invoke "div" (f64.const 1.79769313486e+308) (f64.const -inf))
  (f64.const -0.)
)
(assert_return
  (invoke "div" (f64.const 1.79769313486e+308) (f64.const inf))
  (f64.const 0.)
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -1.79769313486e+308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -1.79769313486e+308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -1.79769313486e+308) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -1.79769313486e+308) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 1.79769313486e+308) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 1.79769313486e+308) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 1.79769313486e+308) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 1.79769313486e+308) (f64.const nan:0x4000000000000))
)
(assert_return (invoke "div" (f64.const -inf) (f64.const -0.)) (f64.const inf))
(assert_return (invoke "div" (f64.const -inf) (f64.const 0.)) (f64.const -inf))
(assert_return (invoke "div" (f64.const inf) (f64.const -0.)) (f64.const -inf))
(assert_return (invoke "div" (f64.const inf) (f64.const 0.)) (f64.const inf))
(assert_return
  (invoke "div" (f64.const -inf) (f64.const -4.94065645841e-324))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const 4.94065645841e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const -4.94065645841e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const 4.94065645841e-324))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const -2.22507385851e-308))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const 2.22507385851e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const -2.22507385851e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const 2.22507385851e-308))
  (f64.const inf)
)
(assert_return (invoke "div" (f64.const -inf) (f64.const -0.5)) (f64.const inf))
(assert_return (invoke "div" (f64.const -inf) (f64.const 0.5)) (f64.const -inf))
(assert_return (invoke "div" (f64.const inf) (f64.const -0.5)) (f64.const -inf))
(assert_return (invoke "div" (f64.const inf) (f64.const 0.5)) (f64.const inf))
(assert_return (invoke "div" (f64.const -inf) (f64.const -1.)) (f64.const inf))
(assert_return (invoke "div" (f64.const -inf) (f64.const 1.)) (f64.const -inf))
(assert_return (invoke "div" (f64.const inf) (f64.const -1.)) (f64.const -inf))
(assert_return (invoke "div" (f64.const inf) (f64.const 1.)) (f64.const inf))
(assert_return
  (invoke "div" (f64.const -inf) (f64.const -6.28318530718))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const 6.28318530718))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const -6.28318530718))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const 6.28318530718))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const -1.79769313486e+308))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const 1.79769313486e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const -1.79769313486e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const 1.79769313486e+308))
  (f64.const inf)
)
(assert_return_canonical_nan (invoke "div" (f64.const -inf) (f64.const -inf)))
(assert_return_canonical_nan (invoke "div" (f64.const -inf) (f64.const inf)))
(assert_return_canonical_nan (invoke "div" (f64.const inf) (f64.const -inf)))
(assert_return_canonical_nan (invoke "div" (f64.const inf) (f64.const inf)))
(assert_return_canonical_nan
  (invoke "div" (f64.const -inf) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -inf) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -inf) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -inf) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const inf) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const inf) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const inf) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const inf) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const -0.))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const -0.))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const 0.))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const 0.))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const -0.))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const -0.))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const 0.))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const 0.))
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -nan:0x8000000000000)
    (f64.const -4.94065645841e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x4000000000000)
    (f64.const -4.94065645841e-324)
  )
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const 4.94065645841e-324))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const 4.94065645841e-324))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const -4.94065645841e-324))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const -4.94065645841e-324))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const 4.94065645841e-324))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const 4.94065645841e-324))
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -nan:0x8000000000000)
    (f64.const -2.22507385851e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x4000000000000)
    (f64.const -2.22507385851e-308)
  )
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const 2.22507385851e-308))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const 2.22507385851e-308))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const -2.22507385851e-308))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const -2.22507385851e-308))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const 2.22507385851e-308))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const 2.22507385851e-308))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const -0.5))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const 0.5))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const -0.5))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const 0.5))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const -1.))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const -1.))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const 1.))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const 1.))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const -1.))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const -1.))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const 1.))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const 1.))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const -6.28318530718))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const -6.28318530718))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const 6.28318530718))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const 6.28318530718))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const -6.28318530718))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const -6.28318530718))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const 6.28318530718))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const 6.28318530718))
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -nan:0x8000000000000)
    (f64.const -1.79769313486e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x4000000000000)
    (f64.const -1.79769313486e+308)
  )
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const 1.79769313486e+308))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const 1.79769313486e+308))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const -1.79769313486e+308))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const -1.79769313486e+308))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const 1.79769313486e+308))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const 1.79769313486e+308))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const -inf))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const inf))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const inf))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const -inf))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const inf))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const inf))
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x4000000000000)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x4000000000000)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const nan:0x4000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const nan:0x4000000000000))
)
(assert_return (invoke "min" (f64.const -0.) (f64.const -0.)) (f64.const -0.))
(assert_return (invoke "min" (f64.const -0.) (f64.const 0.)) (f64.const -0.))
(assert_return (invoke "min" (f64.const 0.) (f64.const -0.)) (f64.const -0.))
(assert_return (invoke "min" (f64.const 0.) (f64.const 0.)) (f64.const 0.))
(assert_return
  (invoke "min" (f64.const -0.) (f64.const -4.94065645841e-324))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const -0.) (f64.const 4.94065645841e-324))
  (f64.const -0.)
)
(assert_return
  (invoke "min" (f64.const 0.) (f64.const -4.94065645841e-324))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const 0.) (f64.const 4.94065645841e-324))
  (f64.const 0.)
)
(assert_return
  (invoke "min" (f64.const -0.) (f64.const -2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const -0.) (f64.const 2.22507385851e-308))
  (f64.const -0.)
)
(assert_return
  (invoke "min" (f64.const 0.) (f64.const -2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const 0.) (f64.const 2.22507385851e-308))
  (f64.const 0.)
)
(assert_return (invoke "min" (f64.const -0.) (f64.const -0.5)) (f64.const -0.5))
(assert_return (invoke "min" (f64.const -0.) (f64.const 0.5)) (f64.const -0.))
(assert_return (invoke "min" (f64.const 0.) (f64.const -0.5)) (f64.const -0.5))
(assert_return (invoke "min" (f64.const 0.) (f64.const 0.5)) (f64.const 0.))
(assert_return (invoke "min" (f64.const -0.) (f64.const -1.)) (f64.const -1.))
(assert_return (invoke "min" (f64.const -0.) (f64.const 1.)) (f64.const -0.))
(assert_return (invoke "min" (f64.const 0.) (f64.const -1.)) (f64.const -1.))
(assert_return (invoke "min" (f64.const 0.) (f64.const 1.)) (f64.const 0.))
(assert_return
  (invoke "min" (f64.const -0.) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const -0.) (f64.const 6.28318530718))
  (f64.const -0.)
)
(assert_return
  (invoke "min" (f64.const 0.) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const 0.) (f64.const 6.28318530718))
  (f64.const 0.)
)
(assert_return
  (invoke "min" (f64.const -0.) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const -0.) (f64.const 1.79769313486e+308))
  (f64.const -0.)
)
(assert_return
  (invoke "min" (f64.const 0.) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const 0.) (f64.const 1.79769313486e+308))
  (f64.const 0.)
)
(assert_return (invoke "min" (f64.const -0.) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "min" (f64.const -0.) (f64.const inf)) (f64.const -0.))
(assert_return (invoke "min" (f64.const 0.) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "min" (f64.const 0.) (f64.const inf)) (f64.const 0.))
(assert_return_canonical_nan
  (invoke "min" (f64.const -0.) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -0.) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -0.) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -0.) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 0.) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 0.) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 0.) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 0.) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "min" (f64.const -4.94065645841e-324) (f64.const -0.))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const -4.94065645841e-324) (f64.const 0.))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const 4.94065645841e-324) (f64.const -0.))
  (f64.const -0.)
)
(assert_return
  (invoke "min" (f64.const 4.94065645841e-324) (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "min" (f64.const -4.94065645841e-324) (f64.const -4.94065645841e-324))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const -4.94065645841e-324) (f64.const 4.94065645841e-324))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const 4.94065645841e-324) (f64.const -4.94065645841e-324))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const 4.94065645841e-324) (f64.const 4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const -4.94065645841e-324) (f64.const -2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const -4.94065645841e-324) (f64.const 2.22507385851e-308))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const 4.94065645841e-324) (f64.const -2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const 4.94065645841e-324) (f64.const 2.22507385851e-308))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const -4.94065645841e-324) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "min" (f64.const -4.94065645841e-324) (f64.const 0.5))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const 4.94065645841e-324) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "min" (f64.const 4.94065645841e-324) (f64.const 0.5))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const -4.94065645841e-324) (f64.const -1.))
  (f64.const -1.)
)
(assert_return
  (invoke "min" (f64.const -4.94065645841e-324) (f64.const 1.))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const 4.94065645841e-324) (f64.const -1.))
  (f64.const -1.)
)
(assert_return
  (invoke "min" (f64.const 4.94065645841e-324) (f64.const 1.))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const -4.94065645841e-324) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const -4.94065645841e-324) (f64.const 6.28318530718))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const 4.94065645841e-324) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const 4.94065645841e-324) (f64.const 6.28318530718))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const -4.94065645841e-324) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const -4.94065645841e-324) (f64.const 1.79769313486e+308))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const 4.94065645841e-324) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const 4.94065645841e-324) (f64.const 1.79769313486e+308))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const -4.94065645841e-324) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -4.94065645841e-324) (f64.const inf))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const 4.94065645841e-324) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const 4.94065645841e-324) (f64.const inf))
  (f64.const 4.94065645841e-324)
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -4.94065645841e-324)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -4.94065645841e-324)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -4.94065645841e-324) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -4.94065645841e-324) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 4.94065645841e-324) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 4.94065645841e-324) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 4.94065645841e-324) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 4.94065645841e-324) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "min" (f64.const -2.22507385851e-308) (f64.const -0.))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const -2.22507385851e-308) (f64.const 0.))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const 2.22507385851e-308) (f64.const -0.))
  (f64.const -0.)
)
(assert_return
  (invoke "min" (f64.const 2.22507385851e-308) (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "min" (f64.const -2.22507385851e-308) (f64.const -4.94065645841e-324))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const -2.22507385851e-308) (f64.const 4.94065645841e-324))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const 2.22507385851e-308) (f64.const -4.94065645841e-324))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const 2.22507385851e-308) (f64.const 4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const -2.22507385851e-308) (f64.const -2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const -2.22507385851e-308) (f64.const 2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const 2.22507385851e-308) (f64.const -2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const 2.22507385851e-308) (f64.const 2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const -2.22507385851e-308) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "min" (f64.const -2.22507385851e-308) (f64.const 0.5))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const 2.22507385851e-308) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "min" (f64.const 2.22507385851e-308) (f64.const 0.5))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const -2.22507385851e-308) (f64.const -1.))
  (f64.const -1.)
)
(assert_return
  (invoke "min" (f64.const -2.22507385851e-308) (f64.const 1.))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const 2.22507385851e-308) (f64.const -1.))
  (f64.const -1.)
)
(assert_return
  (invoke "min" (f64.const 2.22507385851e-308) (f64.const 1.))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const -2.22507385851e-308) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const -2.22507385851e-308) (f64.const 6.28318530718))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const 2.22507385851e-308) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const 2.22507385851e-308) (f64.const 6.28318530718))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const -2.22507385851e-308) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const -2.22507385851e-308) (f64.const 1.79769313486e+308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const 2.22507385851e-308) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const 2.22507385851e-308) (f64.const 1.79769313486e+308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const -2.22507385851e-308) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -2.22507385851e-308) (f64.const inf))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const 2.22507385851e-308) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const 2.22507385851e-308) (f64.const inf))
  (f64.const 2.22507385851e-308)
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -2.22507385851e-308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -2.22507385851e-308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -2.22507385851e-308) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -2.22507385851e-308) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 2.22507385851e-308) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 2.22507385851e-308) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 2.22507385851e-308) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 2.22507385851e-308) (f64.const nan:0x4000000000000))
)
(assert_return (invoke "min" (f64.const -0.5) (f64.const -0.)) (f64.const -0.5))
(assert_return (invoke "min" (f64.const -0.5) (f64.const 0.)) (f64.const -0.5))
(assert_return (invoke "min" (f64.const 0.5) (f64.const -0.)) (f64.const -0.))
(assert_return (invoke "min" (f64.const 0.5) (f64.const 0.)) (f64.const 0.))
(assert_return
  (invoke "min" (f64.const -0.5) (f64.const -4.94065645841e-324))
  (f64.const -0.5)
)
(assert_return
  (invoke "min" (f64.const -0.5) (f64.const 4.94065645841e-324))
  (f64.const -0.5)
)
(assert_return
  (invoke "min" (f64.const 0.5) (f64.const -4.94065645841e-324))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const 0.5) (f64.const 4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const -0.5) (f64.const -2.22507385851e-308))
  (f64.const -0.5)
)
(assert_return
  (invoke "min" (f64.const -0.5) (f64.const 2.22507385851e-308))
  (f64.const -0.5)
)
(assert_return
  (invoke "min" (f64.const 0.5) (f64.const -2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const 0.5) (f64.const 2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const -0.5) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return (invoke "min" (f64.const -0.5) (f64.const 0.5)) (f64.const -0.5))
(assert_return (invoke "min" (f64.const 0.5) (f64.const -0.5)) (f64.const -0.5))
(assert_return (invoke "min" (f64.const 0.5) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "min" (f64.const -0.5) (f64.const -1.)) (f64.const -1.))
(assert_return (invoke "min" (f64.const -0.5) (f64.const 1.)) (f64.const -0.5))
(assert_return (invoke "min" (f64.const 0.5) (f64.const -1.)) (f64.const -1.))
(assert_return (invoke "min" (f64.const 0.5) (f64.const 1.)) (f64.const 0.5))
(assert_return
  (invoke "min" (f64.const -0.5) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const -0.5) (f64.const 6.28318530718))
  (f64.const -0.5)
)
(assert_return
  (invoke "min" (f64.const 0.5) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const 0.5) (f64.const 6.28318530718))
  (f64.const 0.5)
)
(assert_return
  (invoke "min" (f64.const -0.5) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const -0.5) (f64.const 1.79769313486e+308))
  (f64.const -0.5)
)
(assert_return
  (invoke "min" (f64.const 0.5) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const 0.5) (f64.const 1.79769313486e+308))
  (f64.const 0.5)
)
(assert_return
  (invoke "min" (f64.const -0.5) (f64.const -inf))
  (f64.const -inf)
)
(assert_return (invoke "min" (f64.const -0.5) (f64.const inf)) (f64.const -0.5))
(assert_return (invoke "min" (f64.const 0.5) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "min" (f64.const 0.5) (f64.const inf)) (f64.const 0.5))
(assert_return_canonical_nan
  (invoke "min" (f64.const -0.5) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -0.5) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -0.5) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -0.5) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 0.5) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 0.5) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 0.5) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 0.5) (f64.const nan:0x4000000000000))
)
(assert_return (invoke "min" (f64.const -1.) (f64.const -0.)) (f64.const -1.))
(assert_return (invoke "min" (f64.const -1.) (f64.const 0.)) (f64.const -1.))
(assert_return (invoke "min" (f64.const 1.) (f64.const -0.)) (f64.const -0.))
(assert_return (invoke "min" (f64.const 1.) (f64.const 0.)) (f64.const 0.))
(assert_return
  (invoke "min" (f64.const -1.) (f64.const -4.94065645841e-324))
  (f64.const -1.)
)
(assert_return
  (invoke "min" (f64.const -1.) (f64.const 4.94065645841e-324))
  (f64.const -1.)
)
(assert_return
  (invoke "min" (f64.const 1.) (f64.const -4.94065645841e-324))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const 1.) (f64.const 4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const -1.) (f64.const -2.22507385851e-308))
  (f64.const -1.)
)
(assert_return
  (invoke "min" (f64.const -1.) (f64.const 2.22507385851e-308))
  (f64.const -1.)
)
(assert_return
  (invoke "min" (f64.const 1.) (f64.const -2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const 1.) (f64.const 2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return (invoke "min" (f64.const -1.) (f64.const -0.5)) (f64.const -1.))
(assert_return (invoke "min" (f64.const -1.) (f64.const 0.5)) (f64.const -1.))
(assert_return (invoke "min" (f64.const 1.) (f64.const -0.5)) (f64.const -0.5))
(assert_return (invoke "min" (f64.const 1.) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "min" (f64.const -1.) (f64.const -1.)) (f64.const -1.))
(assert_return (invoke "min" (f64.const -1.) (f64.const 1.)) (f64.const -1.))
(assert_return (invoke "min" (f64.const 1.) (f64.const -1.)) (f64.const -1.))
(assert_return (invoke "min" (f64.const 1.) (f64.const 1.)) (f64.const 1.))
(assert_return
  (invoke "min" (f64.const -1.) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const -1.) (f64.const 6.28318530718))
  (f64.const -1.)
)
(assert_return
  (invoke "min" (f64.const 1.) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const 1.) (f64.const 6.28318530718))
  (f64.const 1.)
)
(assert_return
  (invoke "min" (f64.const -1.) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const -1.) (f64.const 1.79769313486e+308))
  (f64.const -1.)
)
(assert_return
  (invoke "min" (f64.const 1.) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const 1.) (f64.const 1.79769313486e+308))
  (f64.const 1.)
)
(assert_return (invoke "min" (f64.const -1.) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "min" (f64.const -1.) (f64.const inf)) (f64.const -1.))
(assert_return (invoke "min" (f64.const 1.) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "min" (f64.const 1.) (f64.const inf)) (f64.const 1.))
(assert_return_canonical_nan
  (invoke "min" (f64.const -1.) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -1.) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -1.) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -1.) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 1.) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 1.) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 1.) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 1.) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "min" (f64.const -6.28318530718) (f64.const -0.))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const -6.28318530718) (f64.const 0.))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const 6.28318530718) (f64.const -0.))
  (f64.const -0.)
)
(assert_return
  (invoke "min" (f64.const 6.28318530718) (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "min" (f64.const -6.28318530718) (f64.const -4.94065645841e-324))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const -6.28318530718) (f64.const 4.94065645841e-324))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const 6.28318530718) (f64.const -4.94065645841e-324))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const 6.28318530718) (f64.const 4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const -6.28318530718) (f64.const -2.22507385851e-308))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const -6.28318530718) (f64.const 2.22507385851e-308))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const 6.28318530718) (f64.const -2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const 6.28318530718) (f64.const 2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const -6.28318530718) (f64.const -0.5))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const -6.28318530718) (f64.const 0.5))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const 6.28318530718) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "min" (f64.const 6.28318530718) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "min" (f64.const -6.28318530718) (f64.const -1.))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const -6.28318530718) (f64.const 1.))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const 6.28318530718) (f64.const -1.))
  (f64.const -1.)
)
(assert_return
  (invoke "min" (f64.const 6.28318530718) (f64.const 1.))
  (f64.const 1.)
)
(assert_return
  (invoke "min" (f64.const -6.28318530718) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const -6.28318530718) (f64.const 6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const 6.28318530718) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const 6.28318530718) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "min" (f64.const -6.28318530718) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const -6.28318530718) (f64.const 1.79769313486e+308))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const 6.28318530718) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const 6.28318530718) (f64.const 1.79769313486e+308))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "min" (f64.const -6.28318530718) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -6.28318530718) (f64.const inf))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const 6.28318530718) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const 6.28318530718) (f64.const inf))
  (f64.const 6.28318530718)
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -6.28318530718) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -6.28318530718) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -6.28318530718) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -6.28318530718) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 6.28318530718) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 6.28318530718) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 6.28318530718) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 6.28318530718) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "min" (f64.const -1.79769313486e+308) (f64.const -0.))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const -1.79769313486e+308) (f64.const 0.))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const 1.79769313486e+308) (f64.const -0.))
  (f64.const -0.)
)
(assert_return
  (invoke "min" (f64.const 1.79769313486e+308) (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "min" (f64.const -1.79769313486e+308) (f64.const -4.94065645841e-324))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const -1.79769313486e+308) (f64.const 4.94065645841e-324))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const 1.79769313486e+308) (f64.const -4.94065645841e-324))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const 1.79769313486e+308) (f64.const 4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const -1.79769313486e+308) (f64.const -2.22507385851e-308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const -1.79769313486e+308) (f64.const 2.22507385851e-308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const 1.79769313486e+308) (f64.const -2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const 1.79769313486e+308) (f64.const 2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const -1.79769313486e+308) (f64.const -0.5))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const -1.79769313486e+308) (f64.const 0.5))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const 1.79769313486e+308) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "min" (f64.const 1.79769313486e+308) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "min" (f64.const -1.79769313486e+308) (f64.const -1.))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const -1.79769313486e+308) (f64.const 1.))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const 1.79769313486e+308) (f64.const -1.))
  (f64.const -1.)
)
(assert_return
  (invoke "min" (f64.const 1.79769313486e+308) (f64.const 1.))
  (f64.const 1.)
)
(assert_return
  (invoke "min" (f64.const -1.79769313486e+308) (f64.const -6.28318530718))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const -1.79769313486e+308) (f64.const 6.28318530718))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const 1.79769313486e+308) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const 1.79769313486e+308) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "min" (f64.const -1.79769313486e+308) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const -1.79769313486e+308) (f64.const 1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const 1.79769313486e+308) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const 1.79769313486e+308) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const -1.79769313486e+308) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -1.79769313486e+308) (f64.const inf))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const 1.79769313486e+308) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const 1.79769313486e+308) (f64.const inf))
  (f64.const 1.79769313486e+308)
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -1.79769313486e+308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -1.79769313486e+308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -1.79769313486e+308) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -1.79769313486e+308) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 1.79769313486e+308) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 1.79769313486e+308) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 1.79769313486e+308) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 1.79769313486e+308) (f64.const nan:0x4000000000000))
)
(assert_return (invoke "min" (f64.const -inf) (f64.const -0.)) (f64.const -inf))
(assert_return (invoke "min" (f64.const -inf) (f64.const 0.)) (f64.const -inf))
(assert_return (invoke "min" (f64.const inf) (f64.const -0.)) (f64.const -0.))
(assert_return (invoke "min" (f64.const inf) (f64.const 0.)) (f64.const 0.))
(assert_return
  (invoke "min" (f64.const -inf) (f64.const -4.94065645841e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const 4.94065645841e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const -4.94065645841e-324))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const 4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const -2.22507385851e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const 2.22507385851e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const -2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const 2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const -0.5))
  (f64.const -inf)
)
(assert_return (invoke "min" (f64.const -inf) (f64.const 0.5)) (f64.const -inf))
(assert_return (invoke "min" (f64.const inf) (f64.const -0.5)) (f64.const -0.5))
(assert_return (invoke "min" (f64.const inf) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "min" (f64.const -inf) (f64.const -1.)) (f64.const -inf))
(assert_return (invoke "min" (f64.const -inf) (f64.const 1.)) (f64.const -inf))
(assert_return (invoke "min" (f64.const inf) (f64.const -1.)) (f64.const -1.))
(assert_return (invoke "min" (f64.const inf) (f64.const 1.)) (f64.const 1.))
(assert_return
  (invoke "min" (f64.const -inf) (f64.const -6.28318530718))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const 6.28318530718))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const -1.79769313486e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const 1.79769313486e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const -inf))
  (f64.const -inf)
)
(assert_return (invoke "min" (f64.const -inf) (f64.const inf)) (f64.const -inf))
(assert_return (invoke "min" (f64.const inf) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "min" (f64.const inf) (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan
  (invoke "min" (f64.const -inf) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -inf) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -inf) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -inf) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const inf) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const inf) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const inf) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const inf) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const -0.))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const -0.))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const 0.))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const 0.))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const -0.))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const -0.))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const 0.))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const 0.))
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -nan:0x8000000000000)
    (f64.const -4.94065645841e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x4000000000000)
    (f64.const -4.94065645841e-324)
  )
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const 4.94065645841e-324))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const 4.94065645841e-324))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const -4.94065645841e-324))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const -4.94065645841e-324))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const 4.94065645841e-324))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const 4.94065645841e-324))
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -nan:0x8000000000000)
    (f64.const -2.22507385851e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x4000000000000)
    (f64.const -2.22507385851e-308)
  )
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const 2.22507385851e-308))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const 2.22507385851e-308))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const -2.22507385851e-308))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const -2.22507385851e-308))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const 2.22507385851e-308))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const 2.22507385851e-308))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const -0.5))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const 0.5))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const -0.5))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const 0.5))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const -1.))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const -1.))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const 1.))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const 1.))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const -1.))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const -1.))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const 1.))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const 1.))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const -6.28318530718))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const -6.28318530718))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const 6.28318530718))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const 6.28318530718))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const -6.28318530718))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const -6.28318530718))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const 6.28318530718))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const 6.28318530718))
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -nan:0x8000000000000)
    (f64.const -1.79769313486e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x4000000000000)
    (f64.const -1.79769313486e+308)
  )
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const 1.79769313486e+308))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const 1.79769313486e+308))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const -1.79769313486e+308))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const -1.79769313486e+308))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const 1.79769313486e+308))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const 1.79769313486e+308))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const -inf))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const inf))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const inf))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const -inf))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const inf))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const inf))
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x4000000000000)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x4000000000000)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const nan:0x4000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const nan:0x4000000000000))
)
(assert_return (invoke "max" (f64.const -0.) (f64.const -0.)) (f64.const -0.))
(assert_return (invoke "max" (f64.const -0.) (f64.const 0.)) (f64.const 0.))
(assert_return (invoke "max" (f64.const 0.) (f64.const -0.)) (f64.const 0.))
(assert_return (invoke "max" (f64.const 0.) (f64.const 0.)) (f64.const 0.))
(assert_return
  (invoke "max" (f64.const -0.) (f64.const -4.94065645841e-324))
  (f64.const -0.)
)
(assert_return
  (invoke "max" (f64.const -0.) (f64.const 4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const 0.) (f64.const -4.94065645841e-324))
  (f64.const 0.)
)
(assert_return
  (invoke "max" (f64.const 0.) (f64.const 4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const -0.) (f64.const -2.22507385851e-308))
  (f64.const -0.)
)
(assert_return
  (invoke "max" (f64.const -0.) (f64.const 2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const 0.) (f64.const -2.22507385851e-308))
  (f64.const 0.)
)
(assert_return
  (invoke "max" (f64.const 0.) (f64.const 2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return (invoke "max" (f64.const -0.) (f64.const -0.5)) (f64.const -0.))
(assert_return (invoke "max" (f64.const -0.) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "max" (f64.const 0.) (f64.const -0.5)) (f64.const 0.))
(assert_return (invoke "max" (f64.const 0.) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "max" (f64.const -0.) (f64.const -1.)) (f64.const -0.))
(assert_return (invoke "max" (f64.const -0.) (f64.const 1.)) (f64.const 1.))
(assert_return (invoke "max" (f64.const 0.) (f64.const -1.)) (f64.const 0.))
(assert_return (invoke "max" (f64.const 0.) (f64.const 1.)) (f64.const 1.))
(assert_return
  (invoke "max" (f64.const -0.) (f64.const -6.28318530718))
  (f64.const -0.)
)
(assert_return
  (invoke "max" (f64.const -0.) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const 0.) (f64.const -6.28318530718))
  (f64.const 0.)
)
(assert_return
  (invoke "max" (f64.const 0.) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const -0.) (f64.const -1.79769313486e+308))
  (f64.const -0.)
)
(assert_return
  (invoke "max" (f64.const -0.) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const 0.) (f64.const -1.79769313486e+308))
  (f64.const 0.)
)
(assert_return
  (invoke "max" (f64.const 0.) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return (invoke "max" (f64.const -0.) (f64.const -inf)) (f64.const -0.))
(assert_return (invoke "max" (f64.const -0.) (f64.const inf)) (f64.const inf))
(assert_return (invoke "max" (f64.const 0.) (f64.const -inf)) (f64.const 0.))
(assert_return (invoke "max" (f64.const 0.) (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan
  (invoke "max" (f64.const -0.) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -0.) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -0.) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -0.) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 0.) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 0.) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 0.) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 0.) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "max" (f64.const -4.94065645841e-324) (f64.const -0.))
  (f64.const -0.)
)
(assert_return
  (invoke "max" (f64.const -4.94065645841e-324) (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "max" (f64.const 4.94065645841e-324) (f64.const -0.))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const 4.94065645841e-324) (f64.const 0.))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const -4.94065645841e-324) (f64.const -4.94065645841e-324))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const -4.94065645841e-324) (f64.const 4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const 4.94065645841e-324) (f64.const -4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const 4.94065645841e-324) (f64.const 4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const -4.94065645841e-324) (f64.const -2.22507385851e-308))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const -4.94065645841e-324) (f64.const 2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const 4.94065645841e-324) (f64.const -2.22507385851e-308))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const 4.94065645841e-324) (f64.const 2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const -4.94065645841e-324) (f64.const -0.5))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const -4.94065645841e-324) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "max" (f64.const 4.94065645841e-324) (f64.const -0.5))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const 4.94065645841e-324) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "max" (f64.const -4.94065645841e-324) (f64.const -1.))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const -4.94065645841e-324) (f64.const 1.))
  (f64.const 1.)
)
(assert_return
  (invoke "max" (f64.const 4.94065645841e-324) (f64.const -1.))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const 4.94065645841e-324) (f64.const 1.))
  (f64.const 1.)
)
(assert_return
  (invoke "max" (f64.const -4.94065645841e-324) (f64.const -6.28318530718))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const -4.94065645841e-324) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const 4.94065645841e-324) (f64.const -6.28318530718))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const 4.94065645841e-324) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const -4.94065645841e-324) (f64.const -1.79769313486e+308))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const -4.94065645841e-324) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const 4.94065645841e-324) (f64.const -1.79769313486e+308))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const 4.94065645841e-324) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const -4.94065645841e-324) (f64.const -inf))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const -4.94065645841e-324) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const 4.94065645841e-324) (f64.const -inf))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const 4.94065645841e-324) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -4.94065645841e-324)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -4.94065645841e-324)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -4.94065645841e-324) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -4.94065645841e-324) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 4.94065645841e-324) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 4.94065645841e-324) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 4.94065645841e-324) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 4.94065645841e-324) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "max" (f64.const -2.22507385851e-308) (f64.const -0.))
  (f64.const -0.)
)
(assert_return
  (invoke "max" (f64.const -2.22507385851e-308) (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "max" (f64.const 2.22507385851e-308) (f64.const -0.))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const 2.22507385851e-308) (f64.const 0.))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const -2.22507385851e-308) (f64.const -4.94065645841e-324))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const -2.22507385851e-308) (f64.const 4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const 2.22507385851e-308) (f64.const -4.94065645841e-324))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const 2.22507385851e-308) (f64.const 4.94065645841e-324))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const -2.22507385851e-308) (f64.const -2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const -2.22507385851e-308) (f64.const 2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const 2.22507385851e-308) (f64.const -2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const 2.22507385851e-308) (f64.const 2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const -2.22507385851e-308) (f64.const -0.5))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const -2.22507385851e-308) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "max" (f64.const 2.22507385851e-308) (f64.const -0.5))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const 2.22507385851e-308) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "max" (f64.const -2.22507385851e-308) (f64.const -1.))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const -2.22507385851e-308) (f64.const 1.))
  (f64.const 1.)
)
(assert_return
  (invoke "max" (f64.const 2.22507385851e-308) (f64.const -1.))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const 2.22507385851e-308) (f64.const 1.))
  (f64.const 1.)
)
(assert_return
  (invoke "max" (f64.const -2.22507385851e-308) (f64.const -6.28318530718))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const -2.22507385851e-308) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const 2.22507385851e-308) (f64.const -6.28318530718))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const 2.22507385851e-308) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const -2.22507385851e-308) (f64.const -1.79769313486e+308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const -2.22507385851e-308) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const 2.22507385851e-308) (f64.const -1.79769313486e+308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const 2.22507385851e-308) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const -2.22507385851e-308) (f64.const -inf))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const -2.22507385851e-308) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const 2.22507385851e-308) (f64.const -inf))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const 2.22507385851e-308) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -2.22507385851e-308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -2.22507385851e-308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -2.22507385851e-308) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -2.22507385851e-308) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 2.22507385851e-308) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 2.22507385851e-308) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 2.22507385851e-308) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 2.22507385851e-308) (f64.const nan:0x4000000000000))
)
(assert_return (invoke "max" (f64.const -0.5) (f64.const -0.)) (f64.const -0.))
(assert_return (invoke "max" (f64.const -0.5) (f64.const 0.)) (f64.const 0.))
(assert_return (invoke "max" (f64.const 0.5) (f64.const -0.)) (f64.const 0.5))
(assert_return (invoke "max" (f64.const 0.5) (f64.const 0.)) (f64.const 0.5))
(assert_return
  (invoke "max" (f64.const -0.5) (f64.const -4.94065645841e-324))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const -0.5) (f64.const 4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const 0.5) (f64.const -4.94065645841e-324))
  (f64.const 0.5)
)
(assert_return
  (invoke "max" (f64.const 0.5) (f64.const 4.94065645841e-324))
  (f64.const 0.5)
)
(assert_return
  (invoke "max" (f64.const -0.5) (f64.const -2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const -0.5) (f64.const 2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const 0.5) (f64.const -2.22507385851e-308))
  (f64.const 0.5)
)
(assert_return
  (invoke "max" (f64.const 0.5) (f64.const 2.22507385851e-308))
  (f64.const 0.5)
)
(assert_return
  (invoke "max" (f64.const -0.5) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return (invoke "max" (f64.const -0.5) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "max" (f64.const 0.5) (f64.const -0.5)) (f64.const 0.5))
(assert_return (invoke "max" (f64.const 0.5) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "max" (f64.const -0.5) (f64.const -1.)) (f64.const -0.5))
(assert_return (invoke "max" (f64.const -0.5) (f64.const 1.)) (f64.const 1.))
(assert_return (invoke "max" (f64.const 0.5) (f64.const -1.)) (f64.const 0.5))
(assert_return (invoke "max" (f64.const 0.5) (f64.const 1.)) (f64.const 1.))
(assert_return
  (invoke "max" (f64.const -0.5) (f64.const -6.28318530718))
  (f64.const -0.5)
)
(assert_return
  (invoke "max" (f64.const -0.5) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const 0.5) (f64.const -6.28318530718))
  (f64.const 0.5)
)
(assert_return
  (invoke "max" (f64.const 0.5) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const -0.5) (f64.const -1.79769313486e+308))
  (f64.const -0.5)
)
(assert_return
  (invoke "max" (f64.const -0.5) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const 0.5) (f64.const -1.79769313486e+308))
  (f64.const 0.5)
)
(assert_return
  (invoke "max" (f64.const 0.5) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const -0.5) (f64.const -inf))
  (f64.const -0.5)
)
(assert_return (invoke "max" (f64.const -0.5) (f64.const inf)) (f64.const inf))
(assert_return (invoke "max" (f64.const 0.5) (f64.const -inf)) (f64.const 0.5))
(assert_return (invoke "max" (f64.const 0.5) (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan
  (invoke "max" (f64.const -0.5) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -0.5) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -0.5) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -0.5) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 0.5) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 0.5) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 0.5) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 0.5) (f64.const nan:0x4000000000000))
)
(assert_return (invoke "max" (f64.const -1.) (f64.const -0.)) (f64.const -0.))
(assert_return (invoke "max" (f64.const -1.) (f64.const 0.)) (f64.const 0.))
(assert_return (invoke "max" (f64.const 1.) (f64.const -0.)) (f64.const 1.))
(assert_return (invoke "max" (f64.const 1.) (f64.const 0.)) (f64.const 1.))
(assert_return
  (invoke "max" (f64.const -1.) (f64.const -4.94065645841e-324))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const -1.) (f64.const 4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const 1.) (f64.const -4.94065645841e-324))
  (f64.const 1.)
)
(assert_return
  (invoke "max" (f64.const 1.) (f64.const 4.94065645841e-324))
  (f64.const 1.)
)
(assert_return
  (invoke "max" (f64.const -1.) (f64.const -2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const -1.) (f64.const 2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const 1.) (f64.const -2.22507385851e-308))
  (f64.const 1.)
)
(assert_return
  (invoke "max" (f64.const 1.) (f64.const 2.22507385851e-308))
  (f64.const 1.)
)
(assert_return (invoke "max" (f64.const -1.) (f64.const -0.5)) (f64.const -0.5))
(assert_return (invoke "max" (f64.const -1.) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "max" (f64.const 1.) (f64.const -0.5)) (f64.const 1.))
(assert_return (invoke "max" (f64.const 1.) (f64.const 0.5)) (f64.const 1.))
(assert_return (invoke "max" (f64.const -1.) (f64.const -1.)) (f64.const -1.))
(assert_return (invoke "max" (f64.const -1.) (f64.const 1.)) (f64.const 1.))
(assert_return (invoke "max" (f64.const 1.) (f64.const -1.)) (f64.const 1.))
(assert_return (invoke "max" (f64.const 1.) (f64.const 1.)) (f64.const 1.))
(assert_return
  (invoke "max" (f64.const -1.) (f64.const -6.28318530718))
  (f64.const -1.)
)
(assert_return
  (invoke "max" (f64.const -1.) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const 1.) (f64.const -6.28318530718))
  (f64.const 1.)
)
(assert_return
  (invoke "max" (f64.const 1.) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const -1.) (f64.const -1.79769313486e+308))
  (f64.const -1.)
)
(assert_return
  (invoke "max" (f64.const -1.) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const 1.) (f64.const -1.79769313486e+308))
  (f64.const 1.)
)
(assert_return
  (invoke "max" (f64.const 1.) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return (invoke "max" (f64.const -1.) (f64.const -inf)) (f64.const -1.))
(assert_return (invoke "max" (f64.const -1.) (f64.const inf)) (f64.const inf))
(assert_return (invoke "max" (f64.const 1.) (f64.const -inf)) (f64.const 1.))
(assert_return (invoke "max" (f64.const 1.) (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan
  (invoke "max" (f64.const -1.) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -1.) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -1.) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -1.) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 1.) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 1.) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 1.) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 1.) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "max" (f64.const -6.28318530718) (f64.const -0.))
  (f64.const -0.)
)
(assert_return
  (invoke "max" (f64.const -6.28318530718) (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "max" (f64.const 6.28318530718) (f64.const -0.))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const 6.28318530718) (f64.const 0.))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const -6.28318530718) (f64.const -4.94065645841e-324))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const -6.28318530718) (f64.const 4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const 6.28318530718) (f64.const -4.94065645841e-324))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const 6.28318530718) (f64.const 4.94065645841e-324))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const -6.28318530718) (f64.const -2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const -6.28318530718) (f64.const 2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const 6.28318530718) (f64.const -2.22507385851e-308))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const 6.28318530718) (f64.const 2.22507385851e-308))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const -6.28318530718) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "max" (f64.const -6.28318530718) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "max" (f64.const 6.28318530718) (f64.const -0.5))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const 6.28318530718) (f64.const 0.5))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const -6.28318530718) (f64.const -1.))
  (f64.const -1.)
)
(assert_return
  (invoke "max" (f64.const -6.28318530718) (f64.const 1.))
  (f64.const 1.)
)
(assert_return
  (invoke "max" (f64.const 6.28318530718) (f64.const -1.))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const 6.28318530718) (f64.const 1.))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const -6.28318530718) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "max" (f64.const -6.28318530718) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const 6.28318530718) (f64.const -6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const 6.28318530718) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const -6.28318530718) (f64.const -1.79769313486e+308))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "max" (f64.const -6.28318530718) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const 6.28318530718) (f64.const -1.79769313486e+308))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const 6.28318530718) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const -6.28318530718) (f64.const -inf))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "max" (f64.const -6.28318530718) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const 6.28318530718) (f64.const -inf))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const 6.28318530718) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -6.28318530718) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -6.28318530718) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -6.28318530718) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -6.28318530718) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 6.28318530718) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 6.28318530718) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 6.28318530718) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 6.28318530718) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "max" (f64.const -1.79769313486e+308) (f64.const -0.))
  (f64.const -0.)
)
(assert_return
  (invoke "max" (f64.const -1.79769313486e+308) (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "max" (f64.const 1.79769313486e+308) (f64.const -0.))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const 1.79769313486e+308) (f64.const 0.))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const -1.79769313486e+308) (f64.const -4.94065645841e-324))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const -1.79769313486e+308) (f64.const 4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const 1.79769313486e+308) (f64.const -4.94065645841e-324))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const 1.79769313486e+308) (f64.const 4.94065645841e-324))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const -1.79769313486e+308) (f64.const -2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const -1.79769313486e+308) (f64.const 2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const 1.79769313486e+308) (f64.const -2.22507385851e-308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const 1.79769313486e+308) (f64.const 2.22507385851e-308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const -1.79769313486e+308) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "max" (f64.const -1.79769313486e+308) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "max" (f64.const 1.79769313486e+308) (f64.const -0.5))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const 1.79769313486e+308) (f64.const 0.5))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const -1.79769313486e+308) (f64.const -1.))
  (f64.const -1.)
)
(assert_return
  (invoke "max" (f64.const -1.79769313486e+308) (f64.const 1.))
  (f64.const 1.)
)
(assert_return
  (invoke "max" (f64.const 1.79769313486e+308) (f64.const -1.))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const 1.79769313486e+308) (f64.const 1.))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const -1.79769313486e+308) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "max" (f64.const -1.79769313486e+308) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const 1.79769313486e+308) (f64.const -6.28318530718))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const 1.79769313486e+308) (f64.const 6.28318530718))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const -1.79769313486e+308) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const -1.79769313486e+308) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const 1.79769313486e+308) (f64.const -1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const 1.79769313486e+308) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const -1.79769313486e+308) (f64.const -inf))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const -1.79769313486e+308) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const 1.79769313486e+308) (f64.const -inf))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const 1.79769313486e+308) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -1.79769313486e+308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -1.79769313486e+308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -1.79769313486e+308) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -1.79769313486e+308) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 1.79769313486e+308) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 1.79769313486e+308) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 1.79769313486e+308) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 1.79769313486e+308) (f64.const nan:0x4000000000000))
)
(assert_return (invoke "max" (f64.const -inf) (f64.const -0.)) (f64.const -0.))
(assert_return (invoke "max" (f64.const -inf) (f64.const 0.)) (f64.const 0.))
(assert_return (invoke "max" (f64.const inf) (f64.const -0.)) (f64.const inf))
(assert_return (invoke "max" (f64.const inf) (f64.const 0.)) (f64.const inf))
(assert_return
  (invoke "max" (f64.const -inf) (f64.const -4.94065645841e-324))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const 4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const -4.94065645841e-324))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const 4.94065645841e-324))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const -2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const 2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const -2.22507385851e-308))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const 2.22507385851e-308))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return (invoke "max" (f64.const -inf) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "max" (f64.const inf) (f64.const -0.5)) (f64.const inf))
(assert_return (invoke "max" (f64.const inf) (f64.const 0.5)) (f64.const inf))
(assert_return (invoke "max" (f64.const -inf) (f64.const -1.)) (f64.const -1.))
(assert_return (invoke "max" (f64.const -inf) (f64.const 1.)) (f64.const 1.))
(assert_return (invoke "max" (f64.const inf) (f64.const -1.)) (f64.const inf))
(assert_return (invoke "max" (f64.const inf) (f64.const 1.)) (f64.const inf))
(assert_return
  (invoke "max" (f64.const -inf) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const -6.28318530718))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const 6.28318530718))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const -1.79769313486e+308))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const 1.79769313486e+308))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const -inf))
  (f64.const -inf)
)
(assert_return (invoke "max" (f64.const -inf) (f64.const inf)) (f64.const inf))
(assert_return (invoke "max" (f64.const inf) (f64.const -inf)) (f64.const inf))
(assert_return (invoke "max" (f64.const inf) (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan
  (invoke "max" (f64.const -inf) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -inf) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -inf) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -inf) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const inf) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const inf) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const inf) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const inf) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const -0.))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const -0.))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const 0.))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const 0.))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const -0.))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const -0.))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const 0.))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const 0.))
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -nan:0x8000000000000)
    (f64.const -4.94065645841e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x4000000000000)
    (f64.const -4.94065645841e-324)
  )
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const 4.94065645841e-324))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const 4.94065645841e-324))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const -4.94065645841e-324))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const -4.94065645841e-324))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const 4.94065645841e-324))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const 4.94065645841e-324))
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -nan:0x8000000000000)
    (f64.const -2.22507385851e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x4000000000000)
    (f64.const -2.22507385851e-308)
  )
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const 2.22507385851e-308))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const 2.22507385851e-308))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const -2.22507385851e-308))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const -2.22507385851e-308))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const 2.22507385851e-308))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const 2.22507385851e-308))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const -0.5))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const 0.5))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const -0.5))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const 0.5))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const -1.))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const -1.))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const 1.))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const 1.))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const -1.))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const -1.))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const 1.))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const 1.))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const -6.28318530718))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const -6.28318530718))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const 6.28318530718))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const 6.28318530718))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const -6.28318530718))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const -6.28318530718))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const 6.28318530718))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const 6.28318530718))
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -nan:0x8000000000000)
    (f64.const -1.79769313486e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x4000000000000)
    (f64.const -1.79769313486e+308)
  )
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const 1.79769313486e+308))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const 1.79769313486e+308))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const -1.79769313486e+308))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const -1.79769313486e+308))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const 1.79769313486e+308))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const 1.79769313486e+308))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const -inf))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const inf))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const inf))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const -inf))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const inf))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const inf))
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x4000000000000)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x4000000000000)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const nan:0x4000000000000)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const nan:0x4000000000000)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const nan:0x4000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const nan:0x4000000000000))
)
(assert_return (invoke "sqrt" (f64.const -0.)) (f64.const -0.))
(assert_return (invoke "sqrt" (f64.const 0.)) (f64.const 0.))
(assert_return_canonical_nan (invoke "sqrt" (f64.const -4.94065645841e-324)))
(assert_return
  (invoke "sqrt" (f64.const 4.94065645841e-324))
  (f64.const 2.22275874949e-162)
)
(assert_return_canonical_nan (invoke "sqrt" (f64.const -2.22507385851e-308)))
(assert_return
  (invoke "sqrt" (f64.const 2.22507385851e-308))
  (f64.const 1.49166814624e-154)
)
(assert_return_canonical_nan (invoke "sqrt" (f64.const -0.5)))
(assert_return (invoke "sqrt" (f64.const 0.5)) (f64.const 0.707106781187))
(assert_return_canonical_nan (invoke "sqrt" (f64.const -1.)))
(assert_return (invoke "sqrt" (f64.const 1.)) (f64.const 1.))
(assert_return_canonical_nan (invoke "sqrt" (f64.const -6.28318530718)))
(assert_return
  (invoke "sqrt" (f64.const 6.28318530718))
  (f64.const 2.50662827463)
)
(assert_return_canonical_nan (invoke "sqrt" (f64.const -1.79769313486e+308)))
(assert_return
  (invoke "sqrt" (f64.const 1.79769313486e+308))
  (f64.const 1.34078079299e+154)
)
(assert_return_canonical_nan (invoke "sqrt" (f64.const -inf)))
(assert_return (invoke "sqrt" (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan (invoke "sqrt" (f64.const -nan:0x8000000000000)))
(assert_return_arithmetic_nan (invoke "sqrt" (f64.const -nan:0x4000000000000)))
(assert_return_canonical_nan (invoke "sqrt" (f64.const nan:0x8000000000000)))
(assert_return_arithmetic_nan (invoke "sqrt" (f64.const nan:0x4000000000000)))
(assert_return (invoke "floor" (f64.const -0.)) (f64.const -0.))
(assert_return (invoke "floor" (f64.const 0.)) (f64.const 0.))
(assert_return (invoke "floor" (f64.const -4.94065645841e-324)) (f64.const -1.))
(assert_return (invoke "floor" (f64.const 4.94065645841e-324)) (f64.const 0.))
(assert_return (invoke "floor" (f64.const -2.22507385851e-308)) (f64.const -1.))
(assert_return (invoke "floor" (f64.const 2.22507385851e-308)) (f64.const 0.))
(assert_return (invoke "floor" (f64.const -0.5)) (f64.const -1.))
(assert_return (invoke "floor" (f64.const 0.5)) (f64.const 0.))
(assert_return (invoke "floor" (f64.const -1.)) (f64.const -1.))
(assert_return (invoke "floor" (f64.const 1.)) (f64.const 1.))
(assert_return (invoke "floor" (f64.const -6.28318530718)) (f64.const -7.))
(assert_return (invoke "floor" (f64.const 6.28318530718)) (f64.const 6.))
(assert_return
  (invoke "floor" (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "floor" (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return (invoke "floor" (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "floor" (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan (invoke "floor" (f64.const -nan:0x8000000000000)))
(assert_return_arithmetic_nan (invoke "floor" (f64.const -nan:0x4000000000000)))
(assert_return_canonical_nan (invoke "floor" (f64.const nan:0x8000000000000)))
(assert_return_arithmetic_nan (invoke "floor" (f64.const nan:0x4000000000000)))
(assert_return (invoke "ceil" (f64.const -0.)) (f64.const -0.))
(assert_return (invoke "ceil" (f64.const 0.)) (f64.const 0.))
(assert_return (invoke "ceil" (f64.const -4.94065645841e-324)) (f64.const -0.))
(assert_return (invoke "ceil" (f64.const 4.94065645841e-324)) (f64.const 1.))
(assert_return (invoke "ceil" (f64.const -2.22507385851e-308)) (f64.const -0.))
(assert_return (invoke "ceil" (f64.const 2.22507385851e-308)) (f64.const 1.))
(assert_return (invoke "ceil" (f64.const -0.5)) (f64.const -0.))
(assert_return (invoke "ceil" (f64.const 0.5)) (f64.const 1.))
(assert_return (invoke "ceil" (f64.const -1.)) (f64.const -1.))
(assert_return (invoke "ceil" (f64.const 1.)) (f64.const 1.))
(assert_return (invoke "ceil" (f64.const -6.28318530718)) (f64.const -6.))
(assert_return (invoke "ceil" (f64.const 6.28318530718)) (f64.const 7.))
(assert_return
  (invoke "ceil" (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "ceil" (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return (invoke "ceil" (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "ceil" (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan (invoke "ceil" (f64.const -nan:0x8000000000000)))
(assert_return_arithmetic_nan (invoke "ceil" (f64.const -nan:0x4000000000000)))
(assert_return_canonical_nan (invoke "ceil" (f64.const nan:0x8000000000000)))
(assert_return_arithmetic_nan (invoke "ceil" (f64.const nan:0x4000000000000)))
(assert_return (invoke "trunc" (f64.const -0.)) (f64.const -0.))
(assert_return (invoke "trunc" (f64.const 0.)) (f64.const 0.))
(assert_return (invoke "trunc" (f64.const -4.94065645841e-324)) (f64.const -0.))
(assert_return (invoke "trunc" (f64.const 4.94065645841e-324)) (f64.const 0.))
(assert_return (invoke "trunc" (f64.const -2.22507385851e-308)) (f64.const -0.))
(assert_return (invoke "trunc" (f64.const 2.22507385851e-308)) (f64.const 0.))
(assert_return (invoke "trunc" (f64.const -0.5)) (f64.const -0.))
(assert_return (invoke "trunc" (f64.const 0.5)) (f64.const 0.))
(assert_return (invoke "trunc" (f64.const -1.)) (f64.const -1.))
(assert_return (invoke "trunc" (f64.const 1.)) (f64.const 1.))
(assert_return (invoke "trunc" (f64.const -6.28318530718)) (f64.const -6.))
(assert_return (invoke "trunc" (f64.const 6.28318530718)) (f64.const 6.))
(assert_return
  (invoke "trunc" (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "trunc" (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return (invoke "trunc" (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "trunc" (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan (invoke "trunc" (f64.const -nan:0x8000000000000)))
(assert_return_arithmetic_nan (invoke "trunc" (f64.const -nan:0x4000000000000)))
(assert_return_canonical_nan (invoke "trunc" (f64.const nan:0x8000000000000)))
(assert_return_arithmetic_nan (invoke "trunc" (f64.const nan:0x4000000000000)))
(assert_return (invoke "nearest" (f64.const -0.)) (f64.const -0.))
(assert_return (invoke "nearest" (f64.const 0.)) (f64.const 0.))
(assert_return
  (invoke "nearest" (f64.const -4.94065645841e-324))
  (f64.const -0.)
)
(assert_return (invoke "nearest" (f64.const 4.94065645841e-324)) (f64.const 0.))
(assert_return
  (invoke "nearest" (f64.const -2.22507385851e-308))
  (f64.const -0.)
)
(assert_return (invoke "nearest" (f64.const 2.22507385851e-308)) (f64.const 0.))
(assert_return (invoke "nearest" (f64.const -0.5)) (f64.const -0.))
(assert_return (invoke "nearest" (f64.const 0.5)) (f64.const 0.))
(assert_return (invoke "nearest" (f64.const -1.)) (f64.const -1.))
(assert_return (invoke "nearest" (f64.const 1.)) (f64.const 1.))
(assert_return (invoke "nearest" (f64.const -6.28318530718)) (f64.const -6.))
(assert_return (invoke "nearest" (f64.const 6.28318530718)) (f64.const 6.))
(assert_return
  (invoke "nearest" (f64.const -1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "nearest" (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return (invoke "nearest" (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "nearest" (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan
  (invoke "nearest" (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "nearest" (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan (invoke "nearest" (f64.const nan:0x8000000000000)))
(assert_return_arithmetic_nan
  (invoke "nearest" (f64.const nan:0x4000000000000))
)

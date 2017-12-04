(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\02\60"
  "\01\7c\01\7c\60\02\7c\7c\01\7c\03\84\80\80\80\00"
  "\03\00\00\01\07\98\80\80\80\00\03\03\61\62\73\00"
  "\00\03\6e\65\67\00\01\08\63\6f\70\79\73\69\67\6e"
  "\00\02\0a\a1\80\80\80\00\03\85\80\80\80\00\00\20"
  "\00\99\0b\85\80\80\80\00\00\20\00\9a\0b\87\80\80"
  "\80\00\00\20\00\20\01\a6\0b"
)
(assert_return
  (invoke "copysign" (f64.const -0.) (f64.const -0.))
  (f64.const -0.)
)
(assert_return
  (invoke "copysign" (f64.const -0.) (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "copysign" (f64.const 0.) (f64.const -0.))
  (f64.const -0.)
)
(assert_return (invoke "copysign" (f64.const 0.) (f64.const 0.)) (f64.const 0.))
(assert_return
  (invoke "copysign" (f64.const -0.) (f64.const -4.94065645841e-324))
  (f64.const -0.)
)
(assert_return
  (invoke "copysign" (f64.const -0.) (f64.const 4.94065645841e-324))
  (f64.const 0.)
)
(assert_return
  (invoke "copysign" (f64.const 0.) (f64.const -4.94065645841e-324))
  (f64.const -0.)
)
(assert_return
  (invoke "copysign" (f64.const 0.) (f64.const 4.94065645841e-324))
  (f64.const 0.)
)
(assert_return
  (invoke "copysign" (f64.const -0.) (f64.const -2.22507385851e-308))
  (f64.const -0.)
)
(assert_return
  (invoke "copysign" (f64.const -0.) (f64.const 2.22507385851e-308))
  (f64.const 0.)
)
(assert_return
  (invoke "copysign" (f64.const 0.) (f64.const -2.22507385851e-308))
  (f64.const -0.)
)
(assert_return
  (invoke "copysign" (f64.const 0.) (f64.const 2.22507385851e-308))
  (f64.const 0.)
)
(assert_return
  (invoke "copysign" (f64.const -0.) (f64.const -0.5))
  (f64.const -0.)
)
(assert_return
  (invoke "copysign" (f64.const -0.) (f64.const 0.5))
  (f64.const 0.)
)
(assert_return
  (invoke "copysign" (f64.const 0.) (f64.const -0.5))
  (f64.const -0.)
)
(assert_return
  (invoke "copysign" (f64.const 0.) (f64.const 0.5))
  (f64.const 0.)
)
(assert_return
  (invoke "copysign" (f64.const -0.) (f64.const -1.))
  (f64.const -0.)
)
(assert_return
  (invoke "copysign" (f64.const -0.) (f64.const 1.))
  (f64.const 0.)
)
(assert_return
  (invoke "copysign" (f64.const 0.) (f64.const -1.))
  (f64.const -0.)
)
(assert_return (invoke "copysign" (f64.const 0.) (f64.const 1.)) (f64.const 0.))
(assert_return
  (invoke "copysign" (f64.const -0.) (f64.const -6.28318530718))
  (f64.const -0.)
)
(assert_return
  (invoke "copysign" (f64.const -0.) (f64.const 6.28318530718))
  (f64.const 0.)
)
(assert_return
  (invoke "copysign" (f64.const 0.) (f64.const -6.28318530718))
  (f64.const -0.)
)
(assert_return
  (invoke "copysign" (f64.const 0.) (f64.const 6.28318530718))
  (f64.const 0.)
)
(assert_return
  (invoke "copysign" (f64.const -0.) (f64.const -1.79769313486e+308))
  (f64.const -0.)
)
(assert_return
  (invoke "copysign" (f64.const -0.) (f64.const 1.79769313486e+308))
  (f64.const 0.)
)
(assert_return
  (invoke "copysign" (f64.const 0.) (f64.const -1.79769313486e+308))
  (f64.const -0.)
)
(assert_return
  (invoke "copysign" (f64.const 0.) (f64.const 1.79769313486e+308))
  (f64.const 0.)
)
(assert_return
  (invoke "copysign" (f64.const -0.) (f64.const -inf))
  (f64.const -0.)
)
(assert_return
  (invoke "copysign" (f64.const -0.) (f64.const inf))
  (f64.const 0.)
)
(assert_return
  (invoke "copysign" (f64.const 0.) (f64.const -inf))
  (f64.const -0.)
)
(assert_return
  (invoke "copysign" (f64.const 0.) (f64.const inf))
  (f64.const 0.)
)
(assert_return
  (invoke "copysign" (f64.const -0.) (f64.const -nan:0x8000000000000))
  (f64.const -0.)
)
(assert_return
  (invoke "copysign" (f64.const -0.) (f64.const nan:0x8000000000000))
  (f64.const 0.)
)
(assert_return
  (invoke "copysign" (f64.const 0.) (f64.const -nan:0x8000000000000))
  (f64.const -0.)
)
(assert_return
  (invoke "copysign" (f64.const 0.) (f64.const nan:0x8000000000000))
  (f64.const 0.)
)
(assert_return
  (invoke "copysign" (f64.const -4.94065645841e-324) (f64.const -0.))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "copysign" (f64.const -4.94065645841e-324) (f64.const 0.))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "copysign" (f64.const 4.94065645841e-324) (f64.const -0.))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "copysign" (f64.const 4.94065645841e-324) (f64.const 0.))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const -4.94065645841e-324)
    (f64.const -4.94065645841e-324)
  )
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const -4.94065645841e-324)
    (f64.const 4.94065645841e-324)
  )
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const 4.94065645841e-324)
    (f64.const -4.94065645841e-324)
  )
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const 4.94065645841e-324)
    (f64.const 4.94065645841e-324)
  )
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const -4.94065645841e-324)
    (f64.const -2.22507385851e-308)
  )
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const -4.94065645841e-324)
    (f64.const 2.22507385851e-308)
  )
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const 4.94065645841e-324)
    (f64.const -2.22507385851e-308)
  )
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const 4.94065645841e-324)
    (f64.const 2.22507385851e-308)
  )
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "copysign" (f64.const -4.94065645841e-324) (f64.const -0.5))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "copysign" (f64.const -4.94065645841e-324) (f64.const 0.5))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "copysign" (f64.const 4.94065645841e-324) (f64.const -0.5))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "copysign" (f64.const 4.94065645841e-324) (f64.const 0.5))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "copysign" (f64.const -4.94065645841e-324) (f64.const -1.))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "copysign" (f64.const -4.94065645841e-324) (f64.const 1.))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "copysign" (f64.const 4.94065645841e-324) (f64.const -1.))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "copysign" (f64.const 4.94065645841e-324) (f64.const 1.))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "copysign" (f64.const -4.94065645841e-324) (f64.const -6.28318530718))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "copysign" (f64.const -4.94065645841e-324) (f64.const 6.28318530718))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "copysign" (f64.const 4.94065645841e-324) (f64.const -6.28318530718))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "copysign" (f64.const 4.94065645841e-324) (f64.const 6.28318530718))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const -4.94065645841e-324)
    (f64.const -1.79769313486e+308)
  )
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const -4.94065645841e-324)
    (f64.const 1.79769313486e+308)
  )
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const 4.94065645841e-324)
    (f64.const -1.79769313486e+308)
  )
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const 4.94065645841e-324)
    (f64.const 1.79769313486e+308)
  )
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "copysign" (f64.const -4.94065645841e-324) (f64.const -inf))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "copysign" (f64.const -4.94065645841e-324) (f64.const inf))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "copysign" (f64.const 4.94065645841e-324) (f64.const -inf))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "copysign" (f64.const 4.94065645841e-324) (f64.const inf))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const -4.94065645841e-324)
    (f64.const -nan:0x8000000000000)
  )
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const -4.94065645841e-324)
    (f64.const nan:0x8000000000000)
  )
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const 4.94065645841e-324)
    (f64.const -nan:0x8000000000000)
  )
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "copysign"
    (f64.const 4.94065645841e-324)
    (f64.const nan:0x8000000000000)
  )
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "copysign" (f64.const -2.22507385851e-308) (f64.const -0.))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "copysign" (f64.const -2.22507385851e-308) (f64.const 0.))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "copysign" (f64.const 2.22507385851e-308) (f64.const -0.))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "copysign" (f64.const 2.22507385851e-308) (f64.const 0.))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const -2.22507385851e-308)
    (f64.const -4.94065645841e-324)
  )
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const -2.22507385851e-308)
    (f64.const 4.94065645841e-324)
  )
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const 2.22507385851e-308)
    (f64.const -4.94065645841e-324)
  )
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const 2.22507385851e-308)
    (f64.const 4.94065645841e-324)
  )
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const -2.22507385851e-308)
    (f64.const -2.22507385851e-308)
  )
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const -2.22507385851e-308)
    (f64.const 2.22507385851e-308)
  )
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const 2.22507385851e-308)
    (f64.const -2.22507385851e-308)
  )
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const 2.22507385851e-308)
    (f64.const 2.22507385851e-308)
  )
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "copysign" (f64.const -2.22507385851e-308) (f64.const -0.5))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "copysign" (f64.const -2.22507385851e-308) (f64.const 0.5))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "copysign" (f64.const 2.22507385851e-308) (f64.const -0.5))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "copysign" (f64.const 2.22507385851e-308) (f64.const 0.5))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "copysign" (f64.const -2.22507385851e-308) (f64.const -1.))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "copysign" (f64.const -2.22507385851e-308) (f64.const 1.))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "copysign" (f64.const 2.22507385851e-308) (f64.const -1.))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "copysign" (f64.const 2.22507385851e-308) (f64.const 1.))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "copysign" (f64.const -2.22507385851e-308) (f64.const -6.28318530718))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "copysign" (f64.const -2.22507385851e-308) (f64.const 6.28318530718))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "copysign" (f64.const 2.22507385851e-308) (f64.const -6.28318530718))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "copysign" (f64.const 2.22507385851e-308) (f64.const 6.28318530718))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const -2.22507385851e-308)
    (f64.const -1.79769313486e+308)
  )
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const -2.22507385851e-308)
    (f64.const 1.79769313486e+308)
  )
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const 2.22507385851e-308)
    (f64.const -1.79769313486e+308)
  )
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const 2.22507385851e-308)
    (f64.const 1.79769313486e+308)
  )
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "copysign" (f64.const -2.22507385851e-308) (f64.const -inf))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "copysign" (f64.const -2.22507385851e-308) (f64.const inf))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "copysign" (f64.const 2.22507385851e-308) (f64.const -inf))
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "copysign" (f64.const 2.22507385851e-308) (f64.const inf))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const -2.22507385851e-308)
    (f64.const -nan:0x8000000000000)
  )
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const -2.22507385851e-308)
    (f64.const nan:0x8000000000000)
  )
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const 2.22507385851e-308)
    (f64.const -nan:0x8000000000000)
  )
  (f64.const -2.22507385851e-308)
)
(assert_return
  (invoke "copysign"
    (f64.const 2.22507385851e-308)
    (f64.const nan:0x8000000000000)
  )
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const -0.))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const 0.))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const -0.))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const 0.))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const -4.94065645841e-324))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const 4.94065645841e-324))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const -4.94065645841e-324))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const 4.94065645841e-324))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const -2.22507385851e-308))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const 2.22507385851e-308))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const -2.22507385851e-308))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const 2.22507385851e-308))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const -1.))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const 1.))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const -1.))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const 1.))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const -6.28318530718))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const 6.28318530718))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const -6.28318530718))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const 6.28318530718))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const -1.79769313486e+308))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const 1.79769313486e+308))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const -1.79769313486e+308))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const 1.79769313486e+308))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const -inf))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const inf))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const -inf))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const inf))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const -nan:0x8000000000000))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const -0.5) (f64.const nan:0x8000000000000))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const -nan:0x8000000000000))
  (f64.const -0.5)
)
(assert_return
  (invoke "copysign" (f64.const 0.5) (f64.const nan:0x8000000000000))
  (f64.const 0.5)
)
(assert_return
  (invoke "copysign" (f64.const -1.) (f64.const -0.))
  (f64.const -1.)
)
(assert_return
  (invoke "copysign" (f64.const -1.) (f64.const 0.))
  (f64.const 1.)
)
(assert_return
  (invoke "copysign" (f64.const 1.) (f64.const -0.))
  (f64.const -1.)
)
(assert_return (invoke "copysign" (f64.const 1.) (f64.const 0.)) (f64.const 1.))
(assert_return
  (invoke "copysign" (f64.const -1.) (f64.const -4.94065645841e-324))
  (f64.const -1.)
)
(assert_return
  (invoke "copysign" (f64.const -1.) (f64.const 4.94065645841e-324))
  (f64.const 1.)
)
(assert_return
  (invoke "copysign" (f64.const 1.) (f64.const -4.94065645841e-324))
  (f64.const -1.)
)
(assert_return
  (invoke "copysign" (f64.const 1.) (f64.const 4.94065645841e-324))
  (f64.const 1.)
)
(assert_return
  (invoke "copysign" (f64.const -1.) (f64.const -2.22507385851e-308))
  (f64.const -1.)
)
(assert_return
  (invoke "copysign" (f64.const -1.) (f64.const 2.22507385851e-308))
  (f64.const 1.)
)
(assert_return
  (invoke "copysign" (f64.const 1.) (f64.const -2.22507385851e-308))
  (f64.const -1.)
)
(assert_return
  (invoke "copysign" (f64.const 1.) (f64.const 2.22507385851e-308))
  (f64.const 1.)
)
(assert_return
  (invoke "copysign" (f64.const -1.) (f64.const -0.5))
  (f64.const -1.)
)
(assert_return
  (invoke "copysign" (f64.const -1.) (f64.const 0.5))
  (f64.const 1.)
)
(assert_return
  (invoke "copysign" (f64.const 1.) (f64.const -0.5))
  (f64.const -1.)
)
(assert_return
  (invoke "copysign" (f64.const 1.) (f64.const 0.5))
  (f64.const 1.)
)
(assert_return
  (invoke "copysign" (f64.const -1.) (f64.const -1.))
  (f64.const -1.)
)
(assert_return
  (invoke "copysign" (f64.const -1.) (f64.const 1.))
  (f64.const 1.)
)
(assert_return
  (invoke "copysign" (f64.const 1.) (f64.const -1.))
  (f64.const -1.)
)
(assert_return (invoke "copysign" (f64.const 1.) (f64.const 1.)) (f64.const 1.))
(assert_return
  (invoke "copysign" (f64.const -1.) (f64.const -6.28318530718))
  (f64.const -1.)
)
(assert_return
  (invoke "copysign" (f64.const -1.) (f64.const 6.28318530718))
  (f64.const 1.)
)
(assert_return
  (invoke "copysign" (f64.const 1.) (f64.const -6.28318530718))
  (f64.const -1.)
)
(assert_return
  (invoke "copysign" (f64.const 1.) (f64.const 6.28318530718))
  (f64.const 1.)
)
(assert_return
  (invoke "copysign" (f64.const -1.) (f64.const -1.79769313486e+308))
  (f64.const -1.)
)
(assert_return
  (invoke "copysign" (f64.const -1.) (f64.const 1.79769313486e+308))
  (f64.const 1.)
)
(assert_return
  (invoke "copysign" (f64.const 1.) (f64.const -1.79769313486e+308))
  (f64.const -1.)
)
(assert_return
  (invoke "copysign" (f64.const 1.) (f64.const 1.79769313486e+308))
  (f64.const 1.)
)
(assert_return
  (invoke "copysign" (f64.const -1.) (f64.const -inf))
  (f64.const -1.)
)
(assert_return
  (invoke "copysign" (f64.const -1.) (f64.const inf))
  (f64.const 1.)
)
(assert_return
  (invoke "copysign" (f64.const 1.) (f64.const -inf))
  (f64.const -1.)
)
(assert_return
  (invoke "copysign" (f64.const 1.) (f64.const inf))
  (f64.const 1.)
)
(assert_return
  (invoke "copysign" (f64.const -1.) (f64.const -nan:0x8000000000000))
  (f64.const -1.)
)
(assert_return
  (invoke "copysign" (f64.const -1.) (f64.const nan:0x8000000000000))
  (f64.const 1.)
)
(assert_return
  (invoke "copysign" (f64.const 1.) (f64.const -nan:0x8000000000000))
  (f64.const -1.)
)
(assert_return
  (invoke "copysign" (f64.const 1.) (f64.const nan:0x8000000000000))
  (f64.const 1.)
)
(assert_return
  (invoke "copysign" (f64.const -6.28318530718) (f64.const -0.))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const -6.28318530718) (f64.const 0.))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const 6.28318530718) (f64.const -0.))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const 6.28318530718) (f64.const 0.))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const -6.28318530718) (f64.const -4.94065645841e-324))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const -6.28318530718) (f64.const 4.94065645841e-324))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const 6.28318530718) (f64.const -4.94065645841e-324))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const 6.28318530718) (f64.const 4.94065645841e-324))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const -6.28318530718) (f64.const -2.22507385851e-308))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const -6.28318530718) (f64.const 2.22507385851e-308))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const 6.28318530718) (f64.const -2.22507385851e-308))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const 6.28318530718) (f64.const 2.22507385851e-308))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const -6.28318530718) (f64.const -0.5))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const -6.28318530718) (f64.const 0.5))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const 6.28318530718) (f64.const -0.5))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const 6.28318530718) (f64.const 0.5))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const -6.28318530718) (f64.const -1.))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const -6.28318530718) (f64.const 1.))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const 6.28318530718) (f64.const -1.))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const 6.28318530718) (f64.const 1.))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const -6.28318530718) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const -6.28318530718) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const 6.28318530718) (f64.const -6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const 6.28318530718) (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const -6.28318530718) (f64.const -1.79769313486e+308))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const -6.28318530718) (f64.const 1.79769313486e+308))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const 6.28318530718) (f64.const -1.79769313486e+308))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const 6.28318530718) (f64.const 1.79769313486e+308))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const -6.28318530718) (f64.const -inf))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const -6.28318530718) (f64.const inf))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const 6.28318530718) (f64.const -inf))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const 6.28318530718) (f64.const inf))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "copysign"
    (f64.const -6.28318530718)
    (f64.const -nan:0x8000000000000)
  )
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const -6.28318530718) (f64.const nan:0x8000000000000))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const 6.28318530718) (f64.const -nan:0x8000000000000))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const 6.28318530718) (f64.const nan:0x8000000000000))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "copysign" (f64.const -1.79769313486e+308) (f64.const -0.))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "copysign" (f64.const -1.79769313486e+308) (f64.const 0.))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "copysign" (f64.const 1.79769313486e+308) (f64.const -0.))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "copysign" (f64.const 1.79769313486e+308) (f64.const 0.))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const -1.79769313486e+308)
    (f64.const -4.94065645841e-324)
  )
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const -1.79769313486e+308)
    (f64.const 4.94065645841e-324)
  )
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const 1.79769313486e+308)
    (f64.const -4.94065645841e-324)
  )
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const 1.79769313486e+308)
    (f64.const 4.94065645841e-324)
  )
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const -1.79769313486e+308)
    (f64.const -2.22507385851e-308)
  )
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const -1.79769313486e+308)
    (f64.const 2.22507385851e-308)
  )
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const 1.79769313486e+308)
    (f64.const -2.22507385851e-308)
  )
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const 1.79769313486e+308)
    (f64.const 2.22507385851e-308)
  )
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "copysign" (f64.const -1.79769313486e+308) (f64.const -0.5))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "copysign" (f64.const -1.79769313486e+308) (f64.const 0.5))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "copysign" (f64.const 1.79769313486e+308) (f64.const -0.5))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "copysign" (f64.const 1.79769313486e+308) (f64.const 0.5))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "copysign" (f64.const -1.79769313486e+308) (f64.const -1.))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "copysign" (f64.const -1.79769313486e+308) (f64.const 1.))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "copysign" (f64.const 1.79769313486e+308) (f64.const -1.))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "copysign" (f64.const 1.79769313486e+308) (f64.const 1.))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "copysign" (f64.const -1.79769313486e+308) (f64.const -6.28318530718))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "copysign" (f64.const -1.79769313486e+308) (f64.const 6.28318530718))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "copysign" (f64.const 1.79769313486e+308) (f64.const -6.28318530718))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "copysign" (f64.const 1.79769313486e+308) (f64.const 6.28318530718))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const -1.79769313486e+308)
    (f64.const -1.79769313486e+308)
  )
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const -1.79769313486e+308)
    (f64.const 1.79769313486e+308)
  )
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const 1.79769313486e+308)
    (f64.const -1.79769313486e+308)
  )
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const 1.79769313486e+308)
    (f64.const 1.79769313486e+308)
  )
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "copysign" (f64.const -1.79769313486e+308) (f64.const -inf))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "copysign" (f64.const -1.79769313486e+308) (f64.const inf))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "copysign" (f64.const 1.79769313486e+308) (f64.const -inf))
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "copysign" (f64.const 1.79769313486e+308) (f64.const inf))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const -1.79769313486e+308)
    (f64.const -nan:0x8000000000000)
  )
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const -1.79769313486e+308)
    (f64.const nan:0x8000000000000)
  )
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const 1.79769313486e+308)
    (f64.const -nan:0x8000000000000)
  )
  (f64.const -1.79769313486e+308)
)
(assert_return
  (invoke "copysign"
    (f64.const 1.79769313486e+308)
    (f64.const nan:0x8000000000000)
  )
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const -0.))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const 0.))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const -0.))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const 0.))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const -4.94065645841e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const 4.94065645841e-324))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const -4.94065645841e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const 4.94065645841e-324))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const -2.22507385851e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const 2.22507385851e-308))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const -2.22507385851e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const 2.22507385851e-308))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const -0.5))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const 0.5))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const -0.5))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const 0.5))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const -1.))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const 1.))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const -1.))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const 1.))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const -6.28318530718))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const 6.28318530718))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const -6.28318530718))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const 6.28318530718))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const -1.79769313486e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const 1.79769313486e+308))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const -1.79769313486e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const 1.79769313486e+308))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const -nan:0x8000000000000))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const -inf) (f64.const nan:0x8000000000000))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const -nan:0x8000000000000))
  (f64.const -inf)
)
(assert_return
  (invoke "copysign" (f64.const inf) (f64.const nan:0x8000000000000))
  (f64.const inf)
)
(assert_return
  (invoke "copysign" (f64.const -nan:0x8000000000000) (f64.const -0.))
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const -nan:0x8000000000000) (f64.const 0.))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const nan:0x8000000000000) (f64.const -0.))
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const nan:0x8000000000000) (f64.const 0.))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const -nan:0x8000000000000)
    (f64.const -4.94065645841e-324)
  )
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const -nan:0x8000000000000)
    (f64.const 4.94065645841e-324)
  )
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const nan:0x8000000000000)
    (f64.const -4.94065645841e-324)
  )
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const nan:0x8000000000000)
    (f64.const 4.94065645841e-324)
  )
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const -nan:0x8000000000000)
    (f64.const -2.22507385851e-308)
  )
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const -nan:0x8000000000000)
    (f64.const 2.22507385851e-308)
  )
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const nan:0x8000000000000)
    (f64.const -2.22507385851e-308)
  )
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const nan:0x8000000000000)
    (f64.const 2.22507385851e-308)
  )
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const -nan:0x8000000000000) (f64.const -0.5))
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const -nan:0x8000000000000) (f64.const 0.5))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const nan:0x8000000000000) (f64.const -0.5))
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const nan:0x8000000000000) (f64.const 0.5))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const -nan:0x8000000000000) (f64.const -1.))
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const -nan:0x8000000000000) (f64.const 1.))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const nan:0x8000000000000) (f64.const -1.))
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const nan:0x8000000000000) (f64.const 1.))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const -nan:0x8000000000000)
    (f64.const -6.28318530718)
  )
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const -nan:0x8000000000000) (f64.const 6.28318530718))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const nan:0x8000000000000) (f64.const -6.28318530718))
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const nan:0x8000000000000) (f64.const 6.28318530718))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const -nan:0x8000000000000)
    (f64.const -1.79769313486e+308)
  )
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const -nan:0x8000000000000)
    (f64.const 1.79769313486e+308)
  )
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const nan:0x8000000000000)
    (f64.const -1.79769313486e+308)
  )
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const nan:0x8000000000000)
    (f64.const 1.79769313486e+308)
  )
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const -nan:0x8000000000000) (f64.const -inf))
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const -nan:0x8000000000000) (f64.const inf))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const nan:0x8000000000000) (f64.const -inf))
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign" (f64.const nan:0x8000000000000) (f64.const inf))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const -nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const -nan:0x8000000000000)
    (f64.const nan:0x8000000000000)
  )
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const nan:0x8000000000000)
    (f64.const -nan:0x8000000000000)
  )
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "copysign"
    (f64.const nan:0x8000000000000)
    (f64.const nan:0x8000000000000)
  )
  (f64.const nan:0x8000000000000)
)
(assert_return (invoke "abs" (f64.const -0.)) (f64.const 0.))
(assert_return (invoke "abs" (f64.const 0.)) (f64.const 0.))
(assert_return
  (invoke "abs" (f64.const -4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "abs" (f64.const 4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "abs" (f64.const -2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "abs" (f64.const 2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return (invoke "abs" (f64.const -0.5)) (f64.const 0.5))
(assert_return (invoke "abs" (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "abs" (f64.const -1.)) (f64.const 1.))
(assert_return (invoke "abs" (f64.const 1.)) (f64.const 1.))
(assert_return
  (invoke "abs" (f64.const -6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "abs" (f64.const 6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "abs" (f64.const -1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "abs" (f64.const 1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return (invoke "abs" (f64.const -inf)) (f64.const inf))
(assert_return (invoke "abs" (f64.const inf)) (f64.const inf))
(assert_return
  (invoke "abs" (f64.const -nan:0x8000000000000))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "abs" (f64.const nan:0x8000000000000))
  (f64.const nan:0x8000000000000)
)
(assert_return (invoke "neg" (f64.const -0.)) (f64.const 0.))
(assert_return (invoke "neg" (f64.const 0.)) (f64.const -0.))
(assert_return
  (invoke "neg" (f64.const -4.94065645841e-324))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "neg" (f64.const 4.94065645841e-324))
  (f64.const -4.94065645841e-324)
)
(assert_return
  (invoke "neg" (f64.const -2.22507385851e-308))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "neg" (f64.const 2.22507385851e-308))
  (f64.const -2.22507385851e-308)
)
(assert_return (invoke "neg" (f64.const -0.5)) (f64.const 0.5))
(assert_return (invoke "neg" (f64.const 0.5)) (f64.const -0.5))
(assert_return (invoke "neg" (f64.const -1.)) (f64.const 1.))
(assert_return (invoke "neg" (f64.const 1.)) (f64.const -1.))
(assert_return
  (invoke "neg" (f64.const -6.28318530718))
  (f64.const 6.28318530718)
)
(assert_return
  (invoke "neg" (f64.const 6.28318530718))
  (f64.const -6.28318530718)
)
(assert_return
  (invoke "neg" (f64.const -1.79769313486e+308))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "neg" (f64.const 1.79769313486e+308))
  (f64.const -1.79769313486e+308)
)
(assert_return (invoke "neg" (f64.const -inf)) (f64.const inf))
(assert_return (invoke "neg" (f64.const inf)) (f64.const -inf))
(assert_return
  (invoke "neg" (f64.const -nan:0x8000000000000))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "neg" (f64.const nan:0x8000000000000))
  (f64.const -nan:0x8000000000000)
)

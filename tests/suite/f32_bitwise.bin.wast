(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\02\60"
  "\01\7d\01\7d\60\02\7d\7d\01\7d\03\84\80\80\80\00"
  "\03\00\00\01\07\98\80\80\80\00\03\03\61\62\73\00"
  "\00\03\6e\65\67\00\01\08\63\6f\70\79\73\69\67\6e"
  "\00\02\0a\a1\80\80\80\00\03\85\80\80\80\00\00\20"
  "\00\8b\0b\85\80\80\80\00\00\20\00\8c\0b\87\80\80"
  "\80\00\00\20\00\20\01\98\0b"
)
(assert_return
  (invoke "copysign" (f32.const -0.) (f32.const -0.))
  (f32.const -0.)
)
(assert_return
  (invoke "copysign" (f32.const -0.) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "copysign" (f32.const 0.) (f32.const -0.))
  (f32.const -0.)
)
(assert_return (invoke "copysign" (f32.const 0.) (f32.const 0.)) (f32.const 0.))
(assert_return
  (invoke "copysign" (f32.const -0.) (f32.const -1.40129846432e-45))
  (f32.const -0.)
)
(assert_return
  (invoke "copysign" (f32.const -0.) (f32.const 1.40129846432e-45))
  (f32.const 0.)
)
(assert_return
  (invoke "copysign" (f32.const 0.) (f32.const -1.40129846432e-45))
  (f32.const -0.)
)
(assert_return
  (invoke "copysign" (f32.const 0.) (f32.const 1.40129846432e-45))
  (f32.const 0.)
)
(assert_return
  (invoke "copysign" (f32.const -0.) (f32.const -1.17549435082e-38))
  (f32.const -0.)
)
(assert_return
  (invoke "copysign" (f32.const -0.) (f32.const 1.17549435082e-38))
  (f32.const 0.)
)
(assert_return
  (invoke "copysign" (f32.const 0.) (f32.const -1.17549435082e-38))
  (f32.const -0.)
)
(assert_return
  (invoke "copysign" (f32.const 0.) (f32.const 1.17549435082e-38))
  (f32.const 0.)
)
(assert_return
  (invoke "copysign" (f32.const -0.) (f32.const -0.5))
  (f32.const -0.)
)
(assert_return
  (invoke "copysign" (f32.const -0.) (f32.const 0.5))
  (f32.const 0.)
)
(assert_return
  (invoke "copysign" (f32.const 0.) (f32.const -0.5))
  (f32.const -0.)
)
(assert_return
  (invoke "copysign" (f32.const 0.) (f32.const 0.5))
  (f32.const 0.)
)
(assert_return
  (invoke "copysign" (f32.const -0.) (f32.const -1.))
  (f32.const -0.)
)
(assert_return
  (invoke "copysign" (f32.const -0.) (f32.const 1.))
  (f32.const 0.)
)
(assert_return
  (invoke "copysign" (f32.const 0.) (f32.const -1.))
  (f32.const -0.)
)
(assert_return (invoke "copysign" (f32.const 0.) (f32.const 1.)) (f32.const 0.))
(assert_return
  (invoke "copysign" (f32.const -0.) (f32.const -6.28318548203))
  (f32.const -0.)
)
(assert_return
  (invoke "copysign" (f32.const -0.) (f32.const 6.28318548203))
  (f32.const 0.)
)
(assert_return
  (invoke "copysign" (f32.const 0.) (f32.const -6.28318548203))
  (f32.const -0.)
)
(assert_return
  (invoke "copysign" (f32.const 0.) (f32.const 6.28318548203))
  (f32.const 0.)
)
(assert_return
  (invoke "copysign" (f32.const -0.) (f32.const -3.40282346639e+38))
  (f32.const -0.)
)
(assert_return
  (invoke "copysign" (f32.const -0.) (f32.const 3.40282346639e+38))
  (f32.const 0.)
)
(assert_return
  (invoke "copysign" (f32.const 0.) (f32.const -3.40282346639e+38))
  (f32.const -0.)
)
(assert_return
  (invoke "copysign" (f32.const 0.) (f32.const 3.40282346639e+38))
  (f32.const 0.)
)
(assert_return
  (invoke "copysign" (f32.const -0.) (f32.const -inf))
  (f32.const -0.)
)
(assert_return
  (invoke "copysign" (f32.const -0.) (f32.const inf))
  (f32.const 0.)
)
(assert_return
  (invoke "copysign" (f32.const 0.) (f32.const -inf))
  (f32.const -0.)
)
(assert_return
  (invoke "copysign" (f32.const 0.) (f32.const inf))
  (f32.const 0.)
)
(assert_return
  (invoke "copysign" (f32.const -0.) (f32.const -nan:0x400000))
  (f32.const -0.)
)
(assert_return
  (invoke "copysign" (f32.const -0.) (f32.const nan:0x400000))
  (f32.const 0.)
)
(assert_return
  (invoke "copysign" (f32.const 0.) (f32.const -nan:0x400000))
  (f32.const -0.)
)
(assert_return
  (invoke "copysign" (f32.const 0.) (f32.const nan:0x400000))
  (f32.const 0.)
)
(assert_return
  (invoke "copysign" (f32.const -1.40129846432e-45) (f32.const -0.))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "copysign" (f32.const -1.40129846432e-45) (f32.const 0.))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "copysign" (f32.const 1.40129846432e-45) (f32.const -0.))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "copysign" (f32.const 1.40129846432e-45) (f32.const 0.))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.40129846432e-45)
    (f32.const -1.40129846432e-45)
  )
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.40129846432e-45)
    (f32.const 1.40129846432e-45)
  )
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.40129846432e-45)
    (f32.const -1.40129846432e-45)
  )
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.40129846432e-45)
    (f32.const 1.40129846432e-45)
  )
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.40129846432e-45)
    (f32.const -1.17549435082e-38)
  )
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.40129846432e-45)
    (f32.const 1.17549435082e-38)
  )
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.40129846432e-45)
    (f32.const -1.17549435082e-38)
  )
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.40129846432e-45)
    (f32.const 1.17549435082e-38)
  )
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "copysign" (f32.const -1.40129846432e-45) (f32.const -0.5))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "copysign" (f32.const -1.40129846432e-45) (f32.const 0.5))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "copysign" (f32.const 1.40129846432e-45) (f32.const -0.5))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "copysign" (f32.const 1.40129846432e-45) (f32.const 0.5))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "copysign" (f32.const -1.40129846432e-45) (f32.const -1.))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "copysign" (f32.const -1.40129846432e-45) (f32.const 1.))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "copysign" (f32.const 1.40129846432e-45) (f32.const -1.))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "copysign" (f32.const 1.40129846432e-45) (f32.const 1.))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "copysign" (f32.const -1.40129846432e-45) (f32.const -6.28318548203))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "copysign" (f32.const -1.40129846432e-45) (f32.const 6.28318548203))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "copysign" (f32.const 1.40129846432e-45) (f32.const -6.28318548203))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "copysign" (f32.const 1.40129846432e-45) (f32.const 6.28318548203))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.40129846432e-45)
    (f32.const -3.40282346639e+38)
  )
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.40129846432e-45)
    (f32.const 3.40282346639e+38)
  )
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.40129846432e-45)
    (f32.const -3.40282346639e+38)
  )
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.40129846432e-45)
    (f32.const 3.40282346639e+38)
  )
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "copysign" (f32.const -1.40129846432e-45) (f32.const -inf))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "copysign" (f32.const -1.40129846432e-45) (f32.const inf))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "copysign" (f32.const 1.40129846432e-45) (f32.const -inf))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "copysign" (f32.const 1.40129846432e-45) (f32.const inf))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "copysign" (f32.const -1.40129846432e-45) (f32.const -nan:0x400000))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "copysign" (f32.const -1.40129846432e-45) (f32.const nan:0x400000))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "copysign" (f32.const 1.40129846432e-45) (f32.const -nan:0x400000))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "copysign" (f32.const 1.40129846432e-45) (f32.const nan:0x400000))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "copysign" (f32.const -1.17549435082e-38) (f32.const -0.))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "copysign" (f32.const -1.17549435082e-38) (f32.const 0.))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "copysign" (f32.const 1.17549435082e-38) (f32.const -0.))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "copysign" (f32.const 1.17549435082e-38) (f32.const 0.))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.17549435082e-38)
    (f32.const -1.40129846432e-45)
  )
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.17549435082e-38)
    (f32.const 1.40129846432e-45)
  )
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.17549435082e-38)
    (f32.const -1.40129846432e-45)
  )
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.17549435082e-38)
    (f32.const 1.40129846432e-45)
  )
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.17549435082e-38)
    (f32.const -1.17549435082e-38)
  )
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.17549435082e-38)
    (f32.const 1.17549435082e-38)
  )
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.17549435082e-38)
    (f32.const -1.17549435082e-38)
  )
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.17549435082e-38)
    (f32.const 1.17549435082e-38)
  )
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "copysign" (f32.const -1.17549435082e-38) (f32.const -0.5))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "copysign" (f32.const -1.17549435082e-38) (f32.const 0.5))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "copysign" (f32.const 1.17549435082e-38) (f32.const -0.5))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "copysign" (f32.const 1.17549435082e-38) (f32.const 0.5))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "copysign" (f32.const -1.17549435082e-38) (f32.const -1.))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "copysign" (f32.const -1.17549435082e-38) (f32.const 1.))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "copysign" (f32.const 1.17549435082e-38) (f32.const -1.))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "copysign" (f32.const 1.17549435082e-38) (f32.const 1.))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "copysign" (f32.const -1.17549435082e-38) (f32.const -6.28318548203))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "copysign" (f32.const -1.17549435082e-38) (f32.const 6.28318548203))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "copysign" (f32.const 1.17549435082e-38) (f32.const -6.28318548203))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "copysign" (f32.const 1.17549435082e-38) (f32.const 6.28318548203))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.17549435082e-38)
    (f32.const -3.40282346639e+38)
  )
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const -1.17549435082e-38)
    (f32.const 3.40282346639e+38)
  )
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.17549435082e-38)
    (f32.const -3.40282346639e+38)
  )
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "copysign"
    (f32.const 1.17549435082e-38)
    (f32.const 3.40282346639e+38)
  )
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "copysign" (f32.const -1.17549435082e-38) (f32.const -inf))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "copysign" (f32.const -1.17549435082e-38) (f32.const inf))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "copysign" (f32.const 1.17549435082e-38) (f32.const -inf))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "copysign" (f32.const 1.17549435082e-38) (f32.const inf))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "copysign" (f32.const -1.17549435082e-38) (f32.const -nan:0x400000))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "copysign" (f32.const -1.17549435082e-38) (f32.const nan:0x400000))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "copysign" (f32.const 1.17549435082e-38) (f32.const -nan:0x400000))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "copysign" (f32.const 1.17549435082e-38) (f32.const nan:0x400000))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const -0.))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const 0.))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const -0.))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const 0.))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const -1.40129846432e-45))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const 1.40129846432e-45))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const -1.40129846432e-45))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const 1.40129846432e-45))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const -1.17549435082e-38))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const 1.17549435082e-38))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const -1.17549435082e-38))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const 1.17549435082e-38))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const -1.))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const 1.))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const -1.))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const 1.))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const -6.28318548203))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const 6.28318548203))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const -6.28318548203))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const 6.28318548203))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const -3.40282346639e+38))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const 3.40282346639e+38))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const -3.40282346639e+38))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const 3.40282346639e+38))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const -inf))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const inf))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const -inf))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const inf))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const -nan:0x400000))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const -0.5) (f32.const nan:0x400000))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const -nan:0x400000))
  (f32.const -0.5)
)
(assert_return
  (invoke "copysign" (f32.const 0.5) (f32.const nan:0x400000))
  (f32.const 0.5)
)
(assert_return
  (invoke "copysign" (f32.const -1.) (f32.const -0.))
  (f32.const -1.)
)
(assert_return
  (invoke "copysign" (f32.const -1.) (f32.const 0.))
  (f32.const 1.)
)
(assert_return
  (invoke "copysign" (f32.const 1.) (f32.const -0.))
  (f32.const -1.)
)
(assert_return (invoke "copysign" (f32.const 1.) (f32.const 0.)) (f32.const 1.))
(assert_return
  (invoke "copysign" (f32.const -1.) (f32.const -1.40129846432e-45))
  (f32.const -1.)
)
(assert_return
  (invoke "copysign" (f32.const -1.) (f32.const 1.40129846432e-45))
  (f32.const 1.)
)
(assert_return
  (invoke "copysign" (f32.const 1.) (f32.const -1.40129846432e-45))
  (f32.const -1.)
)
(assert_return
  (invoke "copysign" (f32.const 1.) (f32.const 1.40129846432e-45))
  (f32.const 1.)
)
(assert_return
  (invoke "copysign" (f32.const -1.) (f32.const -1.17549435082e-38))
  (f32.const -1.)
)
(assert_return
  (invoke "copysign" (f32.const -1.) (f32.const 1.17549435082e-38))
  (f32.const 1.)
)
(assert_return
  (invoke "copysign" (f32.const 1.) (f32.const -1.17549435082e-38))
  (f32.const -1.)
)
(assert_return
  (invoke "copysign" (f32.const 1.) (f32.const 1.17549435082e-38))
  (f32.const 1.)
)
(assert_return
  (invoke "copysign" (f32.const -1.) (f32.const -0.5))
  (f32.const -1.)
)
(assert_return
  (invoke "copysign" (f32.const -1.) (f32.const 0.5))
  (f32.const 1.)
)
(assert_return
  (invoke "copysign" (f32.const 1.) (f32.const -0.5))
  (f32.const -1.)
)
(assert_return
  (invoke "copysign" (f32.const 1.) (f32.const 0.5))
  (f32.const 1.)
)
(assert_return
  (invoke "copysign" (f32.const -1.) (f32.const -1.))
  (f32.const -1.)
)
(assert_return
  (invoke "copysign" (f32.const -1.) (f32.const 1.))
  (f32.const 1.)
)
(assert_return
  (invoke "copysign" (f32.const 1.) (f32.const -1.))
  (f32.const -1.)
)
(assert_return (invoke "copysign" (f32.const 1.) (f32.const 1.)) (f32.const 1.))
(assert_return
  (invoke "copysign" (f32.const -1.) (f32.const -6.28318548203))
  (f32.const -1.)
)
(assert_return
  (invoke "copysign" (f32.const -1.) (f32.const 6.28318548203))
  (f32.const 1.)
)
(assert_return
  (invoke "copysign" (f32.const 1.) (f32.const -6.28318548203))
  (f32.const -1.)
)
(assert_return
  (invoke "copysign" (f32.const 1.) (f32.const 6.28318548203))
  (f32.const 1.)
)
(assert_return
  (invoke "copysign" (f32.const -1.) (f32.const -3.40282346639e+38))
  (f32.const -1.)
)
(assert_return
  (invoke "copysign" (f32.const -1.) (f32.const 3.40282346639e+38))
  (f32.const 1.)
)
(assert_return
  (invoke "copysign" (f32.const 1.) (f32.const -3.40282346639e+38))
  (f32.const -1.)
)
(assert_return
  (invoke "copysign" (f32.const 1.) (f32.const 3.40282346639e+38))
  (f32.const 1.)
)
(assert_return
  (invoke "copysign" (f32.const -1.) (f32.const -inf))
  (f32.const -1.)
)
(assert_return
  (invoke "copysign" (f32.const -1.) (f32.const inf))
  (f32.const 1.)
)
(assert_return
  (invoke "copysign" (f32.const 1.) (f32.const -inf))
  (f32.const -1.)
)
(assert_return
  (invoke "copysign" (f32.const 1.) (f32.const inf))
  (f32.const 1.)
)
(assert_return
  (invoke "copysign" (f32.const -1.) (f32.const -nan:0x400000))
  (f32.const -1.)
)
(assert_return
  (invoke "copysign" (f32.const -1.) (f32.const nan:0x400000))
  (f32.const 1.)
)
(assert_return
  (invoke "copysign" (f32.const 1.) (f32.const -nan:0x400000))
  (f32.const -1.)
)
(assert_return
  (invoke "copysign" (f32.const 1.) (f32.const nan:0x400000))
  (f32.const 1.)
)
(assert_return
  (invoke "copysign" (f32.const -6.28318548203) (f32.const -0.))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const -6.28318548203) (f32.const 0.))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const 6.28318548203) (f32.const -0.))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const 6.28318548203) (f32.const 0.))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const -6.28318548203) (f32.const -1.40129846432e-45))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const -6.28318548203) (f32.const 1.40129846432e-45))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const 6.28318548203) (f32.const -1.40129846432e-45))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const 6.28318548203) (f32.const 1.40129846432e-45))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const -6.28318548203) (f32.const -1.17549435082e-38))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const -6.28318548203) (f32.const 1.17549435082e-38))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const 6.28318548203) (f32.const -1.17549435082e-38))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const 6.28318548203) (f32.const 1.17549435082e-38))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const -6.28318548203) (f32.const -0.5))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const -6.28318548203) (f32.const 0.5))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const 6.28318548203) (f32.const -0.5))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const 6.28318548203) (f32.const 0.5))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const -6.28318548203) (f32.const -1.))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const -6.28318548203) (f32.const 1.))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const 6.28318548203) (f32.const -1.))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const 6.28318548203) (f32.const 1.))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const -6.28318548203) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const -6.28318548203) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const 6.28318548203) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const 6.28318548203) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const -6.28318548203) (f32.const -3.40282346639e+38))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const -6.28318548203) (f32.const 3.40282346639e+38))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const 6.28318548203) (f32.const -3.40282346639e+38))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const 6.28318548203) (f32.const 3.40282346639e+38))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const -6.28318548203) (f32.const -inf))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const -6.28318548203) (f32.const inf))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const 6.28318548203) (f32.const -inf))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const 6.28318548203) (f32.const inf))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const -6.28318548203) (f32.const -nan:0x400000))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const -6.28318548203) (f32.const nan:0x400000))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const 6.28318548203) (f32.const -nan:0x400000))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const 6.28318548203) (f32.const nan:0x400000))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "copysign" (f32.const -3.40282346639e+38) (f32.const -0.))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "copysign" (f32.const -3.40282346639e+38) (f32.const 0.))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "copysign" (f32.const 3.40282346639e+38) (f32.const -0.))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "copysign" (f32.const 3.40282346639e+38) (f32.const 0.))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const -3.40282346639e+38)
    (f32.const -1.40129846432e-45)
  )
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const -3.40282346639e+38)
    (f32.const 1.40129846432e-45)
  )
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const 3.40282346639e+38)
    (f32.const -1.40129846432e-45)
  )
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const 3.40282346639e+38)
    (f32.const 1.40129846432e-45)
  )
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const -3.40282346639e+38)
    (f32.const -1.17549435082e-38)
  )
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const -3.40282346639e+38)
    (f32.const 1.17549435082e-38)
  )
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const 3.40282346639e+38)
    (f32.const -1.17549435082e-38)
  )
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const 3.40282346639e+38)
    (f32.const 1.17549435082e-38)
  )
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "copysign" (f32.const -3.40282346639e+38) (f32.const -0.5))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "copysign" (f32.const -3.40282346639e+38) (f32.const 0.5))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "copysign" (f32.const 3.40282346639e+38) (f32.const -0.5))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "copysign" (f32.const 3.40282346639e+38) (f32.const 0.5))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "copysign" (f32.const -3.40282346639e+38) (f32.const -1.))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "copysign" (f32.const -3.40282346639e+38) (f32.const 1.))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "copysign" (f32.const 3.40282346639e+38) (f32.const -1.))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "copysign" (f32.const 3.40282346639e+38) (f32.const 1.))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "copysign" (f32.const -3.40282346639e+38) (f32.const -6.28318548203))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "copysign" (f32.const -3.40282346639e+38) (f32.const 6.28318548203))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "copysign" (f32.const 3.40282346639e+38) (f32.const -6.28318548203))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "copysign" (f32.const 3.40282346639e+38) (f32.const 6.28318548203))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const -3.40282346639e+38)
    (f32.const -3.40282346639e+38)
  )
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const -3.40282346639e+38)
    (f32.const 3.40282346639e+38)
  )
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const 3.40282346639e+38)
    (f32.const -3.40282346639e+38)
  )
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "copysign"
    (f32.const 3.40282346639e+38)
    (f32.const 3.40282346639e+38)
  )
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "copysign" (f32.const -3.40282346639e+38) (f32.const -inf))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "copysign" (f32.const -3.40282346639e+38) (f32.const inf))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "copysign" (f32.const 3.40282346639e+38) (f32.const -inf))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "copysign" (f32.const 3.40282346639e+38) (f32.const inf))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "copysign" (f32.const -3.40282346639e+38) (f32.const -nan:0x400000))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "copysign" (f32.const -3.40282346639e+38) (f32.const nan:0x400000))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "copysign" (f32.const 3.40282346639e+38) (f32.const -nan:0x400000))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "copysign" (f32.const 3.40282346639e+38) (f32.const nan:0x400000))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const -0.))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const 0.))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const -0.))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const 0.))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const -1.40129846432e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const 1.40129846432e-45))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const -1.40129846432e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const 1.40129846432e-45))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const -1.17549435082e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const 1.17549435082e-38))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const -1.17549435082e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const 1.17549435082e-38))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const -0.5))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const 0.5))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const -0.5))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const 0.5))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const -1.))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const 1.))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const -1.))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const 1.))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const -6.28318548203))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const 6.28318548203))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const -6.28318548203))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const 6.28318548203))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const -3.40282346639e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const 3.40282346639e+38))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const -3.40282346639e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const 3.40282346639e+38))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const -nan:0x400000))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const -inf) (f32.const nan:0x400000))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const -nan:0x400000))
  (f32.const -inf)
)
(assert_return
  (invoke "copysign" (f32.const inf) (f32.const nan:0x400000))
  (f32.const inf)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const -0.))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const 0.))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const -0.))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const 0.))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const -1.40129846432e-45))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const 1.40129846432e-45))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const -1.40129846432e-45))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const 1.40129846432e-45))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const -1.17549435082e-38))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const 1.17549435082e-38))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const -1.17549435082e-38))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const 1.17549435082e-38))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const -0.5))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const 0.5))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const -0.5))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const 0.5))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const -1.))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const 1.))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const -1.))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const 1.))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const -6.28318548203))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const 6.28318548203))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const -6.28318548203))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const 6.28318548203))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const -3.40282346639e+38))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const 3.40282346639e+38))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const -3.40282346639e+38))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const 3.40282346639e+38))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const -inf))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const inf))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const -inf))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const inf))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const -nan:0x400000) (f32.const nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const -nan:0x400000))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "copysign" (f32.const nan:0x400000) (f32.const nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return (invoke "abs" (f32.const -0.)) (f32.const 0.))
(assert_return (invoke "abs" (f32.const 0.)) (f32.const 0.))
(assert_return
  (invoke "abs" (f32.const -1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "abs" (f32.const 1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "abs" (f32.const -1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "abs" (f32.const 1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return (invoke "abs" (f32.const -0.5)) (f32.const 0.5))
(assert_return (invoke "abs" (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "abs" (f32.const -1.)) (f32.const 1.))
(assert_return (invoke "abs" (f32.const 1.)) (f32.const 1.))
(assert_return
  (invoke "abs" (f32.const -6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "abs" (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "abs" (f32.const -3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "abs" (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return (invoke "abs" (f32.const -inf)) (f32.const inf))
(assert_return (invoke "abs" (f32.const inf)) (f32.const inf))
(assert_return
  (invoke "abs" (f32.const -nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return (invoke "abs" (f32.const nan:0x400000)) (f32.const nan:0x400000))
(assert_return (invoke "neg" (f32.const -0.)) (f32.const 0.))
(assert_return (invoke "neg" (f32.const 0.)) (f32.const -0.))
(assert_return
  (invoke "neg" (f32.const -1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "neg" (f32.const 1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "neg" (f32.const -1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "neg" (f32.const 1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return (invoke "neg" (f32.const -0.5)) (f32.const 0.5))
(assert_return (invoke "neg" (f32.const 0.5)) (f32.const -0.5))
(assert_return (invoke "neg" (f32.const -1.)) (f32.const 1.))
(assert_return (invoke "neg" (f32.const 1.)) (f32.const -1.))
(assert_return
  (invoke "neg" (f32.const -6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "neg" (f32.const 6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "neg" (f32.const -3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "neg" (f32.const 3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return (invoke "neg" (f32.const -inf)) (f32.const inf))
(assert_return (invoke "neg" (f32.const inf)) (f32.const -inf))
(assert_return
  (invoke "neg" (f32.const -nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "neg" (f32.const nan:0x400000))
  (f32.const -nan:0x400000)
)

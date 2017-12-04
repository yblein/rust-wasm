(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\02\60"
  "\02\7d\7d\01\7d\60\01\7d\01\7d\03\8c\80\80\80\00"
  "\0b\00\00\00\00\01\00\00\01\01\01\01\07\cd\80\80"
  "\80\00\0b\03\61\64\64\00\00\03\73\75\62\00\01\03"
  "\6d\75\6c\00\02\03\64\69\76\00\03\04\73\71\72\74"
  "\00\04\03\6d\69\6e\00\05\03\6d\61\78\00\06\04\63"
  "\65\69\6c\00\07\05\66\6c\6f\6f\72\00\08\05\74\72"
  "\75\6e\63\00\09\07\6e\65\61\72\65\73\74\00\0a\0a"
  "\fb\80\80\80\00\0b\87\80\80\80\00\00\20\00\20\01"
  "\92\0b\87\80\80\80\00\00\20\00\20\01\93\0b\87\80"
  "\80\80\00\00\20\00\20\01\94\0b\87\80\80\80\00\00"
  "\20\00\20\01\95\0b\85\80\80\80\00\00\20\00\91\0b"
  "\87\80\80\80\00\00\20\00\20\01\96\0b\87\80\80\80"
  "\00\00\20\00\20\01\97\0b\85\80\80\80\00\00\20\00"
  "\8d\0b\85\80\80\80\00\00\20\00\8e\0b\85\80\80\80"
  "\00\00\20\00\8f\0b\85\80\80\80\00\00\20\00\90\0b"
)
(assert_return (invoke "add" (f32.const -0.) (f32.const -0.)) (f32.const -0.))
(assert_return (invoke "add" (f32.const -0.) (f32.const 0.)) (f32.const 0.))
(assert_return (invoke "add" (f32.const 0.) (f32.const -0.)) (f32.const 0.))
(assert_return (invoke "add" (f32.const 0.) (f32.const 0.)) (f32.const 0.))
(assert_return
  (invoke "add" (f32.const -0.) (f32.const -1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "add" (f32.const -0.) (f32.const 1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "add" (f32.const 0.) (f32.const -1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "add" (f32.const 0.) (f32.const 1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "add" (f32.const -0.) (f32.const -1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "add" (f32.const -0.) (f32.const 1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "add" (f32.const 0.) (f32.const -1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "add" (f32.const 0.) (f32.const 1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return (invoke "add" (f32.const -0.) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "add" (f32.const -0.) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "add" (f32.const 0.) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "add" (f32.const 0.) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "add" (f32.const -0.) (f32.const -1.)) (f32.const -1.))
(assert_return (invoke "add" (f32.const -0.) (f32.const 1.)) (f32.const 1.))
(assert_return (invoke "add" (f32.const 0.) (f32.const -1.)) (f32.const -1.))
(assert_return (invoke "add" (f32.const 0.) (f32.const 1.)) (f32.const 1.))
(assert_return
  (invoke "add" (f32.const -0.) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "add" (f32.const -0.) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "add" (f32.const 0.) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "add" (f32.const 0.) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "add" (f32.const -0.) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const -0.) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const 0.) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const 0.) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return (invoke "add" (f32.const -0.) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "add" (f32.const -0.) (f32.const inf)) (f32.const inf))
(assert_return (invoke "add" (f32.const 0.) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "add" (f32.const 0.) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "add" (f32.const -0.) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -0.) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -0.) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -0.) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 0.) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 0.) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 0.) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 0.) (f32.const nan:0x200000))
)
(assert_return
  (invoke "add" (f32.const -1.40129846432e-45) (f32.const -0.))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "add" (f32.const -1.40129846432e-45) (f32.const 0.))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "add" (f32.const 1.40129846432e-45) (f32.const -0.))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "add" (f32.const 1.40129846432e-45) (f32.const 0.))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "add" (f32.const -1.40129846432e-45) (f32.const -1.40129846432e-45))
  (f32.const -2.80259692865e-45)
)
(assert_return
  (invoke "add" (f32.const -1.40129846432e-45) (f32.const 1.40129846432e-45))
  (f32.const 0.)
)
(assert_return
  (invoke "add" (f32.const 1.40129846432e-45) (f32.const -1.40129846432e-45))
  (f32.const 0.)
)
(assert_return
  (invoke "add" (f32.const 1.40129846432e-45) (f32.const 1.40129846432e-45))
  (f32.const 2.80259692865e-45)
)
(assert_return
  (invoke "add" (f32.const -1.40129846432e-45) (f32.const -1.17549435082e-38))
  (f32.const -1.17549449095e-38)
)
(assert_return
  (invoke "add" (f32.const -1.40129846432e-45) (f32.const 1.17549435082e-38))
  (f32.const 1.17549421069e-38)
)
(assert_return
  (invoke "add" (f32.const 1.40129846432e-45) (f32.const -1.17549435082e-38))
  (f32.const -1.17549421069e-38)
)
(assert_return
  (invoke "add" (f32.const 1.40129846432e-45) (f32.const 1.17549435082e-38))
  (f32.const 1.17549449095e-38)
)
(assert_return
  (invoke "add" (f32.const -1.40129846432e-45) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "add" (f32.const -1.40129846432e-45) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "add" (f32.const 1.40129846432e-45) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "add" (f32.const 1.40129846432e-45) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "add" (f32.const -1.40129846432e-45) (f32.const -1.))
  (f32.const -1.)
)
(assert_return
  (invoke "add" (f32.const -1.40129846432e-45) (f32.const 1.))
  (f32.const 1.)
)
(assert_return
  (invoke "add" (f32.const 1.40129846432e-45) (f32.const -1.))
  (f32.const -1.)
)
(assert_return
  (invoke "add" (f32.const 1.40129846432e-45) (f32.const 1.))
  (f32.const 1.)
)
(assert_return
  (invoke "add" (f32.const -1.40129846432e-45) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "add" (f32.const -1.40129846432e-45) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "add" (f32.const 1.40129846432e-45) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "add" (f32.const 1.40129846432e-45) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "add" (f32.const -1.40129846432e-45) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const -1.40129846432e-45) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const 1.40129846432e-45) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const 1.40129846432e-45) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const -1.40129846432e-45) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -1.40129846432e-45) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const 1.40129846432e-45) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const 1.40129846432e-45) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -1.40129846432e-45) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -1.40129846432e-45) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -1.40129846432e-45) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -1.40129846432e-45) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 1.40129846432e-45) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 1.40129846432e-45) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 1.40129846432e-45) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 1.40129846432e-45) (f32.const nan:0x200000))
)
(assert_return
  (invoke "add" (f32.const -1.17549435082e-38) (f32.const -0.))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "add" (f32.const -1.17549435082e-38) (f32.const 0.))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "add" (f32.const 1.17549435082e-38) (f32.const -0.))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "add" (f32.const 1.17549435082e-38) (f32.const 0.))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "add" (f32.const -1.17549435082e-38) (f32.const -1.40129846432e-45))
  (f32.const -1.17549449095e-38)
)
(assert_return
  (invoke "add" (f32.const -1.17549435082e-38) (f32.const 1.40129846432e-45))
  (f32.const -1.17549421069e-38)
)
(assert_return
  (invoke "add" (f32.const 1.17549435082e-38) (f32.const -1.40129846432e-45))
  (f32.const 1.17549421069e-38)
)
(assert_return
  (invoke "add" (f32.const 1.17549435082e-38) (f32.const 1.40129846432e-45))
  (f32.const 1.17549449095e-38)
)
(assert_return
  (invoke "add" (f32.const -1.17549435082e-38) (f32.const -1.17549435082e-38))
  (f32.const -2.35098870164e-38)
)
(assert_return
  (invoke "add" (f32.const -1.17549435082e-38) (f32.const 1.17549435082e-38))
  (f32.const 0.)
)
(assert_return
  (invoke "add" (f32.const 1.17549435082e-38) (f32.const -1.17549435082e-38))
  (f32.const 0.)
)
(assert_return
  (invoke "add" (f32.const 1.17549435082e-38) (f32.const 1.17549435082e-38))
  (f32.const 2.35098870164e-38)
)
(assert_return
  (invoke "add" (f32.const -1.17549435082e-38) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "add" (f32.const -1.17549435082e-38) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "add" (f32.const 1.17549435082e-38) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "add" (f32.const 1.17549435082e-38) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "add" (f32.const -1.17549435082e-38) (f32.const -1.))
  (f32.const -1.)
)
(assert_return
  (invoke "add" (f32.const -1.17549435082e-38) (f32.const 1.))
  (f32.const 1.)
)
(assert_return
  (invoke "add" (f32.const 1.17549435082e-38) (f32.const -1.))
  (f32.const -1.)
)
(assert_return
  (invoke "add" (f32.const 1.17549435082e-38) (f32.const 1.))
  (f32.const 1.)
)
(assert_return
  (invoke "add" (f32.const -1.17549435082e-38) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "add" (f32.const -1.17549435082e-38) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "add" (f32.const 1.17549435082e-38) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "add" (f32.const 1.17549435082e-38) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "add" (f32.const -1.17549435082e-38) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const -1.17549435082e-38) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const 1.17549435082e-38) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const 1.17549435082e-38) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const -1.17549435082e-38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -1.17549435082e-38) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const 1.17549435082e-38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const 1.17549435082e-38) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -1.17549435082e-38) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -1.17549435082e-38) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -1.17549435082e-38) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -1.17549435082e-38) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 1.17549435082e-38) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 1.17549435082e-38) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 1.17549435082e-38) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 1.17549435082e-38) (f32.const nan:0x200000))
)
(assert_return (invoke "add" (f32.const -0.5) (f32.const -0.)) (f32.const -0.5))
(assert_return (invoke "add" (f32.const -0.5) (f32.const 0.)) (f32.const -0.5))
(assert_return (invoke "add" (f32.const 0.5) (f32.const -0.)) (f32.const 0.5))
(assert_return (invoke "add" (f32.const 0.5) (f32.const 0.)) (f32.const 0.5))
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const -1.40129846432e-45))
  (f32.const -0.5)
)
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const 1.40129846432e-45))
  (f32.const -0.5)
)
(assert_return
  (invoke "add" (f32.const 0.5) (f32.const -1.40129846432e-45))
  (f32.const 0.5)
)
(assert_return
  (invoke "add" (f32.const 0.5) (f32.const 1.40129846432e-45))
  (f32.const 0.5)
)
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const -1.17549435082e-38))
  (f32.const -0.5)
)
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const 1.17549435082e-38))
  (f32.const -0.5)
)
(assert_return
  (invoke "add" (f32.const 0.5) (f32.const -1.17549435082e-38))
  (f32.const 0.5)
)
(assert_return
  (invoke "add" (f32.const 0.5) (f32.const 1.17549435082e-38))
  (f32.const 0.5)
)
(assert_return (invoke "add" (f32.const -0.5) (f32.const -0.5)) (f32.const -1.))
(assert_return (invoke "add" (f32.const -0.5) (f32.const 0.5)) (f32.const 0.))
(assert_return (invoke "add" (f32.const 0.5) (f32.const -0.5)) (f32.const 0.))
(assert_return (invoke "add" (f32.const 0.5) (f32.const 0.5)) (f32.const 1.))
(assert_return (invoke "add" (f32.const -0.5) (f32.const -1.)) (f32.const -1.5))
(assert_return (invoke "add" (f32.const -0.5) (f32.const 1.)) (f32.const 0.5))
(assert_return (invoke "add" (f32.const 0.5) (f32.const -1.)) (f32.const -0.5))
(assert_return (invoke "add" (f32.const 0.5) (f32.const 1.)) (f32.const 1.5))
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const -6.28318548203))
  (f32.const -6.78318548203)
)
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const 6.28318548203))
  (f32.const 5.78318548203)
)
(assert_return
  (invoke "add" (f32.const 0.5) (f32.const -6.28318548203))
  (f32.const -5.78318548203)
)
(assert_return
  (invoke "add" (f32.const 0.5) (f32.const 6.28318548203))
  (f32.const 6.78318548203)
)
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const 0.5) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const 0.5) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const -inf))
  (f32.const -inf)
)
(assert_return (invoke "add" (f32.const -0.5) (f32.const inf)) (f32.const inf))
(assert_return (invoke "add" (f32.const 0.5) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "add" (f32.const 0.5) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "add" (f32.const -0.5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -0.5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -0.5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -0.5) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 0.5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 0.5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 0.5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 0.5) (f32.const nan:0x200000))
)
(assert_return (invoke "add" (f32.const -1.) (f32.const -0.)) (f32.const -1.))
(assert_return (invoke "add" (f32.const -1.) (f32.const 0.)) (f32.const -1.))
(assert_return (invoke "add" (f32.const 1.) (f32.const -0.)) (f32.const 1.))
(assert_return (invoke "add" (f32.const 1.) (f32.const 0.)) (f32.const 1.))
(assert_return
  (invoke "add" (f32.const -1.) (f32.const -1.40129846432e-45))
  (f32.const -1.)
)
(assert_return
  (invoke "add" (f32.const -1.) (f32.const 1.40129846432e-45))
  (f32.const -1.)
)
(assert_return
  (invoke "add" (f32.const 1.) (f32.const -1.40129846432e-45))
  (f32.const 1.)
)
(assert_return
  (invoke "add" (f32.const 1.) (f32.const 1.40129846432e-45))
  (f32.const 1.)
)
(assert_return
  (invoke "add" (f32.const -1.) (f32.const -1.17549435082e-38))
  (f32.const -1.)
)
(assert_return
  (invoke "add" (f32.const -1.) (f32.const 1.17549435082e-38))
  (f32.const -1.)
)
(assert_return
  (invoke "add" (f32.const 1.) (f32.const -1.17549435082e-38))
  (f32.const 1.)
)
(assert_return
  (invoke "add" (f32.const 1.) (f32.const 1.17549435082e-38))
  (f32.const 1.)
)
(assert_return (invoke "add" (f32.const -1.) (f32.const -0.5)) (f32.const -1.5))
(assert_return (invoke "add" (f32.const -1.) (f32.const 0.5)) (f32.const -0.5))
(assert_return (invoke "add" (f32.const 1.) (f32.const -0.5)) (f32.const 0.5))
(assert_return (invoke "add" (f32.const 1.) (f32.const 0.5)) (f32.const 1.5))
(assert_return (invoke "add" (f32.const -1.) (f32.const -1.)) (f32.const -2.))
(assert_return (invoke "add" (f32.const -1.) (f32.const 1.)) (f32.const 0.))
(assert_return (invoke "add" (f32.const 1.) (f32.const -1.)) (f32.const 0.))
(assert_return (invoke "add" (f32.const 1.) (f32.const 1.)) (f32.const 2.))
(assert_return
  (invoke "add" (f32.const -1.) (f32.const -6.28318548203))
  (f32.const -7.28318548203)
)
(assert_return
  (invoke "add" (f32.const -1.) (f32.const 6.28318548203))
  (f32.const 5.28318548203)
)
(assert_return
  (invoke "add" (f32.const 1.) (f32.const -6.28318548203))
  (f32.const -5.28318548203)
)
(assert_return
  (invoke "add" (f32.const 1.) (f32.const 6.28318548203))
  (f32.const 7.28318548203)
)
(assert_return
  (invoke "add" (f32.const -1.) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const -1.) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const 1.) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const 1.) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return (invoke "add" (f32.const -1.) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "add" (f32.const -1.) (f32.const inf)) (f32.const inf))
(assert_return (invoke "add" (f32.const 1.) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "add" (f32.const 1.) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "add" (f32.const -1.) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -1.) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -1.) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -1.) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 1.) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 1.) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 1.) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 1.) (f32.const nan:0x200000))
)
(assert_return
  (invoke "add" (f32.const -6.28318548203) (f32.const -0.))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "add" (f32.const -6.28318548203) (f32.const 0.))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "add" (f32.const 6.28318548203) (f32.const -0.))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "add" (f32.const 6.28318548203) (f32.const 0.))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "add" (f32.const -6.28318548203) (f32.const -1.40129846432e-45))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "add" (f32.const -6.28318548203) (f32.const 1.40129846432e-45))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "add" (f32.const 6.28318548203) (f32.const -1.40129846432e-45))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "add" (f32.const 6.28318548203) (f32.const 1.40129846432e-45))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "add" (f32.const -6.28318548203) (f32.const -1.17549435082e-38))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "add" (f32.const -6.28318548203) (f32.const 1.17549435082e-38))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "add" (f32.const 6.28318548203) (f32.const -1.17549435082e-38))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "add" (f32.const 6.28318548203) (f32.const 1.17549435082e-38))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "add" (f32.const -6.28318548203) (f32.const -0.5))
  (f32.const -6.78318548203)
)
(assert_return
  (invoke "add" (f32.const -6.28318548203) (f32.const 0.5))
  (f32.const -5.78318548203)
)
(assert_return
  (invoke "add" (f32.const 6.28318548203) (f32.const -0.5))
  (f32.const 5.78318548203)
)
(assert_return
  (invoke "add" (f32.const 6.28318548203) (f32.const 0.5))
  (f32.const 6.78318548203)
)
(assert_return
  (invoke "add" (f32.const -6.28318548203) (f32.const -1.))
  (f32.const -7.28318548203)
)
(assert_return
  (invoke "add" (f32.const -6.28318548203) (f32.const 1.))
  (f32.const -5.28318548203)
)
(assert_return
  (invoke "add" (f32.const 6.28318548203) (f32.const -1.))
  (f32.const 5.28318548203)
)
(assert_return
  (invoke "add" (f32.const 6.28318548203) (f32.const 1.))
  (f32.const 7.28318548203)
)
(assert_return
  (invoke "add" (f32.const -6.28318548203) (f32.const -6.28318548203))
  (f32.const -12.5663709641)
)
(assert_return
  (invoke "add" (f32.const -6.28318548203) (f32.const 6.28318548203))
  (f32.const 0.)
)
(assert_return
  (invoke "add" (f32.const 6.28318548203) (f32.const -6.28318548203))
  (f32.const 0.)
)
(assert_return
  (invoke "add" (f32.const 6.28318548203) (f32.const 6.28318548203))
  (f32.const 12.5663709641)
)
(assert_return
  (invoke "add" (f32.const -6.28318548203) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const -6.28318548203) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const 6.28318548203) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const 6.28318548203) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const -6.28318548203) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -6.28318548203) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const 6.28318548203) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const 6.28318548203) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -6.28318548203) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -6.28318548203) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -6.28318548203) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -6.28318548203) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 6.28318548203) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 6.28318548203) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 6.28318548203) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 6.28318548203) (f32.const nan:0x200000))
)
(assert_return
  (invoke "add" (f32.const -3.40282346639e+38) (f32.const -0.))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const -3.40282346639e+38) (f32.const 0.))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const 3.40282346639e+38) (f32.const -0.))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const 3.40282346639e+38) (f32.const 0.))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const -3.40282346639e+38) (f32.const -1.40129846432e-45))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const -3.40282346639e+38) (f32.const 1.40129846432e-45))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const 3.40282346639e+38) (f32.const -1.40129846432e-45))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const 3.40282346639e+38) (f32.const 1.40129846432e-45))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const -3.40282346639e+38) (f32.const -1.17549435082e-38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const -3.40282346639e+38) (f32.const 1.17549435082e-38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const 3.40282346639e+38) (f32.const -1.17549435082e-38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const 3.40282346639e+38) (f32.const 1.17549435082e-38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const -3.40282346639e+38) (f32.const -0.5))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const -3.40282346639e+38) (f32.const 0.5))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const 3.40282346639e+38) (f32.const -0.5))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const 3.40282346639e+38) (f32.const 0.5))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const -3.40282346639e+38) (f32.const -1.))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const -3.40282346639e+38) (f32.const 1.))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const 3.40282346639e+38) (f32.const -1.))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const 3.40282346639e+38) (f32.const 1.))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const -3.40282346639e+38) (f32.const -6.28318548203))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const -3.40282346639e+38) (f32.const 6.28318548203))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const 3.40282346639e+38) (f32.const -6.28318548203))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const 3.40282346639e+38) (f32.const 6.28318548203))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "add" (f32.const -3.40282346639e+38) (f32.const -3.40282346639e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -3.40282346639e+38) (f32.const 3.40282346639e+38))
  (f32.const 0.)
)
(assert_return
  (invoke "add" (f32.const 3.40282346639e+38) (f32.const -3.40282346639e+38))
  (f32.const 0.)
)
(assert_return
  (invoke "add" (f32.const 3.40282346639e+38) (f32.const 3.40282346639e+38))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const -3.40282346639e+38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -3.40282346639e+38) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const 3.40282346639e+38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const 3.40282346639e+38) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -3.40282346639e+38) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -3.40282346639e+38) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -3.40282346639e+38) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -3.40282346639e+38) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 3.40282346639e+38) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 3.40282346639e+38) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 3.40282346639e+38) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 3.40282346639e+38) (f32.const nan:0x200000))
)
(assert_return (invoke "add" (f32.const -inf) (f32.const -0.)) (f32.const -inf))
(assert_return (invoke "add" (f32.const -inf) (f32.const 0.)) (f32.const -inf))
(assert_return (invoke "add" (f32.const inf) (f32.const -0.)) (f32.const inf))
(assert_return (invoke "add" (f32.const inf) (f32.const 0.)) (f32.const inf))
(assert_return
  (invoke "add" (f32.const -inf) (f32.const -1.40129846432e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const 1.40129846432e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const -1.40129846432e-45))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const 1.40129846432e-45))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const -1.17549435082e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const 1.17549435082e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const -1.17549435082e-38))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const 1.17549435082e-38))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const -0.5))
  (f32.const -inf)
)
(assert_return (invoke "add" (f32.const -inf) (f32.const 0.5)) (f32.const -inf))
(assert_return (invoke "add" (f32.const inf) (f32.const -0.5)) (f32.const inf))
(assert_return (invoke "add" (f32.const inf) (f32.const 0.5)) (f32.const inf))
(assert_return (invoke "add" (f32.const -inf) (f32.const -1.)) (f32.const -inf))
(assert_return (invoke "add" (f32.const -inf) (f32.const 1.)) (f32.const -inf))
(assert_return (invoke "add" (f32.const inf) (f32.const -1.)) (f32.const inf))
(assert_return (invoke "add" (f32.const inf) (f32.const 1.)) (f32.const inf))
(assert_return
  (invoke "add" (f32.const -inf) (f32.const -6.28318548203))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const 6.28318548203))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const -6.28318548203))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const 6.28318548203))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const -3.40282346639e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const 3.40282346639e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const -3.40282346639e+38))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const 3.40282346639e+38))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const -inf))
  (f32.const -inf)
)
(assert_return_canonical_nan (invoke "add" (f32.const -inf) (f32.const inf)))
(assert_return_canonical_nan (invoke "add" (f32.const inf) (f32.const -inf)))
(assert_return (invoke "add" (f32.const inf) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "add" (f32.const -inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -0.))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -0.))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const 0.))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const 0.))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -0.))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -0.))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const 0.))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const 0.))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -1.40129846432e-45))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -1.40129846432e-45))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const 1.40129846432e-45))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const 1.40129846432e-45))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -1.40129846432e-45))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -1.40129846432e-45))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const 1.40129846432e-45))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const 1.40129846432e-45))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -1.17549435082e-38))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -1.17549435082e-38))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const 1.17549435082e-38))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const 1.17549435082e-38))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -1.17549435082e-38))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -1.17549435082e-38))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const 1.17549435082e-38))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const 1.17549435082e-38))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -0.5))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const 0.5))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -0.5))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const 0.5))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -1.))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -1.))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const 1.))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const 1.))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -1.))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -1.))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const 1.))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const 1.))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -6.28318548203))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -6.28318548203))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const 6.28318548203))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const 6.28318548203))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -6.28318548203))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -6.28318548203))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const 6.28318548203))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const 6.28318548203))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -3.40282346639e+38))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -3.40282346639e+38))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const 3.40282346639e+38))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const 3.40282346639e+38))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -3.40282346639e+38))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -3.40282346639e+38))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const 3.40282346639e+38))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const 3.40282346639e+38))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const nan:0x200000))
)
(assert_return (invoke "sub" (f32.const -0.) (f32.const -0.)) (f32.const 0.))
(assert_return (invoke "sub" (f32.const -0.) (f32.const 0.)) (f32.const -0.))
(assert_return (invoke "sub" (f32.const 0.) (f32.const -0.)) (f32.const 0.))
(assert_return (invoke "sub" (f32.const 0.) (f32.const 0.)) (f32.const 0.))
(assert_return
  (invoke "sub" (f32.const -0.) (f32.const -1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "sub" (f32.const -0.) (f32.const 1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "sub" (f32.const 0.) (f32.const -1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "sub" (f32.const 0.) (f32.const 1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "sub" (f32.const -0.) (f32.const -1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "sub" (f32.const -0.) (f32.const 1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "sub" (f32.const 0.) (f32.const -1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "sub" (f32.const 0.) (f32.const 1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return (invoke "sub" (f32.const -0.) (f32.const -0.5)) (f32.const 0.5))
(assert_return (invoke "sub" (f32.const -0.) (f32.const 0.5)) (f32.const -0.5))
(assert_return (invoke "sub" (f32.const 0.) (f32.const -0.5)) (f32.const 0.5))
(assert_return (invoke "sub" (f32.const 0.) (f32.const 0.5)) (f32.const -0.5))
(assert_return (invoke "sub" (f32.const -0.) (f32.const -1.)) (f32.const 1.))
(assert_return (invoke "sub" (f32.const -0.) (f32.const 1.)) (f32.const -1.))
(assert_return (invoke "sub" (f32.const 0.) (f32.const -1.)) (f32.const 1.))
(assert_return (invoke "sub" (f32.const 0.) (f32.const 1.)) (f32.const -1.))
(assert_return
  (invoke "sub" (f32.const -0.) (f32.const -6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "sub" (f32.const -0.) (f32.const 6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "sub" (f32.const 0.) (f32.const -6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "sub" (f32.const 0.) (f32.const 6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "sub" (f32.const -0.) (f32.const -3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const -0.) (f32.const 3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const 0.) (f32.const -3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const 0.) (f32.const 3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return (invoke "sub" (f32.const -0.) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "sub" (f32.const -0.) (f32.const inf)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const 0.) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "sub" (f32.const 0.) (f32.const inf)) (f32.const -inf))
(assert_return_canonical_nan
  (invoke "sub" (f32.const -0.) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -0.) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -0.) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -0.) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 0.) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 0.) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 0.) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 0.) (f32.const nan:0x200000))
)
(assert_return
  (invoke "sub" (f32.const -1.40129846432e-45) (f32.const -0.))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "sub" (f32.const -1.40129846432e-45) (f32.const 0.))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "sub" (f32.const 1.40129846432e-45) (f32.const -0.))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "sub" (f32.const 1.40129846432e-45) (f32.const 0.))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "sub" (f32.const -1.40129846432e-45) (f32.const -1.40129846432e-45))
  (f32.const 0.)
)
(assert_return
  (invoke "sub" (f32.const -1.40129846432e-45) (f32.const 1.40129846432e-45))
  (f32.const -2.80259692865e-45)
)
(assert_return
  (invoke "sub" (f32.const 1.40129846432e-45) (f32.const -1.40129846432e-45))
  (f32.const 2.80259692865e-45)
)
(assert_return
  (invoke "sub" (f32.const 1.40129846432e-45) (f32.const 1.40129846432e-45))
  (f32.const 0.)
)
(assert_return
  (invoke "sub" (f32.const -1.40129846432e-45) (f32.const -1.17549435082e-38))
  (f32.const 1.17549421069e-38)
)
(assert_return
  (invoke "sub" (f32.const -1.40129846432e-45) (f32.const 1.17549435082e-38))
  (f32.const -1.17549449095e-38)
)
(assert_return
  (invoke "sub" (f32.const 1.40129846432e-45) (f32.const -1.17549435082e-38))
  (f32.const 1.17549449095e-38)
)
(assert_return
  (invoke "sub" (f32.const 1.40129846432e-45) (f32.const 1.17549435082e-38))
  (f32.const -1.17549421069e-38)
)
(assert_return
  (invoke "sub" (f32.const -1.40129846432e-45) (f32.const -0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "sub" (f32.const -1.40129846432e-45) (f32.const 0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "sub" (f32.const 1.40129846432e-45) (f32.const -0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "sub" (f32.const 1.40129846432e-45) (f32.const 0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "sub" (f32.const -1.40129846432e-45) (f32.const -1.))
  (f32.const 1.)
)
(assert_return
  (invoke "sub" (f32.const -1.40129846432e-45) (f32.const 1.))
  (f32.const -1.)
)
(assert_return
  (invoke "sub" (f32.const 1.40129846432e-45) (f32.const -1.))
  (f32.const 1.)
)
(assert_return
  (invoke "sub" (f32.const 1.40129846432e-45) (f32.const 1.))
  (f32.const -1.)
)
(assert_return
  (invoke "sub" (f32.const -1.40129846432e-45) (f32.const -6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "sub" (f32.const -1.40129846432e-45) (f32.const 6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "sub" (f32.const 1.40129846432e-45) (f32.const -6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "sub" (f32.const 1.40129846432e-45) (f32.const 6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "sub" (f32.const -1.40129846432e-45) (f32.const -3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const -1.40129846432e-45) (f32.const 3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const 1.40129846432e-45) (f32.const -3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const 1.40129846432e-45) (f32.const 3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const -1.40129846432e-45) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -1.40129846432e-45) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const 1.40129846432e-45) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const 1.40129846432e-45) (f32.const inf))
  (f32.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -1.40129846432e-45) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -1.40129846432e-45) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -1.40129846432e-45) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -1.40129846432e-45) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 1.40129846432e-45) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 1.40129846432e-45) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 1.40129846432e-45) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 1.40129846432e-45) (f32.const nan:0x200000))
)
(assert_return
  (invoke "sub" (f32.const -1.17549435082e-38) (f32.const -0.))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "sub" (f32.const -1.17549435082e-38) (f32.const 0.))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "sub" (f32.const 1.17549435082e-38) (f32.const -0.))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "sub" (f32.const 1.17549435082e-38) (f32.const 0.))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "sub" (f32.const -1.17549435082e-38) (f32.const -1.40129846432e-45))
  (f32.const -1.17549421069e-38)
)
(assert_return
  (invoke "sub" (f32.const -1.17549435082e-38) (f32.const 1.40129846432e-45))
  (f32.const -1.17549449095e-38)
)
(assert_return
  (invoke "sub" (f32.const 1.17549435082e-38) (f32.const -1.40129846432e-45))
  (f32.const 1.17549449095e-38)
)
(assert_return
  (invoke "sub" (f32.const 1.17549435082e-38) (f32.const 1.40129846432e-45))
  (f32.const 1.17549421069e-38)
)
(assert_return
  (invoke "sub" (f32.const -1.17549435082e-38) (f32.const -1.17549435082e-38))
  (f32.const 0.)
)
(assert_return
  (invoke "sub" (f32.const -1.17549435082e-38) (f32.const 1.17549435082e-38))
  (f32.const -2.35098870164e-38)
)
(assert_return
  (invoke "sub" (f32.const 1.17549435082e-38) (f32.const -1.17549435082e-38))
  (f32.const 2.35098870164e-38)
)
(assert_return
  (invoke "sub" (f32.const 1.17549435082e-38) (f32.const 1.17549435082e-38))
  (f32.const 0.)
)
(assert_return
  (invoke "sub" (f32.const -1.17549435082e-38) (f32.const -0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "sub" (f32.const -1.17549435082e-38) (f32.const 0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "sub" (f32.const 1.17549435082e-38) (f32.const -0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "sub" (f32.const 1.17549435082e-38) (f32.const 0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "sub" (f32.const -1.17549435082e-38) (f32.const -1.))
  (f32.const 1.)
)
(assert_return
  (invoke "sub" (f32.const -1.17549435082e-38) (f32.const 1.))
  (f32.const -1.)
)
(assert_return
  (invoke "sub" (f32.const 1.17549435082e-38) (f32.const -1.))
  (f32.const 1.)
)
(assert_return
  (invoke "sub" (f32.const 1.17549435082e-38) (f32.const 1.))
  (f32.const -1.)
)
(assert_return
  (invoke "sub" (f32.const -1.17549435082e-38) (f32.const -6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "sub" (f32.const -1.17549435082e-38) (f32.const 6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "sub" (f32.const 1.17549435082e-38) (f32.const -6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "sub" (f32.const 1.17549435082e-38) (f32.const 6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "sub" (f32.const -1.17549435082e-38) (f32.const -3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const -1.17549435082e-38) (f32.const 3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const 1.17549435082e-38) (f32.const -3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const 1.17549435082e-38) (f32.const 3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const -1.17549435082e-38) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -1.17549435082e-38) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const 1.17549435082e-38) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const 1.17549435082e-38) (f32.const inf))
  (f32.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -1.17549435082e-38) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -1.17549435082e-38) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -1.17549435082e-38) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -1.17549435082e-38) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 1.17549435082e-38) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 1.17549435082e-38) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 1.17549435082e-38) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 1.17549435082e-38) (f32.const nan:0x200000))
)
(assert_return (invoke "sub" (f32.const -0.5) (f32.const -0.)) (f32.const -0.5))
(assert_return (invoke "sub" (f32.const -0.5) (f32.const 0.)) (f32.const -0.5))
(assert_return (invoke "sub" (f32.const 0.5) (f32.const -0.)) (f32.const 0.5))
(assert_return (invoke "sub" (f32.const 0.5) (f32.const 0.)) (f32.const 0.5))
(assert_return
  (invoke "sub" (f32.const -0.5) (f32.const -1.40129846432e-45))
  (f32.const -0.5)
)
(assert_return
  (invoke "sub" (f32.const -0.5) (f32.const 1.40129846432e-45))
  (f32.const -0.5)
)
(assert_return
  (invoke "sub" (f32.const 0.5) (f32.const -1.40129846432e-45))
  (f32.const 0.5)
)
(assert_return
  (invoke "sub" (f32.const 0.5) (f32.const 1.40129846432e-45))
  (f32.const 0.5)
)
(assert_return
  (invoke "sub" (f32.const -0.5) (f32.const -1.17549435082e-38))
  (f32.const -0.5)
)
(assert_return
  (invoke "sub" (f32.const -0.5) (f32.const 1.17549435082e-38))
  (f32.const -0.5)
)
(assert_return
  (invoke "sub" (f32.const 0.5) (f32.const -1.17549435082e-38))
  (f32.const 0.5)
)
(assert_return
  (invoke "sub" (f32.const 0.5) (f32.const 1.17549435082e-38))
  (f32.const 0.5)
)
(assert_return (invoke "sub" (f32.const -0.5) (f32.const -0.5)) (f32.const 0.))
(assert_return (invoke "sub" (f32.const -0.5) (f32.const 0.5)) (f32.const -1.))
(assert_return (invoke "sub" (f32.const 0.5) (f32.const -0.5)) (f32.const 1.))
(assert_return (invoke "sub" (f32.const 0.5) (f32.const 0.5)) (f32.const 0.))
(assert_return (invoke "sub" (f32.const -0.5) (f32.const -1.)) (f32.const 0.5))
(assert_return (invoke "sub" (f32.const -0.5) (f32.const 1.)) (f32.const -1.5))
(assert_return (invoke "sub" (f32.const 0.5) (f32.const -1.)) (f32.const 1.5))
(assert_return (invoke "sub" (f32.const 0.5) (f32.const 1.)) (f32.const -0.5))
(assert_return
  (invoke "sub" (f32.const -0.5) (f32.const -6.28318548203))
  (f32.const 5.78318548203)
)
(assert_return
  (invoke "sub" (f32.const -0.5) (f32.const 6.28318548203))
  (f32.const -6.78318548203)
)
(assert_return
  (invoke "sub" (f32.const 0.5) (f32.const -6.28318548203))
  (f32.const 6.78318548203)
)
(assert_return
  (invoke "sub" (f32.const 0.5) (f32.const 6.28318548203))
  (f32.const -5.78318548203)
)
(assert_return
  (invoke "sub" (f32.const -0.5) (f32.const -3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const -0.5) (f32.const 3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const 0.5) (f32.const -3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const 0.5) (f32.const 3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return (invoke "sub" (f32.const -0.5) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "sub" (f32.const -0.5) (f32.const inf)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const 0.5) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "sub" (f32.const 0.5) (f32.const inf)) (f32.const -inf))
(assert_return_canonical_nan
  (invoke "sub" (f32.const -0.5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -0.5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -0.5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -0.5) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 0.5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 0.5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 0.5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 0.5) (f32.const nan:0x200000))
)
(assert_return (invoke "sub" (f32.const -1.) (f32.const -0.)) (f32.const -1.))
(assert_return (invoke "sub" (f32.const -1.) (f32.const 0.)) (f32.const -1.))
(assert_return (invoke "sub" (f32.const 1.) (f32.const -0.)) (f32.const 1.))
(assert_return (invoke "sub" (f32.const 1.) (f32.const 0.)) (f32.const 1.))
(assert_return
  (invoke "sub" (f32.const -1.) (f32.const -1.40129846432e-45))
  (f32.const -1.)
)
(assert_return
  (invoke "sub" (f32.const -1.) (f32.const 1.40129846432e-45))
  (f32.const -1.)
)
(assert_return
  (invoke "sub" (f32.const 1.) (f32.const -1.40129846432e-45))
  (f32.const 1.)
)
(assert_return
  (invoke "sub" (f32.const 1.) (f32.const 1.40129846432e-45))
  (f32.const 1.)
)
(assert_return
  (invoke "sub" (f32.const -1.) (f32.const -1.17549435082e-38))
  (f32.const -1.)
)
(assert_return
  (invoke "sub" (f32.const -1.) (f32.const 1.17549435082e-38))
  (f32.const -1.)
)
(assert_return
  (invoke "sub" (f32.const 1.) (f32.const -1.17549435082e-38))
  (f32.const 1.)
)
(assert_return
  (invoke "sub" (f32.const 1.) (f32.const 1.17549435082e-38))
  (f32.const 1.)
)
(assert_return (invoke "sub" (f32.const -1.) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "sub" (f32.const -1.) (f32.const 0.5)) (f32.const -1.5))
(assert_return (invoke "sub" (f32.const 1.) (f32.const -0.5)) (f32.const 1.5))
(assert_return (invoke "sub" (f32.const 1.) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "sub" (f32.const -1.) (f32.const -1.)) (f32.const 0.))
(assert_return (invoke "sub" (f32.const -1.) (f32.const 1.)) (f32.const -2.))
(assert_return (invoke "sub" (f32.const 1.) (f32.const -1.)) (f32.const 2.))
(assert_return (invoke "sub" (f32.const 1.) (f32.const 1.)) (f32.const 0.))
(assert_return
  (invoke "sub" (f32.const -1.) (f32.const -6.28318548203))
  (f32.const 5.28318548203)
)
(assert_return
  (invoke "sub" (f32.const -1.) (f32.const 6.28318548203))
  (f32.const -7.28318548203)
)
(assert_return
  (invoke "sub" (f32.const 1.) (f32.const -6.28318548203))
  (f32.const 7.28318548203)
)
(assert_return
  (invoke "sub" (f32.const 1.) (f32.const 6.28318548203))
  (f32.const -5.28318548203)
)
(assert_return
  (invoke "sub" (f32.const -1.) (f32.const -3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const -1.) (f32.const 3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const 1.) (f32.const -3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const 1.) (f32.const 3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return (invoke "sub" (f32.const -1.) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "sub" (f32.const -1.) (f32.const inf)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const 1.) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "sub" (f32.const 1.) (f32.const inf)) (f32.const -inf))
(assert_return_canonical_nan
  (invoke "sub" (f32.const -1.) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -1.) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -1.) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -1.) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 1.) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 1.) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 1.) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 1.) (f32.const nan:0x200000))
)
(assert_return
  (invoke "sub" (f32.const -6.28318548203) (f32.const -0.))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "sub" (f32.const -6.28318548203) (f32.const 0.))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "sub" (f32.const 6.28318548203) (f32.const -0.))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "sub" (f32.const 6.28318548203) (f32.const 0.))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "sub" (f32.const -6.28318548203) (f32.const -1.40129846432e-45))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "sub" (f32.const -6.28318548203) (f32.const 1.40129846432e-45))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "sub" (f32.const 6.28318548203) (f32.const -1.40129846432e-45))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "sub" (f32.const 6.28318548203) (f32.const 1.40129846432e-45))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "sub" (f32.const -6.28318548203) (f32.const -1.17549435082e-38))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "sub" (f32.const -6.28318548203) (f32.const 1.17549435082e-38))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "sub" (f32.const 6.28318548203) (f32.const -1.17549435082e-38))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "sub" (f32.const 6.28318548203) (f32.const 1.17549435082e-38))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "sub" (f32.const -6.28318548203) (f32.const -0.5))
  (f32.const -5.78318548203)
)
(assert_return
  (invoke "sub" (f32.const -6.28318548203) (f32.const 0.5))
  (f32.const -6.78318548203)
)
(assert_return
  (invoke "sub" (f32.const 6.28318548203) (f32.const -0.5))
  (f32.const 6.78318548203)
)
(assert_return
  (invoke "sub" (f32.const 6.28318548203) (f32.const 0.5))
  (f32.const 5.78318548203)
)
(assert_return
  (invoke "sub" (f32.const -6.28318548203) (f32.const -1.))
  (f32.const -5.28318548203)
)
(assert_return
  (invoke "sub" (f32.const -6.28318548203) (f32.const 1.))
  (f32.const -7.28318548203)
)
(assert_return
  (invoke "sub" (f32.const 6.28318548203) (f32.const -1.))
  (f32.const 7.28318548203)
)
(assert_return
  (invoke "sub" (f32.const 6.28318548203) (f32.const 1.))
  (f32.const 5.28318548203)
)
(assert_return
  (invoke "sub" (f32.const -6.28318548203) (f32.const -6.28318548203))
  (f32.const 0.)
)
(assert_return
  (invoke "sub" (f32.const -6.28318548203) (f32.const 6.28318548203))
  (f32.const -12.5663709641)
)
(assert_return
  (invoke "sub" (f32.const 6.28318548203) (f32.const -6.28318548203))
  (f32.const 12.5663709641)
)
(assert_return
  (invoke "sub" (f32.const 6.28318548203) (f32.const 6.28318548203))
  (f32.const 0.)
)
(assert_return
  (invoke "sub" (f32.const -6.28318548203) (f32.const -3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const -6.28318548203) (f32.const 3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const 6.28318548203) (f32.const -3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const 6.28318548203) (f32.const 3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const -6.28318548203) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -6.28318548203) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const 6.28318548203) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const 6.28318548203) (f32.const inf))
  (f32.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -6.28318548203) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -6.28318548203) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -6.28318548203) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -6.28318548203) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 6.28318548203) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 6.28318548203) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 6.28318548203) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 6.28318548203) (f32.const nan:0x200000))
)
(assert_return
  (invoke "sub" (f32.const -3.40282346639e+38) (f32.const -0.))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const -3.40282346639e+38) (f32.const 0.))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const 3.40282346639e+38) (f32.const -0.))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const 3.40282346639e+38) (f32.const 0.))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const -3.40282346639e+38) (f32.const -1.40129846432e-45))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const -3.40282346639e+38) (f32.const 1.40129846432e-45))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const 3.40282346639e+38) (f32.const -1.40129846432e-45))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const 3.40282346639e+38) (f32.const 1.40129846432e-45))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const -3.40282346639e+38) (f32.const -1.17549435082e-38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const -3.40282346639e+38) (f32.const 1.17549435082e-38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const 3.40282346639e+38) (f32.const -1.17549435082e-38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const 3.40282346639e+38) (f32.const 1.17549435082e-38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const -3.40282346639e+38) (f32.const -0.5))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const -3.40282346639e+38) (f32.const 0.5))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const 3.40282346639e+38) (f32.const -0.5))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const 3.40282346639e+38) (f32.const 0.5))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const -3.40282346639e+38) (f32.const -1.))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const -3.40282346639e+38) (f32.const 1.))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const 3.40282346639e+38) (f32.const -1.))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const 3.40282346639e+38) (f32.const 1.))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const -3.40282346639e+38) (f32.const -6.28318548203))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const -3.40282346639e+38) (f32.const 6.28318548203))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const 3.40282346639e+38) (f32.const -6.28318548203))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const 3.40282346639e+38) (f32.const 6.28318548203))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "sub" (f32.const -3.40282346639e+38) (f32.const -3.40282346639e+38))
  (f32.const 0.)
)
(assert_return
  (invoke "sub" (f32.const -3.40282346639e+38) (f32.const 3.40282346639e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const 3.40282346639e+38) (f32.const -3.40282346639e+38))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const 3.40282346639e+38) (f32.const 3.40282346639e+38))
  (f32.const 0.)
)
(assert_return
  (invoke "sub" (f32.const -3.40282346639e+38) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -3.40282346639e+38) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const 3.40282346639e+38) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const 3.40282346639e+38) (f32.const inf))
  (f32.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -3.40282346639e+38) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -3.40282346639e+38) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -3.40282346639e+38) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -3.40282346639e+38) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 3.40282346639e+38) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 3.40282346639e+38) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 3.40282346639e+38) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 3.40282346639e+38) (f32.const nan:0x200000))
)
(assert_return (invoke "sub" (f32.const -inf) (f32.const -0.)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const -inf) (f32.const 0.)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const inf) (f32.const -0.)) (f32.const inf))
(assert_return (invoke "sub" (f32.const inf) (f32.const 0.)) (f32.const inf))
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const -1.40129846432e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const 1.40129846432e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const -1.40129846432e-45))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const 1.40129846432e-45))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const -1.17549435082e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const 1.17549435082e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const -1.17549435082e-38))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const 1.17549435082e-38))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const -0.5))
  (f32.const -inf)
)
(assert_return (invoke "sub" (f32.const -inf) (f32.const 0.5)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const inf) (f32.const -0.5)) (f32.const inf))
(assert_return (invoke "sub" (f32.const inf) (f32.const 0.5)) (f32.const inf))
(assert_return (invoke "sub" (f32.const -inf) (f32.const -1.)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const -inf) (f32.const 1.)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const inf) (f32.const -1.)) (f32.const inf))
(assert_return (invoke "sub" (f32.const inf) (f32.const 1.)) (f32.const inf))
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const -6.28318548203))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const 6.28318548203))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const -6.28318548203))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const 6.28318548203))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const -3.40282346639e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const 3.40282346639e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const -3.40282346639e+38))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const 3.40282346639e+38))
  (f32.const inf)
)
(assert_return_canonical_nan (invoke "sub" (f32.const -inf) (f32.const -inf)))
(assert_return (invoke "sub" (f32.const -inf) (f32.const inf)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const inf) (f32.const -inf)) (f32.const inf))
(assert_return_canonical_nan (invoke "sub" (f32.const inf) (f32.const inf)))
(assert_return_canonical_nan
  (invoke "sub" (f32.const -inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -0.))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -0.))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const 0.))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const 0.))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -0.))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -0.))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const 0.))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const 0.))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -1.40129846432e-45))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -1.40129846432e-45))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const 1.40129846432e-45))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const 1.40129846432e-45))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -1.40129846432e-45))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -1.40129846432e-45))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const 1.40129846432e-45))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const 1.40129846432e-45))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -1.17549435082e-38))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -1.17549435082e-38))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const 1.17549435082e-38))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const 1.17549435082e-38))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -1.17549435082e-38))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -1.17549435082e-38))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const 1.17549435082e-38))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const 1.17549435082e-38))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -0.5))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const 0.5))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -0.5))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const 0.5))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -1.))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -1.))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const 1.))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const 1.))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -1.))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -1.))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const 1.))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const 1.))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -6.28318548203))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -6.28318548203))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const 6.28318548203))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const 6.28318548203))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -6.28318548203))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -6.28318548203))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const 6.28318548203))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const 6.28318548203))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -3.40282346639e+38))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -3.40282346639e+38))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const 3.40282346639e+38))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const 3.40282346639e+38))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -3.40282346639e+38))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -3.40282346639e+38))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const 3.40282346639e+38))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const 3.40282346639e+38))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const nan:0x200000))
)
(assert_return (invoke "mul" (f32.const -0.) (f32.const -0.)) (f32.const 0.))
(assert_return (invoke "mul" (f32.const -0.) (f32.const 0.)) (f32.const -0.))
(assert_return (invoke "mul" (f32.const 0.) (f32.const -0.)) (f32.const -0.))
(assert_return (invoke "mul" (f32.const 0.) (f32.const 0.)) (f32.const 0.))
(assert_return
  (invoke "mul" (f32.const -0.) (f32.const -1.40129846432e-45))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -0.) (f32.const 1.40129846432e-45))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 0.) (f32.const -1.40129846432e-45))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 0.) (f32.const 1.40129846432e-45))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -0.) (f32.const -1.17549435082e-38))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -0.) (f32.const 1.17549435082e-38))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 0.) (f32.const -1.17549435082e-38))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 0.) (f32.const 1.17549435082e-38))
  (f32.const 0.)
)
(assert_return (invoke "mul" (f32.const -0.) (f32.const -0.5)) (f32.const 0.))
(assert_return (invoke "mul" (f32.const -0.) (f32.const 0.5)) (f32.const -0.))
(assert_return (invoke "mul" (f32.const 0.) (f32.const -0.5)) (f32.const -0.))
(assert_return (invoke "mul" (f32.const 0.) (f32.const 0.5)) (f32.const 0.))
(assert_return (invoke "mul" (f32.const -0.) (f32.const -1.)) (f32.const 0.))
(assert_return (invoke "mul" (f32.const -0.) (f32.const 1.)) (f32.const -0.))
(assert_return (invoke "mul" (f32.const 0.) (f32.const -1.)) (f32.const -0.))
(assert_return (invoke "mul" (f32.const 0.) (f32.const 1.)) (f32.const 0.))
(assert_return
  (invoke "mul" (f32.const -0.) (f32.const -6.28318548203))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -0.) (f32.const 6.28318548203))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 0.) (f32.const -6.28318548203))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 0.) (f32.const 6.28318548203))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -0.) (f32.const -3.40282346639e+38))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -0.) (f32.const 3.40282346639e+38))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 0.) (f32.const -3.40282346639e+38))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 0.) (f32.const 3.40282346639e+38))
  (f32.const 0.)
)
(assert_return_canonical_nan (invoke "mul" (f32.const -0.) (f32.const -inf)))
(assert_return_canonical_nan (invoke "mul" (f32.const -0.) (f32.const inf)))
(assert_return_canonical_nan (invoke "mul" (f32.const 0.) (f32.const -inf)))
(assert_return_canonical_nan (invoke "mul" (f32.const 0.) (f32.const inf)))
(assert_return_canonical_nan
  (invoke "mul" (f32.const -0.) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -0.) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -0.) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -0.) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 0.) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 0.) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 0.) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 0.) (f32.const nan:0x200000))
)
(assert_return
  (invoke "mul" (f32.const -1.40129846432e-45) (f32.const -0.))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -1.40129846432e-45) (f32.const 0.))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 1.40129846432e-45) (f32.const -0.))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 1.40129846432e-45) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -1.40129846432e-45) (f32.const -1.40129846432e-45))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -1.40129846432e-45) (f32.const 1.40129846432e-45))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 1.40129846432e-45) (f32.const -1.40129846432e-45))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 1.40129846432e-45) (f32.const 1.40129846432e-45))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -1.40129846432e-45) (f32.const -1.17549435082e-38))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -1.40129846432e-45) (f32.const 1.17549435082e-38))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 1.40129846432e-45) (f32.const -1.17549435082e-38))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 1.40129846432e-45) (f32.const 1.17549435082e-38))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -1.40129846432e-45) (f32.const -0.5))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -1.40129846432e-45) (f32.const 0.5))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 1.40129846432e-45) (f32.const -0.5))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 1.40129846432e-45) (f32.const 0.5))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -1.40129846432e-45) (f32.const -1.))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "mul" (f32.const -1.40129846432e-45) (f32.const 1.))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "mul" (f32.const 1.40129846432e-45) (f32.const -1.))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "mul" (f32.const 1.40129846432e-45) (f32.const 1.))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "mul" (f32.const -1.40129846432e-45) (f32.const -6.28318548203))
  (f32.const 8.40779078595e-45)
)
(assert_return
  (invoke "mul" (f32.const -1.40129846432e-45) (f32.const 6.28318548203))
  (f32.const -8.40779078595e-45)
)
(assert_return
  (invoke "mul" (f32.const 1.40129846432e-45) (f32.const -6.28318548203))
  (f32.const -8.40779078595e-45)
)
(assert_return
  (invoke "mul" (f32.const 1.40129846432e-45) (f32.const 6.28318548203))
  (f32.const 8.40779078595e-45)
)
(assert_return
  (invoke "mul" (f32.const -1.40129846432e-45) (f32.const -3.40282346639e+38))
  (f32.const 4.76837129781e-07)
)
(assert_return
  (invoke "mul" (f32.const -1.40129846432e-45) (f32.const 3.40282346639e+38))
  (f32.const -4.76837129781e-07)
)
(assert_return
  (invoke "mul" (f32.const 1.40129846432e-45) (f32.const -3.40282346639e+38))
  (f32.const -4.76837129781e-07)
)
(assert_return
  (invoke "mul" (f32.const 1.40129846432e-45) (f32.const 3.40282346639e+38))
  (f32.const 4.76837129781e-07)
)
(assert_return
  (invoke "mul" (f32.const -1.40129846432e-45) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -1.40129846432e-45) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 1.40129846432e-45) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 1.40129846432e-45) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -1.40129846432e-45) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -1.40129846432e-45) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -1.40129846432e-45) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -1.40129846432e-45) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 1.40129846432e-45) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 1.40129846432e-45) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 1.40129846432e-45) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 1.40129846432e-45) (f32.const nan:0x200000))
)
(assert_return
  (invoke "mul" (f32.const -1.17549435082e-38) (f32.const -0.))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -1.17549435082e-38) (f32.const 0.))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 1.17549435082e-38) (f32.const -0.))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 1.17549435082e-38) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -1.17549435082e-38) (f32.const -1.40129846432e-45))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -1.17549435082e-38) (f32.const 1.40129846432e-45))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 1.17549435082e-38) (f32.const -1.40129846432e-45))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 1.17549435082e-38) (f32.const 1.40129846432e-45))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -1.17549435082e-38) (f32.const -1.17549435082e-38))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -1.17549435082e-38) (f32.const 1.17549435082e-38))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 1.17549435082e-38) (f32.const -1.17549435082e-38))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 1.17549435082e-38) (f32.const 1.17549435082e-38))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -1.17549435082e-38) (f32.const -0.5))
  (f32.const 5.87747175411e-39)
)
(assert_return
  (invoke "mul" (f32.const -1.17549435082e-38) (f32.const 0.5))
  (f32.const -5.87747175411e-39)
)
(assert_return
  (invoke "mul" (f32.const 1.17549435082e-38) (f32.const -0.5))
  (f32.const -5.87747175411e-39)
)
(assert_return
  (invoke "mul" (f32.const 1.17549435082e-38) (f32.const 0.5))
  (f32.const 5.87747175411e-39)
)
(assert_return
  (invoke "mul" (f32.const -1.17549435082e-38) (f32.const -1.))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "mul" (f32.const -1.17549435082e-38) (f32.const 1.))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "mul" (f32.const 1.17549435082e-38) (f32.const -1.))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "mul" (f32.const 1.17549435082e-38) (f32.const 1.))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "mul" (f32.const -1.17549435082e-38) (f32.const -6.28318548203))
  (f32.const 7.38584903929e-38)
)
(assert_return
  (invoke "mul" (f32.const -1.17549435082e-38) (f32.const 6.28318548203))
  (f32.const -7.38584903929e-38)
)
(assert_return
  (invoke "mul" (f32.const 1.17549435082e-38) (f32.const -6.28318548203))
  (f32.const -7.38584903929e-38)
)
(assert_return
  (invoke "mul" (f32.const 1.17549435082e-38) (f32.const 6.28318548203))
  (f32.const 7.38584903929e-38)
)
(assert_return
  (invoke "mul" (f32.const -1.17549435082e-38) (f32.const -3.40282346639e+38))
  (f32.const 3.99999976158)
)
(assert_return
  (invoke "mul" (f32.const -1.17549435082e-38) (f32.const 3.40282346639e+38))
  (f32.const -3.99999976158)
)
(assert_return
  (invoke "mul" (f32.const 1.17549435082e-38) (f32.const -3.40282346639e+38))
  (f32.const -3.99999976158)
)
(assert_return
  (invoke "mul" (f32.const 1.17549435082e-38) (f32.const 3.40282346639e+38))
  (f32.const 3.99999976158)
)
(assert_return
  (invoke "mul" (f32.const -1.17549435082e-38) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -1.17549435082e-38) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 1.17549435082e-38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 1.17549435082e-38) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -1.17549435082e-38) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -1.17549435082e-38) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -1.17549435082e-38) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -1.17549435082e-38) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 1.17549435082e-38) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 1.17549435082e-38) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 1.17549435082e-38) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 1.17549435082e-38) (f32.const nan:0x200000))
)
(assert_return (invoke "mul" (f32.const -0.5) (f32.const -0.)) (f32.const 0.))
(assert_return (invoke "mul" (f32.const -0.5) (f32.const 0.)) (f32.const -0.))
(assert_return (invoke "mul" (f32.const 0.5) (f32.const -0.)) (f32.const -0.))
(assert_return (invoke "mul" (f32.const 0.5) (f32.const 0.)) (f32.const 0.))
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const -1.40129846432e-45))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const 1.40129846432e-45))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const -1.40129846432e-45))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const 1.40129846432e-45))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const -1.17549435082e-38))
  (f32.const 5.87747175411e-39)
)
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const 1.17549435082e-38))
  (f32.const -5.87747175411e-39)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const -1.17549435082e-38))
  (f32.const -5.87747175411e-39)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const 1.17549435082e-38))
  (f32.const 5.87747175411e-39)
)
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const -0.5))
  (f32.const 0.25)
)
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const 0.5))
  (f32.const -0.25)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const -0.5))
  (f32.const -0.25)
)
(assert_return (invoke "mul" (f32.const 0.5) (f32.const 0.5)) (f32.const 0.25))
(assert_return (invoke "mul" (f32.const -0.5) (f32.const -1.)) (f32.const 0.5))
(assert_return (invoke "mul" (f32.const -0.5) (f32.const 1.)) (f32.const -0.5))
(assert_return (invoke "mul" (f32.const 0.5) (f32.const -1.)) (f32.const -0.5))
(assert_return (invoke "mul" (f32.const 0.5) (f32.const 1.)) (f32.const 0.5))
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const -6.28318548203))
  (f32.const 3.14159274101)
)
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const 6.28318548203))
  (f32.const -3.14159274101)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const -6.28318548203))
  (f32.const -3.14159274101)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const 6.28318548203))
  (f32.const 3.14159274101)
)
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const -3.40282346639e+38))
  (f32.const 1.70141173319e+38)
)
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const 3.40282346639e+38))
  (f32.const -1.70141173319e+38)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const -3.40282346639e+38))
  (f32.const -1.70141173319e+38)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const 3.40282346639e+38))
  (f32.const 1.70141173319e+38)
)
(assert_return (invoke "mul" (f32.const -0.5) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "mul" (f32.const -0.5) (f32.const inf)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const 0.5) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const 0.5) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "mul" (f32.const -0.5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -0.5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -0.5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -0.5) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 0.5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 0.5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 0.5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 0.5) (f32.const nan:0x200000))
)
(assert_return (invoke "mul" (f32.const -1.) (f32.const -0.)) (f32.const 0.))
(assert_return (invoke "mul" (f32.const -1.) (f32.const 0.)) (f32.const -0.))
(assert_return (invoke "mul" (f32.const 1.) (f32.const -0.)) (f32.const -0.))
(assert_return (invoke "mul" (f32.const 1.) (f32.const 0.)) (f32.const 0.))
(assert_return
  (invoke "mul" (f32.const -1.) (f32.const -1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "mul" (f32.const -1.) (f32.const 1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "mul" (f32.const 1.) (f32.const -1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "mul" (f32.const 1.) (f32.const 1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "mul" (f32.const -1.) (f32.const -1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "mul" (f32.const -1.) (f32.const 1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "mul" (f32.const 1.) (f32.const -1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "mul" (f32.const 1.) (f32.const 1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return (invoke "mul" (f32.const -1.) (f32.const -0.5)) (f32.const 0.5))
(assert_return (invoke "mul" (f32.const -1.) (f32.const 0.5)) (f32.const -0.5))
(assert_return (invoke "mul" (f32.const 1.) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "mul" (f32.const 1.) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "mul" (f32.const -1.) (f32.const -1.)) (f32.const 1.))
(assert_return (invoke "mul" (f32.const -1.) (f32.const 1.)) (f32.const -1.))
(assert_return (invoke "mul" (f32.const 1.) (f32.const -1.)) (f32.const -1.))
(assert_return (invoke "mul" (f32.const 1.) (f32.const 1.)) (f32.const 1.))
(assert_return
  (invoke "mul" (f32.const -1.) (f32.const -6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "mul" (f32.const -1.) (f32.const 6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "mul" (f32.const 1.) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "mul" (f32.const 1.) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "mul" (f32.const -1.) (f32.const -3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "mul" (f32.const -1.) (f32.const 3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "mul" (f32.const 1.) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "mul" (f32.const 1.) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return (invoke "mul" (f32.const -1.) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "mul" (f32.const -1.) (f32.const inf)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const 1.) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const 1.) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "mul" (f32.const -1.) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -1.) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -1.) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -1.) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 1.) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 1.) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 1.) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 1.) (f32.const nan:0x200000))
)
(assert_return
  (invoke "mul" (f32.const -6.28318548203) (f32.const -0.))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -6.28318548203) (f32.const 0.))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 6.28318548203) (f32.const -0.))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 6.28318548203) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -6.28318548203) (f32.const -1.40129846432e-45))
  (f32.const 8.40779078595e-45)
)
(assert_return
  (invoke "mul" (f32.const -6.28318548203) (f32.const 1.40129846432e-45))
  (f32.const -8.40779078595e-45)
)
(assert_return
  (invoke "mul" (f32.const 6.28318548203) (f32.const -1.40129846432e-45))
  (f32.const -8.40779078595e-45)
)
(assert_return
  (invoke "mul" (f32.const 6.28318548203) (f32.const 1.40129846432e-45))
  (f32.const 8.40779078595e-45)
)
(assert_return
  (invoke "mul" (f32.const -6.28318548203) (f32.const -1.17549435082e-38))
  (f32.const 7.38584903929e-38)
)
(assert_return
  (invoke "mul" (f32.const -6.28318548203) (f32.const 1.17549435082e-38))
  (f32.const -7.38584903929e-38)
)
(assert_return
  (invoke "mul" (f32.const 6.28318548203) (f32.const -1.17549435082e-38))
  (f32.const -7.38584903929e-38)
)
(assert_return
  (invoke "mul" (f32.const 6.28318548203) (f32.const 1.17549435082e-38))
  (f32.const 7.38584903929e-38)
)
(assert_return
  (invoke "mul" (f32.const -6.28318548203) (f32.const -0.5))
  (f32.const 3.14159274101)
)
(assert_return
  (invoke "mul" (f32.const -6.28318548203) (f32.const 0.5))
  (f32.const -3.14159274101)
)
(assert_return
  (invoke "mul" (f32.const 6.28318548203) (f32.const -0.5))
  (f32.const -3.14159274101)
)
(assert_return
  (invoke "mul" (f32.const 6.28318548203) (f32.const 0.5))
  (f32.const 3.14159274101)
)
(assert_return
  (invoke "mul" (f32.const -6.28318548203) (f32.const -1.))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "mul" (f32.const -6.28318548203) (f32.const 1.))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "mul" (f32.const 6.28318548203) (f32.const -1.))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "mul" (f32.const 6.28318548203) (f32.const 1.))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "mul" (f32.const -6.28318548203) (f32.const -6.28318548203))
  (f32.const 39.4784202576)
)
(assert_return
  (invoke "mul" (f32.const -6.28318548203) (f32.const 6.28318548203))
  (f32.const -39.4784202576)
)
(assert_return
  (invoke "mul" (f32.const 6.28318548203) (f32.const -6.28318548203))
  (f32.const -39.4784202576)
)
(assert_return
  (invoke "mul" (f32.const 6.28318548203) (f32.const 6.28318548203))
  (f32.const 39.4784202576)
)
(assert_return
  (invoke "mul" (f32.const -6.28318548203) (f32.const -3.40282346639e+38))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -6.28318548203) (f32.const 3.40282346639e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 6.28318548203) (f32.const -3.40282346639e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 6.28318548203) (f32.const 3.40282346639e+38))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -6.28318548203) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -6.28318548203) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 6.28318548203) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 6.28318548203) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -6.28318548203) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -6.28318548203) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -6.28318548203) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -6.28318548203) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 6.28318548203) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 6.28318548203) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 6.28318548203) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 6.28318548203) (f32.const nan:0x200000))
)
(assert_return
  (invoke "mul" (f32.const -3.40282346639e+38) (f32.const -0.))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -3.40282346639e+38) (f32.const 0.))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 3.40282346639e+38) (f32.const -0.))
  (f32.const -0.)
)
(assert_return
  (invoke "mul" (f32.const 3.40282346639e+38) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "mul" (f32.const -3.40282346639e+38) (f32.const -1.40129846432e-45))
  (f32.const 4.76837129781e-07)
)
(assert_return
  (invoke "mul" (f32.const -3.40282346639e+38) (f32.const 1.40129846432e-45))
  (f32.const -4.76837129781e-07)
)
(assert_return
  (invoke "mul" (f32.const 3.40282346639e+38) (f32.const -1.40129846432e-45))
  (f32.const -4.76837129781e-07)
)
(assert_return
  (invoke "mul" (f32.const 3.40282346639e+38) (f32.const 1.40129846432e-45))
  (f32.const 4.76837129781e-07)
)
(assert_return
  (invoke "mul" (f32.const -3.40282346639e+38) (f32.const -1.17549435082e-38))
  (f32.const 3.99999976158)
)
(assert_return
  (invoke "mul" (f32.const -3.40282346639e+38) (f32.const 1.17549435082e-38))
  (f32.const -3.99999976158)
)
(assert_return
  (invoke "mul" (f32.const 3.40282346639e+38) (f32.const -1.17549435082e-38))
  (f32.const -3.99999976158)
)
(assert_return
  (invoke "mul" (f32.const 3.40282346639e+38) (f32.const 1.17549435082e-38))
  (f32.const 3.99999976158)
)
(assert_return
  (invoke "mul" (f32.const -3.40282346639e+38) (f32.const -0.5))
  (f32.const 1.70141173319e+38)
)
(assert_return
  (invoke "mul" (f32.const -3.40282346639e+38) (f32.const 0.5))
  (f32.const -1.70141173319e+38)
)
(assert_return
  (invoke "mul" (f32.const 3.40282346639e+38) (f32.const -0.5))
  (f32.const -1.70141173319e+38)
)
(assert_return
  (invoke "mul" (f32.const 3.40282346639e+38) (f32.const 0.5))
  (f32.const 1.70141173319e+38)
)
(assert_return
  (invoke "mul" (f32.const -3.40282346639e+38) (f32.const -1.))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "mul" (f32.const -3.40282346639e+38) (f32.const 1.))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "mul" (f32.const 3.40282346639e+38) (f32.const -1.))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "mul" (f32.const 3.40282346639e+38) (f32.const 1.))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "mul" (f32.const -3.40282346639e+38) (f32.const -6.28318548203))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -3.40282346639e+38) (f32.const 6.28318548203))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 3.40282346639e+38) (f32.const -6.28318548203))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 3.40282346639e+38) (f32.const 6.28318548203))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -3.40282346639e+38) (f32.const -3.40282346639e+38))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -3.40282346639e+38) (f32.const 3.40282346639e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 3.40282346639e+38) (f32.const -3.40282346639e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 3.40282346639e+38) (f32.const 3.40282346639e+38))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -3.40282346639e+38) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -3.40282346639e+38) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 3.40282346639e+38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 3.40282346639e+38) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -3.40282346639e+38) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -3.40282346639e+38) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -3.40282346639e+38) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -3.40282346639e+38) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 3.40282346639e+38) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 3.40282346639e+38) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 3.40282346639e+38) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 3.40282346639e+38) (f32.const nan:0x200000))
)
(assert_return_canonical_nan (invoke "mul" (f32.const -inf) (f32.const -0.)))
(assert_return_canonical_nan (invoke "mul" (f32.const -inf) (f32.const 0.)))
(assert_return_canonical_nan (invoke "mul" (f32.const inf) (f32.const -0.)))
(assert_return_canonical_nan (invoke "mul" (f32.const inf) (f32.const 0.)))
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const -1.40129846432e-45))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const 1.40129846432e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const -1.40129846432e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const 1.40129846432e-45))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const -1.17549435082e-38))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const 1.17549435082e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const -1.17549435082e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const 1.17549435082e-38))
  (f32.const inf)
)
(assert_return (invoke "mul" (f32.const -inf) (f32.const -0.5)) (f32.const inf))
(assert_return (invoke "mul" (f32.const -inf) (f32.const 0.5)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const inf) (f32.const -0.5)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const inf) (f32.const 0.5)) (f32.const inf))
(assert_return (invoke "mul" (f32.const -inf) (f32.const -1.)) (f32.const inf))
(assert_return (invoke "mul" (f32.const -inf) (f32.const 1.)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const inf) (f32.const -1.)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const inf) (f32.const 1.)) (f32.const inf))
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const -6.28318548203))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const 6.28318548203))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const -6.28318548203))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const 6.28318548203))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const -3.40282346639e+38))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const 3.40282346639e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const -3.40282346639e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const 3.40282346639e+38))
  (f32.const inf)
)
(assert_return (invoke "mul" (f32.const -inf) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "mul" (f32.const -inf) (f32.const inf)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const inf) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const inf) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "mul" (f32.const -inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -0.))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -0.))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const 0.))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const 0.))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -0.))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -0.))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const 0.))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const 0.))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -1.40129846432e-45))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -1.40129846432e-45))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const 1.40129846432e-45))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const 1.40129846432e-45))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -1.40129846432e-45))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -1.40129846432e-45))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const 1.40129846432e-45))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const 1.40129846432e-45))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -1.17549435082e-38))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -1.17549435082e-38))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const 1.17549435082e-38))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const 1.17549435082e-38))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -1.17549435082e-38))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -1.17549435082e-38))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const 1.17549435082e-38))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const 1.17549435082e-38))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -0.5))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const 0.5))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -0.5))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const 0.5))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -1.))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -1.))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const 1.))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const 1.))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -1.))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -1.))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const 1.))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const 1.))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -6.28318548203))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -6.28318548203))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const 6.28318548203))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const 6.28318548203))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -6.28318548203))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -6.28318548203))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const 6.28318548203))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const 6.28318548203))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -3.40282346639e+38))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -3.40282346639e+38))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const 3.40282346639e+38))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const 3.40282346639e+38))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -3.40282346639e+38))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -3.40282346639e+38))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const 3.40282346639e+38))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const 3.40282346639e+38))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const nan:0x200000))
)
(assert_return_canonical_nan (invoke "div" (f32.const -0.) (f32.const -0.)))
(assert_return_canonical_nan (invoke "div" (f32.const -0.) (f32.const 0.)))
(assert_return_canonical_nan (invoke "div" (f32.const 0.) (f32.const -0.)))
(assert_return_canonical_nan (invoke "div" (f32.const 0.) (f32.const 0.)))
(assert_return
  (invoke "div" (f32.const -0.) (f32.const -1.40129846432e-45))
  (f32.const 0.)
)
(assert_return
  (invoke "div" (f32.const -0.) (f32.const 1.40129846432e-45))
  (f32.const -0.)
)
(assert_return
  (invoke "div" (f32.const 0.) (f32.const -1.40129846432e-45))
  (f32.const -0.)
)
(assert_return
  (invoke "div" (f32.const 0.) (f32.const 1.40129846432e-45))
  (f32.const 0.)
)
(assert_return
  (invoke "div" (f32.const -0.) (f32.const -1.17549435082e-38))
  (f32.const 0.)
)
(assert_return
  (invoke "div" (f32.const -0.) (f32.const 1.17549435082e-38))
  (f32.const -0.)
)
(assert_return
  (invoke "div" (f32.const 0.) (f32.const -1.17549435082e-38))
  (f32.const -0.)
)
(assert_return
  (invoke "div" (f32.const 0.) (f32.const 1.17549435082e-38))
  (f32.const 0.)
)
(assert_return (invoke "div" (f32.const -0.) (f32.const -0.5)) (f32.const 0.))
(assert_return (invoke "div" (f32.const -0.) (f32.const 0.5)) (f32.const -0.))
(assert_return (invoke "div" (f32.const 0.) (f32.const -0.5)) (f32.const -0.))
(assert_return (invoke "div" (f32.const 0.) (f32.const 0.5)) (f32.const 0.))
(assert_return (invoke "div" (f32.const -0.) (f32.const -1.)) (f32.const 0.))
(assert_return (invoke "div" (f32.const -0.) (f32.const 1.)) (f32.const -0.))
(assert_return (invoke "div" (f32.const 0.) (f32.const -1.)) (f32.const -0.))
(assert_return (invoke "div" (f32.const 0.) (f32.const 1.)) (f32.const 0.))
(assert_return
  (invoke "div" (f32.const -0.) (f32.const -6.28318548203))
  (f32.const 0.)
)
(assert_return
  (invoke "div" (f32.const -0.) (f32.const 6.28318548203))
  (f32.const -0.)
)
(assert_return
  (invoke "div" (f32.const 0.) (f32.const -6.28318548203))
  (f32.const -0.)
)
(assert_return
  (invoke "div" (f32.const 0.) (f32.const 6.28318548203))
  (f32.const 0.)
)
(assert_return
  (invoke "div" (f32.const -0.) (f32.const -3.40282346639e+38))
  (f32.const 0.)
)
(assert_return
  (invoke "div" (f32.const -0.) (f32.const 3.40282346639e+38))
  (f32.const -0.)
)
(assert_return
  (invoke "div" (f32.const 0.) (f32.const -3.40282346639e+38))
  (f32.const -0.)
)
(assert_return
  (invoke "div" (f32.const 0.) (f32.const 3.40282346639e+38))
  (f32.const 0.)
)
(assert_return (invoke "div" (f32.const -0.) (f32.const -inf)) (f32.const 0.))
(assert_return (invoke "div" (f32.const -0.) (f32.const inf)) (f32.const -0.))
(assert_return (invoke "div" (f32.const 0.) (f32.const -inf)) (f32.const -0.))
(assert_return (invoke "div" (f32.const 0.) (f32.const inf)) (f32.const 0.))
(assert_return_canonical_nan
  (invoke "div" (f32.const -0.) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -0.) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -0.) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -0.) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0.) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 0.) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0.) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 0.) (f32.const nan:0x200000))
)
(assert_return
  (invoke "div" (f32.const -1.40129846432e-45) (f32.const -0.))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -1.40129846432e-45) (f32.const 0.))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 1.40129846432e-45) (f32.const -0.))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 1.40129846432e-45) (f32.const 0.))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -1.40129846432e-45) (f32.const -1.40129846432e-45))
  (f32.const 1.)
)
(assert_return
  (invoke "div" (f32.const -1.40129846432e-45) (f32.const 1.40129846432e-45))
  (f32.const -1.)
)
(assert_return
  (invoke "div" (f32.const 1.40129846432e-45) (f32.const -1.40129846432e-45))
  (f32.const -1.)
)
(assert_return
  (invoke "div" (f32.const 1.40129846432e-45) (f32.const 1.40129846432e-45))
  (f32.const 1.)
)
(assert_return
  (invoke "div" (f32.const -1.40129846432e-45) (f32.const -1.17549435082e-38))
  (f32.const 1.19209289551e-07)
)
(assert_return
  (invoke "div" (f32.const -1.40129846432e-45) (f32.const 1.17549435082e-38))
  (f32.const -1.19209289551e-07)
)
(assert_return
  (invoke "div" (f32.const 1.40129846432e-45) (f32.const -1.17549435082e-38))
  (f32.const -1.19209289551e-07)
)
(assert_return
  (invoke "div" (f32.const 1.40129846432e-45) (f32.const 1.17549435082e-38))
  (f32.const 1.19209289551e-07)
)
(assert_return
  (invoke "div" (f32.const -1.40129846432e-45) (f32.const -0.5))
  (f32.const 2.80259692865e-45)
)
(assert_return
  (invoke "div" (f32.const -1.40129846432e-45) (f32.const 0.5))
  (f32.const -2.80259692865e-45)
)
(assert_return
  (invoke "div" (f32.const 1.40129846432e-45) (f32.const -0.5))
  (f32.const -2.80259692865e-45)
)
(assert_return
  (invoke "div" (f32.const 1.40129846432e-45) (f32.const 0.5))
  (f32.const 2.80259692865e-45)
)
(assert_return
  (invoke "div" (f32.const -1.40129846432e-45) (f32.const -1.))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "div" (f32.const -1.40129846432e-45) (f32.const 1.))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "div" (f32.const 1.40129846432e-45) (f32.const -1.))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "div" (f32.const 1.40129846432e-45) (f32.const 1.))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "div" (f32.const -1.40129846432e-45) (f32.const -6.28318548203))
  (f32.const 0.)
)
(assert_return
  (invoke "div" (f32.const -1.40129846432e-45) (f32.const 6.28318548203))
  (f32.const -0.)
)
(assert_return
  (invoke "div" (f32.const 1.40129846432e-45) (f32.const -6.28318548203))
  (f32.const -0.)
)
(assert_return
  (invoke "div" (f32.const 1.40129846432e-45) (f32.const 6.28318548203))
  (f32.const 0.)
)
(assert_return
  (invoke "div" (f32.const -1.40129846432e-45) (f32.const -3.40282346639e+38))
  (f32.const 0.)
)
(assert_return
  (invoke "div" (f32.const -1.40129846432e-45) (f32.const 3.40282346639e+38))
  (f32.const -0.)
)
(assert_return
  (invoke "div" (f32.const 1.40129846432e-45) (f32.const -3.40282346639e+38))
  (f32.const -0.)
)
(assert_return
  (invoke "div" (f32.const 1.40129846432e-45) (f32.const 3.40282346639e+38))
  (f32.const 0.)
)
(assert_return
  (invoke "div" (f32.const -1.40129846432e-45) (f32.const -inf))
  (f32.const 0.)
)
(assert_return
  (invoke "div" (f32.const -1.40129846432e-45) (f32.const inf))
  (f32.const -0.)
)
(assert_return
  (invoke "div" (f32.const 1.40129846432e-45) (f32.const -inf))
  (f32.const -0.)
)
(assert_return
  (invoke "div" (f32.const 1.40129846432e-45) (f32.const inf))
  (f32.const 0.)
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -1.40129846432e-45) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -1.40129846432e-45) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -1.40129846432e-45) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -1.40129846432e-45) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 1.40129846432e-45) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 1.40129846432e-45) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 1.40129846432e-45) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 1.40129846432e-45) (f32.const nan:0x200000))
)
(assert_return
  (invoke "div" (f32.const -1.17549435082e-38) (f32.const -0.))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -1.17549435082e-38) (f32.const 0.))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 1.17549435082e-38) (f32.const -0.))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 1.17549435082e-38) (f32.const 0.))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -1.17549435082e-38) (f32.const -1.40129846432e-45))
  (f32.const 8388608.)
)
(assert_return
  (invoke "div" (f32.const -1.17549435082e-38) (f32.const 1.40129846432e-45))
  (f32.const -8388608.)
)
(assert_return
  (invoke "div" (f32.const 1.17549435082e-38) (f32.const -1.40129846432e-45))
  (f32.const -8388608.)
)
(assert_return
  (invoke "div" (f32.const 1.17549435082e-38) (f32.const 1.40129846432e-45))
  (f32.const 8388608.)
)
(assert_return
  (invoke "div" (f32.const -1.17549435082e-38) (f32.const -1.17549435082e-38))
  (f32.const 1.)
)
(assert_return
  (invoke "div" (f32.const -1.17549435082e-38) (f32.const 1.17549435082e-38))
  (f32.const -1.)
)
(assert_return
  (invoke "div" (f32.const 1.17549435082e-38) (f32.const -1.17549435082e-38))
  (f32.const -1.)
)
(assert_return
  (invoke "div" (f32.const 1.17549435082e-38) (f32.const 1.17549435082e-38))
  (f32.const 1.)
)
(assert_return
  (invoke "div" (f32.const -1.17549435082e-38) (f32.const -0.5))
  (f32.const 2.35098870164e-38)
)
(assert_return
  (invoke "div" (f32.const -1.17549435082e-38) (f32.const 0.5))
  (f32.const -2.35098870164e-38)
)
(assert_return
  (invoke "div" (f32.const 1.17549435082e-38) (f32.const -0.5))
  (f32.const -2.35098870164e-38)
)
(assert_return
  (invoke "div" (f32.const 1.17549435082e-38) (f32.const 0.5))
  (f32.const 2.35098870164e-38)
)
(assert_return
  (invoke "div" (f32.const -1.17549435082e-38) (f32.const -1.))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "div" (f32.const -1.17549435082e-38) (f32.const 1.))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "div" (f32.const 1.17549435082e-38) (f32.const -1.))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "div" (f32.const 1.17549435082e-38) (f32.const 1.))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "div" (f32.const -1.17549435082e-38) (f32.const -6.28318548203))
  (f32.const 1.87085676414e-39)
)
(assert_return
  (invoke "div" (f32.const -1.17549435082e-38) (f32.const 6.28318548203))
  (f32.const -1.87085676414e-39)
)
(assert_return
  (invoke "div" (f32.const 1.17549435082e-38) (f32.const -6.28318548203))
  (f32.const -1.87085676414e-39)
)
(assert_return
  (invoke "div" (f32.const 1.17549435082e-38) (f32.const 6.28318548203))
  (f32.const 1.87085676414e-39)
)
(assert_return
  (invoke "div" (f32.const -1.17549435082e-38) (f32.const -3.40282346639e+38))
  (f32.const 0.)
)
(assert_return
  (invoke "div" (f32.const -1.17549435082e-38) (f32.const 3.40282346639e+38))
  (f32.const -0.)
)
(assert_return
  (invoke "div" (f32.const 1.17549435082e-38) (f32.const -3.40282346639e+38))
  (f32.const -0.)
)
(assert_return
  (invoke "div" (f32.const 1.17549435082e-38) (f32.const 3.40282346639e+38))
  (f32.const 0.)
)
(assert_return
  (invoke "div" (f32.const -1.17549435082e-38) (f32.const -inf))
  (f32.const 0.)
)
(assert_return
  (invoke "div" (f32.const -1.17549435082e-38) (f32.const inf))
  (f32.const -0.)
)
(assert_return
  (invoke "div" (f32.const 1.17549435082e-38) (f32.const -inf))
  (f32.const -0.)
)
(assert_return
  (invoke "div" (f32.const 1.17549435082e-38) (f32.const inf))
  (f32.const 0.)
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -1.17549435082e-38) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -1.17549435082e-38) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -1.17549435082e-38) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -1.17549435082e-38) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 1.17549435082e-38) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 1.17549435082e-38) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 1.17549435082e-38) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 1.17549435082e-38) (f32.const nan:0x200000))
)
(assert_return (invoke "div" (f32.const -0.5) (f32.const -0.)) (f32.const inf))
(assert_return (invoke "div" (f32.const -0.5) (f32.const 0.)) (f32.const -inf))
(assert_return (invoke "div" (f32.const 0.5) (f32.const -0.)) (f32.const -inf))
(assert_return (invoke "div" (f32.const 0.5) (f32.const 0.)) (f32.const inf))
(assert_return
  (invoke "div" (f32.const -0.5) (f32.const -1.40129846432e-45))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0.5) (f32.const 1.40129846432e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0.5) (f32.const -1.40129846432e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0.5) (f32.const 1.40129846432e-45))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0.5) (f32.const -1.17549435082e-38))
  (f32.const 4.25352958651e+37)
)
(assert_return
  (invoke "div" (f32.const -0.5) (f32.const 1.17549435082e-38))
  (f32.const -4.25352958651e+37)
)
(assert_return
  (invoke "div" (f32.const 0.5) (f32.const -1.17549435082e-38))
  (f32.const -4.25352958651e+37)
)
(assert_return
  (invoke "div" (f32.const 0.5) (f32.const 1.17549435082e-38))
  (f32.const 4.25352958651e+37)
)
(assert_return (invoke "div" (f32.const -0.5) (f32.const -0.5)) (f32.const 1.))
(assert_return (invoke "div" (f32.const -0.5) (f32.const 0.5)) (f32.const -1.))
(assert_return (invoke "div" (f32.const 0.5) (f32.const -0.5)) (f32.const -1.))
(assert_return (invoke "div" (f32.const 0.5) (f32.const 0.5)) (f32.const 1.))
(assert_return (invoke "div" (f32.const -0.5) (f32.const -1.)) (f32.const 0.5))
(assert_return (invoke "div" (f32.const -0.5) (f32.const 1.)) (f32.const -0.5))
(assert_return (invoke "div" (f32.const 0.5) (f32.const -1.)) (f32.const -0.5))
(assert_return (invoke "div" (f32.const 0.5) (f32.const 1.)) (f32.const 0.5))
(assert_return
  (invoke "div" (f32.const -0.5) (f32.const -6.28318548203))
  (f32.const 0.0795774683356)
)
(assert_return
  (invoke "div" (f32.const -0.5) (f32.const 6.28318548203))
  (f32.const -0.0795774683356)
)
(assert_return
  (invoke "div" (f32.const 0.5) (f32.const -6.28318548203))
  (f32.const -0.0795774683356)
)
(assert_return
  (invoke "div" (f32.const 0.5) (f32.const 6.28318548203))
  (f32.const 0.0795774683356)
)
(assert_return
  (invoke "div" (f32.const -0.5) (f32.const -3.40282346639e+38))
  (f32.const 1.46936793853e-39)
)
(assert_return
  (invoke "div" (f32.const -0.5) (f32.const 3.40282346639e+38))
  (f32.const -1.46936793853e-39)
)
(assert_return
  (invoke "div" (f32.const 0.5) (f32.const -3.40282346639e+38))
  (f32.const -1.46936793853e-39)
)
(assert_return
  (invoke "div" (f32.const 0.5) (f32.const 3.40282346639e+38))
  (f32.const 1.46936793853e-39)
)
(assert_return (invoke "div" (f32.const -0.5) (f32.const -inf)) (f32.const 0.))
(assert_return (invoke "div" (f32.const -0.5) (f32.const inf)) (f32.const -0.))
(assert_return (invoke "div" (f32.const 0.5) (f32.const -inf)) (f32.const -0.))
(assert_return (invoke "div" (f32.const 0.5) (f32.const inf)) (f32.const 0.))
(assert_return_canonical_nan
  (invoke "div" (f32.const -0.5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -0.5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -0.5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -0.5) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0.5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 0.5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0.5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 0.5) (f32.const nan:0x200000))
)
(assert_return (invoke "div" (f32.const -1.) (f32.const -0.)) (f32.const inf))
(assert_return (invoke "div" (f32.const -1.) (f32.const 0.)) (f32.const -inf))
(assert_return (invoke "div" (f32.const 1.) (f32.const -0.)) (f32.const -inf))
(assert_return (invoke "div" (f32.const 1.) (f32.const 0.)) (f32.const inf))
(assert_return
  (invoke "div" (f32.const -1.) (f32.const -1.40129846432e-45))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -1.) (f32.const 1.40129846432e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 1.) (f32.const -1.40129846432e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 1.) (f32.const 1.40129846432e-45))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -1.) (f32.const -1.17549435082e-38))
  (f32.const 8.50705917302e+37)
)
(assert_return
  (invoke "div" (f32.const -1.) (f32.const 1.17549435082e-38))
  (f32.const -8.50705917302e+37)
)
(assert_return
  (invoke "div" (f32.const 1.) (f32.const -1.17549435082e-38))
  (f32.const -8.50705917302e+37)
)
(assert_return
  (invoke "div" (f32.const 1.) (f32.const 1.17549435082e-38))
  (f32.const 8.50705917302e+37)
)
(assert_return (invoke "div" (f32.const -1.) (f32.const -0.5)) (f32.const 2.))
(assert_return (invoke "div" (f32.const -1.) (f32.const 0.5)) (f32.const -2.))
(assert_return (invoke "div" (f32.const 1.) (f32.const -0.5)) (f32.const -2.))
(assert_return (invoke "div" (f32.const 1.) (f32.const 0.5)) (f32.const 2.))
(assert_return (invoke "div" (f32.const -1.) (f32.const -1.)) (f32.const 1.))
(assert_return (invoke "div" (f32.const -1.) (f32.const 1.)) (f32.const -1.))
(assert_return (invoke "div" (f32.const 1.) (f32.const -1.)) (f32.const -1.))
(assert_return (invoke "div" (f32.const 1.) (f32.const 1.)) (f32.const 1.))
(assert_return
  (invoke "div" (f32.const -1.) (f32.const -6.28318548203))
  (f32.const 0.159154936671)
)
(assert_return
  (invoke "div" (f32.const -1.) (f32.const 6.28318548203))
  (f32.const -0.159154936671)
)
(assert_return
  (invoke "div" (f32.const 1.) (f32.const -6.28318548203))
  (f32.const -0.159154936671)
)
(assert_return
  (invoke "div" (f32.const 1.) (f32.const 6.28318548203))
  (f32.const 0.159154936671)
)
(assert_return
  (invoke "div" (f32.const -1.) (f32.const -3.40282346639e+38))
  (f32.const 2.93873587706e-39)
)
(assert_return
  (invoke "div" (f32.const -1.) (f32.const 3.40282346639e+38))
  (f32.const -2.93873587706e-39)
)
(assert_return
  (invoke "div" (f32.const 1.) (f32.const -3.40282346639e+38))
  (f32.const -2.93873587706e-39)
)
(assert_return
  (invoke "div" (f32.const 1.) (f32.const 3.40282346639e+38))
  (f32.const 2.93873587706e-39)
)
(assert_return (invoke "div" (f32.const -1.) (f32.const -inf)) (f32.const 0.))
(assert_return (invoke "div" (f32.const -1.) (f32.const inf)) (f32.const -0.))
(assert_return (invoke "div" (f32.const 1.) (f32.const -inf)) (f32.const -0.))
(assert_return (invoke "div" (f32.const 1.) (f32.const inf)) (f32.const 0.))
(assert_return_canonical_nan
  (invoke "div" (f32.const -1.) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -1.) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -1.) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -1.) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 1.) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 1.) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 1.) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 1.) (f32.const nan:0x200000))
)
(assert_return
  (invoke "div" (f32.const -6.28318548203) (f32.const -0.))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -6.28318548203) (f32.const 0.))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 6.28318548203) (f32.const -0.))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 6.28318548203) (f32.const 0.))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -6.28318548203) (f32.const -1.40129846432e-45))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -6.28318548203) (f32.const 1.40129846432e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 6.28318548203) (f32.const -1.40129846432e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 6.28318548203) (f32.const 1.40129846432e-45))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -6.28318548203) (f32.const -1.17549435082e-38))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -6.28318548203) (f32.const 1.17549435082e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 6.28318548203) (f32.const -1.17549435082e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 6.28318548203) (f32.const 1.17549435082e-38))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -6.28318548203) (f32.const -0.5))
  (f32.const 12.5663709641)
)
(assert_return
  (invoke "div" (f32.const -6.28318548203) (f32.const 0.5))
  (f32.const -12.5663709641)
)
(assert_return
  (invoke "div" (f32.const 6.28318548203) (f32.const -0.5))
  (f32.const -12.5663709641)
)
(assert_return
  (invoke "div" (f32.const 6.28318548203) (f32.const 0.5))
  (f32.const 12.5663709641)
)
(assert_return
  (invoke "div" (f32.const -6.28318548203) (f32.const -1.))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "div" (f32.const -6.28318548203) (f32.const 1.))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "div" (f32.const 6.28318548203) (f32.const -1.))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "div" (f32.const 6.28318548203) (f32.const 1.))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "div" (f32.const -6.28318548203) (f32.const -6.28318548203))
  (f32.const 1.)
)
(assert_return
  (invoke "div" (f32.const -6.28318548203) (f32.const 6.28318548203))
  (f32.const -1.)
)
(assert_return
  (invoke "div" (f32.const 6.28318548203) (f32.const -6.28318548203))
  (f32.const -1.)
)
(assert_return
  (invoke "div" (f32.const 6.28318548203) (f32.const 6.28318548203))
  (f32.const 1.)
)
(assert_return
  (invoke "div" (f32.const -6.28318548203) (f32.const -3.40282346639e+38))
  (f32.const 1.84646239995e-38)
)
(assert_return
  (invoke "div" (f32.const -6.28318548203) (f32.const 3.40282346639e+38))
  (f32.const -1.84646239995e-38)
)
(assert_return
  (invoke "div" (f32.const 6.28318548203) (f32.const -3.40282346639e+38))
  (f32.const -1.84646239995e-38)
)
(assert_return
  (invoke "div" (f32.const 6.28318548203) (f32.const 3.40282346639e+38))
  (f32.const 1.84646239995e-38)
)
(assert_return
  (invoke "div" (f32.const -6.28318548203) (f32.const -inf))
  (f32.const 0.)
)
(assert_return
  (invoke "div" (f32.const -6.28318548203) (f32.const inf))
  (f32.const -0.)
)
(assert_return
  (invoke "div" (f32.const 6.28318548203) (f32.const -inf))
  (f32.const -0.)
)
(assert_return
  (invoke "div" (f32.const 6.28318548203) (f32.const inf))
  (f32.const 0.)
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -6.28318548203) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -6.28318548203) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -6.28318548203) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -6.28318548203) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 6.28318548203) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 6.28318548203) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 6.28318548203) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 6.28318548203) (f32.const nan:0x200000))
)
(assert_return
  (invoke "div" (f32.const -3.40282346639e+38) (f32.const -0.))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -3.40282346639e+38) (f32.const 0.))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 3.40282346639e+38) (f32.const -0.))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 3.40282346639e+38) (f32.const 0.))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -3.40282346639e+38) (f32.const -1.40129846432e-45))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -3.40282346639e+38) (f32.const 1.40129846432e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 3.40282346639e+38) (f32.const -1.40129846432e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 3.40282346639e+38) (f32.const 1.40129846432e-45))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -3.40282346639e+38) (f32.const -1.17549435082e-38))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -3.40282346639e+38) (f32.const 1.17549435082e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 3.40282346639e+38) (f32.const -1.17549435082e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 3.40282346639e+38) (f32.const 1.17549435082e-38))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -3.40282346639e+38) (f32.const -0.5))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -3.40282346639e+38) (f32.const 0.5))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 3.40282346639e+38) (f32.const -0.5))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 3.40282346639e+38) (f32.const 0.5))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -3.40282346639e+38) (f32.const -1.))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "div" (f32.const -3.40282346639e+38) (f32.const 1.))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "div" (f32.const 3.40282346639e+38) (f32.const -1.))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "div" (f32.const 3.40282346639e+38) (f32.const 1.))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "div" (f32.const -3.40282346639e+38) (f32.const -6.28318548203))
  (f32.const 5.4157613487e+37)
)
(assert_return
  (invoke "div" (f32.const -3.40282346639e+38) (f32.const 6.28318548203))
  (f32.const -5.4157613487e+37)
)
(assert_return
  (invoke "div" (f32.const 3.40282346639e+38) (f32.const -6.28318548203))
  (f32.const -5.4157613487e+37)
)
(assert_return
  (invoke "div" (f32.const 3.40282346639e+38) (f32.const 6.28318548203))
  (f32.const 5.4157613487e+37)
)
(assert_return
  (invoke "div" (f32.const -3.40282346639e+38) (f32.const -3.40282346639e+38))
  (f32.const 1.)
)
(assert_return
  (invoke "div" (f32.const -3.40282346639e+38) (f32.const 3.40282346639e+38))
  (f32.const -1.)
)
(assert_return
  (invoke "div" (f32.const 3.40282346639e+38) (f32.const -3.40282346639e+38))
  (f32.const -1.)
)
(assert_return
  (invoke "div" (f32.const 3.40282346639e+38) (f32.const 3.40282346639e+38))
  (f32.const 1.)
)
(assert_return
  (invoke "div" (f32.const -3.40282346639e+38) (f32.const -inf))
  (f32.const 0.)
)
(assert_return
  (invoke "div" (f32.const -3.40282346639e+38) (f32.const inf))
  (f32.const -0.)
)
(assert_return
  (invoke "div" (f32.const 3.40282346639e+38) (f32.const -inf))
  (f32.const -0.)
)
(assert_return
  (invoke "div" (f32.const 3.40282346639e+38) (f32.const inf))
  (f32.const 0.)
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -3.40282346639e+38) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -3.40282346639e+38) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -3.40282346639e+38) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -3.40282346639e+38) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 3.40282346639e+38) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 3.40282346639e+38) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 3.40282346639e+38) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 3.40282346639e+38) (f32.const nan:0x200000))
)
(assert_return (invoke "div" (f32.const -inf) (f32.const -0.)) (f32.const inf))
(assert_return (invoke "div" (f32.const -inf) (f32.const 0.)) (f32.const -inf))
(assert_return (invoke "div" (f32.const inf) (f32.const -0.)) (f32.const -inf))
(assert_return (invoke "div" (f32.const inf) (f32.const 0.)) (f32.const inf))
(assert_return
  (invoke "div" (f32.const -inf) (f32.const -1.40129846432e-45))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const 1.40129846432e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const -1.40129846432e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const 1.40129846432e-45))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const -1.17549435082e-38))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const 1.17549435082e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const -1.17549435082e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const 1.17549435082e-38))
  (f32.const inf)
)
(assert_return (invoke "div" (f32.const -inf) (f32.const -0.5)) (f32.const inf))
(assert_return (invoke "div" (f32.const -inf) (f32.const 0.5)) (f32.const -inf))
(assert_return (invoke "div" (f32.const inf) (f32.const -0.5)) (f32.const -inf))
(assert_return (invoke "div" (f32.const inf) (f32.const 0.5)) (f32.const inf))
(assert_return (invoke "div" (f32.const -inf) (f32.const -1.)) (f32.const inf))
(assert_return (invoke "div" (f32.const -inf) (f32.const 1.)) (f32.const -inf))
(assert_return (invoke "div" (f32.const inf) (f32.const -1.)) (f32.const -inf))
(assert_return (invoke "div" (f32.const inf) (f32.const 1.)) (f32.const inf))
(assert_return
  (invoke "div" (f32.const -inf) (f32.const -6.28318548203))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const 6.28318548203))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const -6.28318548203))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const 6.28318548203))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const -3.40282346639e+38))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const 3.40282346639e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const -3.40282346639e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const 3.40282346639e+38))
  (f32.const inf)
)
(assert_return_canonical_nan (invoke "div" (f32.const -inf) (f32.const -inf)))
(assert_return_canonical_nan (invoke "div" (f32.const -inf) (f32.const inf)))
(assert_return_canonical_nan (invoke "div" (f32.const inf) (f32.const -inf)))
(assert_return_canonical_nan (invoke "div" (f32.const inf) (f32.const inf)))
(assert_return_canonical_nan
  (invoke "div" (f32.const -inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -0.))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -0.))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const 0.))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const 0.))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -0.))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -0.))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const 0.))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const 0.))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -1.40129846432e-45))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -1.40129846432e-45))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const 1.40129846432e-45))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const 1.40129846432e-45))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -1.40129846432e-45))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -1.40129846432e-45))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const 1.40129846432e-45))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const 1.40129846432e-45))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -1.17549435082e-38))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -1.17549435082e-38))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const 1.17549435082e-38))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const 1.17549435082e-38))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -1.17549435082e-38))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -1.17549435082e-38))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const 1.17549435082e-38))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const 1.17549435082e-38))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -0.5))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const 0.5))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -0.5))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const 0.5))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -1.))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -1.))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const 1.))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const 1.))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -1.))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -1.))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const 1.))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const 1.))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -6.28318548203))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -6.28318548203))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const 6.28318548203))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const 6.28318548203))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -6.28318548203))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -6.28318548203))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const 6.28318548203))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const 6.28318548203))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -3.40282346639e+38))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -3.40282346639e+38))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const 3.40282346639e+38))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const 3.40282346639e+38))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -3.40282346639e+38))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -3.40282346639e+38))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const 3.40282346639e+38))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const 3.40282346639e+38))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const nan:0x200000))
)
(assert_return (invoke "min" (f32.const -0.) (f32.const -0.)) (f32.const -0.))
(assert_return (invoke "min" (f32.const -0.) (f32.const 0.)) (f32.const -0.))
(assert_return (invoke "min" (f32.const 0.) (f32.const -0.)) (f32.const -0.))
(assert_return (invoke "min" (f32.const 0.) (f32.const 0.)) (f32.const 0.))
(assert_return
  (invoke "min" (f32.const -0.) (f32.const -1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const -0.) (f32.const 1.40129846432e-45))
  (f32.const -0.)
)
(assert_return
  (invoke "min" (f32.const 0.) (f32.const -1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const 0.) (f32.const 1.40129846432e-45))
  (f32.const 0.)
)
(assert_return
  (invoke "min" (f32.const -0.) (f32.const -1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const -0.) (f32.const 1.17549435082e-38))
  (f32.const -0.)
)
(assert_return
  (invoke "min" (f32.const 0.) (f32.const -1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const 0.) (f32.const 1.17549435082e-38))
  (f32.const 0.)
)
(assert_return (invoke "min" (f32.const -0.) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const -0.) (f32.const 0.5)) (f32.const -0.))
(assert_return (invoke "min" (f32.const 0.) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const 0.) (f32.const 0.5)) (f32.const 0.))
(assert_return (invoke "min" (f32.const -0.) (f32.const -1.)) (f32.const -1.))
(assert_return (invoke "min" (f32.const -0.) (f32.const 1.)) (f32.const -0.))
(assert_return (invoke "min" (f32.const 0.) (f32.const -1.)) (f32.const -1.))
(assert_return (invoke "min" (f32.const 0.) (f32.const 1.)) (f32.const 0.))
(assert_return
  (invoke "min" (f32.const -0.) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const -0.) (f32.const 6.28318548203))
  (f32.const -0.)
)
(assert_return
  (invoke "min" (f32.const 0.) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const 0.) (f32.const 6.28318548203))
  (f32.const 0.)
)
(assert_return
  (invoke "min" (f32.const -0.) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const -0.) (f32.const 3.40282346639e+38))
  (f32.const -0.)
)
(assert_return
  (invoke "min" (f32.const 0.) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const 0.) (f32.const 3.40282346639e+38))
  (f32.const 0.)
)
(assert_return (invoke "min" (f32.const -0.) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "min" (f32.const -0.) (f32.const inf)) (f32.const -0.))
(assert_return (invoke "min" (f32.const 0.) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "min" (f32.const 0.) (f32.const inf)) (f32.const 0.))
(assert_return_canonical_nan
  (invoke "min" (f32.const -0.) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -0.) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -0.) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -0.) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 0.) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 0.) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 0.) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 0.) (f32.const nan:0x200000))
)
(assert_return
  (invoke "min" (f32.const -1.40129846432e-45) (f32.const -0.))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const -1.40129846432e-45) (f32.const 0.))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const 1.40129846432e-45) (f32.const -0.))
  (f32.const -0.)
)
(assert_return
  (invoke "min" (f32.const 1.40129846432e-45) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "min" (f32.const -1.40129846432e-45) (f32.const -1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const -1.40129846432e-45) (f32.const 1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const 1.40129846432e-45) (f32.const -1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const 1.40129846432e-45) (f32.const 1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const -1.40129846432e-45) (f32.const -1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const -1.40129846432e-45) (f32.const 1.17549435082e-38))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const 1.40129846432e-45) (f32.const -1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const 1.40129846432e-45) (f32.const 1.17549435082e-38))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const -1.40129846432e-45) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const -1.40129846432e-45) (f32.const 0.5))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const 1.40129846432e-45) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const 1.40129846432e-45) (f32.const 0.5))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const -1.40129846432e-45) (f32.const -1.))
  (f32.const -1.)
)
(assert_return
  (invoke "min" (f32.const -1.40129846432e-45) (f32.const 1.))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const 1.40129846432e-45) (f32.const -1.))
  (f32.const -1.)
)
(assert_return
  (invoke "min" (f32.const 1.40129846432e-45) (f32.const 1.))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const -1.40129846432e-45) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const -1.40129846432e-45) (f32.const 6.28318548203))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const 1.40129846432e-45) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const 1.40129846432e-45) (f32.const 6.28318548203))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const -1.40129846432e-45) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const -1.40129846432e-45) (f32.const 3.40282346639e+38))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const 1.40129846432e-45) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const 1.40129846432e-45) (f32.const 3.40282346639e+38))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const -1.40129846432e-45) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -1.40129846432e-45) (f32.const inf))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const 1.40129846432e-45) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const 1.40129846432e-45) (f32.const inf))
  (f32.const 1.40129846432e-45)
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -1.40129846432e-45) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -1.40129846432e-45) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -1.40129846432e-45) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -1.40129846432e-45) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 1.40129846432e-45) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 1.40129846432e-45) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 1.40129846432e-45) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 1.40129846432e-45) (f32.const nan:0x200000))
)
(assert_return
  (invoke "min" (f32.const -1.17549435082e-38) (f32.const -0.))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const -1.17549435082e-38) (f32.const 0.))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const 1.17549435082e-38) (f32.const -0.))
  (f32.const -0.)
)
(assert_return
  (invoke "min" (f32.const 1.17549435082e-38) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "min" (f32.const -1.17549435082e-38) (f32.const -1.40129846432e-45))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const -1.17549435082e-38) (f32.const 1.40129846432e-45))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const 1.17549435082e-38) (f32.const -1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const 1.17549435082e-38) (f32.const 1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const -1.17549435082e-38) (f32.const -1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const -1.17549435082e-38) (f32.const 1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const 1.17549435082e-38) (f32.const -1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const 1.17549435082e-38) (f32.const 1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const -1.17549435082e-38) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const -1.17549435082e-38) (f32.const 0.5))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const 1.17549435082e-38) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const 1.17549435082e-38) (f32.const 0.5))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const -1.17549435082e-38) (f32.const -1.))
  (f32.const -1.)
)
(assert_return
  (invoke "min" (f32.const -1.17549435082e-38) (f32.const 1.))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const 1.17549435082e-38) (f32.const -1.))
  (f32.const -1.)
)
(assert_return
  (invoke "min" (f32.const 1.17549435082e-38) (f32.const 1.))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const -1.17549435082e-38) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const -1.17549435082e-38) (f32.const 6.28318548203))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const 1.17549435082e-38) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const 1.17549435082e-38) (f32.const 6.28318548203))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const -1.17549435082e-38) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const -1.17549435082e-38) (f32.const 3.40282346639e+38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const 1.17549435082e-38) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const 1.17549435082e-38) (f32.const 3.40282346639e+38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const -1.17549435082e-38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -1.17549435082e-38) (f32.const inf))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const 1.17549435082e-38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const 1.17549435082e-38) (f32.const inf))
  (f32.const 1.17549435082e-38)
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -1.17549435082e-38) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -1.17549435082e-38) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -1.17549435082e-38) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -1.17549435082e-38) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 1.17549435082e-38) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 1.17549435082e-38) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 1.17549435082e-38) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 1.17549435082e-38) (f32.const nan:0x200000))
)
(assert_return (invoke "min" (f32.const -0.5) (f32.const -0.)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const -0.5) (f32.const 0.)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const 0.5) (f32.const -0.)) (f32.const -0.))
(assert_return (invoke "min" (f32.const 0.5) (f32.const 0.)) (f32.const 0.))
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const -1.40129846432e-45))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const 1.40129846432e-45))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const 0.5) (f32.const -1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const 0.5) (f32.const 1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const -1.17549435082e-38))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const 1.17549435082e-38))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const 0.5) (f32.const -1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const 0.5) (f32.const 1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return (invoke "min" (f32.const -0.5) (f32.const 0.5)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const 0.5) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const 0.5) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "min" (f32.const -0.5) (f32.const -1.)) (f32.const -1.))
(assert_return (invoke "min" (f32.const -0.5) (f32.const 1.)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const 0.5) (f32.const -1.)) (f32.const -1.))
(assert_return (invoke "min" (f32.const 0.5) (f32.const 1.)) (f32.const 0.5))
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const 6.28318548203))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const 0.5) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const 0.5) (f32.const 6.28318548203))
  (f32.const 0.5)
)
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const 3.40282346639e+38))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const 0.5) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const 0.5) (f32.const 3.40282346639e+38))
  (f32.const 0.5)
)
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const -inf))
  (f32.const -inf)
)
(assert_return (invoke "min" (f32.const -0.5) (f32.const inf)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const 0.5) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "min" (f32.const 0.5) (f32.const inf)) (f32.const 0.5))
(assert_return_canonical_nan
  (invoke "min" (f32.const -0.5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -0.5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -0.5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -0.5) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 0.5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 0.5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 0.5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 0.5) (f32.const nan:0x200000))
)
(assert_return (invoke "min" (f32.const -1.) (f32.const -0.)) (f32.const -1.))
(assert_return (invoke "min" (f32.const -1.) (f32.const 0.)) (f32.const -1.))
(assert_return (invoke "min" (f32.const 1.) (f32.const -0.)) (f32.const -0.))
(assert_return (invoke "min" (f32.const 1.) (f32.const 0.)) (f32.const 0.))
(assert_return
  (invoke "min" (f32.const -1.) (f32.const -1.40129846432e-45))
  (f32.const -1.)
)
(assert_return
  (invoke "min" (f32.const -1.) (f32.const 1.40129846432e-45))
  (f32.const -1.)
)
(assert_return
  (invoke "min" (f32.const 1.) (f32.const -1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const 1.) (f32.const 1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const -1.) (f32.const -1.17549435082e-38))
  (f32.const -1.)
)
(assert_return
  (invoke "min" (f32.const -1.) (f32.const 1.17549435082e-38))
  (f32.const -1.)
)
(assert_return
  (invoke "min" (f32.const 1.) (f32.const -1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const 1.) (f32.const 1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return (invoke "min" (f32.const -1.) (f32.const -0.5)) (f32.const -1.))
(assert_return (invoke "min" (f32.const -1.) (f32.const 0.5)) (f32.const -1.))
(assert_return (invoke "min" (f32.const 1.) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const 1.) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "min" (f32.const -1.) (f32.const -1.)) (f32.const -1.))
(assert_return (invoke "min" (f32.const -1.) (f32.const 1.)) (f32.const -1.))
(assert_return (invoke "min" (f32.const 1.) (f32.const -1.)) (f32.const -1.))
(assert_return (invoke "min" (f32.const 1.) (f32.const 1.)) (f32.const 1.))
(assert_return
  (invoke "min" (f32.const -1.) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const -1.) (f32.const 6.28318548203))
  (f32.const -1.)
)
(assert_return
  (invoke "min" (f32.const 1.) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const 1.) (f32.const 6.28318548203))
  (f32.const 1.)
)
(assert_return
  (invoke "min" (f32.const -1.) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const -1.) (f32.const 3.40282346639e+38))
  (f32.const -1.)
)
(assert_return
  (invoke "min" (f32.const 1.) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const 1.) (f32.const 3.40282346639e+38))
  (f32.const 1.)
)
(assert_return (invoke "min" (f32.const -1.) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "min" (f32.const -1.) (f32.const inf)) (f32.const -1.))
(assert_return (invoke "min" (f32.const 1.) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "min" (f32.const 1.) (f32.const inf)) (f32.const 1.))
(assert_return_canonical_nan
  (invoke "min" (f32.const -1.) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -1.) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -1.) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -1.) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 1.) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 1.) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 1.) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 1.) (f32.const nan:0x200000))
)
(assert_return
  (invoke "min" (f32.const -6.28318548203) (f32.const -0.))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const -6.28318548203) (f32.const 0.))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const 6.28318548203) (f32.const -0.))
  (f32.const -0.)
)
(assert_return
  (invoke "min" (f32.const 6.28318548203) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "min" (f32.const -6.28318548203) (f32.const -1.40129846432e-45))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const -6.28318548203) (f32.const 1.40129846432e-45))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const 6.28318548203) (f32.const -1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const 6.28318548203) (f32.const 1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const -6.28318548203) (f32.const -1.17549435082e-38))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const -6.28318548203) (f32.const 1.17549435082e-38))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const 6.28318548203) (f32.const -1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const 6.28318548203) (f32.const 1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const -6.28318548203) (f32.const -0.5))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const -6.28318548203) (f32.const 0.5))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const 6.28318548203) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const 6.28318548203) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "min" (f32.const -6.28318548203) (f32.const -1.))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const -6.28318548203) (f32.const 1.))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const 6.28318548203) (f32.const -1.))
  (f32.const -1.)
)
(assert_return
  (invoke "min" (f32.const 6.28318548203) (f32.const 1.))
  (f32.const 1.)
)
(assert_return
  (invoke "min" (f32.const -6.28318548203) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const -6.28318548203) (f32.const 6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const 6.28318548203) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const 6.28318548203) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "min" (f32.const -6.28318548203) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const -6.28318548203) (f32.const 3.40282346639e+38))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const 6.28318548203) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const 6.28318548203) (f32.const 3.40282346639e+38))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "min" (f32.const -6.28318548203) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -6.28318548203) (f32.const inf))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const 6.28318548203) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const 6.28318548203) (f32.const inf))
  (f32.const 6.28318548203)
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -6.28318548203) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -6.28318548203) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -6.28318548203) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -6.28318548203) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 6.28318548203) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 6.28318548203) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 6.28318548203) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 6.28318548203) (f32.const nan:0x200000))
)
(assert_return
  (invoke "min" (f32.const -3.40282346639e+38) (f32.const -0.))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const -3.40282346639e+38) (f32.const 0.))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const 3.40282346639e+38) (f32.const -0.))
  (f32.const -0.)
)
(assert_return
  (invoke "min" (f32.const 3.40282346639e+38) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "min" (f32.const -3.40282346639e+38) (f32.const -1.40129846432e-45))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const -3.40282346639e+38) (f32.const 1.40129846432e-45))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const 3.40282346639e+38) (f32.const -1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const 3.40282346639e+38) (f32.const 1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const -3.40282346639e+38) (f32.const -1.17549435082e-38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const -3.40282346639e+38) (f32.const 1.17549435082e-38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const 3.40282346639e+38) (f32.const -1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const 3.40282346639e+38) (f32.const 1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const -3.40282346639e+38) (f32.const -0.5))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const -3.40282346639e+38) (f32.const 0.5))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const 3.40282346639e+38) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const 3.40282346639e+38) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "min" (f32.const -3.40282346639e+38) (f32.const -1.))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const -3.40282346639e+38) (f32.const 1.))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const 3.40282346639e+38) (f32.const -1.))
  (f32.const -1.)
)
(assert_return
  (invoke "min" (f32.const 3.40282346639e+38) (f32.const 1.))
  (f32.const 1.)
)
(assert_return
  (invoke "min" (f32.const -3.40282346639e+38) (f32.const -6.28318548203))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const -3.40282346639e+38) (f32.const 6.28318548203))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const 3.40282346639e+38) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const 3.40282346639e+38) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "min" (f32.const -3.40282346639e+38) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const -3.40282346639e+38) (f32.const 3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const 3.40282346639e+38) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const 3.40282346639e+38) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const -3.40282346639e+38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -3.40282346639e+38) (f32.const inf))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const 3.40282346639e+38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const 3.40282346639e+38) (f32.const inf))
  (f32.const 3.40282346639e+38)
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -3.40282346639e+38) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -3.40282346639e+38) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -3.40282346639e+38) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -3.40282346639e+38) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 3.40282346639e+38) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 3.40282346639e+38) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 3.40282346639e+38) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 3.40282346639e+38) (f32.const nan:0x200000))
)
(assert_return (invoke "min" (f32.const -inf) (f32.const -0.)) (f32.const -inf))
(assert_return (invoke "min" (f32.const -inf) (f32.const 0.)) (f32.const -inf))
(assert_return (invoke "min" (f32.const inf) (f32.const -0.)) (f32.const -0.))
(assert_return (invoke "min" (f32.const inf) (f32.const 0.)) (f32.const 0.))
(assert_return
  (invoke "min" (f32.const -inf) (f32.const -1.40129846432e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const 1.40129846432e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const -1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const 1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const -1.17549435082e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const 1.17549435082e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const -1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const 1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const -0.5))
  (f32.const -inf)
)
(assert_return (invoke "min" (f32.const -inf) (f32.const 0.5)) (f32.const -inf))
(assert_return (invoke "min" (f32.const inf) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const inf) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "min" (f32.const -inf) (f32.const -1.)) (f32.const -inf))
(assert_return (invoke "min" (f32.const -inf) (f32.const 1.)) (f32.const -inf))
(assert_return (invoke "min" (f32.const inf) (f32.const -1.)) (f32.const -1.))
(assert_return (invoke "min" (f32.const inf) (f32.const 1.)) (f32.const 1.))
(assert_return
  (invoke "min" (f32.const -inf) (f32.const -6.28318548203))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const 6.28318548203))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const -3.40282346639e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const 3.40282346639e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const -inf))
  (f32.const -inf)
)
(assert_return (invoke "min" (f32.const -inf) (f32.const inf)) (f32.const -inf))
(assert_return (invoke "min" (f32.const inf) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "min" (f32.const inf) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "min" (f32.const -inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -0.))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -0.))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const 0.))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const 0.))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -0.))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -0.))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const 0.))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const 0.))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -1.40129846432e-45))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -1.40129846432e-45))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const 1.40129846432e-45))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const 1.40129846432e-45))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -1.40129846432e-45))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -1.40129846432e-45))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const 1.40129846432e-45))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const 1.40129846432e-45))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -1.17549435082e-38))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -1.17549435082e-38))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const 1.17549435082e-38))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const 1.17549435082e-38))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -1.17549435082e-38))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -1.17549435082e-38))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const 1.17549435082e-38))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const 1.17549435082e-38))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -0.5))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const 0.5))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -0.5))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const 0.5))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -1.))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -1.))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const 1.))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const 1.))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -1.))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -1.))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const 1.))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const 1.))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -6.28318548203))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -6.28318548203))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const 6.28318548203))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const 6.28318548203))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -6.28318548203))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -6.28318548203))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const 6.28318548203))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const 6.28318548203))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -3.40282346639e+38))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -3.40282346639e+38))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const 3.40282346639e+38))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const 3.40282346639e+38))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -3.40282346639e+38))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -3.40282346639e+38))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const 3.40282346639e+38))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const 3.40282346639e+38))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const nan:0x200000))
)
(assert_return (invoke "max" (f32.const -0.) (f32.const -0.)) (f32.const -0.))
(assert_return (invoke "max" (f32.const -0.) (f32.const 0.)) (f32.const 0.))
(assert_return (invoke "max" (f32.const 0.) (f32.const -0.)) (f32.const 0.))
(assert_return (invoke "max" (f32.const 0.) (f32.const 0.)) (f32.const 0.))
(assert_return
  (invoke "max" (f32.const -0.) (f32.const -1.40129846432e-45))
  (f32.const -0.)
)
(assert_return
  (invoke "max" (f32.const -0.) (f32.const 1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const 0.) (f32.const -1.40129846432e-45))
  (f32.const 0.)
)
(assert_return
  (invoke "max" (f32.const 0.) (f32.const 1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const -0.) (f32.const -1.17549435082e-38))
  (f32.const -0.)
)
(assert_return
  (invoke "max" (f32.const -0.) (f32.const 1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const 0.) (f32.const -1.17549435082e-38))
  (f32.const 0.)
)
(assert_return
  (invoke "max" (f32.const 0.) (f32.const 1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return (invoke "max" (f32.const -0.) (f32.const -0.5)) (f32.const -0.))
(assert_return (invoke "max" (f32.const -0.) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const 0.) (f32.const -0.5)) (f32.const 0.))
(assert_return (invoke "max" (f32.const 0.) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const -0.) (f32.const -1.)) (f32.const -0.))
(assert_return (invoke "max" (f32.const -0.) (f32.const 1.)) (f32.const 1.))
(assert_return (invoke "max" (f32.const 0.) (f32.const -1.)) (f32.const 0.))
(assert_return (invoke "max" (f32.const 0.) (f32.const 1.)) (f32.const 1.))
(assert_return
  (invoke "max" (f32.const -0.) (f32.const -6.28318548203))
  (f32.const -0.)
)
(assert_return
  (invoke "max" (f32.const -0.) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const 0.) (f32.const -6.28318548203))
  (f32.const 0.)
)
(assert_return
  (invoke "max" (f32.const 0.) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const -0.) (f32.const -3.40282346639e+38))
  (f32.const -0.)
)
(assert_return
  (invoke "max" (f32.const -0.) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const 0.) (f32.const -3.40282346639e+38))
  (f32.const 0.)
)
(assert_return
  (invoke "max" (f32.const 0.) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return (invoke "max" (f32.const -0.) (f32.const -inf)) (f32.const -0.))
(assert_return (invoke "max" (f32.const -0.) (f32.const inf)) (f32.const inf))
(assert_return (invoke "max" (f32.const 0.) (f32.const -inf)) (f32.const 0.))
(assert_return (invoke "max" (f32.const 0.) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "max" (f32.const -0.) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -0.) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -0.) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -0.) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 0.) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 0.) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 0.) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 0.) (f32.const nan:0x200000))
)
(assert_return
  (invoke "max" (f32.const -1.40129846432e-45) (f32.const -0.))
  (f32.const -0.)
)
(assert_return
  (invoke "max" (f32.const -1.40129846432e-45) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "max" (f32.const 1.40129846432e-45) (f32.const -0.))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const 1.40129846432e-45) (f32.const 0.))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const -1.40129846432e-45) (f32.const -1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const -1.40129846432e-45) (f32.const 1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const 1.40129846432e-45) (f32.const -1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const 1.40129846432e-45) (f32.const 1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const -1.40129846432e-45) (f32.const -1.17549435082e-38))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const -1.40129846432e-45) (f32.const 1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const 1.40129846432e-45) (f32.const -1.17549435082e-38))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const 1.40129846432e-45) (f32.const 1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const -1.40129846432e-45) (f32.const -0.5))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const -1.40129846432e-45) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const 1.40129846432e-45) (f32.const -0.5))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const 1.40129846432e-45) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const -1.40129846432e-45) (f32.const -1.))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const -1.40129846432e-45) (f32.const 1.))
  (f32.const 1.)
)
(assert_return
  (invoke "max" (f32.const 1.40129846432e-45) (f32.const -1.))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const 1.40129846432e-45) (f32.const 1.))
  (f32.const 1.)
)
(assert_return
  (invoke "max" (f32.const -1.40129846432e-45) (f32.const -6.28318548203))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const -1.40129846432e-45) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const 1.40129846432e-45) (f32.const -6.28318548203))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const 1.40129846432e-45) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const -1.40129846432e-45) (f32.const -3.40282346639e+38))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const -1.40129846432e-45) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const 1.40129846432e-45) (f32.const -3.40282346639e+38))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const 1.40129846432e-45) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const -1.40129846432e-45) (f32.const -inf))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const -1.40129846432e-45) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const 1.40129846432e-45) (f32.const -inf))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const 1.40129846432e-45) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -1.40129846432e-45) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -1.40129846432e-45) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -1.40129846432e-45) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -1.40129846432e-45) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 1.40129846432e-45) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 1.40129846432e-45) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 1.40129846432e-45) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 1.40129846432e-45) (f32.const nan:0x200000))
)
(assert_return
  (invoke "max" (f32.const -1.17549435082e-38) (f32.const -0.))
  (f32.const -0.)
)
(assert_return
  (invoke "max" (f32.const -1.17549435082e-38) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "max" (f32.const 1.17549435082e-38) (f32.const -0.))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const 1.17549435082e-38) (f32.const 0.))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const -1.17549435082e-38) (f32.const -1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const -1.17549435082e-38) (f32.const 1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const 1.17549435082e-38) (f32.const -1.40129846432e-45))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const 1.17549435082e-38) (f32.const 1.40129846432e-45))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const -1.17549435082e-38) (f32.const -1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const -1.17549435082e-38) (f32.const 1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const 1.17549435082e-38) (f32.const -1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const 1.17549435082e-38) (f32.const 1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const -1.17549435082e-38) (f32.const -0.5))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const -1.17549435082e-38) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const 1.17549435082e-38) (f32.const -0.5))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const 1.17549435082e-38) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const -1.17549435082e-38) (f32.const -1.))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const -1.17549435082e-38) (f32.const 1.))
  (f32.const 1.)
)
(assert_return
  (invoke "max" (f32.const 1.17549435082e-38) (f32.const -1.))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const 1.17549435082e-38) (f32.const 1.))
  (f32.const 1.)
)
(assert_return
  (invoke "max" (f32.const -1.17549435082e-38) (f32.const -6.28318548203))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const -1.17549435082e-38) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const 1.17549435082e-38) (f32.const -6.28318548203))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const 1.17549435082e-38) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const -1.17549435082e-38) (f32.const -3.40282346639e+38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const -1.17549435082e-38) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const 1.17549435082e-38) (f32.const -3.40282346639e+38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const 1.17549435082e-38) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const -1.17549435082e-38) (f32.const -inf))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const -1.17549435082e-38) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const 1.17549435082e-38) (f32.const -inf))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const 1.17549435082e-38) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -1.17549435082e-38) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -1.17549435082e-38) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -1.17549435082e-38) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -1.17549435082e-38) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 1.17549435082e-38) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 1.17549435082e-38) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 1.17549435082e-38) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 1.17549435082e-38) (f32.const nan:0x200000))
)
(assert_return (invoke "max" (f32.const -0.5) (f32.const -0.)) (f32.const -0.))
(assert_return (invoke "max" (f32.const -0.5) (f32.const 0.)) (f32.const 0.))
(assert_return (invoke "max" (f32.const 0.5) (f32.const -0.)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const 0.5) (f32.const 0.)) (f32.const 0.5))
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const -1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const 1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const 0.5) (f32.const -1.40129846432e-45))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const 0.5) (f32.const 1.40129846432e-45))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const -1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const 1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const 0.5) (f32.const -1.17549435082e-38))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const 0.5) (f32.const 1.17549435082e-38))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return (invoke "max" (f32.const -0.5) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const 0.5) (f32.const -0.5)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const 0.5) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const -0.5) (f32.const -1.)) (f32.const -0.5))
(assert_return (invoke "max" (f32.const -0.5) (f32.const 1.)) (f32.const 1.))
(assert_return (invoke "max" (f32.const 0.5) (f32.const -1.)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const 0.5) (f32.const 1.)) (f32.const 1.))
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const -6.28318548203))
  (f32.const -0.5)
)
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const 0.5) (f32.const -6.28318548203))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const 0.5) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const -3.40282346639e+38))
  (f32.const -0.5)
)
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const 0.5) (f32.const -3.40282346639e+38))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const 0.5) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const -inf))
  (f32.const -0.5)
)
(assert_return (invoke "max" (f32.const -0.5) (f32.const inf)) (f32.const inf))
(assert_return (invoke "max" (f32.const 0.5) (f32.const -inf)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const 0.5) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "max" (f32.const -0.5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -0.5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -0.5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -0.5) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 0.5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 0.5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 0.5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 0.5) (f32.const nan:0x200000))
)
(assert_return (invoke "max" (f32.const -1.) (f32.const -0.)) (f32.const -0.))
(assert_return (invoke "max" (f32.const -1.) (f32.const 0.)) (f32.const 0.))
(assert_return (invoke "max" (f32.const 1.) (f32.const -0.)) (f32.const 1.))
(assert_return (invoke "max" (f32.const 1.) (f32.const 0.)) (f32.const 1.))
(assert_return
  (invoke "max" (f32.const -1.) (f32.const -1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const -1.) (f32.const 1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const 1.) (f32.const -1.40129846432e-45))
  (f32.const 1.)
)
(assert_return
  (invoke "max" (f32.const 1.) (f32.const 1.40129846432e-45))
  (f32.const 1.)
)
(assert_return
  (invoke "max" (f32.const -1.) (f32.const -1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const -1.) (f32.const 1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const 1.) (f32.const -1.17549435082e-38))
  (f32.const 1.)
)
(assert_return
  (invoke "max" (f32.const 1.) (f32.const 1.17549435082e-38))
  (f32.const 1.)
)
(assert_return (invoke "max" (f32.const -1.) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "max" (f32.const -1.) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const 1.) (f32.const -0.5)) (f32.const 1.))
(assert_return (invoke "max" (f32.const 1.) (f32.const 0.5)) (f32.const 1.))
(assert_return (invoke "max" (f32.const -1.) (f32.const -1.)) (f32.const -1.))
(assert_return (invoke "max" (f32.const -1.) (f32.const 1.)) (f32.const 1.))
(assert_return (invoke "max" (f32.const 1.) (f32.const -1.)) (f32.const 1.))
(assert_return (invoke "max" (f32.const 1.) (f32.const 1.)) (f32.const 1.))
(assert_return
  (invoke "max" (f32.const -1.) (f32.const -6.28318548203))
  (f32.const -1.)
)
(assert_return
  (invoke "max" (f32.const -1.) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const 1.) (f32.const -6.28318548203))
  (f32.const 1.)
)
(assert_return
  (invoke "max" (f32.const 1.) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const -1.) (f32.const -3.40282346639e+38))
  (f32.const -1.)
)
(assert_return
  (invoke "max" (f32.const -1.) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const 1.) (f32.const -3.40282346639e+38))
  (f32.const 1.)
)
(assert_return
  (invoke "max" (f32.const 1.) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return (invoke "max" (f32.const -1.) (f32.const -inf)) (f32.const -1.))
(assert_return (invoke "max" (f32.const -1.) (f32.const inf)) (f32.const inf))
(assert_return (invoke "max" (f32.const 1.) (f32.const -inf)) (f32.const 1.))
(assert_return (invoke "max" (f32.const 1.) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "max" (f32.const -1.) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -1.) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -1.) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -1.) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 1.) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 1.) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 1.) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 1.) (f32.const nan:0x200000))
)
(assert_return
  (invoke "max" (f32.const -6.28318548203) (f32.const -0.))
  (f32.const -0.)
)
(assert_return
  (invoke "max" (f32.const -6.28318548203) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "max" (f32.const 6.28318548203) (f32.const -0.))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const 6.28318548203) (f32.const 0.))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const -6.28318548203) (f32.const -1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const -6.28318548203) (f32.const 1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const 6.28318548203) (f32.const -1.40129846432e-45))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const 6.28318548203) (f32.const 1.40129846432e-45))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const -6.28318548203) (f32.const -1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const -6.28318548203) (f32.const 1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const 6.28318548203) (f32.const -1.17549435082e-38))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const 6.28318548203) (f32.const 1.17549435082e-38))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const -6.28318548203) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "max" (f32.const -6.28318548203) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const 6.28318548203) (f32.const -0.5))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const 6.28318548203) (f32.const 0.5))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const -6.28318548203) (f32.const -1.))
  (f32.const -1.)
)
(assert_return
  (invoke "max" (f32.const -6.28318548203) (f32.const 1.))
  (f32.const 1.)
)
(assert_return
  (invoke "max" (f32.const 6.28318548203) (f32.const -1.))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const 6.28318548203) (f32.const 1.))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const -6.28318548203) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "max" (f32.const -6.28318548203) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const 6.28318548203) (f32.const -6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const 6.28318548203) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const -6.28318548203) (f32.const -3.40282346639e+38))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "max" (f32.const -6.28318548203) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const 6.28318548203) (f32.const -3.40282346639e+38))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const 6.28318548203) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const -6.28318548203) (f32.const -inf))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "max" (f32.const -6.28318548203) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const 6.28318548203) (f32.const -inf))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const 6.28318548203) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -6.28318548203) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -6.28318548203) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -6.28318548203) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -6.28318548203) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 6.28318548203) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 6.28318548203) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 6.28318548203) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 6.28318548203) (f32.const nan:0x200000))
)
(assert_return
  (invoke "max" (f32.const -3.40282346639e+38) (f32.const -0.))
  (f32.const -0.)
)
(assert_return
  (invoke "max" (f32.const -3.40282346639e+38) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "max" (f32.const 3.40282346639e+38) (f32.const -0.))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const 3.40282346639e+38) (f32.const 0.))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const -3.40282346639e+38) (f32.const -1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const -3.40282346639e+38) (f32.const 1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const 3.40282346639e+38) (f32.const -1.40129846432e-45))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const 3.40282346639e+38) (f32.const 1.40129846432e-45))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const -3.40282346639e+38) (f32.const -1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const -3.40282346639e+38) (f32.const 1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const 3.40282346639e+38) (f32.const -1.17549435082e-38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const 3.40282346639e+38) (f32.const 1.17549435082e-38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const -3.40282346639e+38) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "max" (f32.const -3.40282346639e+38) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const 3.40282346639e+38) (f32.const -0.5))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const 3.40282346639e+38) (f32.const 0.5))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const -3.40282346639e+38) (f32.const -1.))
  (f32.const -1.)
)
(assert_return
  (invoke "max" (f32.const -3.40282346639e+38) (f32.const 1.))
  (f32.const 1.)
)
(assert_return
  (invoke "max" (f32.const 3.40282346639e+38) (f32.const -1.))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const 3.40282346639e+38) (f32.const 1.))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const -3.40282346639e+38) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "max" (f32.const -3.40282346639e+38) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const 3.40282346639e+38) (f32.const -6.28318548203))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const 3.40282346639e+38) (f32.const 6.28318548203))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const -3.40282346639e+38) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const -3.40282346639e+38) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const 3.40282346639e+38) (f32.const -3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const 3.40282346639e+38) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const -3.40282346639e+38) (f32.const -inf))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const -3.40282346639e+38) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const 3.40282346639e+38) (f32.const -inf))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const 3.40282346639e+38) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -3.40282346639e+38) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -3.40282346639e+38) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -3.40282346639e+38) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -3.40282346639e+38) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 3.40282346639e+38) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 3.40282346639e+38) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 3.40282346639e+38) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 3.40282346639e+38) (f32.const nan:0x200000))
)
(assert_return (invoke "max" (f32.const -inf) (f32.const -0.)) (f32.const -0.))
(assert_return (invoke "max" (f32.const -inf) (f32.const 0.)) (f32.const 0.))
(assert_return (invoke "max" (f32.const inf) (f32.const -0.)) (f32.const inf))
(assert_return (invoke "max" (f32.const inf) (f32.const 0.)) (f32.const inf))
(assert_return
  (invoke "max" (f32.const -inf) (f32.const -1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const 1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const -1.40129846432e-45))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const 1.40129846432e-45))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const -1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const 1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const -1.17549435082e-38))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const 1.17549435082e-38))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return (invoke "max" (f32.const -inf) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const inf) (f32.const -0.5)) (f32.const inf))
(assert_return (invoke "max" (f32.const inf) (f32.const 0.5)) (f32.const inf))
(assert_return (invoke "max" (f32.const -inf) (f32.const -1.)) (f32.const -1.))
(assert_return (invoke "max" (f32.const -inf) (f32.const 1.)) (f32.const 1.))
(assert_return (invoke "max" (f32.const inf) (f32.const -1.)) (f32.const inf))
(assert_return (invoke "max" (f32.const inf) (f32.const 1.)) (f32.const inf))
(assert_return
  (invoke "max" (f32.const -inf) (f32.const -6.28318548203))
  (f32.const -6.28318548203)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const 6.28318548203))
  (f32.const 6.28318548203)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const -6.28318548203))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const 6.28318548203))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const -3.40282346639e+38))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const 3.40282346639e+38))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const -inf))
  (f32.const -inf)
)
(assert_return (invoke "max" (f32.const -inf) (f32.const inf)) (f32.const inf))
(assert_return (invoke "max" (f32.const inf) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "max" (f32.const inf) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "max" (f32.const -inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const inf) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const inf) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const inf) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const inf) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -0.))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -0.))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const 0.))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const 0.))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -0.))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -0.))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const 0.))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const 0.))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -1.40129846432e-45))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -1.40129846432e-45))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const 1.40129846432e-45))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const 1.40129846432e-45))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -1.40129846432e-45))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -1.40129846432e-45))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const 1.40129846432e-45))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const 1.40129846432e-45))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -1.17549435082e-38))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -1.17549435082e-38))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const 1.17549435082e-38))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const 1.17549435082e-38))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -1.17549435082e-38))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -1.17549435082e-38))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const 1.17549435082e-38))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const 1.17549435082e-38))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -0.5))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const 0.5))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -0.5))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -0.5))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const 0.5))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const 0.5))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -1.))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -1.))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const 1.))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const 1.))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -1.))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -1.))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const 1.))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const 1.))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -6.28318548203))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -6.28318548203))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const 6.28318548203))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const 6.28318548203))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -6.28318548203))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -6.28318548203))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const 6.28318548203))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const 6.28318548203))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -3.40282346639e+38))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -3.40282346639e+38))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const 3.40282346639e+38))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const 3.40282346639e+38))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -3.40282346639e+38))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -3.40282346639e+38))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const 3.40282346639e+38))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const 3.40282346639e+38))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -inf))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -inf))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const inf))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const inf))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const nan:0x200000))
)
(assert_return (invoke "sqrt" (f32.const -0.)) (f32.const -0.))
(assert_return (invoke "sqrt" (f32.const 0.)) (f32.const 0.))
(assert_return_canonical_nan (invoke "sqrt" (f32.const -1.40129846432e-45)))
(assert_return
  (invoke "sqrt" (f32.const 1.40129846432e-45))
  (f32.const 3.74339206651e-23)
)
(assert_return_canonical_nan (invoke "sqrt" (f32.const -1.17549435082e-38)))
(assert_return
  (invoke "sqrt" (f32.const 1.17549435082e-38))
  (f32.const 1.08420217249e-19)
)
(assert_return_canonical_nan (invoke "sqrt" (f32.const -0.5)))
(assert_return (invoke "sqrt" (f32.const 0.5)) (f32.const 0.707106769085))
(assert_return_canonical_nan (invoke "sqrt" (f32.const -1.)))
(assert_return (invoke "sqrt" (f32.const 1.)) (f32.const 1.))
(assert_return_canonical_nan (invoke "sqrt" (f32.const -6.28318548203)))
(assert_return
  (invoke "sqrt" (f32.const 6.28318548203))
  (f32.const 2.50662827492)
)
(assert_return_canonical_nan (invoke "sqrt" (f32.const -3.40282346639e+38)))
(assert_return
  (invoke "sqrt" (f32.const 3.40282346639e+38))
  (f32.const 1.84467429742e+19)
)
(assert_return_canonical_nan (invoke "sqrt" (f32.const -inf)))
(assert_return (invoke "sqrt" (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan (invoke "sqrt" (f32.const -nan:0x400000)))
(assert_return_arithmetic_nan (invoke "sqrt" (f32.const -nan:0x200000)))
(assert_return_canonical_nan (invoke "sqrt" (f32.const nan:0x400000)))
(assert_return_arithmetic_nan (invoke "sqrt" (f32.const nan:0x200000)))
(assert_return (invoke "floor" (f32.const -0.)) (f32.const -0.))
(assert_return (invoke "floor" (f32.const 0.)) (f32.const 0.))
(assert_return (invoke "floor" (f32.const -1.40129846432e-45)) (f32.const -1.))
(assert_return (invoke "floor" (f32.const 1.40129846432e-45)) (f32.const 0.))
(assert_return (invoke "floor" (f32.const -1.17549435082e-38)) (f32.const -1.))
(assert_return (invoke "floor" (f32.const 1.17549435082e-38)) (f32.const 0.))
(assert_return (invoke "floor" (f32.const -0.5)) (f32.const -1.))
(assert_return (invoke "floor" (f32.const 0.5)) (f32.const 0.))
(assert_return (invoke "floor" (f32.const -1.)) (f32.const -1.))
(assert_return (invoke "floor" (f32.const 1.)) (f32.const 1.))
(assert_return (invoke "floor" (f32.const -6.28318548203)) (f32.const -7.))
(assert_return (invoke "floor" (f32.const 6.28318548203)) (f32.const 6.))
(assert_return
  (invoke "floor" (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "floor" (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return (invoke "floor" (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "floor" (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan (invoke "floor" (f32.const -nan:0x400000)))
(assert_return_arithmetic_nan (invoke "floor" (f32.const -nan:0x200000)))
(assert_return_canonical_nan (invoke "floor" (f32.const nan:0x400000)))
(assert_return_arithmetic_nan (invoke "floor" (f32.const nan:0x200000)))
(assert_return (invoke "ceil" (f32.const -0.)) (f32.const -0.))
(assert_return (invoke "ceil" (f32.const 0.)) (f32.const 0.))
(assert_return (invoke "ceil" (f32.const -1.40129846432e-45)) (f32.const -0.))
(assert_return (invoke "ceil" (f32.const 1.40129846432e-45)) (f32.const 1.))
(assert_return (invoke "ceil" (f32.const -1.17549435082e-38)) (f32.const -0.))
(assert_return (invoke "ceil" (f32.const 1.17549435082e-38)) (f32.const 1.))
(assert_return (invoke "ceil" (f32.const -0.5)) (f32.const -0.))
(assert_return (invoke "ceil" (f32.const 0.5)) (f32.const 1.))
(assert_return (invoke "ceil" (f32.const -1.)) (f32.const -1.))
(assert_return (invoke "ceil" (f32.const 1.)) (f32.const 1.))
(assert_return (invoke "ceil" (f32.const -6.28318548203)) (f32.const -6.))
(assert_return (invoke "ceil" (f32.const 6.28318548203)) (f32.const 7.))
(assert_return
  (invoke "ceil" (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "ceil" (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return (invoke "ceil" (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "ceil" (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan (invoke "ceil" (f32.const -nan:0x400000)))
(assert_return_arithmetic_nan (invoke "ceil" (f32.const -nan:0x200000)))
(assert_return_canonical_nan (invoke "ceil" (f32.const nan:0x400000)))
(assert_return_arithmetic_nan (invoke "ceil" (f32.const nan:0x200000)))
(assert_return (invoke "trunc" (f32.const -0.)) (f32.const -0.))
(assert_return (invoke "trunc" (f32.const 0.)) (f32.const 0.))
(assert_return (invoke "trunc" (f32.const -1.40129846432e-45)) (f32.const -0.))
(assert_return (invoke "trunc" (f32.const 1.40129846432e-45)) (f32.const 0.))
(assert_return (invoke "trunc" (f32.const -1.17549435082e-38)) (f32.const -0.))
(assert_return (invoke "trunc" (f32.const 1.17549435082e-38)) (f32.const 0.))
(assert_return (invoke "trunc" (f32.const -0.5)) (f32.const -0.))
(assert_return (invoke "trunc" (f32.const 0.5)) (f32.const 0.))
(assert_return (invoke "trunc" (f32.const -1.)) (f32.const -1.))
(assert_return (invoke "trunc" (f32.const 1.)) (f32.const 1.))
(assert_return (invoke "trunc" (f32.const -6.28318548203)) (f32.const -6.))
(assert_return (invoke "trunc" (f32.const 6.28318548203)) (f32.const 6.))
(assert_return
  (invoke "trunc" (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "trunc" (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return (invoke "trunc" (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "trunc" (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan (invoke "trunc" (f32.const -nan:0x400000)))
(assert_return_arithmetic_nan (invoke "trunc" (f32.const -nan:0x200000)))
(assert_return_canonical_nan (invoke "trunc" (f32.const nan:0x400000)))
(assert_return_arithmetic_nan (invoke "trunc" (f32.const nan:0x200000)))
(assert_return (invoke "nearest" (f32.const -0.)) (f32.const -0.))
(assert_return (invoke "nearest" (f32.const 0.)) (f32.const 0.))
(assert_return
  (invoke "nearest" (f32.const -1.40129846432e-45))
  (f32.const -0.)
)
(assert_return (invoke "nearest" (f32.const 1.40129846432e-45)) (f32.const 0.))
(assert_return
  (invoke "nearest" (f32.const -1.17549435082e-38))
  (f32.const -0.)
)
(assert_return (invoke "nearest" (f32.const 1.17549435082e-38)) (f32.const 0.))
(assert_return (invoke "nearest" (f32.const -0.5)) (f32.const -0.))
(assert_return (invoke "nearest" (f32.const 0.5)) (f32.const 0.))
(assert_return (invoke "nearest" (f32.const -1.)) (f32.const -1.))
(assert_return (invoke "nearest" (f32.const 1.)) (f32.const 1.))
(assert_return (invoke "nearest" (f32.const -6.28318548203)) (f32.const -6.))
(assert_return (invoke "nearest" (f32.const 6.28318548203)) (f32.const 6.))
(assert_return
  (invoke "nearest" (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "nearest" (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return (invoke "nearest" (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "nearest" (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan (invoke "nearest" (f32.const -nan:0x400000)))
(assert_return_arithmetic_nan (invoke "nearest" (f32.const -nan:0x200000)))
(assert_return_canonical_nan (invoke "nearest" (f32.const nan:0x400000)))
(assert_return_arithmetic_nan (invoke "nearest" (f32.const nan:0x200000)))

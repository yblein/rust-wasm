(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7d\7d\01\7f\03\87\80\80\80\00\06\00\00\00\00"
  "\00\00\07\9f\80\80\80\00\06\02\65\71\00\00\02\6e"
  "\65\00\01\02\6c\74\00\02\02\6c\65\00\03\02\67\74"
  "\00\04\02\67\65\00\05\0a\c9\80\80\80\00\06\87\80"
  "\80\80\00\00\20\00\20\01\5b\0b\87\80\80\80\00\00"
  "\20\00\20\01\5c\0b\87\80\80\80\00\00\20\00\20\01"
  "\5d\0b\87\80\80\80\00\00\20\00\20\01\5f\0b\87\80"
  "\80\80\00\00\20\00\20\01\5e\0b\87\80\80\80\00\00"
  "\20\00\20\01\60\0b"
)
(assert_return (invoke "eq" (f32.const -0.) (f32.const -0.)) (i32.const 1))
(assert_return (invoke "eq" (f32.const -0.) (f32.const 0.)) (i32.const 1))
(assert_return (invoke "eq" (f32.const 0.) (f32.const -0.)) (i32.const 1))
(assert_return (invoke "eq" (f32.const 0.) (f32.const 0.)) (i32.const 1))
(assert_return
  (invoke "eq" (f32.const -0.) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return (invoke "eq" (f32.const -0.) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -0.) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0.) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0.) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -0.) (f32.const -1.)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -0.) (f32.const 1.)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0.) (f32.const -1.)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0.) (f32.const 1.)) (i32.const 0))
(assert_return
  (invoke "eq" (f32.const -0.) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return (invoke "eq" (f32.const -0.) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -0.) (f32.const inf)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0.) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0.) (f32.const inf)) (i32.const 0))
(assert_return
  (invoke "eq" (f32.const -0.) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.40129846432e-45) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.40129846432e-45) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.40129846432e-45) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.40129846432e-45) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.40129846432e-45) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "eq" (f32.const -1.40129846432e-45) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.40129846432e-45) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.40129846432e-45) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "eq" (f32.const -1.40129846432e-45) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.40129846432e-45) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.40129846432e-45) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.40129846432e-45) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.40129846432e-45) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.40129846432e-45) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.40129846432e-45) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.40129846432e-45) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.40129846432e-45) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.40129846432e-45) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.40129846432e-45) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.40129846432e-45) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.40129846432e-45) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.40129846432e-45) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.40129846432e-45) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.40129846432e-45) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.40129846432e-45) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.40129846432e-45) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.40129846432e-45) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.40129846432e-45) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.40129846432e-45) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.40129846432e-45) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.40129846432e-45) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.40129846432e-45) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.40129846432e-45) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.40129846432e-45) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.40129846432e-45) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.40129846432e-45) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.40129846432e-45) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.40129846432e-45) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.40129846432e-45) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.40129846432e-45) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.17549435082e-38) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.17549435082e-38) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.17549435082e-38) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.17549435082e-38) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.17549435082e-38) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.17549435082e-38) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.17549435082e-38) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.17549435082e-38) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.17549435082e-38) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "eq" (f32.const -1.17549435082e-38) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.17549435082e-38) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.17549435082e-38) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "eq" (f32.const -1.17549435082e-38) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.17549435082e-38) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.17549435082e-38) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.17549435082e-38) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.17549435082e-38) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.17549435082e-38) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.17549435082e-38) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.17549435082e-38) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.17549435082e-38) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.17549435082e-38) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.17549435082e-38) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.17549435082e-38) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.17549435082e-38) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.17549435082e-38) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.17549435082e-38) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.17549435082e-38) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.17549435082e-38) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.17549435082e-38) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.17549435082e-38) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.17549435082e-38) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.17549435082e-38) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.17549435082e-38) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.17549435082e-38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.17549435082e-38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.17549435082e-38) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.17549435082e-38) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.17549435082e-38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.17549435082e-38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "eq" (f32.const -0.5) (f32.const -0.)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -0.5) (f32.const 0.)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0.5) (f32.const -0.)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0.5) (f32.const 0.)) (i32.const 0))
(assert_return
  (invoke "eq" (f32.const -0.5) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.5) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.5) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.5) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.5) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.5) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.5) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.5) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return (invoke "eq" (f32.const -0.5) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "eq" (f32.const -0.5) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0.5) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0.5) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "eq" (f32.const -0.5) (f32.const -1.)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -0.5) (f32.const 1.)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0.5) (f32.const -1.)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0.5) (f32.const 1.)) (i32.const 0))
(assert_return
  (invoke "eq" (f32.const -0.5) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.5) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.5) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.5) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.5) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.5) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.5) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.5) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return (invoke "eq" (f32.const -0.5) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -0.5) (f32.const inf)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0.5) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 0.5) (f32.const inf)) (i32.const 0))
(assert_return
  (invoke "eq" (f32.const -0.5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -0.5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 0.5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "eq" (f32.const -1.) (f32.const -0.)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -1.) (f32.const 0.)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 1.) (f32.const -0.)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 1.) (f32.const 0.)) (i32.const 0))
(assert_return
  (invoke "eq" (f32.const -1.) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return (invoke "eq" (f32.const -1.) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -1.) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 1.) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 1.) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -1.) (f32.const -1.)) (i32.const 1))
(assert_return (invoke "eq" (f32.const -1.) (f32.const 1.)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 1.) (f32.const -1.)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 1.) (f32.const 1.)) (i32.const 1))
(assert_return
  (invoke "eq" (f32.const -1.) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return (invoke "eq" (f32.const -1.) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -1.) (f32.const inf)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 1.) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f32.const 1.) (f32.const inf)) (i32.const 0))
(assert_return
  (invoke "eq" (f32.const -1.) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -1.) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 1.) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.28318548203) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.28318548203) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.28318548203) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.28318548203) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.28318548203) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.28318548203) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.28318548203) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.28318548203) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.28318548203) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.28318548203) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.28318548203) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.28318548203) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.28318548203) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.28318548203) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.28318548203) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.28318548203) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.28318548203) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.28318548203) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.28318548203) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.28318548203) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.28318548203) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "eq" (f32.const -6.28318548203) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.28318548203) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.28318548203) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "eq" (f32.const -6.28318548203) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.28318548203) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.28318548203) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.28318548203) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.28318548203) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.28318548203) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.28318548203) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.28318548203) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.28318548203) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.28318548203) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.28318548203) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -6.28318548203) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.28318548203) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.28318548203) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.28318548203) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 6.28318548203) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -3.40282346639e+38) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -3.40282346639e+38) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.40282346639e+38) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.40282346639e+38) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -3.40282346639e+38) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -3.40282346639e+38) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.40282346639e+38) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.40282346639e+38) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -3.40282346639e+38) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -3.40282346639e+38) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.40282346639e+38) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.40282346639e+38) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -3.40282346639e+38) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -3.40282346639e+38) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.40282346639e+38) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.40282346639e+38) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -3.40282346639e+38) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -3.40282346639e+38) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.40282346639e+38) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.40282346639e+38) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -3.40282346639e+38) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -3.40282346639e+38) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.40282346639e+38) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.40282346639e+38) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -3.40282346639e+38) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "eq" (f32.const -3.40282346639e+38) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.40282346639e+38) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.40282346639e+38) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "eq" (f32.const -3.40282346639e+38) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -3.40282346639e+38) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.40282346639e+38) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.40282346639e+38) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -3.40282346639e+38) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -3.40282346639e+38) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -3.40282346639e+38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -3.40282346639e+38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.40282346639e+38) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.40282346639e+38) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.40282346639e+38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const 3.40282346639e+38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "eq" (f32.const -inf) (f32.const -0.)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -inf) (f32.const 0.)) (i32.const 0))
(assert_return (invoke "eq" (f32.const inf) (f32.const -0.)) (i32.const 0))
(assert_return (invoke "eq" (f32.const inf) (f32.const 0.)) (i32.const 0))
(assert_return
  (invoke "eq" (f32.const -inf) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -inf) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const inf) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const inf) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -inf) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -inf) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const inf) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const inf) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return (invoke "eq" (f32.const -inf) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -inf) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const inf) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const inf) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -inf) (f32.const -1.)) (i32.const 0))
(assert_return (invoke "eq" (f32.const -inf) (f32.const 1.)) (i32.const 0))
(assert_return (invoke "eq" (f32.const inf) (f32.const -1.)) (i32.const 0))
(assert_return (invoke "eq" (f32.const inf) (f32.const 1.)) (i32.const 0))
(assert_return
  (invoke "eq" (f32.const -inf) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -inf) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const inf) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const inf) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -inf) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -inf) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const inf) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const inf) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return (invoke "eq" (f32.const -inf) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "eq" (f32.const -inf) (f32.const inf)) (i32.const 0))
(assert_return (invoke "eq" (f32.const inf) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "eq" (f32.const inf) (f32.const inf)) (i32.const 1))
(assert_return
  (invoke "eq" (f32.const -inf) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -inf) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -inf) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -inf) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const inf) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const inf) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const inf) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const inf) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x400000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const -nan:0x200000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x400000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "eq" (f32.const nan:0x200000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "ne" (f32.const -0.) (f32.const -0.)) (i32.const 0))
(assert_return (invoke "ne" (f32.const -0.) (f32.const 0.)) (i32.const 0))
(assert_return (invoke "ne" (f32.const 0.) (f32.const -0.)) (i32.const 0))
(assert_return (invoke "ne" (f32.const 0.) (f32.const 0.)) (i32.const 0))
(assert_return
  (invoke "ne" (f32.const -0.) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return (invoke "ne" (f32.const -0.) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -0.) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0.) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0.) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -0.) (f32.const -1.)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -0.) (f32.const 1.)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0.) (f32.const -1.)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0.) (f32.const 1.)) (i32.const 1))
(assert_return
  (invoke "ne" (f32.const -0.) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return (invoke "ne" (f32.const -0.) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -0.) (f32.const inf)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0.) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0.) (f32.const inf)) (i32.const 1))
(assert_return
  (invoke "ne" (f32.const -0.) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.40129846432e-45) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.40129846432e-45) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.40129846432e-45) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.40129846432e-45) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.40129846432e-45) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ne" (f32.const -1.40129846432e-45) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.40129846432e-45) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.40129846432e-45) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ne" (f32.const -1.40129846432e-45) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.40129846432e-45) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.40129846432e-45) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.40129846432e-45) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.40129846432e-45) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.40129846432e-45) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.40129846432e-45) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.40129846432e-45) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.40129846432e-45) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.40129846432e-45) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.40129846432e-45) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.40129846432e-45) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.40129846432e-45) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.40129846432e-45) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.40129846432e-45) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.40129846432e-45) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.40129846432e-45) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.40129846432e-45) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.40129846432e-45) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.40129846432e-45) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.40129846432e-45) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.40129846432e-45) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.40129846432e-45) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.40129846432e-45) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.40129846432e-45) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.40129846432e-45) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.40129846432e-45) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.40129846432e-45) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.40129846432e-45) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.40129846432e-45) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.40129846432e-45) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.40129846432e-45) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.17549435082e-38) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.17549435082e-38) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.17549435082e-38) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.17549435082e-38) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.17549435082e-38) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.17549435082e-38) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.17549435082e-38) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.17549435082e-38) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.17549435082e-38) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ne" (f32.const -1.17549435082e-38) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.17549435082e-38) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.17549435082e-38) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ne" (f32.const -1.17549435082e-38) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.17549435082e-38) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.17549435082e-38) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.17549435082e-38) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.17549435082e-38) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.17549435082e-38) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.17549435082e-38) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.17549435082e-38) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.17549435082e-38) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.17549435082e-38) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.17549435082e-38) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.17549435082e-38) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.17549435082e-38) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.17549435082e-38) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.17549435082e-38) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.17549435082e-38) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.17549435082e-38) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.17549435082e-38) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.17549435082e-38) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.17549435082e-38) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.17549435082e-38) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.17549435082e-38) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.17549435082e-38) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.17549435082e-38) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.17549435082e-38) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.17549435082e-38) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.17549435082e-38) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.17549435082e-38) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return (invoke "ne" (f32.const -0.5) (f32.const -0.)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -0.5) (f32.const 0.)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0.5) (f32.const -0.)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0.5) (f32.const 0.)) (i32.const 1))
(assert_return
  (invoke "ne" (f32.const -0.5) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.5) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.5) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.5) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.5) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.5) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.5) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.5) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return (invoke "ne" (f32.const -0.5) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "ne" (f32.const -0.5) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0.5) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0.5) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "ne" (f32.const -0.5) (f32.const -1.)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -0.5) (f32.const 1.)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0.5) (f32.const -1.)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0.5) (f32.const 1.)) (i32.const 1))
(assert_return
  (invoke "ne" (f32.const -0.5) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.5) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.5) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.5) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.5) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.5) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.5) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.5) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return (invoke "ne" (f32.const -0.5) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -0.5) (f32.const inf)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0.5) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 0.5) (f32.const inf)) (i32.const 1))
(assert_return
  (invoke "ne" (f32.const -0.5) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.5) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.5) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -0.5) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.5) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.5) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.5) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 0.5) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return (invoke "ne" (f32.const -1.) (f32.const -0.)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -1.) (f32.const 0.)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 1.) (f32.const -0.)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 1.) (f32.const 0.)) (i32.const 1))
(assert_return
  (invoke "ne" (f32.const -1.) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return (invoke "ne" (f32.const -1.) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -1.) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 1.) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 1.) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -1.) (f32.const -1.)) (i32.const 0))
(assert_return (invoke "ne" (f32.const -1.) (f32.const 1.)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 1.) (f32.const -1.)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 1.) (f32.const 1.)) (i32.const 0))
(assert_return
  (invoke "ne" (f32.const -1.) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return (invoke "ne" (f32.const -1.) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -1.) (f32.const inf)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 1.) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f32.const 1.) (f32.const inf)) (i32.const 1))
(assert_return
  (invoke "ne" (f32.const -1.) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -1.) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 1.) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.28318548203) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.28318548203) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.28318548203) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.28318548203) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.28318548203) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.28318548203) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.28318548203) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.28318548203) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.28318548203) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.28318548203) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.28318548203) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.28318548203) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.28318548203) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.28318548203) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.28318548203) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.28318548203) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.28318548203) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.28318548203) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.28318548203) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.28318548203) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.28318548203) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "ne" (f32.const -6.28318548203) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.28318548203) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.28318548203) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "ne" (f32.const -6.28318548203) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.28318548203) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.28318548203) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.28318548203) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.28318548203) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.28318548203) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.28318548203) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.28318548203) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.28318548203) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.28318548203) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.28318548203) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -6.28318548203) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.28318548203) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.28318548203) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.28318548203) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 6.28318548203) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -3.40282346639e+38) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -3.40282346639e+38) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.40282346639e+38) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.40282346639e+38) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -3.40282346639e+38) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -3.40282346639e+38) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.40282346639e+38) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.40282346639e+38) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -3.40282346639e+38) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -3.40282346639e+38) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.40282346639e+38) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.40282346639e+38) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -3.40282346639e+38) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -3.40282346639e+38) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.40282346639e+38) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.40282346639e+38) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -3.40282346639e+38) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -3.40282346639e+38) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.40282346639e+38) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.40282346639e+38) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -3.40282346639e+38) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -3.40282346639e+38) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.40282346639e+38) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.40282346639e+38) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -3.40282346639e+38) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ne" (f32.const -3.40282346639e+38) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.40282346639e+38) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.40282346639e+38) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ne" (f32.const -3.40282346639e+38) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -3.40282346639e+38) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.40282346639e+38) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.40282346639e+38) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -3.40282346639e+38) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -3.40282346639e+38) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -3.40282346639e+38) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -3.40282346639e+38) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.40282346639e+38) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.40282346639e+38) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.40282346639e+38) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const 3.40282346639e+38) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return (invoke "ne" (f32.const -inf) (f32.const -0.)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -inf) (f32.const 0.)) (i32.const 1))
(assert_return (invoke "ne" (f32.const inf) (f32.const -0.)) (i32.const 1))
(assert_return (invoke "ne" (f32.const inf) (f32.const 0.)) (i32.const 1))
(assert_return
  (invoke "ne" (f32.const -inf) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -inf) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const inf) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const inf) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -inf) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -inf) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const inf) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const inf) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return (invoke "ne" (f32.const -inf) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -inf) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const inf) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const inf) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -inf) (f32.const -1.)) (i32.const 1))
(assert_return (invoke "ne" (f32.const -inf) (f32.const 1.)) (i32.const 1))
(assert_return (invoke "ne" (f32.const inf) (f32.const -1.)) (i32.const 1))
(assert_return (invoke "ne" (f32.const inf) (f32.const 1.)) (i32.const 1))
(assert_return
  (invoke "ne" (f32.const -inf) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -inf) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const inf) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const inf) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -inf) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -inf) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const inf) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const inf) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return (invoke "ne" (f32.const -inf) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "ne" (f32.const -inf) (f32.const inf)) (i32.const 1))
(assert_return (invoke "ne" (f32.const inf) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ne" (f32.const inf) (f32.const inf)) (i32.const 0))
(assert_return
  (invoke "ne" (f32.const -inf) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -inf) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -inf) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -inf) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const inf) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const inf) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const inf) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const inf) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x400000) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const -nan:0x200000) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const -nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const -nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x400000) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return
  (invoke "ne" (f32.const nan:0x200000) (f32.const nan:0x200000))
  (i32.const 1)
)
(assert_return (invoke "lt" (f32.const -0.) (f32.const -0.)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -0.) (f32.const 0.)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 0.) (f32.const -0.)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 0.) (f32.const 0.)) (i32.const 0))
(assert_return
  (invoke "lt" (f32.const -0.) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0.) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 0.) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0.) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -0.) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0.) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 0.) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0.) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return (invoke "lt" (f32.const -0.) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -0.) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "lt" (f32.const 0.) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 0.) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "lt" (f32.const -0.) (f32.const -1.)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -0.) (f32.const 1.)) (i32.const 1))
(assert_return (invoke "lt" (f32.const 0.) (f32.const -1.)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 0.) (f32.const 1.)) (i32.const 1))
(assert_return
  (invoke "lt" (f32.const -0.) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0.) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 0.) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0.) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -0.) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0.) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 0.) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0.) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return (invoke "lt" (f32.const -0.) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -0.) (f32.const inf)) (i32.const 1))
(assert_return (invoke "lt" (f32.const 0.) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 0.) (f32.const inf)) (i32.const 1))
(assert_return
  (invoke "lt" (f32.const -0.) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0.) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0.) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0.) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0.) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0.) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0.) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0.) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.40129846432e-45) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1.40129846432e-45) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.40129846432e-45) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.40129846432e-45) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.40129846432e-45) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.40129846432e-45) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.40129846432e-45) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.40129846432e-45) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.40129846432e-45) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.40129846432e-45) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.40129846432e-45) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.40129846432e-45) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1.40129846432e-45) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.40129846432e-45) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.40129846432e-45) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.40129846432e-45) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1.40129846432e-45) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.40129846432e-45) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.40129846432e-45) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.40129846432e-45) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1.40129846432e-45) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.40129846432e-45) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.40129846432e-45) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.40129846432e-45) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1.40129846432e-45) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.40129846432e-45) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.40129846432e-45) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.40129846432e-45) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1.40129846432e-45) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.40129846432e-45) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.40129846432e-45) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.40129846432e-45) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1.40129846432e-45) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.40129846432e-45) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.40129846432e-45) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.40129846432e-45) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.40129846432e-45) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.40129846432e-45) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.40129846432e-45) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.40129846432e-45) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.17549435082e-38) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1.17549435082e-38) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.17549435082e-38) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.17549435082e-38) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.17549435082e-38) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1.17549435082e-38) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.17549435082e-38) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.17549435082e-38) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.17549435082e-38) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.17549435082e-38) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.17549435082e-38) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.17549435082e-38) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.17549435082e-38) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.17549435082e-38) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.17549435082e-38) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.17549435082e-38) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1.17549435082e-38) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.17549435082e-38) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.17549435082e-38) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.17549435082e-38) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1.17549435082e-38) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.17549435082e-38) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.17549435082e-38) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.17549435082e-38) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1.17549435082e-38) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.17549435082e-38) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.17549435082e-38) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.17549435082e-38) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1.17549435082e-38) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.17549435082e-38) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.17549435082e-38) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.17549435082e-38) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1.17549435082e-38) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.17549435082e-38) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.17549435082e-38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.17549435082e-38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.17549435082e-38) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.17549435082e-38) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.17549435082e-38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.17549435082e-38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "lt" (f32.const -0.5) (f32.const -0.)) (i32.const 1))
(assert_return (invoke "lt" (f32.const -0.5) (f32.const 0.)) (i32.const 1))
(assert_return (invoke "lt" (f32.const 0.5) (f32.const -0.)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 0.5) (f32.const 0.)) (i32.const 0))
(assert_return
  (invoke "lt" (f32.const -0.5) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -0.5) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 0.5) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0.5) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0.5) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -0.5) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 0.5) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0.5) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return (invoke "lt" (f32.const -0.5) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -0.5) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "lt" (f32.const 0.5) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 0.5) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -0.5) (f32.const -1.)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -0.5) (f32.const 1.)) (i32.const 1))
(assert_return (invoke "lt" (f32.const 0.5) (f32.const -1.)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 0.5) (f32.const 1.)) (i32.const 1))
(assert_return
  (invoke "lt" (f32.const -0.5) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0.5) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 0.5) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0.5) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -0.5) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0.5) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 0.5) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0.5) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return (invoke "lt" (f32.const -0.5) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -0.5) (f32.const inf)) (i32.const 1))
(assert_return (invoke "lt" (f32.const 0.5) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 0.5) (f32.const inf)) (i32.const 1))
(assert_return
  (invoke "lt" (f32.const -0.5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0.5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0.5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -0.5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0.5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0.5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0.5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 0.5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "lt" (f32.const -1.) (f32.const -0.)) (i32.const 1))
(assert_return (invoke "lt" (f32.const -1.) (f32.const 0.)) (i32.const 1))
(assert_return (invoke "lt" (f32.const 1.) (f32.const -0.)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 1.) (f32.const 0.)) (i32.const 0))
(assert_return
  (invoke "lt" (f32.const -1.) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1.) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1.) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return (invoke "lt" (f32.const -1.) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "lt" (f32.const -1.) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "lt" (f32.const 1.) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 1.) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -1.) (f32.const -1.)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -1.) (f32.const 1.)) (i32.const 1))
(assert_return (invoke "lt" (f32.const 1.) (f32.const -1.)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 1.) (f32.const 1.)) (i32.const 0))
(assert_return
  (invoke "lt" (f32.const -1.) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -1.) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 1.) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return (invoke "lt" (f32.const -1.) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -1.) (f32.const inf)) (i32.const 1))
(assert_return (invoke "lt" (f32.const 1.) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f32.const 1.) (f32.const inf)) (i32.const 1))
(assert_return
  (invoke "lt" (f32.const -1.) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -1.) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 1.) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -6.28318548203) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -6.28318548203) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 6.28318548203) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 6.28318548203) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -6.28318548203) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -6.28318548203) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 6.28318548203) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 6.28318548203) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -6.28318548203) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -6.28318548203) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 6.28318548203) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 6.28318548203) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -6.28318548203) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -6.28318548203) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 6.28318548203) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 6.28318548203) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -6.28318548203) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -6.28318548203) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 6.28318548203) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 6.28318548203) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -6.28318548203) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -6.28318548203) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 6.28318548203) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 6.28318548203) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -6.28318548203) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -6.28318548203) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 6.28318548203) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 6.28318548203) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -6.28318548203) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -6.28318548203) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 6.28318548203) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 6.28318548203) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -6.28318548203) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -6.28318548203) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -6.28318548203) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -6.28318548203) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 6.28318548203) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 6.28318548203) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 6.28318548203) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 6.28318548203) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -3.40282346639e+38) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -3.40282346639e+38) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 3.40282346639e+38) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 3.40282346639e+38) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -3.40282346639e+38) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -3.40282346639e+38) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 3.40282346639e+38) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 3.40282346639e+38) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -3.40282346639e+38) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -3.40282346639e+38) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 3.40282346639e+38) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 3.40282346639e+38) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -3.40282346639e+38) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -3.40282346639e+38) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 3.40282346639e+38) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 3.40282346639e+38) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -3.40282346639e+38) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -3.40282346639e+38) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 3.40282346639e+38) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 3.40282346639e+38) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -3.40282346639e+38) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -3.40282346639e+38) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 3.40282346639e+38) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 3.40282346639e+38) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -3.40282346639e+38) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -3.40282346639e+38) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 3.40282346639e+38) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 3.40282346639e+38) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -3.40282346639e+38) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -3.40282346639e+38) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const 3.40282346639e+38) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 3.40282346639e+38) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -3.40282346639e+38) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -3.40282346639e+38) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -3.40282346639e+38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -3.40282346639e+38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 3.40282346639e+38) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 3.40282346639e+38) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 3.40282346639e+38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const 3.40282346639e+38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "lt" (f32.const -inf) (f32.const -0.)) (i32.const 1))
(assert_return (invoke "lt" (f32.const -inf) (f32.const 0.)) (i32.const 1))
(assert_return (invoke "lt" (f32.const inf) (f32.const -0.)) (i32.const 0))
(assert_return (invoke "lt" (f32.const inf) (f32.const 0.)) (i32.const 0))
(assert_return
  (invoke "lt" (f32.const -inf) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -inf) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const inf) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const inf) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -inf) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -inf) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const inf) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const inf) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return (invoke "lt" (f32.const -inf) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "lt" (f32.const -inf) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "lt" (f32.const inf) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "lt" (f32.const inf) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -inf) (f32.const -1.)) (i32.const 1))
(assert_return (invoke "lt" (f32.const -inf) (f32.const 1.)) (i32.const 1))
(assert_return (invoke "lt" (f32.const inf) (f32.const -1.)) (i32.const 0))
(assert_return (invoke "lt" (f32.const inf) (f32.const 1.)) (i32.const 0))
(assert_return
  (invoke "lt" (f32.const -inf) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -inf) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const inf) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const inf) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -inf) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const -inf) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "lt" (f32.const inf) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const inf) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return (invoke "lt" (f32.const -inf) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f32.const -inf) (f32.const inf)) (i32.const 1))
(assert_return (invoke "lt" (f32.const inf) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "lt" (f32.const inf) (f32.const inf)) (i32.const 0))
(assert_return
  (invoke "lt" (f32.const -inf) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -inf) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -inf) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -inf) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const inf) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const inf) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const inf) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const inf) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x400000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const -nan:0x200000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x400000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "lt" (f32.const nan:0x200000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "le" (f32.const -0.) (f32.const -0.)) (i32.const 1))
(assert_return (invoke "le" (f32.const -0.) (f32.const 0.)) (i32.const 1))
(assert_return (invoke "le" (f32.const 0.) (f32.const -0.)) (i32.const 1))
(assert_return (invoke "le" (f32.const 0.) (f32.const 0.)) (i32.const 1))
(assert_return
  (invoke "le" (f32.const -0.) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0.) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 0.) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0.) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -0.) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0.) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 0.) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0.) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return (invoke "le" (f32.const -0.) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "le" (f32.const -0.) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "le" (f32.const 0.) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "le" (f32.const 0.) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "le" (f32.const -0.) (f32.const -1.)) (i32.const 0))
(assert_return (invoke "le" (f32.const -0.) (f32.const 1.)) (i32.const 1))
(assert_return (invoke "le" (f32.const 0.) (f32.const -1.)) (i32.const 0))
(assert_return (invoke "le" (f32.const 0.) (f32.const 1.)) (i32.const 1))
(assert_return
  (invoke "le" (f32.const -0.) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0.) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 0.) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0.) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -0.) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0.) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 0.) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0.) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return (invoke "le" (f32.const -0.) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f32.const -0.) (f32.const inf)) (i32.const 1))
(assert_return (invoke "le" (f32.const 0.) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f32.const 0.) (f32.const inf)) (i32.const 1))
(assert_return
  (invoke "le" (f32.const -0.) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0.) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0.) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0.) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0.) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0.) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0.) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0.) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.40129846432e-45) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.40129846432e-45) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.40129846432e-45) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.40129846432e-45) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.40129846432e-45) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.40129846432e-45) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.40129846432e-45) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.40129846432e-45) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.40129846432e-45) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.40129846432e-45) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.40129846432e-45) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.40129846432e-45) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.40129846432e-45) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.40129846432e-45) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.40129846432e-45) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.40129846432e-45) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.40129846432e-45) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.40129846432e-45) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.40129846432e-45) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.40129846432e-45) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.40129846432e-45) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.40129846432e-45) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.40129846432e-45) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.40129846432e-45) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.40129846432e-45) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.40129846432e-45) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.40129846432e-45) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.40129846432e-45) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.40129846432e-45) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.40129846432e-45) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.40129846432e-45) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.40129846432e-45) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.40129846432e-45) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.40129846432e-45) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.40129846432e-45) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.40129846432e-45) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.40129846432e-45) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.40129846432e-45) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.40129846432e-45) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.40129846432e-45) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.17549435082e-38) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.17549435082e-38) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.17549435082e-38) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.17549435082e-38) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.17549435082e-38) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.17549435082e-38) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.17549435082e-38) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.17549435082e-38) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.17549435082e-38) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.17549435082e-38) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.17549435082e-38) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.17549435082e-38) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.17549435082e-38) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.17549435082e-38) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.17549435082e-38) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.17549435082e-38) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.17549435082e-38) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.17549435082e-38) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.17549435082e-38) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.17549435082e-38) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.17549435082e-38) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.17549435082e-38) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.17549435082e-38) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.17549435082e-38) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.17549435082e-38) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.17549435082e-38) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.17549435082e-38) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.17549435082e-38) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.17549435082e-38) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.17549435082e-38) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.17549435082e-38) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.17549435082e-38) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.17549435082e-38) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.17549435082e-38) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.17549435082e-38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.17549435082e-38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.17549435082e-38) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.17549435082e-38) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.17549435082e-38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.17549435082e-38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "le" (f32.const -0.5) (f32.const -0.)) (i32.const 1))
(assert_return (invoke "le" (f32.const -0.5) (f32.const 0.)) (i32.const 1))
(assert_return (invoke "le" (f32.const 0.5) (f32.const -0.)) (i32.const 0))
(assert_return (invoke "le" (f32.const 0.5) (f32.const 0.)) (i32.const 0))
(assert_return
  (invoke "le" (f32.const -0.5) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -0.5) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 0.5) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0.5) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0.5) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -0.5) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 0.5) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0.5) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return (invoke "le" (f32.const -0.5) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "le" (f32.const -0.5) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "le" (f32.const 0.5) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "le" (f32.const 0.5) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "le" (f32.const -0.5) (f32.const -1.)) (i32.const 0))
(assert_return (invoke "le" (f32.const -0.5) (f32.const 1.)) (i32.const 1))
(assert_return (invoke "le" (f32.const 0.5) (f32.const -1.)) (i32.const 0))
(assert_return (invoke "le" (f32.const 0.5) (f32.const 1.)) (i32.const 1))
(assert_return
  (invoke "le" (f32.const -0.5) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0.5) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 0.5) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0.5) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -0.5) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0.5) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 0.5) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0.5) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return (invoke "le" (f32.const -0.5) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f32.const -0.5) (f32.const inf)) (i32.const 1))
(assert_return (invoke "le" (f32.const 0.5) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f32.const 0.5) (f32.const inf)) (i32.const 1))
(assert_return
  (invoke "le" (f32.const -0.5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0.5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0.5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -0.5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0.5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0.5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0.5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 0.5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "le" (f32.const -1.) (f32.const -0.)) (i32.const 1))
(assert_return (invoke "le" (f32.const -1.) (f32.const 0.)) (i32.const 1))
(assert_return (invoke "le" (f32.const 1.) (f32.const -0.)) (i32.const 0))
(assert_return (invoke "le" (f32.const 1.) (f32.const 0.)) (i32.const 0))
(assert_return
  (invoke "le" (f32.const -1.) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return (invoke "le" (f32.const -1.) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "le" (f32.const -1.) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "le" (f32.const 1.) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "le" (f32.const 1.) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "le" (f32.const -1.) (f32.const -1.)) (i32.const 1))
(assert_return (invoke "le" (f32.const -1.) (f32.const 1.)) (i32.const 1))
(assert_return (invoke "le" (f32.const 1.) (f32.const -1.)) (i32.const 0))
(assert_return (invoke "le" (f32.const 1.) (f32.const 1.)) (i32.const 1))
(assert_return
  (invoke "le" (f32.const -1.) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -1.) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 1.) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return (invoke "le" (f32.const -1.) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f32.const -1.) (f32.const inf)) (i32.const 1))
(assert_return (invoke "le" (f32.const 1.) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f32.const 1.) (f32.const inf)) (i32.const 1))
(assert_return
  (invoke "le" (f32.const -1.) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -1.) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 1.) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -6.28318548203) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -6.28318548203) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 6.28318548203) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 6.28318548203) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -6.28318548203) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -6.28318548203) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 6.28318548203) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 6.28318548203) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -6.28318548203) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -6.28318548203) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 6.28318548203) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 6.28318548203) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -6.28318548203) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -6.28318548203) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 6.28318548203) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 6.28318548203) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -6.28318548203) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -6.28318548203) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 6.28318548203) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 6.28318548203) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -6.28318548203) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -6.28318548203) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 6.28318548203) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 6.28318548203) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -6.28318548203) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -6.28318548203) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 6.28318548203) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 6.28318548203) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -6.28318548203) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -6.28318548203) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 6.28318548203) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 6.28318548203) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -6.28318548203) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -6.28318548203) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -6.28318548203) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -6.28318548203) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 6.28318548203) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 6.28318548203) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 6.28318548203) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 6.28318548203) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -3.40282346639e+38) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -3.40282346639e+38) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 3.40282346639e+38) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 3.40282346639e+38) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -3.40282346639e+38) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -3.40282346639e+38) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 3.40282346639e+38) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 3.40282346639e+38) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -3.40282346639e+38) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -3.40282346639e+38) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 3.40282346639e+38) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 3.40282346639e+38) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -3.40282346639e+38) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -3.40282346639e+38) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 3.40282346639e+38) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 3.40282346639e+38) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -3.40282346639e+38) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -3.40282346639e+38) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 3.40282346639e+38) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 3.40282346639e+38) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -3.40282346639e+38) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -3.40282346639e+38) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 3.40282346639e+38) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 3.40282346639e+38) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -3.40282346639e+38) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -3.40282346639e+38) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 3.40282346639e+38) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 3.40282346639e+38) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -3.40282346639e+38) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -3.40282346639e+38) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const 3.40282346639e+38) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 3.40282346639e+38) (f32.const inf))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -3.40282346639e+38) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -3.40282346639e+38) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -3.40282346639e+38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -3.40282346639e+38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 3.40282346639e+38) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 3.40282346639e+38) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 3.40282346639e+38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const 3.40282346639e+38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "le" (f32.const -inf) (f32.const -0.)) (i32.const 1))
(assert_return (invoke "le" (f32.const -inf) (f32.const 0.)) (i32.const 1))
(assert_return (invoke "le" (f32.const inf) (f32.const -0.)) (i32.const 0))
(assert_return (invoke "le" (f32.const inf) (f32.const 0.)) (i32.const 0))
(assert_return
  (invoke "le" (f32.const -inf) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -inf) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const inf) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const inf) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -inf) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -inf) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const inf) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const inf) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return (invoke "le" (f32.const -inf) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "le" (f32.const -inf) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "le" (f32.const inf) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "le" (f32.const inf) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "le" (f32.const -inf) (f32.const -1.)) (i32.const 1))
(assert_return (invoke "le" (f32.const -inf) (f32.const 1.)) (i32.const 1))
(assert_return (invoke "le" (f32.const inf) (f32.const -1.)) (i32.const 0))
(assert_return (invoke "le" (f32.const inf) (f32.const 1.)) (i32.const 0))
(assert_return
  (invoke "le" (f32.const -inf) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -inf) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const inf) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const inf) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -inf) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const -inf) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "le" (f32.const inf) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const inf) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return (invoke "le" (f32.const -inf) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "le" (f32.const -inf) (f32.const inf)) (i32.const 1))
(assert_return (invoke "le" (f32.const inf) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "le" (f32.const inf) (f32.const inf)) (i32.const 1))
(assert_return
  (invoke "le" (f32.const -inf) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -inf) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -inf) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -inf) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const inf) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const inf) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const inf) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const inf) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x400000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const -nan:0x200000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x400000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "le" (f32.const nan:0x200000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "gt" (f32.const -0.) (f32.const -0.)) (i32.const 0))
(assert_return (invoke "gt" (f32.const -0.) (f32.const 0.)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 0.) (f32.const -0.)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 0.) (f32.const 0.)) (i32.const 0))
(assert_return
  (invoke "gt" (f32.const -0.) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -0.) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0.) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 0.) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -0.) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -0.) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0.) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 0.) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return (invoke "gt" (f32.const -0.) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "gt" (f32.const -0.) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 0.) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "gt" (f32.const 0.) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "gt" (f32.const -0.) (f32.const -1.)) (i32.const 1))
(assert_return (invoke "gt" (f32.const -0.) (f32.const 1.)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 0.) (f32.const -1.)) (i32.const 1))
(assert_return (invoke "gt" (f32.const 0.) (f32.const 1.)) (i32.const 0))
(assert_return
  (invoke "gt" (f32.const -0.) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -0.) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0.) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 0.) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -0.) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -0.) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0.) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 0.) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return (invoke "gt" (f32.const -0.) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f32.const -0.) (f32.const inf)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 0.) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f32.const 0.) (f32.const inf)) (i32.const 0))
(assert_return
  (invoke "gt" (f32.const -0.) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -0.) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -0.) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -0.) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0.) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0.) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0.) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0.) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.40129846432e-45) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.40129846432e-45) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.40129846432e-45) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.40129846432e-45) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1.40129846432e-45) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.40129846432e-45) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.40129846432e-45) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.40129846432e-45) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.40129846432e-45) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1.40129846432e-45) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.40129846432e-45) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.40129846432e-45) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.40129846432e-45) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1.40129846432e-45) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.40129846432e-45) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.40129846432e-45) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.40129846432e-45) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1.40129846432e-45) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.40129846432e-45) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.40129846432e-45) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.40129846432e-45) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1.40129846432e-45) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.40129846432e-45) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.40129846432e-45) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.40129846432e-45) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1.40129846432e-45) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.40129846432e-45) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.40129846432e-45) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.40129846432e-45) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1.40129846432e-45) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.40129846432e-45) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.40129846432e-45) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.40129846432e-45) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.40129846432e-45) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.40129846432e-45) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.40129846432e-45) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.40129846432e-45) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.40129846432e-45) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.40129846432e-45) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.40129846432e-45) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.17549435082e-38) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.17549435082e-38) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.17549435082e-38) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.17549435082e-38) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1.17549435082e-38) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.17549435082e-38) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.17549435082e-38) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.17549435082e-38) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1.17549435082e-38) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.17549435082e-38) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.17549435082e-38) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.17549435082e-38) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.17549435082e-38) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1.17549435082e-38) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.17549435082e-38) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.17549435082e-38) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.17549435082e-38) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1.17549435082e-38) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.17549435082e-38) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.17549435082e-38) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.17549435082e-38) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1.17549435082e-38) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.17549435082e-38) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.17549435082e-38) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.17549435082e-38) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1.17549435082e-38) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.17549435082e-38) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.17549435082e-38) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.17549435082e-38) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1.17549435082e-38) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.17549435082e-38) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.17549435082e-38) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.17549435082e-38) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.17549435082e-38) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.17549435082e-38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.17549435082e-38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.17549435082e-38) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.17549435082e-38) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.17549435082e-38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.17549435082e-38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "gt" (f32.const -0.5) (f32.const -0.)) (i32.const 0))
(assert_return (invoke "gt" (f32.const -0.5) (f32.const 0.)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 0.5) (f32.const -0.)) (i32.const 1))
(assert_return (invoke "gt" (f32.const 0.5) (f32.const 0.)) (i32.const 1))
(assert_return
  (invoke "gt" (f32.const -0.5) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -0.5) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0.5) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 0.5) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -0.5) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -0.5) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0.5) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 0.5) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return (invoke "gt" (f32.const -0.5) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "gt" (f32.const -0.5) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 0.5) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "gt" (f32.const 0.5) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "gt" (f32.const -0.5) (f32.const -1.)) (i32.const 1))
(assert_return (invoke "gt" (f32.const -0.5) (f32.const 1.)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 0.5) (f32.const -1.)) (i32.const 1))
(assert_return (invoke "gt" (f32.const 0.5) (f32.const 1.)) (i32.const 0))
(assert_return
  (invoke "gt" (f32.const -0.5) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -0.5) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0.5) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 0.5) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -0.5) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -0.5) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0.5) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 0.5) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return (invoke "gt" (f32.const -0.5) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f32.const -0.5) (f32.const inf)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 0.5) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f32.const 0.5) (f32.const inf)) (i32.const 0))
(assert_return
  (invoke "gt" (f32.const -0.5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -0.5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -0.5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -0.5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0.5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0.5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0.5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 0.5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "gt" (f32.const -1.) (f32.const -0.)) (i32.const 0))
(assert_return (invoke "gt" (f32.const -1.) (f32.const 0.)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 1.) (f32.const -0.)) (i32.const 1))
(assert_return (invoke "gt" (f32.const 1.) (f32.const 0.)) (i32.const 1))
(assert_return
  (invoke "gt" (f32.const -1.) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1.) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return (invoke "gt" (f32.const -1.) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "gt" (f32.const -1.) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 1.) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "gt" (f32.const 1.) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "gt" (f32.const -1.) (f32.const -1.)) (i32.const 0))
(assert_return (invoke "gt" (f32.const -1.) (f32.const 1.)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 1.) (f32.const -1.)) (i32.const 1))
(assert_return (invoke "gt" (f32.const 1.) (f32.const 1.)) (i32.const 0))
(assert_return
  (invoke "gt" (f32.const -1.) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1.) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -1.) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 1.) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return (invoke "gt" (f32.const -1.) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f32.const -1.) (f32.const inf)) (i32.const 0))
(assert_return (invoke "gt" (f32.const 1.) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f32.const 1.) (f32.const inf)) (i32.const 0))
(assert_return
  (invoke "gt" (f32.const -1.) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -1.) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 1.) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -6.28318548203) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -6.28318548203) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 6.28318548203) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 6.28318548203) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -6.28318548203) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -6.28318548203) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 6.28318548203) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 6.28318548203) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -6.28318548203) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -6.28318548203) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 6.28318548203) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 6.28318548203) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -6.28318548203) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -6.28318548203) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 6.28318548203) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 6.28318548203) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -6.28318548203) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -6.28318548203) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 6.28318548203) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 6.28318548203) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -6.28318548203) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -6.28318548203) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 6.28318548203) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 6.28318548203) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -6.28318548203) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -6.28318548203) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 6.28318548203) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 6.28318548203) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -6.28318548203) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -6.28318548203) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 6.28318548203) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 6.28318548203) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -6.28318548203) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -6.28318548203) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -6.28318548203) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -6.28318548203) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 6.28318548203) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 6.28318548203) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 6.28318548203) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 6.28318548203) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -3.40282346639e+38) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -3.40282346639e+38) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 3.40282346639e+38) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 3.40282346639e+38) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -3.40282346639e+38) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -3.40282346639e+38) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 3.40282346639e+38) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 3.40282346639e+38) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -3.40282346639e+38) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -3.40282346639e+38) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 3.40282346639e+38) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 3.40282346639e+38) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -3.40282346639e+38) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -3.40282346639e+38) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 3.40282346639e+38) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 3.40282346639e+38) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -3.40282346639e+38) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -3.40282346639e+38) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 3.40282346639e+38) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 3.40282346639e+38) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -3.40282346639e+38) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -3.40282346639e+38) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 3.40282346639e+38) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 3.40282346639e+38) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -3.40282346639e+38) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -3.40282346639e+38) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 3.40282346639e+38) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 3.40282346639e+38) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -3.40282346639e+38) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -3.40282346639e+38) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 3.40282346639e+38) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const 3.40282346639e+38) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -3.40282346639e+38) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -3.40282346639e+38) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -3.40282346639e+38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -3.40282346639e+38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 3.40282346639e+38) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 3.40282346639e+38) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 3.40282346639e+38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const 3.40282346639e+38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "gt" (f32.const -inf) (f32.const -0.)) (i32.const 0))
(assert_return (invoke "gt" (f32.const -inf) (f32.const 0.)) (i32.const 0))
(assert_return (invoke "gt" (f32.const inf) (f32.const -0.)) (i32.const 1))
(assert_return (invoke "gt" (f32.const inf) (f32.const 0.)) (i32.const 1))
(assert_return
  (invoke "gt" (f32.const -inf) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -inf) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const inf) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const inf) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -inf) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -inf) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const inf) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const inf) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return (invoke "gt" (f32.const -inf) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "gt" (f32.const -inf) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "gt" (f32.const inf) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "gt" (f32.const inf) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "gt" (f32.const -inf) (f32.const -1.)) (i32.const 0))
(assert_return (invoke "gt" (f32.const -inf) (f32.const 1.)) (i32.const 0))
(assert_return (invoke "gt" (f32.const inf) (f32.const -1.)) (i32.const 1))
(assert_return (invoke "gt" (f32.const inf) (f32.const 1.)) (i32.const 1))
(assert_return
  (invoke "gt" (f32.const -inf) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -inf) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const inf) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const inf) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const -inf) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -inf) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const inf) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "gt" (f32.const inf) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return (invoke "gt" (f32.const -inf) (f32.const -inf)) (i32.const 0))
(assert_return (invoke "gt" (f32.const -inf) (f32.const inf)) (i32.const 0))
(assert_return (invoke "gt" (f32.const inf) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "gt" (f32.const inf) (f32.const inf)) (i32.const 0))
(assert_return
  (invoke "gt" (f32.const -inf) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -inf) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -inf) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -inf) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const inf) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const inf) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const inf) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const inf) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x400000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const -nan:0x200000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x400000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "gt" (f32.const nan:0x200000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "ge" (f32.const -0.) (f32.const -0.)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -0.) (f32.const 0.)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 0.) (f32.const -0.)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 0.) (f32.const 0.)) (i32.const 1))
(assert_return
  (invoke "ge" (f32.const -0.) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -0.) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0.) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 0.) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -0.) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -0.) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0.) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 0.) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return (invoke "ge" (f32.const -0.) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -0.) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "ge" (f32.const 0.) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 0.) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "ge" (f32.const -0.) (f32.const -1.)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -0.) (f32.const 1.)) (i32.const 0))
(assert_return (invoke "ge" (f32.const 0.) (f32.const -1.)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 0.) (f32.const 1.)) (i32.const 0))
(assert_return
  (invoke "ge" (f32.const -0.) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -0.) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0.) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 0.) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -0.) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -0.) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0.) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 0.) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return (invoke "ge" (f32.const -0.) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -0.) (f32.const inf)) (i32.const 0))
(assert_return (invoke "ge" (f32.const 0.) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 0.) (f32.const inf)) (i32.const 0))
(assert_return
  (invoke "ge" (f32.const -0.) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -0.) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -0.) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -0.) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0.) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0.) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0.) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0.) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.40129846432e-45) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.40129846432e-45) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.40129846432e-45) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.40129846432e-45) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.40129846432e-45) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.40129846432e-45) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.40129846432e-45) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.40129846432e-45) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.40129846432e-45) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.40129846432e-45) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.40129846432e-45) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.40129846432e-45) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.40129846432e-45) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.40129846432e-45) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.40129846432e-45) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.40129846432e-45) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.40129846432e-45) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.40129846432e-45) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.40129846432e-45) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.40129846432e-45) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.40129846432e-45) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.40129846432e-45) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.40129846432e-45) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.40129846432e-45) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.40129846432e-45) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.40129846432e-45) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.40129846432e-45) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.40129846432e-45) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.40129846432e-45) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.40129846432e-45) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.40129846432e-45) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.40129846432e-45) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.40129846432e-45) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.40129846432e-45) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.40129846432e-45) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.40129846432e-45) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.40129846432e-45) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.40129846432e-45) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.40129846432e-45) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.40129846432e-45) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.17549435082e-38) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.17549435082e-38) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.17549435082e-38) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.17549435082e-38) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.17549435082e-38) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.17549435082e-38) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.17549435082e-38) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.17549435082e-38) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.17549435082e-38) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.17549435082e-38) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.17549435082e-38) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.17549435082e-38) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.17549435082e-38) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.17549435082e-38) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.17549435082e-38) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.17549435082e-38) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.17549435082e-38) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.17549435082e-38) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.17549435082e-38) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.17549435082e-38) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.17549435082e-38) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.17549435082e-38) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.17549435082e-38) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.17549435082e-38) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.17549435082e-38) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.17549435082e-38) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.17549435082e-38) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.17549435082e-38) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.17549435082e-38) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.17549435082e-38) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.17549435082e-38) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.17549435082e-38) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.17549435082e-38) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.17549435082e-38) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.17549435082e-38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.17549435082e-38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.17549435082e-38) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.17549435082e-38) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.17549435082e-38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.17549435082e-38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "ge" (f32.const -0.5) (f32.const -0.)) (i32.const 0))
(assert_return (invoke "ge" (f32.const -0.5) (f32.const 0.)) (i32.const 0))
(assert_return (invoke "ge" (f32.const 0.5) (f32.const -0.)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 0.5) (f32.const 0.)) (i32.const 1))
(assert_return
  (invoke "ge" (f32.const -0.5) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -0.5) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0.5) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 0.5) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -0.5) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -0.5) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0.5) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 0.5) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return (invoke "ge" (f32.const -0.5) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -0.5) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "ge" (f32.const 0.5) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 0.5) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -0.5) (f32.const -1.)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -0.5) (f32.const 1.)) (i32.const 0))
(assert_return (invoke "ge" (f32.const 0.5) (f32.const -1.)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 0.5) (f32.const 1.)) (i32.const 0))
(assert_return
  (invoke "ge" (f32.const -0.5) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -0.5) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0.5) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 0.5) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -0.5) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -0.5) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0.5) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 0.5) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return (invoke "ge" (f32.const -0.5) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -0.5) (f32.const inf)) (i32.const 0))
(assert_return (invoke "ge" (f32.const 0.5) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 0.5) (f32.const inf)) (i32.const 0))
(assert_return
  (invoke "ge" (f32.const -0.5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -0.5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -0.5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -0.5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0.5) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0.5) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0.5) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 0.5) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "ge" (f32.const -1.) (f32.const -0.)) (i32.const 0))
(assert_return (invoke "ge" (f32.const -1.) (f32.const 0.)) (i32.const 0))
(assert_return (invoke "ge" (f32.const 1.) (f32.const -0.)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 1.) (f32.const 0.)) (i32.const 1))
(assert_return
  (invoke "ge" (f32.const -1.) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return (invoke "ge" (f32.const -1.) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "ge" (f32.const -1.) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "ge" (f32.const 1.) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 1.) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -1.) (f32.const -1.)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -1.) (f32.const 1.)) (i32.const 0))
(assert_return (invoke "ge" (f32.const 1.) (f32.const -1.)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 1.) (f32.const 1.)) (i32.const 1))
(assert_return
  (invoke "ge" (f32.const -1.) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -1.) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 1.) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return (invoke "ge" (f32.const -1.) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -1.) (f32.const inf)) (i32.const 0))
(assert_return (invoke "ge" (f32.const 1.) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f32.const 1.) (f32.const inf)) (i32.const 0))
(assert_return
  (invoke "ge" (f32.const -1.) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -1.) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 1.) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -6.28318548203) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -6.28318548203) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 6.28318548203) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 6.28318548203) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -6.28318548203) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -6.28318548203) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 6.28318548203) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 6.28318548203) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -6.28318548203) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -6.28318548203) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 6.28318548203) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 6.28318548203) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -6.28318548203) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -6.28318548203) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 6.28318548203) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 6.28318548203) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -6.28318548203) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -6.28318548203) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 6.28318548203) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 6.28318548203) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -6.28318548203) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -6.28318548203) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 6.28318548203) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 6.28318548203) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -6.28318548203) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -6.28318548203) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 6.28318548203) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 6.28318548203) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -6.28318548203) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -6.28318548203) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 6.28318548203) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 6.28318548203) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -6.28318548203) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -6.28318548203) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -6.28318548203) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -6.28318548203) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 6.28318548203) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 6.28318548203) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 6.28318548203) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 6.28318548203) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -3.40282346639e+38) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -3.40282346639e+38) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 3.40282346639e+38) (f32.const -0.))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 3.40282346639e+38) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -3.40282346639e+38) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -3.40282346639e+38) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 3.40282346639e+38) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 3.40282346639e+38) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -3.40282346639e+38) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -3.40282346639e+38) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 3.40282346639e+38) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 3.40282346639e+38) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -3.40282346639e+38) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -3.40282346639e+38) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 3.40282346639e+38) (f32.const -0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 3.40282346639e+38) (f32.const 0.5))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -3.40282346639e+38) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -3.40282346639e+38) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 3.40282346639e+38) (f32.const -1.))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 3.40282346639e+38) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -3.40282346639e+38) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -3.40282346639e+38) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 3.40282346639e+38) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 3.40282346639e+38) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -3.40282346639e+38) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -3.40282346639e+38) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 3.40282346639e+38) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 3.40282346639e+38) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -3.40282346639e+38) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -3.40282346639e+38) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 3.40282346639e+38) (f32.const -inf))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const 3.40282346639e+38) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -3.40282346639e+38) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -3.40282346639e+38) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -3.40282346639e+38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -3.40282346639e+38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 3.40282346639e+38) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 3.40282346639e+38) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 3.40282346639e+38) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const 3.40282346639e+38) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return (invoke "ge" (f32.const -inf) (f32.const -0.)) (i32.const 0))
(assert_return (invoke "ge" (f32.const -inf) (f32.const 0.)) (i32.const 0))
(assert_return (invoke "ge" (f32.const inf) (f32.const -0.)) (i32.const 1))
(assert_return (invoke "ge" (f32.const inf) (f32.const 0.)) (i32.const 1))
(assert_return
  (invoke "ge" (f32.const -inf) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -inf) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const inf) (f32.const -1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const inf) (f32.const 1.40129846432e-45))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -inf) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -inf) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const inf) (f32.const -1.17549435082e-38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const inf) (f32.const 1.17549435082e-38))
  (i32.const 1)
)
(assert_return (invoke "ge" (f32.const -inf) (f32.const -0.5)) (i32.const 0))
(assert_return (invoke "ge" (f32.const -inf) (f32.const 0.5)) (i32.const 0))
(assert_return (invoke "ge" (f32.const inf) (f32.const -0.5)) (i32.const 1))
(assert_return (invoke "ge" (f32.const inf) (f32.const 0.5)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -inf) (f32.const -1.)) (i32.const 0))
(assert_return (invoke "ge" (f32.const -inf) (f32.const 1.)) (i32.const 0))
(assert_return (invoke "ge" (f32.const inf) (f32.const -1.)) (i32.const 1))
(assert_return (invoke "ge" (f32.const inf) (f32.const 1.)) (i32.const 1))
(assert_return
  (invoke "ge" (f32.const -inf) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -inf) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const inf) (f32.const -6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const inf) (f32.const 6.28318548203))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const -inf) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -inf) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const inf) (f32.const -3.40282346639e+38))
  (i32.const 1)
)
(assert_return
  (invoke "ge" (f32.const inf) (f32.const 3.40282346639e+38))
  (i32.const 1)
)
(assert_return (invoke "ge" (f32.const -inf) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f32.const -inf) (f32.const inf)) (i32.const 0))
(assert_return (invoke "ge" (f32.const inf) (f32.const -inf)) (i32.const 1))
(assert_return (invoke "ge" (f32.const inf) (f32.const inf)) (i32.const 1))
(assert_return
  (invoke "ge" (f32.const -inf) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -inf) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -inf) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -inf) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const inf) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const inf) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const inf) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const inf) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const -0.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const 0.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const -1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const 1.40129846432e-45))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const -1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const 1.17549435082e-38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const -0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const 0.5))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const -1.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const -6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const 6.28318548203))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const -3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const 3.40282346639e+38))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const -inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const inf))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x400000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const -nan:0x200000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const -nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const -nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x400000) (f32.const nan:0x200000))
  (i32.const 0)
)
(assert_return
  (invoke "ge" (f32.const nan:0x200000) (f32.const nan:0x200000))
  (i32.const 0)
)

(module binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\01\60"
  "\03\7c\7c\7c\01\7c\03\82\80\80\80\00\01\00\07\96"
  "\80\80\80\00\01\12\66\36\34\2e\6e\6f\5f\63\6f\6e"
  "\74\72\61\63\74\69\6f\6e\00\00\0a\90\80\80\80\00"
  "\01\8a\80\80\80\00\00\20\00\20\01\a2\20\02\a0\0b"
)
(assert_return
  (invoke "f64.no_contraction"
    (f64.const -1.59671336041e-31)
    (f64.const 8.76335216083e+199)
    (f64.const 4.28965762049e+160)
  )
  (f64.const -1.39925614343e+169)
)
(assert_return
  (invoke "f64.no_contraction"
    (f64.const 8.34101664248e+15)
    (f64.const 3.22342496592e-97)
    (f64.const 2.33108357417e-91)
  )
  (f64.const 2.68866412888e-81)
)
(assert_return
  (invoke "f64.no_contraction"
    (f64.const -3.01190452905e-179)
    (f64.const 5.26993364392e+160)
    (f64.const 6.65445478134e-32)
  )
  (f64.const -1.58725370099e-18)
)
(assert_return
  (invoke "f64.no_contraction"
    (f64.const 3.14139361168e-21)
    (f64.const -7.26276603571e-31)
    (f64.const 4.61968489423e-66)
  )
  (f64.const -2.28152068277e-51)
)
(assert_return
  (invoke "f64.no_contraction"
    (f64.const -1.60804642174e-286)
    (f64.const -3.82103410227e+281)
    (f64.const 1.05419805042e-16)
  )
  (f64.const 6.14440021551e-05)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8f\80\80\80\00\02\60"
  "\03\7d\7d\7d\01\7d\60\03\7c\7c\7c\01\7c\03\83\80"
  "\80\80\00\02\00\01\07\9b\80\80\80\00\02\0a\66\33"
  "\32\2e\6e\6f\5f\66\6d\61\00\00\0a\66\36\34\2e\6e"
  "\6f\5f\66\6d\61\00\01\0a\9f\80\80\80\00\02\8a\80"
  "\80\80\00\00\20\00\20\01\94\20\02\92\0b\8a\80\80"
  "\80\00\00\20\00\20\01\a2\20\02\a0\0b"
)
(assert_return
  (invoke "f32.no_fma"
    (f32.const 3.51843041229e+37)
    (f32.const 2.15843613205e-07)
    (f32.const 2.59340643077e+32)
  )
  (f32.const 2.66934960333e+32)
)
(assert_return
  (invoke "f32.no_fma"
    (f32.const 7.1753243347e-09)
    (f32.const -1.22553396078e-15)
    (f32.const 4.13164358366e-27)
  )
  (f32.const -8.78947242875e-24)
)
(assert_return
  (invoke "f32.no_fma"
    (f32.const 231063437312.)
    (f32.const 0.000207732620765)
    (f32.const 1797.64208984)
  )
  (f32.const 48001208.)
)
(assert_return
  (invoke "f32.no_fma"
    (f32.const 0.00455427030101)
    (f32.const -7265493.5)
    (f32.const -2.39642834663)
  )
  (f32.const -33091.4140625)
)
(assert_return
  (invoke "f32.no_fma"
    (f32.const 9.88817261494e+37)
    (f32.const -8.57063118027e-22)
    (f32.const -21579143168.)
  )
  (f32.const -8.47479081376e+16)
)
(assert_return
  (invoke "f64.no_fma"
    (f64.const 7.89084284375e+167)
    (f64.const 4.21502005212e+129)
    (f64.const -1.33660108113e+297)
  )
  (f64.const 1.98940500032e+297)
)
(assert_return
  (invoke "f64.no_fma"
    (f64.const 5.58682234801e+225)
    (f64.const 7.39730200568e-40)
    (f64.const 3.6567834172e+172)
  )
  (f64.const 4.13274121603e+186)
)
(assert_return
  (invoke "f64.no_fma"
    (f64.const 1.42604778223e-217)
    (f64.const -3.10876320366e+304)
    (f64.const 3.43269235524e+71)
  )
  (f64.const -4.43324487205e+87)
)
(assert_return
  (invoke "f64.no_fma"
    (f64.const -8.09034701735e-117)
    (f64.const -2.48744178507e+133)
    (f64.const 4.94847651385e+16)
  )
  (f64.const 2.50727437405e+17)
)
(assert_return
  (invoke "f64.no_fma"
    (f64.const 6.72325698536e+15)
    (f64.const 2.85456566693e+206)
    (f64.const -5.59383947005e+207)
  )
  (f64.const 1.91919785604e+222)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\83\80\80\80\00\02"
  "\00\01\07\af\80\80\80\00\02\14\66\33\32\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\61\64\64\5f\7a\65\72\6f\00\00"
  "\14\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\61\64\64"
  "\5f\7a\65\72\6f\00\01\0a\a3\80\80\80\00\02\8a\80"
  "\80\80\00\00\20\00\43\00\00\00\00\92\0b\8e\80\80"
  "\80\00\00\20\00\44\00\00\00\00\00\00\00\00\a0\0b"
)
(assert_return (invoke "f32.no_fold_add_zero" (f32.const -0.)) (f32.const 0.))
(assert_return (invoke "f64.no_fold_add_zero" (f64.const -0.)) (f64.const 0.))
(assert_return_arithmetic_nan
  (invoke "f32.no_fold_add_zero" (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "f64.no_fold_add_zero" (f64.const nan:0x4000000000000))
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\83\80\80\80\00\02"
  "\00\01\07\af\80\80\80\00\02\14\66\33\32\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\7a\65\72\6f\5f\73\75\62\00\00"
  "\14\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\7a\65\72"
  "\6f\5f\73\75\62\00\01\0a\a3\80\80\80\00\02\8a\80"
  "\80\80\00\00\43\00\00\00\00\20\00\93\0b\8e\80\80"
  "\80\00\00\44\00\00\00\00\00\00\00\00\20\00\a1\0b"
)
(assert_return (invoke "f32.no_fold_zero_sub" (f32.const 0.)) (f32.const 0.))
(assert_return (invoke "f64.no_fold_zero_sub" (f64.const 0.)) (f64.const 0.))
(assert_return_arithmetic_nan
  (invoke "f32.no_fold_zero_sub" (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "f64.no_fold_zero_sub" (f64.const nan:0x4000000000000))
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\83\80\80\80\00\02"
  "\00\01\07\af\80\80\80\00\02\14\66\33\32\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\73\75\62\5f\7a\65\72\6f\00\00"
  "\14\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\73\75\62"
  "\5f\7a\65\72\6f\00\01\0a\a3\80\80\80\00\02\8a\80"
  "\80\80\00\00\20\00\43\00\00\00\00\93\0b\8e\80\80"
  "\80\00\00\20\00\44\00\00\00\00\00\00\00\00\a1\0b"
)
(assert_return_arithmetic_nan
  (invoke "f32.no_fold_sub_zero" (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "f64.no_fold_sub_zero" (f64.const nan:0x4000000000000))
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\83\80\80\80\00\02"
  "\00\01\07\af\80\80\80\00\02\14\66\33\32\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\6d\75\6c\5f\7a\65\72\6f\00\00"
  "\14\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\6d\75\6c"
  "\5f\7a\65\72\6f\00\01\0a\a3\80\80\80\00\02\8a\80"
  "\80\80\00\00\20\00\43\00\00\00\00\94\0b\8e\80\80"
  "\80\00\00\20\00\44\00\00\00\00\00\00\00\00\a2\0b"
)
(assert_return (invoke "f32.no_fold_mul_zero" (f32.const -0.)) (f32.const -0.))
(assert_return (invoke "f32.no_fold_mul_zero" (f32.const -1.)) (f32.const -0.))
(assert_return (invoke "f32.no_fold_mul_zero" (f32.const -2.)) (f32.const -0.))
(assert_return_arithmetic_nan
  (invoke "f32.no_fold_mul_zero" (f32.const nan:0x200000))
)
(assert_return (invoke "f64.no_fold_mul_zero" (f64.const -0.)) (f64.const -0.))
(assert_return (invoke "f64.no_fold_mul_zero" (f64.const -1.)) (f64.const -0.))
(assert_return (invoke "f64.no_fold_mul_zero" (f64.const -2.)) (f64.const -0.))
(assert_return_arithmetic_nan
  (invoke "f64.no_fold_mul_zero" (f64.const nan:0x4000000000000))
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\83\80\80\80\00\02"
  "\00\01\07\ad\80\80\80\00\02\13\66\33\32\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\6d\75\6c\5f\6f\6e\65\00\00\13"
  "\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\6d\75\6c\5f"
  "\6f\6e\65\00\01\0a\a3\80\80\80\00\02\8a\80\80\80"
  "\00\00\20\00\43\00\00\80\3f\94\0b\8e\80\80\80\00"
  "\00\20\00\44\00\00\00\00\00\00\f0\3f\a2\0b"
)
(assert_return_arithmetic_nan
  (invoke "f32.no_fold_mul_one" (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "f64.no_fold_mul_one" (f64.const nan:0x4000000000000))
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\83\80\80\80\00\02"
  "\00\01\07\af\80\80\80\00\02\14\66\33\32\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\7a\65\72\6f\5f\64\69\76\00\00"
  "\14\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\7a\65\72"
  "\6f\5f\64\69\76\00\01\0a\a3\80\80\80\00\02\8a\80"
  "\80\80\00\00\43\00\00\00\00\20\00\95\0b\8e\80\80"
  "\80\00\00\44\00\00\00\00\00\00\00\00\20\00\a3\0b"
)
(assert_return_canonical_nan (invoke "f32.no_fold_zero_div" (f32.const 0.)))
(assert_return_canonical_nan (invoke "f32.no_fold_zero_div" (f32.const -0.)))
(assert_return_canonical_nan
  (invoke "f32.no_fold_zero_div" (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "f32.no_fold_zero_div" (f32.const nan:0x200000))
)
(assert_return_canonical_nan (invoke "f64.no_fold_zero_div" (f64.const 0.)))
(assert_return_canonical_nan (invoke "f64.no_fold_zero_div" (f64.const -0.)))
(assert_return_canonical_nan
  (invoke "f64.no_fold_zero_div" (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "f64.no_fold_zero_div" (f64.const nan:0x4000000000000))
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\83\80\80\80\00\02"
  "\00\01\07\ad\80\80\80\00\02\13\66\33\32\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\64\69\76\5f\6f\6e\65\00\00\13"
  "\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\64\69\76\5f"
  "\6f\6e\65\00\01\0a\a3\80\80\80\00\02\8a\80\80\80"
  "\00\00\20\00\43\00\00\80\3f\95\0b\8e\80\80\80\00"
  "\00\20\00\44\00\00\00\00\00\00\f0\3f\a3\0b"
)
(assert_return_arithmetic_nan
  (invoke "f32.no_fold_div_one" (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "f64.no_fold_div_one" (f64.const nan:0x4000000000000))
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\83\80\80\80\00\02"
  "\00\01\07\af\80\80\80\00\02\14\66\33\32\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\64\69\76\5f\6e\65\67\31\00\00"
  "\14\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\64\69\76"
  "\5f\6e\65\67\31\00\01\0a\a3\80\80\80\00\02\8a\80"
  "\80\80\00\00\20\00\43\00\00\80\bf\95\0b\8e\80\80"
  "\80\00\00\20\00\44\00\00\00\00\00\00\f0\bf\a3\0b"
)
(assert_return_arithmetic_nan
  (invoke "f32.no_fold_div_neg1" (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "f64.no_fold_div_neg1" (f64.const nan:0x4000000000000))
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\83\80\80\80\00\02"
  "\00\01\07\af\80\80\80\00\02\14\66\33\32\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\6e\65\67\30\5f\73\75\62\00\00"
  "\14\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\6e\65\67"
  "\30\5f\73\75\62\00\01\0a\a3\80\80\80\00\02\8a\80"
  "\80\80\00\00\43\00\00\00\80\20\00\93\0b\8e\80\80"
  "\80\00\00\44\00\00\00\00\00\00\00\80\20\00\a1\0b"
)
(assert_return_arithmetic_nan
  (invoke "f32.no_fold_neg0_sub" (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "f64.no_fold_neg0_sub" (f64.const nan:0x4000000000000))
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\83\80\80\80\00\02"
  "\00\01\07\af\80\80\80\00\02\14\66\33\32\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\6e\65\67\31\5f\6d\75\6c\00\00"
  "\14\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\6e\65\67"
  "\31\5f\6d\75\6c\00\01\0a\a3\80\80\80\00\02\8a\80"
  "\80\80\00\00\43\00\00\80\bf\20\00\94\0b\8e\80\80"
  "\80\00\00\44\00\00\00\00\00\00\f0\bf\20\00\a2\0b"
)
(assert_return_arithmetic_nan
  (invoke "f32.no_fold_neg1_mul" (f32.const nan:0x200000))
)
(assert_return_arithmetic_nan
  (invoke "f64.no_fold_neg1_mul" (f64.const nan:0x4000000000000))
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7f\60\01\7c\01\7f\03\83\80\80\80\00\02"
  "\00\01\07\ad\80\80\80\00\02\13\66\33\32\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\65\71\5f\73\65\6c\66\00\00\13"
  "\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\65\71\5f\73"
  "\65\6c\66\00\01\0a\99\80\80\80\00\02\87\80\80\80"
  "\00\00\20\00\20\00\5b\0b\87\80\80\80\00\00\20\00"
  "\20\00\61\0b"
)
(assert_return
  (invoke "f32.no_fold_eq_self" (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "f64.no_fold_eq_self" (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7f\60\01\7c\01\7f\03\83\80\80\80\00\02"
  "\00\01\07\ad\80\80\80\00\02\13\66\33\32\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\6e\65\5f\73\65\6c\66\00\00\13"
  "\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\6e\65\5f\73"
  "\65\6c\66\00\01\0a\99\80\80\80\00\02\87\80\80\80"
  "\00\00\20\00\20\00\5c\0b\87\80\80\80\00\00\20\00"
  "\20\00\62\0b"
)
(assert_return
  (invoke "f32.no_fold_ne_self" (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return
  (invoke "f64.no_fold_ne_self" (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\83\80\80\80\00\02"
  "\00\01\07\af\80\80\80\00\02\14\66\33\32\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\73\75\62\5f\73\65\6c\66\00\00"
  "\14\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\73\75\62"
  "\5f\73\65\6c\66\00\01\0a\99\80\80\80\00\02\87\80"
  "\80\80\00\00\20\00\20\00\93\0b\87\80\80\80\00\00"
  "\20\00\20\00\a1\0b"
)
(assert_return_canonical_nan (invoke "f32.no_fold_sub_self" (f32.const inf)))
(assert_return_canonical_nan
  (invoke "f32.no_fold_sub_self" (f32.const nan:0x400000))
)
(assert_return_canonical_nan (invoke "f64.no_fold_sub_self" (f64.const inf)))
(assert_return_canonical_nan
  (invoke "f64.no_fold_sub_self" (f64.const nan:0x8000000000000))
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\83\80\80\80\00\02"
  "\00\01\07\af\80\80\80\00\02\14\66\33\32\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\64\69\76\5f\73\65\6c\66\00\00"
  "\14\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\64\69\76"
  "\5f\73\65\6c\66\00\01\0a\99\80\80\80\00\02\87\80"
  "\80\80\00\00\20\00\20\00\95\0b\87\80\80\80\00\00"
  "\20\00\20\00\a3\0b"
)
(assert_return_canonical_nan (invoke "f32.no_fold_div_self" (f32.const inf)))
(assert_return_canonical_nan
  (invoke "f32.no_fold_div_self" (f32.const nan:0x400000))
)
(assert_return_canonical_nan (invoke "f32.no_fold_div_self" (f32.const 0.)))
(assert_return_canonical_nan (invoke "f32.no_fold_div_self" (f32.const -0.)))
(assert_return_canonical_nan (invoke "f64.no_fold_div_self" (f64.const inf)))
(assert_return_canonical_nan
  (invoke "f64.no_fold_div_self" (f64.const nan:0x8000000000000))
)
(assert_return_canonical_nan (invoke "f64.no_fold_div_self" (f64.const 0.)))
(assert_return_canonical_nan (invoke "f64.no_fold_div_self" (f64.const -0.)))
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\83\80\80\80\00\02"
  "\00\01\07\a9\80\80\80\00\02\11\66\33\32\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\64\69\76\5f\33\00\00\11\66\36"
  "\34\2e\6e\6f\5f\66\6f\6c\64\5f\64\69\76\5f\33\00"
  "\01\0a\a3\80\80\80\00\02\8a\80\80\80\00\00\20\00"
  "\43\00\00\40\40\95\0b\8e\80\80\80\00\00\20\00\44"
  "\00\00\00\00\00\00\08\40\a3\0b"
)
(assert_return
  (invoke "f32.no_fold_div_3" (f32.const -1.36167898166e+15))
  (f32.const -4.53892982702e+14)
)
(assert_return
  (invoke "f32.no_fold_div_3" (f32.const -1.87368803675e+28))
  (f32.const -6.24562659239e+27)
)
(assert_return
  (invoke "f32.no_fold_div_3" (f32.const -1.20451307204e-25))
  (f32.const -4.01504347074e-26)
)
(assert_return
  (invoke "f32.no_fold_div_3" (f32.const -5.28134593492e-38))
  (f32.const -1.76044859826e-38)
)
(assert_return
  (invoke "f32.no_fold_div_3" (f32.const -2.54955626722e-17))
  (f32.const -8.498520615e-18)
)
(assert_return
  (invoke "f64.no_fold_div_3" (f64.const -2.9563579574e+190))
  (f64.const -9.85452652466e+189)
)
(assert_return
  (invoke "f64.no_fold_div_3" (f64.const -9.29115092145e-51))
  (f64.const -3.09705030715e-51)
)
(assert_return
  (invoke "f64.no_fold_div_3" (f64.const 1.38080615436e-263))
  (f64.const 4.60268718119e-264)
)
(assert_return
  (invoke "f64.no_fold_div_3" (f64.const -1.37807616347e+303))
  (f64.const -4.59358721156e+302)
)
(assert_return
  (invoke "f64.no_fold_div_3" (f64.const 8.63240080883e+124))
  (f64.const 2.87746693628e+124)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8f\80\80\80\00\02\60"
  "\03\7d\7d\7d\01\7d\60\03\7c\7c\7c\01\7c\03\83\80"
  "\80\80\00\02\00\01\07\a1\80\80\80\00\02\0d\66\33"
  "\32\2e\6e\6f\5f\66\61\63\74\6f\72\00\00\0d\66\36"
  "\34\2e\6e\6f\5f\66\61\63\74\6f\72\00\01\0a\a5\80"
  "\80\80\00\02\8d\80\80\80\00\00\20\00\20\02\94\20"
  "\01\20\02\94\92\0b\8d\80\80\80\00\00\20\00\20\02"
  "\a2\20\01\20\02\a2\a0\0b"
)
(assert_return
  (invoke "f32.no_factor"
    (f32.const -1.43511165338e+12)
    (f32.const -8.5361763654e+14)
    (f32.const 1.11384932812e+18)
  )
  (f32.const -9.52399884674e+32)
)
(assert_return
  (invoke "f32.no_factor"
    (f32.const -0.0266666319221)
    (f32.const 0.0484128221869)
    (f32.const -0.0028136970941)
  )
  (f32.const -6.11872019363e-05)
)
(assert_return
  (invoke "f32.no_factor"
    (f32.const -4.6619777266e-13)
    (f32.const 1.04783769717e-19)
    (f32.const 1.44692022693e+37)
  )
  (f32.const -6.74550795101e+24)
)
(assert_return
  (invoke "f32.no_factor"
    (f32.const -1.06890463028e-19)
    (f32.const 1.06944332177e-25)
    (f32.const 5.68307016526e+35)
  )
  (f32.const -6.07465399659e+16)
)
(assert_return
  (invoke "f32.no_factor"
    (f32.const -6.35459938038e-26)
    (f32.const 7.52462484401e-22)
    (f32.const 1626770.25)
  )
  (f32.const 1.2239802906e-15)
)
(assert_return
  (invoke "f64.no_factor"
    (f64.const 2.839055471e-128)
    (f64.const 1.47398125065e-139)
    (f64.const -2.90012298466e-68)
  )
  (f64.const -8.2336100262e-196)
)
(assert_return
  (invoke "f64.no_factor"
    (f64.const 6.46101550592e-200)
    (f64.const -2.3923242803e-304)
    (f64.const -1.53007387986e-288)
  )
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_factor"
    (f64.const -2.93905629208e-101)
    (f64.const -2.14615674346e-85)
    (f64.const -2.51096722313e+144)
  )
  (f64.const 5.38892923854e+59)
)
(assert_return
  (invoke "f64.no_factor"
    (f64.const -1.77854667717e-87)
    (f64.const 9.3285167754e-79)
    (f64.const -1.21210090449e-76)
  )
  (f64.const -1.13071035994e-154)
)
(assert_return
  (invoke "f64.no_factor"
    (f64.const 1.51948590632e-183)
    (f64.const 8.83589921438e-175)
    (f64.const -1.73583001947e+147)
  )
  (f64.const -1.53376191317e-27)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8f\80\80\80\00\02\60"
  "\03\7d\7d\7d\01\7d\60\03\7c\7c\7c\01\7c\03\83\80"
  "\80\80\00\02\00\01\07\a9\80\80\80\00\02\11\66\33"
  "\32\2e\6e\6f\5f\64\69\73\74\72\69\62\75\74\65\00"
  "\00\11\66\36\34\2e\6e\6f\5f\64\69\73\74\72\69\62"
  "\75\74\65\00\01\0a\9f\80\80\80\00\02\8a\80\80\80"
  "\00\00\20\00\20\01\92\20\02\94\0b\8a\80\80\80\00"
  "\00\20\00\20\01\a0\20\02\a2\0b"
)
(assert_return
  (invoke "f32.no_distribute"
    (f32.const -1.43511165338e+12)
    (f32.const -8.5361763654e+14)
    (f32.const 1.11384932812e+18)
  )
  (f32.const -9.52399962045e+32)
)
(assert_return
  (invoke "f32.no_distribute"
    (f32.const -0.0266666319221)
    (f32.const 0.0484128221869)
    (f32.const -0.0028136970941)
  )
  (f32.const -6.11871946603e-05)
)
(assert_return
  (invoke "f32.no_distribute"
    (f32.const -4.6619777266e-13)
    (f32.const 1.04783769717e-19)
    (f32.const 1.44692022693e+37)
  )
  (f32.const -6.74550852747e+24)
)
(assert_return
  (invoke "f32.no_distribute"
    (f32.const -1.06890463028e-19)
    (f32.const 1.06944332177e-25)
    (f32.const 5.68307016526e+35)
  )
  (f32.const -6.07465356709e+16)
)
(assert_return
  (invoke "f32.no_distribute"
    (f32.const -6.35459938038e-26)
    (f32.const 7.52462484401e-22)
    (f32.const 1626770.25)
  )
  (f32.const 1.22398018472e-15)
)
(assert_return
  (invoke "f64.no_distribute"
    (f64.const 2.839055471e-128)
    (f64.const 1.47398125065e-139)
    (f64.const -2.90012298466e-68)
  )
  (f64.const -8.2336100262e-196)
)
(assert_return
  (invoke "f64.no_distribute"
    (f64.const 6.46101550592e-200)
    (f64.const -2.3923242803e-304)
    (f64.const -1.53007387986e-288)
  )
  (f64.const -0.)
)
(assert_return
  (invoke "f64.no_distribute"
    (f64.const -2.93905629208e-101)
    (f64.const -2.14615674346e-85)
    (f64.const -2.51096722313e+144)
  )
  (f64.const 5.38892923854e+59)
)
(assert_return
  (invoke "f64.no_distribute"
    (f64.const -1.77854667717e-87)
    (f64.const 9.3285167754e-79)
    (f64.const -1.21210090449e-76)
  )
  (f64.const -1.13071035994e-154)
)
(assert_return
  (invoke "f64.no_distribute"
    (f64.const 1.51948590632e-183)
    (f64.const 8.83589921438e-175)
    (f64.const -1.73583001947e+147)
  )
  (f64.const -1.53376191317e-27)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8f\80\80\80\00\02\60"
  "\03\7d\7d\7d\01\7d\60\03\7c\7c\7c\01\7c\03\83\80"
  "\80\80\00\02\00\01\07\b3\80\80\80\00\02\16\66\33"
  "\32\2e\6e\6f\5f\72\65\67\72\6f\75\70\5f\64\69\76"
  "\5f\6d\75\6c\00\00\16\66\36\34\2e\6e\6f\5f\72\65"
  "\67\72\6f\75\70\5f\64\69\76\5f\6d\75\6c\00\01\0a"
  "\9f\80\80\80\00\02\8a\80\80\80\00\00\20\00\20\01"
  "\20\02\95\94\0b\8a\80\80\80\00\00\20\00\20\01\20"
  "\02\a3\a2\0b"
)
(assert_return
  (invoke "f32.no_regroup_div_mul"
    (f32.const -2.83134890058e-35)
    (f32.const -7.2707870449e-20)
    (f32.const 1.64066051041e-35)
  )
  (f32.const 1.25474678151e-19)
)
(assert_return
  (invoke "f32.no_regroup_div_mul"
    (f32.const -3.1458976993e+27)
    (f32.const -4.08640034173e-35)
    (f32.const -9.24592831559e+21)
  )
  (f32.const -0.)
)
(assert_return
  (invoke "f32.no_regroup_div_mul"
    (f32.const -93157.4296875)
    (f32.const -8.12926543858e-07)
    (f32.const -1.54693967367e-37)
  )
  (f32.const -4.89548122418e+35)
)
(assert_return
  (invoke "f32.no_regroup_div_mul"
    (f32.const -8.8996428284e-29)
    (f32.const 1.78877246369e+22)
    (f32.const 5.14680231878e+20)
  )
  (f32.const -3.09307295741e-27)
)
(assert_return
  (invoke "f32.no_regroup_div_mul"
    (f32.const 9.22203617957e+33)
    (f32.const 33330492.)
    (f32.const -3.25310876274e+21)
  )
  (f32.const -9.44865493251e+19)
)
(assert_return
  (invoke "f64.no_regroup_div_mul"
    (f64.const 5.69881141255e-128)
    (f64.const -1.83134391329e-36)
    (f64.const 9.543270551e-194)
  )
  (f64.const -1.09359611441e+30)
)
(assert_return
  (invoke "f64.no_regroup_div_mul"
    (f64.const 3.57289288426e+101)
    (f64.const 3.95276084454e-135)
    (f64.const -1.45078124125e+240)
  )
  (f64.const -0.)
)
(assert_return
  (invoke "f64.no_regroup_div_mul"
    (f64.const 9.1242783835e-145)
    (f64.const 5.55613452771e+271)
    (f64.const 2.50908269403e-135)
  )
  (f64.const inf)
)
(assert_return
  (invoke "f64.no_regroup_div_mul"
    (f64.const -4.49209300035e+144)
    (f64.const -1.2087878984e+184)
    (f64.const -5.96613380626e+251)
  )
  (f64.const -9.10135078034e+76)
)
(assert_return
  (invoke "f64.no_regroup_div_mul"
    (f64.const 7.47026915863e-181)
    (f64.const 7.56802632978e-265)
    (f64.const -1.05538968397e-252)
  )
  (f64.const -5.3568074941e-193)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8f\80\80\80\00\02\60"
  "\03\7d\7d\7d\01\7d\60\03\7c\7c\7c\01\7c\03\83\80"
  "\80\80\00\02\00\01\07\b3\80\80\80\00\02\16\66\33"
  "\32\2e\6e\6f\5f\72\65\67\72\6f\75\70\5f\6d\75\6c"
  "\5f\64\69\76\00\00\16\66\36\34\2e\6e\6f\5f\72\65"
  "\67\72\6f\75\70\5f\6d\75\6c\5f\64\69\76\00\01\0a"
  "\9f\80\80\80\00\02\8a\80\80\80\00\00\20\00\20\01"
  "\94\20\02\95\0b\8a\80\80\80\00\00\20\00\20\01\a2"
  "\20\02\a3\0b"
)
(assert_return
  (invoke "f32.no_regroup_mul_div"
    (f32.const -2.83134890058e-35)
    (f32.const -7.2707870449e-20)
    (f32.const 1.64066051041e-35)
  )
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_regroup_mul_div"
    (f32.const -3.1458976993e+27)
    (f32.const -4.08640034173e-35)
    (f32.const -9.24592831559e+21)
  )
  (f32.const -1.39038479919e-29)
)
(assert_return
  (invoke "f32.no_regroup_mul_div"
    (f32.const -93157.4296875)
    (f32.const -8.12926543858e-07)
    (f32.const -1.54693967367e-37)
  )
  (f32.const -4.89548162032e+35)
)
(assert_return
  (invoke "f32.no_regroup_mul_div"
    (f32.const -8.8996428284e-29)
    (f32.const 1.78877246369e+22)
    (f32.const 5.14680231878e+20)
  )
  (f32.const -3.09307315001e-27)
)
(assert_return
  (invoke "f32.no_regroup_mul_div"
    (f32.const 9.22203617957e+33)
    (f32.const 33330492.)
    (f32.const -3.25310876274e+21)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "f64.no_regroup_mul_div"
    (f64.const 5.69881141255e-128)
    (f64.const -1.83134391329e-36)
    (f64.const 9.543270551e-194)
  )
  (f64.const -1.09359611441e+30)
)
(assert_return
  (invoke "f64.no_regroup_mul_div"
    (f64.const 3.57289288426e+101)
    (f64.const 3.95276084454e-135)
    (f64.const -1.45078124125e+240)
  )
  (f64.const -9.73461104473e-274)
)
(assert_return
  (invoke "f64.no_regroup_mul_div"
    (f64.const 9.1242783835e-145)
    (f64.const 5.55613452771e+271)
    (f64.const 2.50908269403e-135)
  )
  (f64.const 2.02048813647e+262)
)
(assert_return
  (invoke "f64.no_regroup_mul_div"
    (f64.const -4.49209300035e+144)
    (f64.const -1.2087878984e+184)
    (f64.const -5.96613380626e+251)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "f64.no_regroup_mul_div"
    (f64.const 7.47026915863e-181)
    (f64.const 7.56802632978e-265)
    (f64.const -1.05538968397e-252)
  )
  (f64.const -0.)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\91\80\80\80\00\02\60"
  "\04\7d\7d\7d\7d\01\7d\60\04\7c\7c\7c\7c\01\7c\03"
  "\83\80\80\80\00\02\00\01\07\b3\80\80\80\00\02\16"
  "\66\33\32\2e\6e\6f\5f\72\65\61\73\73\6f\63\69\61"
  "\74\65\5f\61\64\64\00\00\16\66\36\34\2e\6e\6f\5f"
  "\72\65\61\73\73\6f\63\69\61\74\65\5f\61\64\64\00"
  "\01\0a\a5\80\80\80\00\02\8d\80\80\80\00\00\20\00"
  "\20\01\92\20\02\92\20\03\92\0b\8d\80\80\80\00\00"
  "\20\00\20\01\a0\20\02\a0\20\03\a0\0b"
)
(assert_return
  (invoke "f32.no_reassociate_add"
    (f32.const -2.41543214531e+13)
    (f32.const 26125811712.)
    (f32.const -2.38608082534e+14)
    (f32.const -2.47895346381e+12)
  )
  (f32.const -2.65215220384e+14)
)
(assert_return
  (invoke "f32.no_reassociate_add"
    (f32.const 0.00361810531467)
    (f32.const -0.00985943991691)
    (f32.const 0.0633753761649)
    (f32.const -0.0111501989886)
  )
  (f32.const 0.0459838397801)
)
(assert_return
  (invoke "f32.no_reassociate_add"
    (f32.const -34206967808.)
    (f32.const -3.77087721472e+12)
    (f32.const 3.08684248842e+13)
    (f32.const 421132075008.)
  )
  (f32.const 2.74844709028e+13)
)
(assert_return
  (invoke "f32.no_reassociate_add"
    (f32.const 1.53506392572e+14)
    (f32.const 9.25114682049e+14)
    (f32.const -36021854208.)
    (f32.const 2.45084604649e+15)
  )
  (f32.const 3.52943098298e+15)
)
(assert_return
  (invoke "f32.no_reassociate_add"
    (f32.const 4.70600313997e+32)
    (f32.const -3.96552040778e+32)
    (f32.const 4.80669389449e+31)
    (f32.const -3.56440727576e+28)
  )
  (f32.const 1.2207956336e+32)
)
(assert_return
  (invoke "f64.no_reassociate_add"
    (f64.const -2.07046529277e+253)
    (f64.const 1.59468970438e+255)
    (f64.const 4.51106636559e+257)
    (f64.const -1.37433350919e+258)
  )
  (f64.const -9.21652887576e+257)
)
(assert_return
  (invoke "f64.no_reassociate_add"
    (f64.const 3.48574765821e-164)
    (f64.const 3.12109573913e-164)
    (f64.const -6.83008546432e-164)
    (f64.const -2.61717734713e-179)
  )
  (f64.const -2.23242066972e-165)
)
(assert_return
  (invoke "f64.no_reassociate_add"
    (f64.const -5.41258492112e+132)
    (f64.const 5.9760365617e+122)
    (f64.const -3.55830077793e+131)
    (f64.const 3.73627259958e+119)
  )
  (f64.const -5.76841499832e+132)
)
(assert_return
  (invoke "f64.no_reassociate_add"
    (f64.const -6.46904771419e-96)
    (f64.const 6.42865849747e-93)
    (f64.const -2.12776980723e-79)
    (f64.const 8.76828727319e-79)
  )
  (f64.const 6.64051746596e-79)
)
(assert_return
  (invoke "f64.no_reassociate_add"
    (f64.const -1.64221370864e+193)
    (f64.const -8.80321379398e+184)
    (f64.const 4.49957059783e+194)
    (f64.const -1.14091267166e+194)
  )
  (f64.const 3.19443655442e+194)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\91\80\80\80\00\02\60"
  "\04\7d\7d\7d\7d\01\7d\60\04\7c\7c\7c\7c\01\7c\03"
  "\83\80\80\80\00\02\00\01\07\b3\80\80\80\00\02\16"
  "\66\33\32\2e\6e\6f\5f\72\65\61\73\73\6f\63\69\61"
  "\74\65\5f\6d\75\6c\00\00\16\66\36\34\2e\6e\6f\5f"
  "\72\65\61\73\73\6f\63\69\61\74\65\5f\6d\75\6c\00"
  "\01\0a\a5\80\80\80\00\02\8d\80\80\80\00\00\20\00"
  "\20\01\94\20\02\94\20\03\94\0b\8d\80\80\80\00\00"
  "\20\00\20\01\a2\20\02\a2\20\03\a2\0b"
)
(assert_return
  (invoke "f32.no_reassociate_mul"
    (f32.const 1.90451493983e-35)
    (f32.const 2.25488613892e-10)
    (f32.const -6.9643218332e+30)
    (f32.const 2.69028318134e-17)
  )
  (f32.const -7.876417295e-31)
)
(assert_return
  (invoke "f32.no_reassociate_mul"
    (f32.const 1.87331245909e-17)
    (f32.const -7.56590387278e+30)
    (f32.const -3.08076840654e-38)
    (f32.const -1.59275922903e+21)
  )
  (f32.const -0.00695472862571)
)
(assert_return
  (invoke "f32.no_reassociate_mul"
    (f32.const 5.03555750835e-15)
    (f32.const -5.64668842283e+16)
    (f32.const -1.17405119914e-12)
    (f32.const 8.49847264083e+22)
  )
  (f32.const 2.83706539377e+13)
)
(assert_return
  (invoke "f32.no_reassociate_mul"
    (f32.const 4.63949458882e-32)
    (f32.const 2.54449361736e+23)
    (f32.const -7.24609773664e+16)
    (f32.const -9.62511035846e+17)
  )
  (f32.const 8.23345112797e+26)
)
(assert_return
  (invoke "f32.no_reassociate_mul"
    (f32.const -1.94205358914e-30)
    (f32.const 2.32003552451e-15)
    (f32.const -9.77274799347)
    (f32.const 8.64065987375e+17)
  )
  (f32.const 3.51136163758e-26)
)
(assert_return
  (invoke "f64.no_reassociate_mul"
    (f64.const -3.10986865441e-201)
    (f64.const -2.07131904877e+298)
    (f64.const -7.16261284552e-114)
    (f64.const -8.8478253296e+199)
  )
  (f64.const 4.08222618133e+184)
)
(assert_return
  (invoke "f64.no_reassociate_mul"
    (f64.const 6.0442716413e+136)
    (f64.const 6.70054501511e-156)
    (f64.const -3.14696642758e-271)
    (f64.const -6.40167729564e+162)
  )
  (f64.const 8.15905744756e-127)
)
(assert_return
  (invoke "f64.no_reassociate_mul"
    (f64.const 2.21680772045e-151)
    (f64.const -1.80223418654e+237)
    (f64.const 7.50028377852e-230)
    (f64.const -4.14412152434e+26)
  )
  (f64.const 1.2417936273e-116)
)
(assert_return
  (invoke "f64.no_reassociate_mul"
    (f64.const 2.43180659663e+208)
    (f64.const 6.50801407579e-128)
    (f64.const 1.75964212872e+67)
    (f64.const -1.41614140131e-07)
  )
  (f64.const -3.94374191853e+141)
)
(assert_return
  (invoke "f64.no_reassociate_mul"
    (f64.const 3.84976715696e-71)
    (f64.const 7.00087549432e-239)
    (f64.const -2.53688782522e+219)
    (f64.const -6.10111451886e-181)
  )
  (f64.const 4.17154812638e-270)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\83\80\80\80\00\02"
  "\00\01\07\a9\80\80\80\00\02\11\66\33\32\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\64\69\76\5f\30\00\00\11\66\36"
  "\34\2e\6e\6f\5f\66\6f\6c\64\5f\64\69\76\5f\30\00"
  "\01\0a\a3\80\80\80\00\02\8a\80\80\80\00\00\20\00"
  "\43\00\00\00\00\95\0b\8e\80\80\80\00\00\20\00\44"
  "\00\00\00\00\00\00\00\00\a3\0b"
)
(assert_return (invoke "f32.no_fold_div_0" (f32.const 1.)) (f32.const inf))
(assert_return (invoke "f32.no_fold_div_0" (f32.const -1.)) (f32.const -inf))
(assert_return (invoke "f32.no_fold_div_0" (f32.const inf)) (f32.const inf))
(assert_return (invoke "f32.no_fold_div_0" (f32.const -inf)) (f32.const -inf))
(assert_return_canonical_nan (invoke "f32.no_fold_div_0" (f32.const 0.)))
(assert_return_canonical_nan (invoke "f32.no_fold_div_0" (f32.const -0.)))
(assert_return_arithmetic_nan
  (invoke "f32.no_fold_div_0" (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "f32.no_fold_div_0" (f32.const nan:0x400000))
)
(assert_return (invoke "f64.no_fold_div_0" (f64.const 1.)) (f64.const inf))
(assert_return (invoke "f64.no_fold_div_0" (f64.const -1.)) (f64.const -inf))
(assert_return (invoke "f64.no_fold_div_0" (f64.const inf)) (f64.const inf))
(assert_return (invoke "f64.no_fold_div_0" (f64.const -inf)) (f64.const -inf))
(assert_return_canonical_nan (invoke "f64.no_fold_div_0" (f64.const 0.)))
(assert_return_canonical_nan (invoke "f64.no_fold_div_0" (f64.const -0.)))
(assert_return_canonical_nan
  (invoke "f64.no_fold_div_0" (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "f64.no_fold_div_0" (f64.const nan:0x4000000000000))
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\83\80\80\80\00\02"
  "\00\01\07\af\80\80\80\00\02\14\66\33\32\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\64\69\76\5f\6e\65\67\30\00\00"
  "\14\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\64\69\76"
  "\5f\6e\65\67\30\00\01\0a\a3\80\80\80\00\02\8a\80"
  "\80\80\00\00\20\00\43\00\00\00\80\95\0b\8e\80\80"
  "\80\00\00\20\00\44\00\00\00\00\00\00\00\80\a3\0b"
)
(assert_return (invoke "f32.no_fold_div_neg0" (f32.const 1.)) (f32.const -inf))
(assert_return (invoke "f32.no_fold_div_neg0" (f32.const -1.)) (f32.const inf))
(assert_return (invoke "f32.no_fold_div_neg0" (f32.const inf)) (f32.const -inf))
(assert_return (invoke "f32.no_fold_div_neg0" (f32.const -inf)) (f32.const inf))
(assert_return_canonical_nan (invoke "f32.no_fold_div_neg0" (f32.const 0.)))
(assert_return_canonical_nan (invoke "f32.no_fold_div_neg0" (f32.const -0.)))
(assert_return_arithmetic_nan
  (invoke "f32.no_fold_div_neg0" (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "f32.no_fold_div_neg0" (f32.const nan:0x400000))
)
(assert_return (invoke "f64.no_fold_div_neg0" (f64.const 1.)) (f64.const -inf))
(assert_return (invoke "f64.no_fold_div_neg0" (f64.const -1.)) (f64.const inf))
(assert_return (invoke "f64.no_fold_div_neg0" (f64.const inf)) (f64.const -inf))
(assert_return (invoke "f64.no_fold_div_neg0" (f64.const -inf)) (f64.const inf))
(assert_return_canonical_nan (invoke "f64.no_fold_div_neg0" (f64.const 0.)))
(assert_return_canonical_nan (invoke "f64.no_fold_div_neg0" (f64.const -0.)))
(assert_return_canonical_nan
  (invoke "f64.no_fold_div_neg0" (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "f64.no_fold_div_neg0" (f64.const nan:0x4000000000000))
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\02\60"
  "\02\7d\7d\01\7d\60\02\7c\7c\01\7c\03\83\80\80\80"
  "\00\02\00\01\07\af\80\80\80\00\02\14\66\33\32\2e"
  "\6e\6f\5f\66\6f\6c\64\5f\74\6f\5f\68\79\70\6f\74"
  "\00\00\14\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\74"
  "\6f\5f\68\79\70\6f\74\00\01\0a\a7\80\80\80\00\02"
  "\8e\80\80\80\00\00\20\00\20\00\94\20\01\20\01\94"
  "\92\91\0b\8e\80\80\80\00\00\20\00\20\00\a2\20\01"
  "\20\01\a2\a0\9f\0b"
)
(assert_return
  (invoke "f32.no_fold_to_hypot"
    (f32.const 7.28549136358e-25)
    (f32.const 4.2365795867e-21)
  )
  (f32.const 4.23665349982e-21)
)
(assert_return
  (invoke "f32.no_fold_to_hypot"
    (f32.const -7.47028507563e-22)
    (f32.const -7.45374502637e-33)
  )
  (f32.const 7.46804395335e-22)
)
(assert_return
  (invoke "f32.no_fold_to_hypot"
    (f32.const -7.70894992385e-35)
    (f32.const -3.26272143385e-21)
  )
  (f32.const 3.26276949757e-21)
)
(assert_return
  (invoke "f32.no_fold_to_hypot"
    (f32.const -35.4281806946)
    (f32.const 174209.484375)
  )
  (f32.const 174209.5)
)
(assert_return
  (invoke "f32.no_fold_to_hypot"
    (f32.const 2.0628143114e-23)
    (f32.const -4.63447527177e-22)
  )
  (f32.const 4.63032018361e-22)
)
(assert_return
  (invoke "f64.no_fold_to_hypot"
    (f64.const 3.86364025899e-192)
    (f64.const 1.91330147526e-161)
  )
  (f64.const 1.91208937532e-161)
)
(assert_return
  (invoke "f64.no_fold_to_hypot"
    (f64.const 1.3856123895e+119)
    (f64.const -2.82803851593e+123)
  )
  (f64.const 2.82803851932e+123)
)
(assert_return
  (invoke "f64.no_fold_to_hypot"
    (f64.const 6.50272909664e-162)
    (f64.const -4.54439993315e-231)
  )
  (f64.const 6.66827624846e-162)
)
(assert_return
  (invoke "f64.no_fold_to_hypot"
    (f64.const -2.23402320242e-157)
    (f64.const 3.43592971414e-221)
  )
  (f64.const 2.23402320238e-157)
)
(assert_return
  (invoke "f64.no_fold_to_hypot"
    (f64.const 2.79796399863e-202)
    (f64.const -1.90686799686e-155)
  )
  (f64.const 1.90686799686e-155)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7d\01\7d\03\82\80\80\80\00\01\00\07\a1\80\80"
  "\80\00\01\1d\66\33\32\2e\6e\6f\5f\61\70\70\72\6f"
  "\78\69\6d\61\74\65\5f\72\65\63\69\70\72\6f\63\61"
  "\6c\00\00\0a\90\80\80\80\00\01\8a\80\80\80\00\00"
  "\43\00\00\80\3f\20\00\95\0b"
)
(assert_return
  (invoke "f32.no_approximate_reciprocal" (f32.const -0.00113297568168))
  (f32.const -882.631469727)
)
(assert_return
  (invoke "f32.no_approximate_reciprocal" (f32.const 3.2375301439e+38))
  (f32.const 3.08877430493e-39)
)
(assert_return
  (invoke "f32.no_approximate_reciprocal" (f32.const -1.27259901639e-28))
  (f32.const -7.85793459579e+27)
)
(assert_return
  (invoke "f32.no_approximate_reciprocal" (f32.const 1.03020679146e+23))
  (f32.const 9.7067890772e-24)
)
(assert_return
  (invoke "f32.no_approximate_reciprocal" (f32.const -2.84437629095e-25))
  (f32.const -3.51570932455e+24)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\83\80\80\80\00\02"
  "\00\01\07\c4\80\80\80\00\02\22\66\33\32\2e\6e\6f"
  "\5f\61\70\70\72\6f\78\69\6d\61\74\65\5f\72\65\63"
  "\69\70\72\6f\63\61\6c\5f\73\71\72\74\00\00\1b\66"
  "\36\34\2e\6e\6f\5f\66\75\73\65\5f\72\65\63\69\70"
  "\72\6f\63\61\6c\5f\73\71\72\74\00\01\0a\a5\80\80"
  "\80\00\02\8b\80\80\80\00\00\43\00\00\80\3f\20\00"
  "\91\95\0b\8f\80\80\80\00\00\44\00\00\00\00\00\00"
  "\f0\3f\20\00\9f\a3\0b"
)
(assert_return
  (invoke "f32.no_approximate_reciprocal_sqrt" (f32.const 1.61178646927e-13))
  (f32.const 2490842.5)
)
(assert_return
  (invoke "f32.no_approximate_reciprocal_sqrt" (f32.const 0.00744913658127))
  (f32.const 11.5863599777)
)
(assert_return
  (invoke "f32.no_approximate_reciprocal_sqrt" (f32.const 2.33981704128e-20))
  (f32.const 6537460224.)
)
(assert_return
  (invoke "f32.no_approximate_reciprocal_sqrt" (f32.const 1.11235043258e-13))
  (f32.const 2998328.25)
)
(assert_return
  (invoke "f32.no_approximate_reciprocal_sqrt" (f32.const 1.7653063085e-26))
  (f32.const 7.52644626842e+12)
)
(assert_return
  (invoke "f64.no_fuse_reciprocal_sqrt" (f64.const 4.47245925277e+267))
  (f64.const 1.49529473359e-134)
)
(assert_return
  (invoke "f64.no_fuse_reciprocal_sqrt" (f64.const 4.75239226001e+93))
  (f64.const 1.4505872639e-47)
)
(assert_return
  (invoke "f64.no_fuse_reciprocal_sqrt" (f64.const 2.90144158854e+31))
  (f64.const 1.85649200848e-16)
)
(assert_return
  (invoke "f64.no_fuse_reciprocal_sqrt" (f64.const 1.3966125077e+201))
  (f64.const 2.67585167511e-101)
)
(assert_return
  (invoke "f64.no_fuse_reciprocal_sqrt" (f64.const 1.51596415441e+44))
  (f64.const 8.12186064948e-23)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7d\01\7d\03\82\80\80\80\00\01\00\07\a6\80\80"
  "\80\00\01\22\66\33\32\2e\6e\6f\5f\61\70\70\72\6f"
  "\78\69\6d\61\74\65\5f\73\71\72\74\5f\72\65\63\69"
  "\70\72\6f\63\61\6c\00\00\0a\91\80\80\80\00\01\8b"
  "\80\80\80\00\00\43\00\00\80\3f\20\00\95\91\0b"
)
(assert_return
  (invoke "f32.no_approximate_sqrt_reciprocal" (f32.const 1.8950570813e+18))
  (f32.const 7.26421756081e-10)
)
(assert_return
  (invoke "f32.no_approximate_sqrt_reciprocal" (f32.const 0.00256589404307))
  (f32.const 19.7415218353)
)
(assert_return
  (invoke "f32.no_approximate_sqrt_reciprocal" (f32.const 6.32654487023e+20))
  (f32.const 3.97572842703e-11)
)
(assert_return
  (invoke "f32.no_approximate_sqrt_reciprocal" (f32.const 14153.5390625))
  (f32.const 0.00840557646006)
)
(assert_return
  (invoke "f32.no_approximate_sqrt_reciprocal" (f32.const 2.61737299828e+31))
  (f32.const 1.95464181645e-16)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7f\01\7f\60\01\7e\01\7e\03\85\80\80\80\00\04"
  "\00\00\01\01\07\d1\80\80\80\00\04\11\69\33\32\2e"
  "\6e\6f\5f\66\6f\6c\64\5f\66\33\32\5f\73\00\00\11"
  "\69\33\32\2e\6e\6f\5f\66\6f\6c\64\5f\66\33\32\5f"
  "\75\00\01\11\69\36\34\2e\6e\6f\5f\66\6f\6c\64\5f"
  "\66\36\34\5f\73\00\02\11\69\36\34\2e\6e\6f\5f\66"
  "\6f\6c\64\5f\66\36\34\5f\75\00\03\0a\ad\80\80\80"
  "\00\04\86\80\80\80\00\00\20\00\b2\a8\0b\86\80\80"
  "\80\00\00\20\00\b3\a9\0b\86\80\80\80\00\00\20\00"
  "\b9\b0\0b\86\80\80\80\00\00\20\00\ba\b1\0b"
)
(assert_return
  (invoke "i32.no_fold_f32_s" (i32.const 16777216))
  (i32.const 16777216)
)
(assert_return
  (invoke "i32.no_fold_f32_s" (i32.const 16777217))
  (i32.const 16777216)
)
(assert_return
  (invoke "i32.no_fold_f32_s" (i32.const -268435440))
  (i32.const -268435440)
)
(assert_return
  (invoke "i32.no_fold_f32_u" (i32.const 16777216))
  (i32.const 16777216)
)
(assert_return
  (invoke "i32.no_fold_f32_u" (i32.const 16777217))
  (i32.const 16777216)
)
(assert_return
  (invoke "i32.no_fold_f32_u" (i32.const -268435440))
  (i32.const -268435456)
)
(assert_return
  (invoke "i64.no_fold_f64_s" (i64.const 9007199254740992))
  (i64.const 9007199254740992)
)
(assert_return
  (invoke "i64.no_fold_f64_s" (i64.const 9007199254740993))
  (i64.const 9007199254740992)
)
(assert_return
  (invoke "i64.no_fold_f64_s" (i64.const -1152921504606845952))
  (i64.const -1152921504606845952)
)
(assert_return
  (invoke "i64.no_fold_f64_u" (i64.const 9007199254740992))
  (i64.const 9007199254740992)
)
(assert_return
  (invoke "i64.no_fold_f64_u" (i64.const 9007199254740993))
  (i64.const 9007199254740992)
)
(assert_return
  (invoke "i64.no_fold_f64_u" (i64.const -1152921504606845952))
  (i64.const -1152921504606846976)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\02\60"
  "\02\7d\7d\01\7d\60\02\7c\7c\01\7c\03\83\80\80\80"
  "\00\02\00\01\07\ad\80\80\80\00\02\13\66\33\32\2e"
  "\6e\6f\5f\66\6f\6c\64\5f\61\64\64\5f\73\75\62\00"
  "\00\13\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\61\64"
  "\64\5f\73\75\62\00\01\0a\9f\80\80\80\00\02\8a\80"
  "\80\80\00\00\20\00\20\01\92\20\01\93\0b\8a\80\80"
  "\80\00\00\20\00\20\01\a0\20\01\a1\0b"
)
(assert_return
  (invoke "f32.no_fold_add_sub"
    (f32.const 1.21382819838e-14)
    (f32.const -2.09463841827e-08)
  )
  (f32.const 1.24344978758e-14)
)
(assert_return
  (invoke "f32.no_fold_add_sub"
    (f32.const -1.97681970349e-07)
    (f32.const 3.71545661437e-06)
  )
  (f32.const -1.97682084035e-07)
)
(assert_return
  (invoke "f32.no_fold_add_sub"
    (f32.const -9.59621301639e+24)
    (f32.const -3.53804139699e+30)
  )
  (f32.const -9.67140655692e+24)
)
(assert_return
  (invoke "f32.no_fold_add_sub"
    (f32.const 5.05434581015e-24)
    (f32.const 2.45726557561e-17)
  )
  (f32.const 4.96308367532e-24)
)
(assert_return
  (invoke "f32.no_fold_add_sub"
    (f32.const -3.36931468232e-33)
    (f32.const -7.10149165285e-26)
  )
  (f32.const -6.16297582204e-33)
)
(assert_return
  (invoke "f64.no_fold_add_sub"
    (f64.const -8.44570265197e-264)
    (f64.const 1.11068438983e-258)
  )
  (f64.const -8.44570265187e-264)
)
(assert_return
  (invoke "f64.no_fold_add_sub"
    (f64.const 8.19879871593e-165)
    (f64.const 4.62403560611e-159)
  )
  (f64.const 8.1987987159e-165)
)
(assert_return
  (invoke "f64.no_fold_add_sub"
    (f64.const -1.36045113221e-09)
    (f64.const -0.175143174071)
  )
  (f64.const -1.36045114063e-09)
)
(assert_return
  (invoke "f64.no_fold_add_sub"
    (f64.const -3.94433543787e-103)
    (f64.const 1.66380974132e-92)
  )
  (f64.const -3.94433555003e-103)
)
(assert_return
  (invoke "f64.no_fold_add_sub"
    (f64.const -5.07830981887e-187)
    (f64.const -1.07904316445e-177)
  )
  (f64.const -5.07831047938e-187)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\02\60"
  "\02\7d\7d\01\7d\60\02\7c\7c\01\7c\03\83\80\80\80"
  "\00\02\00\01\07\ad\80\80\80\00\02\13\66\33\32\2e"
  "\6e\6f\5f\66\6f\6c\64\5f\73\75\62\5f\61\64\64\00"
  "\00\13\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\73\75"
  "\62\5f\61\64\64\00\01\0a\9f\80\80\80\00\02\8a\80"
  "\80\80\00\00\20\00\20\01\93\20\01\92\0b\8a\80\80"
  "\80\00\00\20\00\20\01\a1\20\01\a0\0b"
)
(assert_return
  (invoke "f32.no_fold_sub_add"
    (f32.const -676.474365234)
    (f32.const 403.036804199)
  )
  (f32.const -676.47442627)
)
(assert_return
  (invoke "f32.no_fold_sub_add"
    (f32.const -6.30594311841e-34)
    (f32.const 3.67186006876e-29)
  )
  (f32.const -6.31945763002e-34)
)
(assert_return
  (invoke "f32.no_fold_sub_add" (f32.const 83184800.) (f32.const 46216216576.))
  (f32.const 83185664.)
)
(assert_return
  (invoke "f32.no_fold_sub_add"
    (f32.const 2.21195696308e-12)
    (f32.const -1.04379296317e-08)
  )
  (f32.const 2.21156426505e-12)
)
(assert_return
  (invoke "f32.no_fold_sub_add"
    (f32.const 0.149443954229)
    (f32.const -27393.6503906)
  )
  (f32.const 0.150390625)
)
(assert_return
  (invoke "f64.no_fold_sub_add"
    (f64.const 9.03659826179e+76)
    (f64.const -9.58186427536e+77)
  )
  (f64.const 9.03659826179e+76)
)
(assert_return
  (invoke "f64.no_fold_sub_add"
    (f64.const 4.42304035647e-201)
    (f64.const 2.67134910494e-195)
  )
  (f64.const 4.42304035665e-201)
)
(assert_return
  (invoke "f64.no_fold_sub_add"
    (f64.const 4.09534845278e+75)
    (f64.const -4.05019001958e+90)
  )
  (f64.const 4.07081563725e+75)
)
(assert_return
  (invoke "f64.no_fold_sub_add"
    (f64.const 2.40088892076e-08)
    (f64.const -0.000172537979292)
  )
  (f64.const 2.40088892076e-08)
)
(assert_return
  (invoke "f64.no_fold_sub_add"
    (f64.const 4.33675429183e-111)
    (f64.const -3.95977067082e-109)
  )
  (f64.const 4.33675429183e-111)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\02\60"
  "\02\7d\7d\01\7d\60\02\7c\7c\01\7c\03\83\80\80\80"
  "\00\02\00\01\07\ad\80\80\80\00\02\13\66\33\32\2e"
  "\6e\6f\5f\66\6f\6c\64\5f\6d\75\6c\5f\64\69\76\00"
  "\00\13\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\6d\75"
  "\6c\5f\64\69\76\00\01\0a\9f\80\80\80\00\02\8a\80"
  "\80\80\00\00\20\00\20\01\94\20\01\95\0b\8a\80\80"
  "\80\00\00\20\00\20\01\a2\20\01\a3\0b"
)
(assert_return
  (invoke "f32.no_fold_mul_div"
    (f32.const -3.24767151838e+16)
    (f32.const 1.01213754107e-14)
  )
  (f32.const -3.24767130363e+16)
)
(assert_return
  (invoke "f32.no_fold_mul_div"
    (f32.const -1.55611630248e-08)
    (f32.const 1.57998283856e-32)
  )
  (f32.const -1.55611452612e-08)
)
(assert_return
  (invoke "f32.no_fold_mul_div"
    (f32.const -6.7631100034e-15)
    (f32.const -4.41323995791e+14)
  )
  (f32.const -6.76310957988e-15)
)
(assert_return
  (invoke "f32.no_fold_mul_div"
    (f32.const 7.50561372668e+15)
    (f32.const -2.16038408049e+18)
  )
  (f32.const 7.50561318981e+15)
)
(assert_return
  (invoke "f32.no_fold_mul_div"
    (f32.const -2.36257605915e-28)
    (f32.const -1.08087592696e-11)
  )
  (f32.const -2.36257654064e-28)
)
(assert_return
  (invoke "f64.no_fold_mul_div"
    (f64.const -1.35321037136e-252)
    (f64.const -3.34783646756e-62)
  )
  (f64.const -1.35321037137e-252)
)
(assert_return
  (invoke "f64.no_fold_mul_div"
    (f64.const 7.76621743132e+115)
    (f64.const 1.95959155607e+176)
  )
  (f64.const 7.76621743132e+115)
)
(assert_return
  (invoke "f64.no_fold_mul_div"
    (f64.const -7.1801178119e+71)
    (f64.const -9.32003604262e-167)
  )
  (f64.const -7.1801178119e+71)
)
(assert_return
  (invoke "f64.no_fold_mul_div"
    (f64.const 1.72600107247e-50)
    (f64.const 3.56879242813e-273)
  )
  (f64.const 1.66128679924e-50)
)
(assert_return
  (invoke "f64.no_fold_mul_div"
    (f64.const -9.14522304583e+198)
    (f64.const -5.56209403434e-99)
  )
  (f64.const -9.14522304583e+198)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\02\60"
  "\02\7d\7d\01\7d\60\02\7c\7c\01\7c\03\83\80\80\80"
  "\00\02\00\01\07\ad\80\80\80\00\02\13\66\33\32\2e"
  "\6e\6f\5f\66\6f\6c\64\5f\64\69\76\5f\6d\75\6c\00"
  "\00\13\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\64\69"
  "\76\5f\6d\75\6c\00\01\0a\9f\80\80\80\00\02\8a\80"
  "\80\80\00\00\20\00\20\01\95\20\01\94\0b\8a\80\80"
  "\80\00\00\20\00\20\01\a3\20\01\a2\0b"
)
(assert_return
  (invoke "f32.no_fold_div_mul"
    (f32.const -511517982720.)
    (f32.const 986062208.)
  )
  (f32.const -511517949952.)
)
(assert_return
  (invoke "f32.no_fold_div_mul"
    (f32.const -2.49448529519e-16)
    (f32.const -4.15398335463e-06)
  )
  (f32.const -2.49448555988e-16)
)
(assert_return
  (invoke "f32.no_fold_div_mul"
    (f32.const 2.08278550051e-38)
    (f32.const -235.198471069)
  )
  (f32.const 2.08280133518e-38)
)
(assert_return
  (invoke "f32.no_fold_div_mul"
    (f32.const -6.24994868347e-23)
    (f32.const -6.96312604972e+17)
  )
  (f32.const -6.2499190223e-23)
)
(assert_return
  (invoke "f32.no_fold_div_mul"
    (f32.const 5.83535144053e-30)
    (f32.const 212781120.)
  )
  (f32.const 5.83535181669e-30)
)
(assert_return
  (invoke "f64.no_fold_div_mul"
    (f64.const 3.59846442599e-264)
    (f64.const -2.8812263298e+55)
  )
  (f64.const 3.59850343566e-264)
)
(assert_return
  (invoke "f64.no_fold_div_mul"
    (f64.const -1.74863670475e-215)
    (f64.const 1.65087384548e-16)
  )
  (f64.const -1.74863670475e-215)
)
(assert_return
  (invoke "f64.no_fold_div_mul"
    (f64.const -3.14034198954e-44)
    (f64.const 9.42829809082e+128)
  )
  (f64.const -3.14034198954e-44)
)
(assert_return
  (invoke "f64.no_fold_div_mul"
    (f64.const -3.91974542853e-84)
    (f64.const -2.13147471797e+85)
  )
  (f64.const -3.91974542853e-84)
)
(assert_return
  (invoke "f64.no_fold_div_mul"
    (f64.const -5.73416000379e+186)
    (f64.const 6.35080584361e+297)
  )
  (f64.const -5.73416000379e+186)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\83\80\80\80\00\02"
  "\00\01\07\b1\80\80\80\00\02\15\66\33\32\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\64\69\76\32\5f\6d\75\6c\32\00"
  "\00\15\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\64\69"
  "\76\32\5f\6d\75\6c\32\00\01\0a\b3\80\80\80\00\02"
  "\90\80\80\80\00\00\20\00\43\00\00\00\40\95\43\00"
  "\00\00\40\94\0b\98\80\80\80\00\00\20\00\44\00\00"
  "\00\00\00\00\00\40\a3\44\00\00\00\00\00\00\00\40"
  "\a2\0b"
)
(assert_return
  (invoke "f32.no_fold_div2_mul2" (f32.const 2.35098856151e-38))
  (f32.const 2.35098870164e-38)
)
(assert_return
  (invoke "f64.no_fold_div2_mul2" (f64.const 4.45014771701e-308))
  (f64.const 4.45014771701e-308)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7c\01\7c\03\82\80\80\80\00\01\00\07\9a\80\80"
  "\80\00\01\16\6e\6f\5f\66\6f\6c\64\5f\64\65\6d\6f"
  "\74\65\5f\70\72\6f\6d\6f\74\65\00\00\0a\8c\80\80"
  "\80\00\01\86\80\80\80\00\00\20\00\b6\bb\0b"
)
(assert_return
  (invoke "no_fold_demote_promote" (f64.const -1.71762972206e-40))
  (f64.const -1.71762757966e-40)
)
(assert_return
  (invoke "no_fold_demote_promote" (f64.const -2.84647755733e-26))
  (f64.const -2.84647761919e-26)
)
(assert_return
  (invoke "no_fold_demote_promote" (f64.const 2.089706997e+32))
  (f64.const 2.08970700445e+32)
)
(assert_return
  (invoke "no_fold_demote_promote" (f64.const -4.70741604161e-27))
  (f64.const -4.70741613316e-27)
)
(assert_return
  (invoke "no_fold_demote_promote" (f64.const 2.3359451498e+31))
  (f64.const 2.33594522245e+31)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7d\01\7d\03\82\80\80\80\00\01\00\07\9a\80\80"
  "\80\00\01\16\6e\6f\5f\66\6f\6c\64\5f\70\72\6f\6d"
  "\6f\74\65\5f\64\65\6d\6f\74\65\00\00\0a\8c\80\80"
  "\80\00\01\86\80\80\80\00\00\20\00\bb\b6\0b"
)
(assert_return_arithmetic_nan
  (invoke "no_fold_promote_demote" (f32.const nan:0x200000))
)
(assert_return (invoke "no_fold_promote_demote" (f32.const 0.)) (f32.const 0.))
(assert_return
  (invoke "no_fold_promote_demote" (f32.const -0.))
  (f32.const -0.)
)
(assert_return
  (invoke "no_fold_promote_demote" (f32.const 1.40129846432e-45))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "no_fold_promote_demote" (f32.const -1.40129846432e-45))
  (f32.const -1.40129846432e-45)
)
(assert_return
  (invoke "no_fold_promote_demote" (f32.const 1.17549421069e-38))
  (f32.const 1.17549421069e-38)
)
(assert_return
  (invoke "no_fold_promote_demote" (f32.const -1.17549421069e-38))
  (f32.const -1.17549421069e-38)
)
(assert_return
  (invoke "no_fold_promote_demote" (f32.const 1.17549435082e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "no_fold_promote_demote" (f32.const -1.17549435082e-38))
  (f32.const -1.17549435082e-38)
)
(assert_return
  (invoke "no_fold_promote_demote" (f32.const 3.40282346639e+38))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "no_fold_promote_demote" (f32.const -3.40282346639e+38))
  (f32.const -3.40282346639e+38)
)
(assert_return
  (invoke "no_fold_promote_demote" (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "no_fold_promote_demote" (f32.const -inf))
  (f32.const -inf)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\02\60"
  "\02\7c\7d\01\7d\60\02\7d\7c\01\7d\03\83\80\80\80"
  "\00\02\00\01\07\b6\80\80\80\00\02\13\6e\6f\5f\64"
  "\65\6d\6f\74\65\5f\6d\69\78\65\64\5f\61\64\64\00"
  "\00\1c\6e\6f\5f\64\65\6d\6f\74\65\5f\6d\69\78\65"
  "\64\5f\61\64\64\5f\63\6f\6d\6d\75\74\65\64\00\01"
  "\0a\9d\80\80\80\00\02\89\80\80\80\00\00\20\00\20"
  "\01\bb\a0\b6\0b\89\80\80\80\00\00\20\00\bb\20\01"
  "\a0\b6\0b"
)
(assert_return
  (invoke "no_demote_mixed_add"
    (f64.const 4.94126652791e-29)
    (f32.const 1.8767182723e-36)
  )
  (f32.const 4.94126667572e-29)
)
(assert_return
  (invoke "no_demote_mixed_add"
    (f64.const 140851523638.)
    (f32.const 401096441856.)
  )
  (f32.const 541947953152.)
)
(assert_return
  (invoke "no_demote_mixed_add"
    (f64.const 2.08311609142e-36)
    (f32.const -6.05009513354e-37)
  )
  (f32.const 1.47810657028e-36)
)
(assert_return
  (invoke "no_demote_mixed_add"
    (f64.const -1.00328275537e-06)
    (f32.const 1.93129179316e-09)
  )
  (f32.const -1.0013515066e-06)
)
(assert_return
  (invoke "no_demote_mixed_add"
    (f64.const -1.38402070358e-06)
    (f32.const -5.20281409101e-13)
  )
  (f32.const -1.384021175e-06)
)
(assert_return
  (invoke "no_demote_mixed_add_commuted"
    (f32.const 1.8767182723e-36)
    (f64.const 4.94126652791e-29)
  )
  (f32.const 4.94126667572e-29)
)
(assert_return
  (invoke "no_demote_mixed_add_commuted"
    (f32.const 401096441856.)
    (f64.const 140851523638.)
  )
  (f32.const 541947953152.)
)
(assert_return
  (invoke "no_demote_mixed_add_commuted"
    (f32.const -6.05009513354e-37)
    (f64.const 2.08311609142e-36)
  )
  (f32.const 1.47810657028e-36)
)
(assert_return
  (invoke "no_demote_mixed_add_commuted"
    (f32.const 1.93129179316e-09)
    (f64.const -1.00328275537e-06)
  )
  (f32.const -1.0013515066e-06)
)
(assert_return
  (invoke "no_demote_mixed_add_commuted"
    (f32.const -5.20281409101e-13)
    (f64.const -1.38402070358e-06)
  )
  (f32.const -1.384021175e-06)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7c\7d\01\7d\03\82\80\80\80\00\01\00\07\97\80"
  "\80\80\00\01\13\6e\6f\5f\64\65\6d\6f\74\65\5f\6d"
  "\69\78\65\64\5f\73\75\62\00\00\0a\8f\80\80\80\00"
  "\01\89\80\80\80\00\00\20\00\20\01\bb\a1\b6\0b"
)
(assert_return
  (invoke "no_demote_mixed_sub"
    (f64.const 7.8699353272e+24)
    (f32.const 4.08634705926e+18)
  )
  (f32.const 7.8699309654e+24)
)
(assert_return
  (invoke "no_demote_mixed_sub"
    (f64.const -1535841968.91)
    (f32.const 239897.28125)
  )
  (f32.const -1536081920.)
)
(assert_return
  (invoke "no_demote_mixed_sub"
    (f64.const -102.194592727)
    (f32.const 0.000394261383917)
  )
  (f32.const -102.194984436)
)
(assert_return
  (invoke "no_demote_mixed_sub"
    (f64.const 5.64547037557e-17)
    (f32.const 5.85107700707e-22)
  )
  (f32.const 5.64541172772e-17)
)
(assert_return
  (invoke "no_demote_mixed_sub"
    (f64.const 27090.3884668)
    (f32.const 63120.890625)
  )
  (f32.const -36030.5039062)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\91\80\80\80\00\10"
  "\00\00\00\00\01\01\01\01\00\00\00\00\01\01\01\01"
  "\07\c1\84\80\80\00\10\21\66\33\32\2e\69\33\32\2e"
  "\6e\6f\5f\66\6f\6c\64\5f\74\72\75\6e\63\5f\73\5f"
  "\63\6f\6e\76\65\72\74\5f\73\00\00\21\66\33\32\2e"
  "\69\33\32\2e\6e\6f\5f\66\6f\6c\64\5f\74\72\75\6e"
  "\63\5f\75\5f\63\6f\6e\76\65\72\74\5f\73\00\01\21"
  "\66\33\32\2e\69\33\32\2e\6e\6f\5f\66\6f\6c\64\5f"
  "\74\72\75\6e\63\5f\73\5f\63\6f\6e\76\65\72\74\5f"
  "\75\00\02\21\66\33\32\2e\69\33\32\2e\6e\6f\5f\66"
  "\6f\6c\64\5f\74\72\75\6e\63\5f\75\5f\63\6f\6e\76"
  "\65\72\74\5f\75\00\03\21\66\36\34\2e\69\33\32\2e"
  "\6e\6f\5f\66\6f\6c\64\5f\74\72\75\6e\63\5f\73\5f"
  "\63\6f\6e\76\65\72\74\5f\73\00\04\21\66\36\34\2e"
  "\69\33\32\2e\6e\6f\5f\66\6f\6c\64\5f\74\72\75\6e"
  "\63\5f\75\5f\63\6f\6e\76\65\72\74\5f\73\00\05\21"
  "\66\36\34\2e\69\33\32\2e\6e\6f\5f\66\6f\6c\64\5f"
  "\74\72\75\6e\63\5f\73\5f\63\6f\6e\76\65\72\74\5f"
  "\75\00\06\21\66\36\34\2e\69\33\32\2e\6e\6f\5f\66"
  "\6f\6c\64\5f\74\72\75\6e\63\5f\75\5f\63\6f\6e\76"
  "\65\72\74\5f\75\00\07\21\66\33\32\2e\69\36\34\2e"
  "\6e\6f\5f\66\6f\6c\64\5f\74\72\75\6e\63\5f\73\5f"
  "\63\6f\6e\76\65\72\74\5f\73\00\08\21\66\33\32\2e"
  "\69\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\74\72\75\6e"
  "\63\5f\75\5f\63\6f\6e\76\65\72\74\5f\73\00\09\21"
  "\66\33\32\2e\69\36\34\2e\6e\6f\5f\66\6f\6c\64\5f"
  "\74\72\75\6e\63\5f\73\5f\63\6f\6e\76\65\72\74\5f"
  "\75\00\0a\21\66\33\32\2e\69\36\34\2e\6e\6f\5f\66"
  "\6f\6c\64\5f\74\72\75\6e\63\5f\75\5f\63\6f\6e\76"
  "\65\72\74\5f\75\00\0b\21\66\36\34\2e\69\36\34\2e"
  "\6e\6f\5f\66\6f\6c\64\5f\74\72\75\6e\63\5f\73\5f"
  "\63\6f\6e\76\65\72\74\5f\73\00\0c\21\66\36\34\2e"
  "\69\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\74\72\75\6e"
  "\63\5f\75\5f\63\6f\6e\76\65\72\74\5f\73\00\0d\21"
  "\66\36\34\2e\69\36\34\2e\6e\6f\5f\66\6f\6c\64\5f"
  "\74\72\75\6e\63\5f\73\5f\63\6f\6e\76\65\72\74\5f"
  "\75\00\0e\21\66\36\34\2e\69\36\34\2e\6e\6f\5f\66"
  "\6f\6c\64\5f\74\72\75\6e\63\5f\75\5f\63\6f\6e\76"
  "\65\72\74\5f\75\00\0f\0a\b1\81\80\80\00\10\86\80"
  "\80\80\00\00\20\00\a8\b2\0b\86\80\80\80\00\00\20"
  "\00\a9\b2\0b\86\80\80\80\00\00\20\00\a8\b3\0b\86"
  "\80\80\80\00\00\20\00\a9\b3\0b\86\80\80\80\00\00"
  "\20\00\aa\b7\0b\86\80\80\80\00\00\20\00\ab\b7\0b"
  "\86\80\80\80\00\00\20\00\aa\b8\0b\86\80\80\80\00"
  "\00\20\00\ab\b8\0b\86\80\80\80\00\00\20\00\ae\b4"
  "\0b\86\80\80\80\00\00\20\00\af\b4\0b\86\80\80\80"
  "\00\00\20\00\ae\b5\0b\86\80\80\80\00\00\20\00\af"
  "\b5\0b\86\80\80\80\00\00\20\00\b0\b9\0b\86\80\80"
  "\80\00\00\20\00\b1\b9\0b\86\80\80\80\00\00\20\00"
  "\b0\ba\0b\86\80\80\80\00\00\20\00\b1\ba\0b"
)
(assert_return
  (invoke "f32.i32.no_fold_trunc_s_convert_s" (f32.const 1.5))
  (f32.const 1.)
)
(assert_return
  (invoke "f32.i32.no_fold_trunc_s_convert_s" (f32.const -1.5))
  (f32.const -1.)
)
(assert_return
  (invoke "f32.i32.no_fold_trunc_u_convert_s" (f32.const 1.5))
  (f32.const 1.)
)
(assert_return
  (invoke "f32.i32.no_fold_trunc_u_convert_s" (f32.const -0.5))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.i32.no_fold_trunc_s_convert_u" (f32.const 1.5))
  (f32.const 1.)
)
(assert_return
  (invoke "f32.i32.no_fold_trunc_s_convert_u" (f32.const -1.5))
  (f32.const 4294967296.)
)
(assert_return
  (invoke "f32.i32.no_fold_trunc_u_convert_u" (f32.const 1.5))
  (f32.const 1.)
)
(assert_return
  (invoke "f32.i32.no_fold_trunc_u_convert_u" (f32.const -0.5))
  (f32.const 0.)
)
(assert_return
  (invoke "f64.i32.no_fold_trunc_s_convert_s" (f64.const 1.5))
  (f64.const 1.)
)
(assert_return
  (invoke "f64.i32.no_fold_trunc_s_convert_s" (f64.const -1.5))
  (f64.const -1.)
)
(assert_return
  (invoke "f64.i32.no_fold_trunc_u_convert_s" (f64.const 1.5))
  (f64.const 1.)
)
(assert_return
  (invoke "f64.i32.no_fold_trunc_u_convert_s" (f64.const -0.5))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.i32.no_fold_trunc_s_convert_u" (f64.const 1.5))
  (f64.const 1.)
)
(assert_return
  (invoke "f64.i32.no_fold_trunc_s_convert_u" (f64.const -1.5))
  (f64.const 4294967295.)
)
(assert_return
  (invoke "f64.i32.no_fold_trunc_u_convert_u" (f64.const 1.5))
  (f64.const 1.)
)
(assert_return
  (invoke "f64.i32.no_fold_trunc_u_convert_u" (f64.const -0.5))
  (f64.const 0.)
)
(assert_return
  (invoke "f32.i64.no_fold_trunc_s_convert_s" (f32.const 1.5))
  (f32.const 1.)
)
(assert_return
  (invoke "f32.i64.no_fold_trunc_s_convert_s" (f32.const -1.5))
  (f32.const -1.)
)
(assert_return
  (invoke "f32.i64.no_fold_trunc_u_convert_s" (f32.const 1.5))
  (f32.const 1.)
)
(assert_return
  (invoke "f32.i64.no_fold_trunc_u_convert_s" (f32.const -0.5))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.i64.no_fold_trunc_s_convert_u" (f32.const 1.5))
  (f32.const 1.)
)
(assert_return
  (invoke "f32.i64.no_fold_trunc_s_convert_u" (f32.const -1.5))
  (f32.const 1.84467440737e+19)
)
(assert_return
  (invoke "f32.i64.no_fold_trunc_u_convert_u" (f32.const 1.5))
  (f32.const 1.)
)
(assert_return
  (invoke "f32.i64.no_fold_trunc_u_convert_u" (f32.const -0.5))
  (f32.const 0.)
)
(assert_return
  (invoke "f64.i64.no_fold_trunc_s_convert_s" (f64.const 1.5))
  (f64.const 1.)
)
(assert_return
  (invoke "f64.i64.no_fold_trunc_s_convert_s" (f64.const -1.5))
  (f64.const -1.)
)
(assert_return
  (invoke "f64.i64.no_fold_trunc_u_convert_s" (f64.const 1.5))
  (f64.const 1.)
)
(assert_return
  (invoke "f64.i64.no_fold_trunc_u_convert_s" (f64.const -0.5))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.i64.no_fold_trunc_s_convert_u" (f64.const 1.5))
  (f64.const 1.)
)
(assert_return
  (invoke "f64.i64.no_fold_trunc_s_convert_u" (f64.const -1.5))
  (f64.const 1.84467440737e+19)
)
(assert_return
  (invoke "f64.i64.no_fold_trunc_u_convert_u" (f64.const 1.5))
  (f64.const 1.)
)
(assert_return
  (invoke "f64.i64.no_fold_trunc_u_convert_u" (f64.const -0.5))
  (f64.const 0.)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\02\7f\7d\00\60\01\7f\01\7d\03\84\80\80\80\00\03"
  "\00\00\01\05\84\80\80\80\00\01\01\01\01\07\96\80"
  "\80\80\00\03\04\69\6e\69\74\00\00\03\72\75\6e\00"
  "\01\05\63\68\65\63\6b\00\02\0a\c5\80\80\80\00\03"
  "\89\80\80\80\00\00\20\00\20\01\38\02\00\0b\a5\80"
  "\80\80\00\01\01\7f\02\40\03\40\20\02\20\02\2a\02"
  "\00\20\01\95\38\02\00\20\02\41\04\6a\21\02\20\02"
  "\20\00\49\0d\00\0b\0b\0b\87\80\80\80\00\00\20\00"
  "\2a\02\00\0b"
)
(invoke "init" (i32.const 0) (f32.const 15.1000003815))
(invoke "init" (i32.const 4) (f32.const 15.1999998093))
(invoke "init" (i32.const 8) (f32.const 15.3000001907))
(invoke "init" (i32.const 12) (f32.const 15.3999996185))
(assert_return (invoke "check" (i32.const 0)) (f32.const 15.1000003815))
(assert_return (invoke "check" (i32.const 4)) (f32.const 15.1999998093))
(assert_return (invoke "check" (i32.const 8)) (f32.const 15.3000001907))
(assert_return (invoke "check" (i32.const 12)) (f32.const 15.3999996185))
(invoke "run" (i32.const 16) (f32.const 3.))
(assert_return (invoke "check" (i32.const 0)) (f32.const 5.03333330154))
(assert_return (invoke "check" (i32.const 4)) (f32.const 5.06666660309))
(assert_return (invoke "check" (i32.const 8)) (f32.const 5.09999990463))
(assert_return (invoke "check" (i32.const 12)) (f32.const 5.13333320618))
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\02\7f\7c\00\60\01\7f\01\7c\03\84\80\80\80\00\03"
  "\00\00\01\05\84\80\80\80\00\01\01\01\01\07\96\80"
  "\80\80\00\03\04\69\6e\69\74\00\00\03\72\75\6e\00"
  "\01\05\63\68\65\63\6b\00\02\0a\c5\80\80\80\00\03"
  "\89\80\80\80\00\00\20\00\20\01\39\03\00\0b\a5\80"
  "\80\80\00\01\01\7f\02\40\03\40\20\02\20\02\2b\03"
  "\00\20\01\a3\39\03\00\20\02\41\08\6a\21\02\20\02"
  "\20\00\49\0d\00\0b\0b\0b\87\80\80\80\00\00\20\00"
  "\2b\03\00\0b"
)
(invoke "init" (i32.const 0) (f64.const 15.1))
(invoke "init" (i32.const 8) (f64.const 15.2))
(invoke "init" (i32.const 16) (f64.const 15.3))
(invoke "init" (i32.const 24) (f64.const 15.4))
(assert_return (invoke "check" (i32.const 0)) (f64.const 15.1))
(assert_return (invoke "check" (i32.const 8)) (f64.const 15.2))
(assert_return (invoke "check" (i32.const 16)) (f64.const 15.3))
(assert_return (invoke "check" (i32.const 24)) (f64.const 15.4))
(invoke "run" (i32.const 32) (f64.const 3.))
(assert_return (invoke "check" (i32.const 0)) (f64.const 5.03333333333))
(assert_return (invoke "check" (i32.const 8)) (f64.const 5.06666666667))
(assert_return (invoke "check" (i32.const 16)) (f64.const 5.1))
(assert_return (invoke "check" (i32.const 24)) (f64.const 5.13333333333))
(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\02\60"
  "\02\7d\7d\01\7f\60\02\7c\7c\01\7f\03\89\80\80\80"
  "\00\08\00\00\00\00\01\01\01\01\07\d1\80\80\80\00"
  "\08\07\66\33\32\2e\75\6c\74\00\00\07\66\33\32\2e"
  "\75\6c\65\00\01\07\66\33\32\2e\75\67\74\00\02\07"
  "\66\33\32\2e\75\67\65\00\03\07\66\36\34\2e\75\6c"
  "\74\00\04\07\66\36\34\2e\75\6c\65\00\05\07\66\36"
  "\34\2e\75\67\74\00\06\07\66\36\34\2e\75\67\65\00"
  "\07\0a\e9\80\80\80\00\08\88\80\80\80\00\00\20\00"
  "\20\01\60\45\0b\88\80\80\80\00\00\20\00\20\01\5e"
  "\45\0b\88\80\80\80\00\00\20\00\20\01\5f\45\0b\88"
  "\80\80\80\00\00\20\00\20\01\5d\45\0b\88\80\80\80"
  "\00\00\20\00\20\01\66\45\0b\88\80\80\80\00\00\20"
  "\00\20\01\64\45\0b\88\80\80\80\00\00\20\00\20\01"
  "\65\45\0b\88\80\80\80\00\00\20\00\20\01\63\45\0b"
)
(assert_return (invoke "f32.ult" (f32.const 3.) (f32.const 2.)) (i32.const 0))
(assert_return (invoke "f32.ult" (f32.const 2.) (f32.const 2.)) (i32.const 0))
(assert_return (invoke "f32.ult" (f32.const 2.) (f32.const 3.)) (i32.const 1))
(assert_return
  (invoke "f32.ult" (f32.const 2.) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return (invoke "f32.ule" (f32.const 3.) (f32.const 2.)) (i32.const 0))
(assert_return (invoke "f32.ule" (f32.const 2.) (f32.const 2.)) (i32.const 1))
(assert_return (invoke "f32.ule" (f32.const 2.) (f32.const 3.)) (i32.const 1))
(assert_return
  (invoke "f32.ule" (f32.const 2.) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return (invoke "f32.ugt" (f32.const 3.) (f32.const 2.)) (i32.const 1))
(assert_return (invoke "f32.ugt" (f32.const 2.) (f32.const 2.)) (i32.const 0))
(assert_return (invoke "f32.ugt" (f32.const 2.) (f32.const 3.)) (i32.const 0))
(assert_return
  (invoke "f32.ugt" (f32.const 2.) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return (invoke "f32.uge" (f32.const 3.) (f32.const 2.)) (i32.const 1))
(assert_return (invoke "f32.uge" (f32.const 2.) (f32.const 2.)) (i32.const 1))
(assert_return (invoke "f32.uge" (f32.const 2.) (f32.const 3.)) (i32.const 0))
(assert_return
  (invoke "f32.uge" (f32.const 2.) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return (invoke "f64.ult" (f64.const 3.) (f64.const 2.)) (i32.const 0))
(assert_return (invoke "f64.ult" (f64.const 2.) (f64.const 2.)) (i32.const 0))
(assert_return (invoke "f64.ult" (f64.const 2.) (f64.const 3.)) (i32.const 1))
(assert_return
  (invoke "f64.ult" (f64.const 2.) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return (invoke "f64.ule" (f64.const 3.) (f64.const 2.)) (i32.const 0))
(assert_return (invoke "f64.ule" (f64.const 2.) (f64.const 2.)) (i32.const 1))
(assert_return (invoke "f64.ule" (f64.const 2.) (f64.const 3.)) (i32.const 1))
(assert_return
  (invoke "f64.ule" (f64.const 2.) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return (invoke "f64.ugt" (f64.const 3.) (f64.const 2.)) (i32.const 1))
(assert_return (invoke "f64.ugt" (f64.const 2.) (f64.const 2.)) (i32.const 0))
(assert_return (invoke "f64.ugt" (f64.const 2.) (f64.const 3.)) (i32.const 0))
(assert_return
  (invoke "f64.ugt" (f64.const 2.) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return (invoke "f64.uge" (f64.const 3.) (f64.const 2.)) (i32.const 1))
(assert_return (invoke "f64.uge" (f64.const 2.) (f64.const 2.)) (i32.const 1))
(assert_return (invoke "f64.uge" (f64.const 2.) (f64.const 3.)) (i32.const 0))
(assert_return
  (invoke "f64.uge" (f64.const 2.) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\02\60"
  "\02\7d\7d\01\7d\60\02\7c\7c\01\7c\03\89\80\80\80"
  "\00\08\00\00\00\00\01\01\01\01\07\c1\81\80\80\00"
  "\08\15\66\33\32\2e\6e\6f\5f\66\6f\6c\64\5f\6c\74"
  "\5f\73\65\6c\65\63\74\00\00\15\66\33\32\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\6c\65\5f\73\65\6c\65\63\74\00"
  "\01\15\66\33\32\2e\6e\6f\5f\66\6f\6c\64\5f\67\74"
  "\5f\73\65\6c\65\63\74\00\02\15\66\33\32\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\67\65\5f\73\65\6c\65\63\74\00"
  "\03\15\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\6c\74"
  "\5f\73\65\6c\65\63\74\00\04\15\66\36\34\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\6c\65\5f\73\65\6c\65\63\74\00"
  "\05\15\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\67\74"
  "\5f\73\65\6c\65\63\74\00\06\15\66\36\34\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\67\65\5f\73\65\6c\65\63\74\00"
  "\07\0a\89\81\80\80\00\08\8c\80\80\80\00\00\20\00"
  "\20\01\20\00\20\01\5d\1b\0b\8c\80\80\80\00\00\20"
  "\00\20\01\20\00\20\01\5f\1b\0b\8c\80\80\80\00\00"
  "\20\00\20\01\20\00\20\01\5e\1b\0b\8c\80\80\80\00"
  "\00\20\00\20\01\20\00\20\01\60\1b\0b\8c\80\80\80"
  "\00\00\20\00\20\01\20\00\20\01\63\1b\0b\8c\80\80"
  "\80\00\00\20\00\20\01\20\00\20\01\65\1b\0b\8c\80"
  "\80\80\00\00\20\00\20\01\20\00\20\01\64\1b\0b\8c"
  "\80\80\80\00\00\20\00\20\01\20\00\20\01\66\1b\0b"
)
(assert_return
  (invoke "f32.no_fold_lt_select" (f32.const 0.) (f32.const nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "f32.no_fold_lt_select" (f32.const nan:0x400000) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_lt_select" (f32.const 0.) (f32.const -0.))
  (f32.const -0.)
)
(assert_return
  (invoke "f32.no_fold_lt_select" (f32.const -0.) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_le_select" (f32.const 0.) (f32.const nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "f32.no_fold_le_select" (f32.const nan:0x400000) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_le_select" (f32.const 0.) (f32.const -0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_le_select" (f32.const -0.) (f32.const 0.))
  (f32.const -0.)
)
(assert_return
  (invoke "f32.no_fold_gt_select" (f32.const 0.) (f32.const nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "f32.no_fold_gt_select" (f32.const nan:0x400000) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_gt_select" (f32.const 0.) (f32.const -0.))
  (f32.const -0.)
)
(assert_return
  (invoke "f32.no_fold_gt_select" (f32.const -0.) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_ge_select" (f32.const 0.) (f32.const nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "f32.no_fold_ge_select" (f32.const nan:0x400000) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_ge_select" (f32.const 0.) (f32.const -0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_ge_select" (f32.const -0.) (f32.const 0.))
  (f32.const -0.)
)
(assert_return
  (invoke "f64.no_fold_lt_select"
    (f64.const 0.)
    (f64.const nan:0x8000000000000)
  )
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "f64.no_fold_lt_select"
    (f64.const nan:0x8000000000000)
    (f64.const 0.)
  )
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_lt_select" (f64.const 0.) (f64.const -0.))
  (f64.const -0.)
)
(assert_return
  (invoke "f64.no_fold_lt_select" (f64.const -0.) (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_le_select"
    (f64.const 0.)
    (f64.const nan:0x8000000000000)
  )
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "f64.no_fold_le_select"
    (f64.const nan:0x8000000000000)
    (f64.const 0.)
  )
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_le_select" (f64.const 0.) (f64.const -0.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_le_select" (f64.const -0.) (f64.const 0.))
  (f64.const -0.)
)
(assert_return
  (invoke "f64.no_fold_gt_select"
    (f64.const 0.)
    (f64.const nan:0x8000000000000)
  )
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "f64.no_fold_gt_select"
    (f64.const nan:0x8000000000000)
    (f64.const 0.)
  )
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_gt_select" (f64.const 0.) (f64.const -0.))
  (f64.const -0.)
)
(assert_return
  (invoke "f64.no_fold_gt_select" (f64.const -0.) (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_ge_select"
    (f64.const 0.)
    (f64.const nan:0x8000000000000)
  )
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "f64.no_fold_ge_select"
    (f64.const nan:0x8000000000000)
    (f64.const 0.)
  )
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_ge_select" (f64.const 0.) (f64.const -0.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_ge_select" (f64.const -0.) (f64.const 0.))
  (f64.const -0.)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\02\60"
  "\02\7d\7d\01\7d\60\02\7c\7c\01\7c\03\89\80\80\80"
  "\00\08\00\00\00\00\01\01\01\01\07\a1\81\80\80\00"
  "\08\11\66\33\32\2e\6e\6f\5f\66\6f\6c\64\5f\6c\74"
  "\5f\69\66\00\00\11\66\33\32\2e\6e\6f\5f\66\6f\6c"
  "\64\5f\6c\65\5f\69\66\00\01\11\66\33\32\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\67\74\5f\69\66\00\02\11\66\33"
  "\32\2e\6e\6f\5f\66\6f\6c\64\5f\67\65\5f\69\66\00"
  "\03\11\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\6c\74"
  "\5f\69\66\00\04\11\66\36\34\2e\6e\6f\5f\66\6f\6c"
  "\64\5f\6c\65\5f\69\66\00\05\11\66\36\34\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\67\74\5f\69\66\00\06\11\66\36"
  "\34\2e\6e\6f\5f\66\6f\6c\64\5f\67\65\5f\69\66\00"
  "\07\0a\a1\81\80\80\00\08\8f\80\80\80\00\00\20\00"
  "\20\01\5d\04\7d\20\00\05\20\01\0b\0b\8f\80\80\80"
  "\00\00\20\00\20\01\5f\04\7d\20\00\05\20\01\0b\0b"
  "\8f\80\80\80\00\00\20\00\20\01\5e\04\7d\20\00\05"
  "\20\01\0b\0b\8f\80\80\80\00\00\20\00\20\01\60\04"
  "\7d\20\00\05\20\01\0b\0b\8f\80\80\80\00\00\20\00"
  "\20\01\63\04\7c\20\00\05\20\01\0b\0b\8f\80\80\80"
  "\00\00\20\00\20\01\65\04\7c\20\00\05\20\01\0b\0b"
  "\8f\80\80\80\00\00\20\00\20\01\64\04\7c\20\00\05"
  "\20\01\0b\0b\8f\80\80\80\00\00\20\00\20\01\66\04"
  "\7c\20\00\05\20\01\0b\0b"
)
(assert_return
  (invoke "f32.no_fold_lt_if" (f32.const 0.) (f32.const nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "f32.no_fold_lt_if" (f32.const nan:0x400000) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_lt_if" (f32.const 0.) (f32.const -0.))
  (f32.const -0.)
)
(assert_return
  (invoke "f32.no_fold_lt_if" (f32.const -0.) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_le_if" (f32.const 0.) (f32.const nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "f32.no_fold_le_if" (f32.const nan:0x400000) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_le_if" (f32.const 0.) (f32.const -0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_le_if" (f32.const -0.) (f32.const 0.))
  (f32.const -0.)
)
(assert_return
  (invoke "f32.no_fold_gt_if" (f32.const 0.) (f32.const nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "f32.no_fold_gt_if" (f32.const nan:0x400000) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_gt_if" (f32.const 0.) (f32.const -0.))
  (f32.const -0.)
)
(assert_return
  (invoke "f32.no_fold_gt_if" (f32.const -0.) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_ge_if" (f32.const 0.) (f32.const nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "f32.no_fold_ge_if" (f32.const nan:0x400000) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_ge_if" (f32.const 0.) (f32.const -0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_ge_if" (f32.const -0.) (f32.const 0.))
  (f32.const -0.)
)
(assert_return
  (invoke "f64.no_fold_lt_if" (f64.const 0.) (f64.const nan:0x8000000000000))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "f64.no_fold_lt_if" (f64.const nan:0x8000000000000) (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_lt_if" (f64.const 0.) (f64.const -0.))
  (f64.const -0.)
)
(assert_return
  (invoke "f64.no_fold_lt_if" (f64.const -0.) (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_le_if" (f64.const 0.) (f64.const nan:0x8000000000000))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "f64.no_fold_le_if" (f64.const nan:0x8000000000000) (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_le_if" (f64.const 0.) (f64.const -0.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_le_if" (f64.const -0.) (f64.const 0.))
  (f64.const -0.)
)
(assert_return
  (invoke "f64.no_fold_gt_if" (f64.const 0.) (f64.const nan:0x8000000000000))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "f64.no_fold_gt_if" (f64.const nan:0x8000000000000) (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_gt_if" (f64.const 0.) (f64.const -0.))
  (f64.const -0.)
)
(assert_return
  (invoke "f64.no_fold_gt_if" (f64.const -0.) (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_ge_if" (f64.const 0.) (f64.const nan:0x8000000000000))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "f64.no_fold_ge_if" (f64.const nan:0x8000000000000) (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_ge_if" (f64.const 0.) (f64.const -0.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_ge_if" (f64.const -0.) (f64.const 0.))
  (f64.const -0.)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\89\80\80\80\00\08"
  "\00\00\00\00\01\01\01\01\07\f9\81\80\80\00\08\1c"
  "\66\33\32\2e\6e\6f\5f\66\6f\6c\64\5f\6c\74\5f\73"
  "\65\6c\65\63\74\5f\74\6f\5f\61\62\73\00\00\1c\66"
  "\33\32\2e\6e\6f\5f\66\6f\6c\64\5f\6c\65\5f\73\65"
  "\6c\65\63\74\5f\74\6f\5f\61\62\73\00\01\1c\66\33"
  "\32\2e\6e\6f\5f\66\6f\6c\64\5f\67\74\5f\73\65\6c"
  "\65\63\74\5f\74\6f\5f\61\62\73\00\02\1c\66\33\32"
  "\2e\6e\6f\5f\66\6f\6c\64\5f\67\65\5f\73\65\6c\65"
  "\63\74\5f\74\6f\5f\61\62\73\00\03\1c\66\36\34\2e"
  "\6e\6f\5f\66\6f\6c\64\5f\6c\74\5f\73\65\6c\65\63"
  "\74\5f\74\6f\5f\61\62\73\00\04\1c\66\36\34\2e\6e"
  "\6f\5f\66\6f\6c\64\5f\6c\65\5f\73\65\6c\65\63\74"
  "\5f\74\6f\5f\61\62\73\00\05\1c\66\36\34\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\67\74\5f\73\65\6c\65\63\74\5f"
  "\74\6f\5f\61\62\73\00\06\1c\66\36\34\2e\6e\6f\5f"
  "\66\6f\6c\64\5f\67\65\5f\73\65\6c\65\63\74\5f\74"
  "\6f\5f\61\62\73\00\07\0a\b9\81\80\80\00\08\90\80"
  "\80\80\00\00\20\00\8c\20\00\20\00\43\00\00\00\00"
  "\5d\1b\0b\90\80\80\80\00\00\20\00\8c\20\00\20\00"
  "\43\00\00\00\80\5f\1b\0b\90\80\80\80\00\00\20\00"
  "\20\00\8c\20\00\43\00\00\00\80\5e\1b\0b\90\80\80"
  "\80\00\00\20\00\20\00\8c\20\00\43\00\00\00\00\60"
  "\1b\0b\94\80\80\80\00\00\20\00\9a\20\00\20\00\44"
  "\00\00\00\00\00\00\00\00\63\1b\0b\94\80\80\80\00"
  "\00\20\00\9a\20\00\20\00\44\00\00\00\00\00\00\00"
  "\80\65\1b\0b\94\80\80\80\00\00\20\00\20\00\9a\20"
  "\00\44\00\00\00\00\00\00\00\80\64\1b\0b\94\80\80"
  "\80\00\00\20\00\20\00\9a\20\00\44\00\00\00\00\00"
  "\00\00\00\66\1b\0b"
)
(assert_return
  (invoke "f32.no_fold_lt_select_to_abs" (f32.const nan:0x200000))
  (f32.const nan:0x200000)
)
(assert_return
  (invoke "f32.no_fold_lt_select_to_abs" (f32.const -nan:0x400000))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "f32.no_fold_lt_select_to_abs" (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_lt_select_to_abs" (f32.const -0.))
  (f32.const -0.)
)
(assert_return
  (invoke "f32.no_fold_le_select_to_abs" (f32.const nan:0x200000))
  (f32.const nan:0x200000)
)
(assert_return
  (invoke "f32.no_fold_le_select_to_abs" (f32.const -nan:0x400000))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "f32.no_fold_le_select_to_abs" (f32.const 0.))
  (f32.const -0.)
)
(assert_return
  (invoke "f32.no_fold_le_select_to_abs" (f32.const -0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_gt_select_to_abs" (f32.const nan:0x200000))
  (f32.const -nan:0x200000)
)
(assert_return
  (invoke "f32.no_fold_gt_select_to_abs" (f32.const -nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "f32.no_fold_gt_select_to_abs" (f32.const 0.))
  (f32.const -0.)
)
(assert_return
  (invoke "f32.no_fold_gt_select_to_abs" (f32.const -0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_ge_select_to_abs" (f32.const nan:0x200000))
  (f32.const -nan:0x200000)
)
(assert_return
  (invoke "f32.no_fold_ge_select_to_abs" (f32.const -nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "f32.no_fold_ge_select_to_abs" (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_ge_select_to_abs" (f32.const -0.))
  (f32.const -0.)
)
(assert_return
  (invoke "f64.no_fold_lt_select_to_abs" (f64.const nan:0x4000000000000))
  (f64.const nan:0x4000000000000)
)
(assert_return
  (invoke "f64.no_fold_lt_select_to_abs" (f64.const -nan:0x8000000000000))
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "f64.no_fold_lt_select_to_abs" (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_lt_select_to_abs" (f64.const -0.))
  (f64.const -0.)
)
(assert_return
  (invoke "f64.no_fold_le_select_to_abs" (f64.const nan:0x4000000000000))
  (f64.const nan:0x4000000000000)
)
(assert_return
  (invoke "f64.no_fold_le_select_to_abs" (f64.const -nan:0x8000000000000))
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "f64.no_fold_le_select_to_abs" (f64.const 0.))
  (f64.const -0.)
)
(assert_return
  (invoke "f64.no_fold_le_select_to_abs" (f64.const -0.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_gt_select_to_abs" (f64.const nan:0x4000000000000))
  (f64.const -nan:0x4000000000000)
)
(assert_return
  (invoke "f64.no_fold_gt_select_to_abs" (f64.const -nan:0x8000000000000))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "f64.no_fold_gt_select_to_abs" (f64.const 0.))
  (f64.const -0.)
)
(assert_return
  (invoke "f64.no_fold_gt_select_to_abs" (f64.const -0.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_ge_select_to_abs" (f64.const nan:0x4000000000000))
  (f64.const -nan:0x4000000000000)
)
(assert_return
  (invoke "f64.no_fold_ge_select_to_abs" (f64.const -nan:0x8000000000000))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "f64.no_fold_ge_select_to_abs" (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_ge_select_to_abs" (f64.const -0.))
  (f64.const -0.)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\89\80\80\80\00\08"
  "\00\00\00\00\01\01\01\01\07\d9\81\80\80\00\08\18"
  "\66\33\32\2e\6e\6f\5f\66\6f\6c\64\5f\6c\74\5f\69"
  "\66\5f\74\6f\5f\61\62\73\00\00\18\66\33\32\2e\6e"
  "\6f\5f\66\6f\6c\64\5f\6c\65\5f\69\66\5f\74\6f\5f"
  "\61\62\73\00\01\18\66\33\32\2e\6e\6f\5f\66\6f\6c"
  "\64\5f\67\74\5f\69\66\5f\74\6f\5f\61\62\73\00\02"
  "\18\66\33\32\2e\6e\6f\5f\66\6f\6c\64\5f\67\65\5f"
  "\69\66\5f\74\6f\5f\61\62\73\00\03\18\66\36\34\2e"
  "\6e\6f\5f\66\6f\6c\64\5f\6c\74\5f\69\66\5f\74\6f"
  "\5f\61\62\73\00\04\18\66\36\34\2e\6e\6f\5f\66\6f"
  "\6c\64\5f\6c\65\5f\69\66\5f\74\6f\5f\61\62\73\00"
  "\05\18\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\67\74"
  "\5f\69\66\5f\74\6f\5f\61\62\73\00\06\18\66\36\34"
  "\2e\6e\6f\5f\66\6f\6c\64\5f\67\65\5f\69\66\5f\74"
  "\6f\5f\61\62\73\00\07\0a\d1\81\80\80\00\08\93\80"
  "\80\80\00\00\20\00\43\00\00\00\00\5d\04\7d\20\00"
  "\8c\05\20\00\0b\0b\93\80\80\80\00\00\20\00\43\00"
  "\00\00\80\5f\04\7d\20\00\8c\05\20\00\0b\0b\93\80"
  "\80\80\00\00\20\00\43\00\00\00\80\5e\04\7d\20\00"
  "\05\20\00\8c\0b\0b\93\80\80\80\00\00\20\00\43\00"
  "\00\00\00\60\04\7d\20\00\05\20\00\8c\0b\0b\97\80"
  "\80\80\00\00\20\00\44\00\00\00\00\00\00\00\00\63"
  "\04\7c\20\00\9a\05\20\00\0b\0b\97\80\80\80\00\00"
  "\20\00\44\00\00\00\00\00\00\00\80\65\04\7c\20\00"
  "\9a\05\20\00\0b\0b\97\80\80\80\00\00\20\00\44\00"
  "\00\00\00\00\00\00\80\64\04\7c\20\00\05\20\00\9a"
  "\0b\0b\97\80\80\80\00\00\20\00\44\00\00\00\00\00"
  "\00\00\00\66\04\7c\20\00\05\20\00\9a\0b\0b"
)
(assert_return
  (invoke "f32.no_fold_lt_if_to_abs" (f32.const nan:0x200000))
  (f32.const nan:0x200000)
)
(assert_return
  (invoke "f32.no_fold_lt_if_to_abs" (f32.const -nan:0x400000))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "f32.no_fold_lt_if_to_abs" (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_lt_if_to_abs" (f32.const -0.))
  (f32.const -0.)
)
(assert_return
  (invoke "f32.no_fold_le_if_to_abs" (f32.const nan:0x200000))
  (f32.const nan:0x200000)
)
(assert_return
  (invoke "f32.no_fold_le_if_to_abs" (f32.const -nan:0x400000))
  (f32.const -nan:0x400000)
)
(assert_return
  (invoke "f32.no_fold_le_if_to_abs" (f32.const 0.))
  (f32.const -0.)
)
(assert_return
  (invoke "f32.no_fold_le_if_to_abs" (f32.const -0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_gt_if_to_abs" (f32.const nan:0x200000))
  (f32.const -nan:0x200000)
)
(assert_return
  (invoke "f32.no_fold_gt_if_to_abs" (f32.const -nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "f32.no_fold_gt_if_to_abs" (f32.const 0.))
  (f32.const -0.)
)
(assert_return
  (invoke "f32.no_fold_gt_if_to_abs" (f32.const -0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_ge_if_to_abs" (f32.const nan:0x200000))
  (f32.const -nan:0x200000)
)
(assert_return
  (invoke "f32.no_fold_ge_if_to_abs" (f32.const -nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "f32.no_fold_ge_if_to_abs" (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_ge_if_to_abs" (f32.const -0.))
  (f32.const -0.)
)
(assert_return
  (invoke "f64.no_fold_lt_if_to_abs" (f64.const nan:0x4000000000000))
  (f64.const nan:0x4000000000000)
)
(assert_return
  (invoke "f64.no_fold_lt_if_to_abs" (f64.const -nan:0x8000000000000))
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "f64.no_fold_lt_if_to_abs" (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_lt_if_to_abs" (f64.const -0.))
  (f64.const -0.)
)
(assert_return
  (invoke "f64.no_fold_le_if_to_abs" (f64.const nan:0x4000000000000))
  (f64.const nan:0x4000000000000)
)
(assert_return
  (invoke "f64.no_fold_le_if_to_abs" (f64.const -nan:0x8000000000000))
  (f64.const -nan:0x8000000000000)
)
(assert_return
  (invoke "f64.no_fold_le_if_to_abs" (f64.const 0.))
  (f64.const -0.)
)
(assert_return
  (invoke "f64.no_fold_le_if_to_abs" (f64.const -0.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_gt_if_to_abs" (f64.const nan:0x4000000000000))
  (f64.const -nan:0x4000000000000)
)
(assert_return
  (invoke "f64.no_fold_gt_if_to_abs" (f64.const -nan:0x8000000000000))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "f64.no_fold_gt_if_to_abs" (f64.const 0.))
  (f64.const -0.)
)
(assert_return
  (invoke "f64.no_fold_gt_if_to_abs" (f64.const -0.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_ge_if_to_abs" (f64.const nan:0x4000000000000))
  (f64.const -nan:0x4000000000000)
)
(assert_return
  (invoke "f64.no_fold_ge_if_to_abs" (f64.const -nan:0x8000000000000))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "f64.no_fold_ge_if_to_abs" (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_ge_if_to_abs" (f64.const -0.))
  (f64.const -0.)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\89\80\80\80\00\02\60"
  "\00\01\7d\60\00\01\7c\03\83\80\80\80\00\02\00\01"
  "\07\b7\80\80\80\00\02\18\66\33\32\2e\69\6e\63\6f"
  "\72\72\65\63\74\5f\63\6f\72\72\65\63\74\69\6f\6e"
  "\00\00\18\66\36\34\2e\69\6e\63\6f\72\72\65\63\74"
  "\5f\63\6f\72\72\65\63\74\69\6f\6e\00\01\0a\cd\80"
  "\80\80\00\02\99\80\80\80\00\00\43\be\9f\aa\3f\43"
  "\cd\cc\9c\3f\92\43\be\9f\aa\3f\93\43\cd\cc\9c\3f"
  "\93\0b\a9\80\80\80\00\00\44\87\16\d9\ce\f7\53\f5"
  "\3f\44\9a\99\99\99\99\99\f3\3f\a0\44\87\16\d9\ce"
  "\f7\53\f5\3f\a1\44\9a\99\99\99\99\99\f3\3f\a1\0b"
)
(assert_return
  (invoke "f32.incorrect_correction")
  (f32.const 1.19209289551e-07)
)
(assert_return
  (invoke "f64.incorrect_correction")
  (f64.const -2.22044604925e-16)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7d\03\82\80\80\80\00\01\00\07\8d\80\80\80"
  "\00\01\09\63\61\6c\63\75\6c\61\74\65\00\00\0a\ce"
  "\80\80\80\00\01\c8\80\80\80\00\01\05\7d\43\00\40"
  "\1c\43\21\00\43\55\55\50\43\21\01\43\15\c7\e3\3f"
  "\21\02\20\01\8c\20\00\94\20\00\20\02\94\20\01\93"
  "\95\21\03\20\01\8c\20\00\94\20\00\20\02\94\20\01"
  "\93\95\21\04\02\40\20\03\20\04\5b\0d\00\00\0b\20"
  "\04\0b"
)
(assert_return (invoke "calculate") (f32.const -466.926849365))
(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7c\03\82\80\80\80\00\01\00\07\8d\80\80\80"
  "\00\01\09\63\61\6c\63\75\6c\61\74\65\00\00\0a\da"
  "\80\80\80\00\01\d4\80\80\80\00\01\05\7c\44\00\00"
  "\00\00\00\88\63\40\21\00\44\4b\06\ab\aa\aa\0a\6a"
  "\40\21\01\44\96\d0\e3\aa\e2\78\fc\3f\21\02\20\01"
  "\9a\20\00\a2\20\00\20\02\a2\20\01\a1\a3\21\03\20"
  "\01\9a\20\00\a2\20\00\20\02\a2\20\01\a1\a3\21\04"
  "\02\40\20\03\20\04\61\0d\00\00\0b\20\04\0b"
)
(assert_return (invoke "calculate") (f64.const -466.926956302))
(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7d\01\7d\03\82\80\80\80\00\01\00\07\90\80\80"
  "\80\00\01\0c\6c\6c\76\6d\5f\70\72\32\36\37\34\36"
  "\00\00\0a\96\80\80\80\00\01\90\80\80\80\00\00\43"
  "\00\00\00\00\43\00\00\00\80\20\00\93\93\0b"
)
(assert_return (invoke "llvm_pr26746" (f32.const -0.)) (f32.const 0.))
(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7d\03\82\80\80\80\00\01\00\07\90\80\80"
  "\80\00\01\0c\6c\6c\76\6d\5f\70\72\32\37\31\35\33"
  "\00\00\0a\98\80\80\80\00\01\92\80\80\80\00\00\20"
  "\00\41\ff\ff\ff\ff\00\71\b2\43\00\00\00\cb\92\0b"
)
(assert_return
  (invoke "llvm_pr27153" (i32.const 33554434))
  (f32.const 25165824.)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7f\7f\01\7d\03\82\80\80\80\00\01\00\07\90\80"
  "\80\80\00\01\0c\6c\6c\76\6d\5f\70\72\32\37\30\33"
  "\36\00\00\0a\9b\80\80\80\00\01\95\80\80\80\00\00"
  "\20\00\41\cb\ff\87\74\72\b2\20\01\41\80\80\90\07"
  "\71\b2\92\0b"
)
(assert_return
  (invoke "llvm_pr27036" (i32.const -25034805) (i32.const 14942208))
  (f32.const -10092596.)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\97\80\80\80\00\03\60"
  "\04\7c\7c\7c\7c\01\7c\60\03\7c\7c\7c\01\7c\60\03"
  "\7d\7d\7d\01\7d\03\84\80\80\80\00\03\00\01\02\07"
  "\a2\80\80\80\00\03\08\74\68\65\70\61\73\74\30\00"
  "\00\08\74\68\65\70\61\73\74\31\00\01\08\74\68\65"
  "\70\61\73\74\32\00\02\0a\b1\80\80\80\00\03\8d\80"
  "\80\80\00\00\20\00\20\01\a2\20\02\20\03\a2\a3\0b"
  "\8a\80\80\80\00\00\20\00\20\01\a2\20\02\a1\0b\8a"
  "\80\80\80\00\00\20\00\20\01\94\20\02\94\0b"
)
(assert_return
  (invoke "thepast0"
    (f64.const 4.45014771701e-308)
    (f64.const 1.)
    (f64.const 2.)
    (f64.const 0.5)
  )
  (f64.const 4.45014771701e-308)
)
(assert_return
  (invoke "thepast1"
    (f64.const 5.55111512313e-17)
    (f64.const 1.)
    (f64.const 5.55111512313e-17)
  )
  (f64.const -6.16297582204e-33)
)
(assert_return
  (invoke "thepast2"
    (f32.const 2.35098870164e-38)
    (f32.const 0.5)
    (f32.const 1.)
  )
  (f32.const 1.17549435082e-38)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7d\01\7d\03\82\80\80\80\00\01\00\07\8b\80\80"
  "\80\00\01\07\69\6e\76\65\72\73\65\00\00\0a\90\80"
  "\80\80\00\01\8a\80\80\80\00\00\43\00\00\80\3f\20"
  "\00\95\0b"
)
(assert_return (invoke "inverse" (f32.const 96.)) (f32.const 0.0104166669771))
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\83\80\80\80\00\02"
  "\00\01\07\a7\80\80\80\00\02\10\66\33\32\5f\73\71"
  "\72\74\5f\6d\69\6e\75\73\5f\32\00\00\10\66\36\34"
  "\5f\73\71\72\74\5f\6d\69\6e\75\73\5f\32\00\01\0a"
  "\a5\80\80\80\00\02\8b\80\80\80\00\00\20\00\91\43"
  "\00\00\00\40\93\0b\8f\80\80\80\00\00\20\00\9f\44"
  "\00\00\00\00\00\00\00\40\a1\0b"
)
(assert_return (invoke "f32_sqrt_minus_2" (f32.const 4.)) (f32.const 0.))
(assert_return (invoke "f64_sqrt_minus_2" (f64.const 4.)) (f64.const 0.))
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\83\80\80\80\00\02"
  "\00\01\07\b5\80\80\80\00\02\17\66\33\32\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\72\65\63\69\70\5f\72\65\63\69"
  "\70\00\00\17\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f"
  "\72\65\63\69\70\5f\72\65\63\69\70\00\01\0a\b3\80"
  "\80\80\00\02\90\80\80\80\00\00\43\00\00\80\3f\43"
  "\00\00\80\3f\20\00\95\95\0b\98\80\80\80\00\00\44"
  "\00\00\00\00\00\00\f0\3f\44\00\00\00\00\00\00\f0"
  "\3f\20\00\a3\a3\0b"
)
(assert_return
  (invoke "f32.no_fold_recip_recip" (f32.const -7.04357879987e+19))
  (f32.const -7.04357836006e+19)
)
(assert_return
  (invoke "f32.no_fold_recip_recip" (f32.const 1.24661006725e-23))
  (f32.const 1.24660998836e-23)
)
(assert_return
  (invoke "f32.no_fold_recip_recip" (f32.const 9.71845454401e-20))
  (f32.const 9.71845519024e-20)
)
(assert_return
  (invoke "f32.no_fold_recip_recip" (f32.const -30.4007587433))
  (f32.const -30.4007606506)
)
(assert_return
  (invoke "f32.no_fold_recip_recip" (f32.const 2.33165919039e+21))
  (f32.const 2.33165904965e+21)
)
(assert_return
  (invoke "f32.no_fold_recip_recip" (f32.const -0.))
  (f32.const -0.)
)
(assert_return (invoke "f32.no_fold_recip_recip" (f32.const 0.)) (f32.const 0.))
(assert_return
  (invoke "f32.no_fold_recip_recip" (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "f32.no_fold_recip_recip" (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "f64.no_fold_recip_recip" (f64.const -6.57971534363e+44))
  (f64.const -6.57971534363e+44)
)
(assert_return
  (invoke "f64.no_fold_recip_recip" (f64.const -1.44246931869e+20))
  (f64.const -1.44246931869e+20)
)
(assert_return
  (invoke "f64.no_fold_recip_recip" (f64.const 1.84994689206e+50))
  (f64.const 1.84994689206e+50)
)
(assert_return
  (invoke "f64.no_fold_recip_recip" (f64.const 5.77958428801e-207))
  (f64.const 5.77958428801e-207)
)
(assert_return
  (invoke "f64.no_fold_recip_recip" (f64.const 5.15011786961e+271))
  (f64.const 5.15011786961e+271)
)
(assert_return
  (invoke "f64.no_fold_recip_recip" (f64.const -0.))
  (f64.const -0.)
)
(assert_return (invoke "f64.no_fold_recip_recip" (f64.const 0.)) (f64.const 0.))
(assert_return
  (invoke "f64.no_fold_recip_recip" (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "f64.no_fold_recip_recip" (f64.const inf))
  (f64.const inf)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\02\60"
  "\02\7d\7d\01\7d\60\02\7c\7c\01\7c\03\83\80\80\80"
  "\00\02\00\01\07\bb\80\80\80\00\02\1a\66\33\32\2e"
  "\6e\6f\5f\61\6c\67\65\62\72\61\69\63\5f\66\61\63"
  "\74\6f\72\69\6e\67\00\00\1a\66\36\34\2e\6e\6f\5f"
  "\61\6c\67\65\62\72\61\69\63\5f\66\61\63\74\6f\72"
  "\69\6e\67\00\01\0a\a5\80\80\80\00\02\8d\80\80\80"
  "\00\00\20\00\20\01\92\20\00\20\01\93\94\0b\8d\80"
  "\80\80\00\00\20\00\20\01\a0\20\00\20\01\a1\a2\0b"
)
(assert_return
  (invoke "f32.no_algebraic_factoring"
    (f32.const -5.37118646541e-17)
    (f32.const 9.74432790571e-17)
  )
  (f32.const -6.61022864732e-33)
)
(assert_return
  (invoke "f32.no_algebraic_factoring"
    (f32.const -19756732.)
    (f32.const 32770204.)
  )
  (f32.const -6.83557802476e+14)
)
(assert_return
  (invoke "f32.no_algebraic_factoring"
    (f32.const 5.23141487002e+13)
    (f32.const -1.45309984358e+14)
  )
  (f32.const -1.83782213555e+28)
)
(assert_return
  (invoke "f32.no_algebraic_factoring"
    (f32.const 195260.375)
    (f32.const -227.757232666)
  )
  (f32.const 38126563328.)
)
(assert_return
  (invoke "f32.no_algebraic_factoring"
    (f32.const -237.487060547)
    (f32.const -972341.5)
  )
  (f32.const -945447960576.)
)
(assert_return
  (invoke "f64.no_algebraic_factoring"
    (f64.const 9.63972033595e-144)
    (f64.const 8.01917544361e-140)
  )
  (f64.const -6.43071738661e-279)
)
(assert_return
  (invoke "f64.no_algebraic_factoring"
    (f64.const 5.16606659039e-114)
    (f64.const 1.49433331589e-120)
  )
  (f64.const 2.66882440164e-227)
)
(assert_return
  (invoke "f64.no_algebraic_factoring"
    (f64.const -2.86613587052e-114)
    (f64.const -1.21143552543e-111)
  )
  (f64.const -1.46756781753e-222)
)
(assert_return
  (invoke "f64.no_algebraic_factoring"
    (f64.const -1.29209928101e+54)
    (f64.const 6.62717187728e+56)
  )
  (f64.const -4.3919240139e+113)
)
(assert_return
  (invoke "f64.no_algebraic_factoring"
    (f64.const 2.6242795689e+34)
    (f64.const -1.62502339861e+27)
  )
  (f64.const 6.88684325575e+68)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\02\60"
  "\02\7d\7d\01\7d\60\02\7c\7c\01\7c\03\83\80\80\80"
  "\00\02\00\01\07\bb\80\80\80\00\02\1a\66\33\32\2e"
  "\6e\6f\5f\61\6c\67\65\62\72\61\69\63\5f\66\61\63"
  "\74\6f\72\69\6e\67\00\00\1a\66\36\34\2e\6e\6f\5f"
  "\61\6c\67\65\62\72\61\69\63\5f\66\61\63\74\6f\72"
  "\69\6e\67\00\01\0a\a5\80\80\80\00\02\8d\80\80\80"
  "\00\00\20\00\20\00\94\20\01\20\01\94\93\0b\8d\80"
  "\80\80\00\00\20\00\20\00\a2\20\01\20\01\a2\a1\0b"
)
(assert_return
  (invoke "f32.no_algebraic_factoring"
    (f32.const 2.21029961098e-14)
    (f32.const 3.14652752638e-12)
  )
  (f32.const -9.90014756254e-24)
)
(assert_return
  (invoke "f32.no_algebraic_factoring"
    (f32.const -3.28946076877e+12)
    (f32.const -15941538816.)
  )
  (f32.const 1.08202986009e+25)
)
(assert_return
  (invoke "f32.no_algebraic_factoring"
    (f32.const 0.000364975421689)
    (f32.const -0.000161537143867)
  )
  (f32.const 1.0711280396e-07)
)
(assert_return
  (invoke "f32.no_algebraic_factoring"
    (f32.const 6.53832660214e-14)
    (f32.const -2.74127729115e-14)
  )
  (f32.const 3.52351117404e-27)
)
(assert_return
  (invoke "f32.no_algebraic_factoring"
    (f32.const 3.60968191004e+15)
    (f32.const -5.26010442947e+15)
  )
  (f32.const -1.46388960479e+31)
)
(assert_return
  (invoke "f64.no_algebraic_factoring"
    (f64.const 2.1364045435e+107)
    (f64.const -2.92858755839e+101)
  )
  (f64.const 4.56422437347e+214)
)
(assert_return
  (invoke "f64.no_algebraic_factoring"
    (f64.const -1.22901711592e+93)
    (f64.const -8.22215891902e+99)
  )
  (f64.const -6.76038972896e+199)
)
(assert_return
  (invoke "f64.no_algebraic_factoring"
    (f64.const 5.47773382975e+12)
    (f64.const -970738900949.)
  )
  (f64.const 2.90632338958e+25)
)
(assert_return
  (invoke "f64.no_algebraic_factoring"
    (f64.const -1.06891417449e+55)
    (f64.const -1.73378393594e+50)
  )
  (f64.const 1.14257751213e+110)
)
(assert_return
  (invoke "f64.no_algebraic_factoring"
    (f64.const -1.0295699877e-71)
    (f64.const -8.95227463781e-72)
  )
  (f64.const 2.5858214767e-143)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\02\60"
  "\03\7f\7f\7f\00\60\01\7f\01\7d\03\83\80\80\80\00"
  "\02\00\01\05\84\80\80\80\00\01\01\01\01\07\a0\80"
  "\80\80\00\02\11\66\33\32\2e\73\69\6d\70\6c\65\5f"
  "\78\34\5f\73\75\6d\00\00\08\66\33\32\2e\6c\6f\61"
  "\64\00\01\0a\f6\80\80\80\00\02\e4\80\80\80\00\01"
  "\08\7d\20\00\2a\02\00\21\03\20\00\2a\02\04\21\04"
  "\20\00\2a\02\08\21\05\20\00\2a\02\0c\21\06\20\01"
  "\2a\02\00\21\07\20\01\2a\02\04\21\08\20\01\2a\02"
  "\08\21\09\20\01\2a\02\0c\21\0a\20\02\20\03\20\07"
  "\92\38\02\00\20\02\20\04\20\08\92\38\02\04\20\02"
  "\20\05\20\09\92\38\02\08\20\02\20\06\20\0a\92\38"
  "\02\0c\0b\87\80\80\80\00\00\20\00\2a\02\00\0b\0b"
  "\b6\80\80\80\00\01\00\41\00\0b\30\01\00\00\00\01"
  "\00\00\80\01\00\00\00\01\00\00\80\01\00\00\00\01"
  "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\00\00"
)
(assert_return
  (invoke "f32.simple_x4_sum" (i32.const 0) (i32.const 16) (i32.const 32))
)
(assert_return (invoke "f32.load" (i32.const 32)) (f32.const 2.80259692865e-45))
(assert_return (invoke "f32.load" (i32.const 36)) (f32.const 0.))
(assert_return (invoke "f32.load" (i32.const 40)) (f32.const 1.40129846432e-45))
(assert_return
  (invoke "f32.load" (i32.const 44))
  (f32.const -1.40129846432e-45)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\02\60"
  "\03\7f\7f\7f\00\60\01\7f\01\7c\03\83\80\80\80\00"
  "\02\00\01\05\84\80\80\80\00\01\01\01\01\07\a0\80"
  "\80\80\00\02\11\66\36\34\2e\73\69\6d\70\6c\65\5f"
  "\78\34\5f\73\75\6d\00\00\08\66\36\34\2e\6c\6f\61"
  "\64\00\01\0a\f6\80\80\80\00\02\e4\80\80\80\00\01"
  "\08\7c\20\00\2b\03\00\21\03\20\00\2b\03\08\21\04"
  "\20\00\2b\03\10\21\05\20\00\2b\03\18\21\06\20\01"
  "\2b\03\00\21\07\20\01\2b\03\08\21\08\20\01\2b\03"
  "\10\21\09\20\01\2b\03\18\21\0a\20\02\20\03\20\07"
  "\a0\39\03\00\20\02\20\04\20\08\a0\39\03\08\20\02"
  "\20\05\20\09\a0\39\03\10\20\02\20\06\20\0a\a0\39"
  "\03\18\0b\87\80\80\80\00\00\20\00\2b\03\00\0b\0b"
  "\e6\80\80\80\00\01\00\41\00\0b\60\01\00\00\00\00"
  "\00\00\00\01\00\00\00\00\00\00\80\01\00\00\00\00"
  "\00\00\00\01\00\00\00\00\00\00\80\01\00\00\00\00"
  "\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"
  "\00\00\00\00\00\00\00\00\00\00\00"
)
(assert_return
  (invoke "f64.simple_x4_sum" (i32.const 0) (i32.const 32) (i32.const 64))
)
(assert_return
  (invoke "f64.load" (i32.const 64))
  (f64.const 9.88131291682e-324)
)
(assert_return (invoke "f64.load" (i32.const 72)) (f64.const 0.))
(assert_return
  (invoke "f64.load" (i32.const 80))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "f64.load" (i32.const 88))
  (f64.const -4.94065645841e-324)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7f\7f\01\7d\03\83\80\80\80\00\02\00\00\05\84"
  "\80\80\80\00\01\01\01\01\07\a1\80\80\80\00\02\0d"
  "\66\33\32\2e\6b\61\68\61\6e\5f\73\75\6d\00\00\0d"
  "\66\33\32\2e\70\6c\61\69\6e\5f\73\75\6d\00\01\0a"
  "\ea\80\80\80\00\02\b7\80\80\80\00\01\03\7d\02\40"
  "\03\40\20\03\20\00\2a\02\00\20\04\93\22\04\92\22"
  "\02\20\03\93\20\04\93\21\04\20\00\41\04\6a\21\00"
  "\20\02\21\03\20\01\41\7f\6a\22\01\0d\00\0b\0b\20"
  "\02\0b\a8\80\80\80\00\01\01\7d\02\40\03\40\20\02"
  "\20\00\2a\02\00\92\21\02\20\00\41\04\6a\21\00\20"
  "\01\41\7f\6a\21\01\20\01\0d\00\0b\0b\20\02\0b\0b"
  "\87\88\80\80\00\01\00\41\00\0b\80\08\c4\c5\57\24"
  "\a5\84\c8\0b\6d\b8\4b\2e\f2\76\17\1c\ca\4a\56\1e"
  "\1b\6e\71\22\5d\17\1e\6e\bf\cd\14\5c\c7\21\55\51"
  "\39\9c\1f\b2\51\f0\a3\93\d7\c1\2c\ae\7e\a8\28\3a"
  "\01\21\f4\0a\58\93\f8\42\77\9f\83\39\6a\5f\ba\f7"
  "\0a\d8\51\6a\34\ca\ad\c6\34\0e\d8\26\dc\4c\33\1c"
  "\ed\29\90\a8\78\0f\d1\ce\76\31\23\83\b8\35\e8\f2"
  "\44\b0\d3\a1\fc\bb\32\e1\b0\ba\69\44\09\d6\d9\7d"
  "\ff\2e\c0\5a\36\14\33\14\3e\a9\fa\87\6d\8b\bc\ce"
  "\9d\a7\fd\c4\e9\85\3f\dd\d7\e1\18\a6\50\26\72\6e"
  "\3f\73\0f\f8\12\93\23\34\61\76\12\48\c0\9b\05\93"
  "\eb\ac\86\de\94\3e\55\e8\8c\e8\dd\e4\fc\95\47\be"
  "\56\03\21\20\4c\e6\bf\7b\f6\7f\d5\ba\73\1c\c1\14"
  "\8f\c4\27\96\b3\bd\33\ff\78\41\5f\c0\5a\ce\f6\67"
  "\6e\73\9a\17\66\70\03\f8\ce\27\a3\52\b2\9f\3b\bf"
  "\fb\ae\ed\d3\5a\f8\37\57\f0\f5\6e\ef\b1\4d\70\3d"
  "\54\a7\01\9a\85\08\48\91\f5\9d\0c\60\87\5b\d9\54"
  "\1e\51\6d\88\8e\08\8c\a5\71\3a\56\08\67\46\8f\8f"
  "\13\2a\2c\ec\2c\1f\b4\62\2b\6f\41\0a\c4\65\42\a2"
  "\31\6b\2c\7d\3e\bb\75\ac\86\97\30\d9\48\cd\9a\1f"
  "\56\c4\c6\e4\12\c0\9d\fb\ee\02\8c\ce\1c\f2\1e\a1"
  "\78\23\db\c4\1e\49\03\d3\71\cc\08\50\c5\d8\5c\ed"
  "\d5\b5\65\ac\b5\c9\21\d2\c9\29\76\de\f0\30\1a\5b"
  "\3c\f2\3b\db\3a\39\82\3a\16\08\6f\a8\f1\be\69\69"
  "\99\71\a6\05\d3\14\93\2a\16\f2\2f\11\c7\7e\20\bb"
  "\91\44\ee\f8\e4\01\53\c0\b9\7f\f0\bf\f0\03\9c\6d"
  "\b1\df\a2\44\01\6d\6b\71\2b\5c\b3\21\19\46\5e\8f"
  "\db\91\d3\7c\78\6b\b7\12\00\8f\eb\bd\8a\f5\d4\2e"
  "\c4\c1\1e\df\73\63\59\47\49\03\0a\b7\cf\24\cf\9c"
  "\0e\44\7a\9e\14\fb\42\bf\9d\39\30\9e\a0\ab\2f\d1"
  "\ae\9e\6a\83\43\e3\55\7d\85\bf\63\8a\f8\96\10\1f"
  "\fe\6d\e7\22\1b\e1\69\46\8a\44\c8\c8\f9\0c\2b\19"
  "\07\a5\02\3e\f2\30\10\9a\85\8a\5f\ef\81\45\a0\77"
  "\b1\03\10\73\4b\ae\98\9d\47\bf\9a\2d\3a\d5\0f\03"
  "\66\e3\3d\53\d9\40\ce\1f\6f\32\2f\21\2b\23\21\6c"
  "\62\d4\a7\3e\a8\ce\28\31\2d\00\3d\67\5e\af\a0\cf"
  "\2e\d2\b9\6b\84\eb\69\08\3c\62\36\be\12\fd\36\7f"
  "\88\3e\ad\bc\0b\c0\41\c4\50\b6\e3\50\31\e8\ce\e2"
  "\96\65\55\9c\16\46\e6\b0\2d\3a\e8\81\05\b0\bf\34"
  "\f7\bc\10\1c\fb\cc\3c\f1\85\97\42\9f\eb\14\8d\3c"
  "\bf\d7\17\88\49\9d\8b\2b\b2\3a\83\d1\4f\04\9e\a1"
  "\0f\ad\08\9d\54\af\d1\82\c3\ec\32\2f\02\8f\05\21"
  "\2d\a2\b7\e4\f4\6f\2e\81\2b\0b\9c\fc\cb\fe\74\02"
  "\f9\db\f4\f3\ea\00\a8\ec\d1\99\74\26\dd\d6\34\d5"
  "\25\b1\46\dd\9c\aa\71\f5\60\b0\88\c8\e0\0b\59\5a"
  "\25\4f\29\66\f9\e3\2e\fe\e9\da\e5\18\4f\27\62\f4"
  "\ce\a4\21\95\74\c7\57\64\27\9a\4c\fd\54\7d\61\ce"
  "\c3\ac\87\46\9c\fa\ff\09\ca\79\97\67\24\74\ca\d4"
  "\21\83\26\25\19\12\37\64\19\e5\65\e0\74\75\8e\dd"
  "\c8\ef\74\c7\d8\21\2b\79\04\51\46\65\60\03\5d\fa"
  "\d8\f4\65\a4\9e\5d\23\da\d7\8a\92\80\a4\de\78\3c"
  "\f1\57\42\6d\cd\c9\2f\d5\a4\9e\ab\40\f4\cb\1b\d7"
  "\a3\ca\fc\eb\a7\01\b2\9a\69\4e\46\9b\18\4e\dd\79"
  "\a7\aa\a6\52\39\1e\ef\30\cc\9b\bd\5b\ee\4c\21\6d"
  "\30\00\72\b0\46\5f\08\cf\c5\b9\e0\3e\c2\b3\0c\dc"
  "\8e\64\de\19\42\79\cf\43\ea\43\5d\8e\88\f7\ab\15"
  "\dc\3f\c8\67\20\db\b8\64\b1\47\1f\de\f2\cb\3f\59"
  "\9f\d8\46\90\dc\ae\2f\22\f9\e2\31\89\d9\9c\1c\4c"
  "\d3\a9\4a\57\84\9c\9f\ea\2c\3c\ae\3c\c3\1e\8b\e5"
  "\4e\17\01\25\db\34\46\5f\15\ea\05\0c\7c\d9\45\8c"
  "\19\d0\73\8a\96\16\dd\44\f9\05\b7\5b\71\b0\e6\21"
  "\36\5f\75\89\91\73\75\ab\7d\ae\d3\73\ec\37\c6\ea"
  "\55\75\ef\ea\ab\8b\7b\11\dc\6d\1a\b2\6a\c4\25\cf"
  "\aa\e3\9f\49\49\89\cb\37\9b\0a\a7\01\60\70\dc\b7"
  "\c8\83\e1\42\f5\be\ad\62\94\ad\8d\a1"
)
(assert_return
  (invoke "f32.kahan_sum" (i32.const 0) (i32.const 256))
  (f32.const -2.15581382462e+31)
)
(assert_return
  (invoke "f32.plain_sum" (i32.const 0) (i32.const 256))
  (f32.const -1.64875394721e+31)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7f\7f\01\7c\03\83\80\80\80\00\02\00\00\05\84"
  "\80\80\80\00\01\01\01\01\07\a1\80\80\80\00\02\0d"
  "\66\36\34\2e\6b\61\68\61\6e\5f\73\75\6d\00\00\0d"
  "\66\36\34\2e\70\6c\61\69\6e\5f\73\75\6d\00\01\0a"
  "\ea\80\80\80\00\02\b7\80\80\80\00\01\03\7c\02\40"
  "\03\40\20\03\20\00\2b\03\00\20\04\a1\22\04\a0\22"
  "\02\20\03\a1\20\04\a1\21\04\20\00\41\08\6a\21\00"
  "\20\02\21\03\20\01\41\7f\6a\22\01\0d\00\0b\0b\20"
  "\02\0b\a8\80\80\80\00\01\01\7c\02\40\03\40\20\02"
  "\20\00\2b\03\00\a0\21\02\20\00\41\08\6a\21\00\20"
  "\01\41\7f\6a\21\01\20\01\0d\00\0b\0b\20\02\0b\0b"
  "\87\90\80\80\00\01\00\41\00\0b\80\10\13\05\84\42"
  "\5d\a2\2c\c6\43\db\55\a9\cd\da\55\e3\73\fc\58\d6"
  "\ba\d5\00\fd\83\35\42\88\8b\13\5d\38\4a\47\0d\72"
  "\73\a1\1a\ef\c4\45\17\57\d8\c9\46\e0\8d\6c\e1\37"
  "\70\c8\83\5b\55\5e\5a\2d\73\1e\56\c8\e1\6d\69\14"
  "\78\0a\8a\5a\64\3a\09\c7\a8\87\c5\f0\d3\5d\e6\03"
  "\fc\93\be\26\ca\d6\a9\91\60\bd\b0\ed\ae\f7\30\7e"
  "\92\3a\6f\a7\59\8e\aa\7d\bf\67\58\2a\54\f8\4e\fe"
  "\ed\35\58\a6\51\bf\42\e5\4b\66\27\24\6d\7f\42\2d"
  "\28\92\18\ec\08\ae\e7\55\da\b1\a6\65\a5\72\50\47"
  "\1b\b8\a9\54\d7\a6\06\5b\0f\42\58\83\8a\17\82\c6"
  "\10\43\a0\c0\2e\6d\bc\5a\85\53\72\7f\ad\44\bc\30"
  "\3c\55\b2\24\9a\74\3a\9e\e1\d8\0f\70\fc\a9\3a\cd"
  "\93\4b\ec\e3\7e\dd\5d\27\cd\f8\a0\9d\1c\11\c0\57"
  "\2e\fd\c8\13\32\cc\3a\1a\7d\a3\41\55\ed\c3\82\49"
  "\2a\04\1e\ef\73\b9\2e\2e\e3\5f\f4\df\e6\b2\33\0c"
  "\39\3f\6f\44\6a\03\c1\42\b9\fa\b1\c8\ed\a5\58\99"
  "\7f\ed\b4\72\9e\79\eb\fb\43\82\45\aa\bb\95\d2\ff"
  "\28\9e\f6\a1\ad\95\d6\55\95\0d\6f\60\11\c7\78\3e"
  "\49\f2\7e\48\f4\a2\71\d0\13\8e\b3\de\99\52\e3\45"
  "\74\ea\76\0e\1b\2a\c8\ee\14\01\c4\50\5b\36\3c\ef"
  "\ba\72\a2\a6\08\f8\7b\36\9d\f9\ef\0b\c7\56\2d\5c"
  "\f0\9d\5d\de\fc\b8\ad\0f\64\0e\97\15\32\26\c2\31"
  "\e6\05\1e\ef\cb\17\1b\6d\15\0b\74\5d\d3\2e\f8\6b"
  "\86\b4\ba\73\52\53\99\a9\76\20\45\c9\40\80\6b\14"
  "\ed\a1\fa\80\46\e6\26\d2\e6\98\c4\57\bf\c4\1c\a4"
  "\90\7a\36\94\14\ba\15\89\6e\e6\9c\37\8c\f4\de\12"
  "\22\5d\a1\79\50\67\0d\3d\7a\e9\d4\aa\2e\7f\2a\7a"
  "\30\3d\ea\5d\12\48\fe\e1\18\cd\a4\57\a2\87\3e\b6"
  "\9a\8b\db\da\9d\78\9c\cf\8d\b1\4f\90\b4\34\e0\9d"
  "\f6\ca\fe\4c\3b\78\6d\0a\5c\18\9f\61\b9\dd\b4\e0"
  "\0f\76\e0\1b\69\0d\5e\58\73\70\5e\0e\2d\a1\7d\ff"
  "\20\eb\91\34\92\ac\38\72\2a\1f\8e\71\2e\6a\f1\af"
  "\c7\27\70\d9\c4\57\f7\d2\3c\1d\b8\f0\f0\64\cf\dc"
  "\ae\be\a3\cc\3e\22\7d\4e\69\21\63\17\ed\03\02\54"
  "\9a\0f\50\4e\13\5a\35\a1\22\a4\df\86\c2\74\79\16"
  "\b8\69\69\a0\52\5d\11\64\bd\5b\93\fc\69\a0\f4\13"
  "\d0\81\51\dd\fa\0c\15\c3\7a\c9\62\7a\a9\1d\c9\e6"
  "\5a\b3\5b\97\02\3c\64\22\12\3c\22\90\64\2d\30\54"
  "\4c\b4\a1\22\09\57\22\5e\8e\38\2b\02\a8\ae\f6\be"
  "\0d\2b\f2\03\ad\fa\10\01\71\77\2a\30\02\95\f6\00"
  "\3e\d0\c4\8d\34\19\50\21\0a\bc\50\da\3c\30\d6\3a"
  "\31\94\8d\3a\fe\ef\14\57\9d\4b\93\00\96\24\0c\6f"
  "\fd\bc\23\76\02\6c\eb\52\72\80\11\7e\80\3a\13\12"
  "\38\1d\38\49\95\40\27\8a\44\7b\e8\dc\6d\8c\8c\8e"
  "\3c\b5\b3\18\0e\f6\08\1a\84\41\35\ff\8b\b8\93\40"
  "\ea\e1\51\1d\89\a5\8d\42\68\29\ea\2f\c1\7a\52\eb"
  "\90\5d\4d\d6\80\e3\d7\75\48\ce\ed\d3\01\1c\8d\5b"
  "\a5\94\0d\78\cf\f1\06\13\2f\98\02\a4\6d\2e\6c\f2"
  "\d5\74\29\89\4c\f9\03\f5\c7\18\ad\7a\f0\68\f8\5c"
  "\d6\59\87\6e\d6\3f\06\be\86\20\e3\41\91\22\f3\6e"
  "\8b\f0\68\1c\57\a7\fc\b0\7c\9e\99\0b\96\1a\89\5f"
  "\e6\0d\7c\08\51\a0\a2\67\9a\47\00\93\6b\f9\28\f0"
  "\68\db\62\f1\e0\65\2c\53\33\e0\a7\ca\11\42\30\f6"
  "\af\01\c1\65\3d\32\01\6f\ab\2e\be\d3\8b\be\14\c3"
  "\ff\ec\fb\f0\f9\c5\0c\05\6f\01\09\6b\e3\34\31\0c"
  "\1f\66\a6\42\bc\1a\87\49\16\16\8c\b0\90\0d\34\8c"
  "\0a\e1\09\5e\10\a4\6b\56\cc\f0\c9\bb\dc\b8\5c\ce"
  "\f6\cc\8d\75\7e\b3\07\88\04\2f\b4\5e\c9\e3\4a\23"
  "\73\19\62\6c\9a\03\76\44\86\9c\60\fc\db\72\8f\27"
  "\a0\dd\b3\c5\da\ff\f9\ec\6a\b1\7b\d3\cf\50\37\c9"
  "\7a\78\0c\e4\3a\b6\f5\e6\f4\98\6e\42\7d\35\73\8b"
  "\45\c0\56\97\cd\6d\ce\cf\ad\31\b3\c3\54\fa\ef\d5"
  "\c0\f4\6a\5f\54\e7\49\3e\33\0a\30\38\fd\d9\05\ff"
  "\a5\3f\57\46\14\b5\91\17\ca\6b\98\23\7a\65\b3\6c"
  "\02\b4\cc\79\5d\58\d8\b3\d5\94\ae\f4\6d\75\65\f7"
  "\92\bf\7e\47\4c\3c\ee\db\ac\f1\32\5d\fb\6f\41\1c"
  "\34\c8\83\4f\c2\58\01\be\05\3e\66\16\a6\04\6d\5d"
  "\4f\86\09\27\82\25\12\cd\3a\cd\ce\6b\bc\ca\ac\28"
  "\9b\ee\6a\25\86\9e\45\70\c6\d2\bd\3b\7d\42\e5\27"
  "\af\c7\1d\f4\81\c8\b3\76\8a\a8\36\a3\ae\2a\e6\18"
  "\e1\36\22\ad\f6\25\72\b0\39\8b\01\9a\22\7b\84\c3"
  "\2d\5f\72\a4\98\ac\15\70\e7\d4\18\e2\7d\d2\30\7c"
  "\33\08\cd\ca\c4\22\85\88\75\81\c6\4a\74\58\8d\e0"
  "\e8\ac\c5\ab\75\5a\f4\28\12\f0\18\45\52\f2\97\b2"
  "\93\41\6f\8d\7f\db\70\fb\a3\5d\1f\a7\8d\98\20\2b"
  "\22\9f\3a\01\b5\8b\1b\d2\cb\14\03\0e\14\14\d2\19"
  "\5a\1f\ce\5e\cd\81\79\15\01\ca\de\73\74\8c\56\20"
  "\9f\77\2d\25\16\f6\61\51\1d\a4\8e\9b\98\a5\c6\ec"
  "\a8\45\57\82\59\78\0d\90\b4\df\51\b0\c3\82\94\cc"
  "\b3\53\09\15\6d\96\6c\3a\40\47\b7\4a\7a\05\2f\a1"
  "\1e\8c\9d\a0\20\88\fb\52\b7\9f\f3\f3\bb\5f\e7\8a"
  "\61\a7\21\b1\ac\fa\09\aa\a4\6c\bc\24\80\ba\2a\e9"
  "\65\ff\70\ff\cc\fa\65\87\76\f3\c5\15\ce\cb\e8\42"
  "\31\00\0c\91\57\d9\e0\9d\35\54\24\ad\a4\d8\f9\08"
  "\67\63\c8\cf\81\dd\90\a2\d7\c4\07\4a\e6\10\6f\67"
  "\e7\27\d4\23\59\18\f2\a8\9d\5f\d8\94\30\aa\54\86"
  "\4f\87\9d\82\b5\26\ca\a6\96\bf\cf\55\f9\9d\37\01"
  "\19\48\43\c5\94\6c\f3\74\97\58\4c\3c\9d\08\e8\04"
  "\c2\58\30\76\e1\a0\f8\ea\e9\c5\ae\cf\78\9e\a9\0c"
  "\ac\b3\44\42\e0\bc\5d\1b\9c\49\58\4a\1c\19\49\c1"
  "\3a\ea\f5\eb\3b\81\a9\4b\70\0c\cc\9e\1a\d3\2f\b7"
  "\52\2f\20\3b\eb\64\51\1d\a0\2d\b2\3e\be\13\85\48"
  "\92\32\2e\db\5c\a1\e7\8c\45\91\35\01\0a\93\c2\eb"
  "\09\ce\f3\d2\22\24\d0\8c\cc\1d\9d\38\c8\4d\e3\82"
  "\cc\64\15\06\2d\e7\01\2f\ab\bb\b5\04\4c\92\1c\7a"
  "\d6\3f\e8\5f\31\15\0c\dc\e4\31\b4\c4\25\3e\2a\aa"
  "\00\9e\c8\e5\21\7a\7f\29\f1\c0\af\1d\5e\e8\63\39"
  "\ad\f8\7e\6c\c8\c5\7f\c2\a8\97\27\0a\d9\f4\21\6a"
  "\ea\03\09\fb\f7\96\3b\83\79\5f\7c\4b\30\9f\56\35"
  "\de\b4\73\d4\95\f0\14\c3\74\2f\0d\a3\1d\4e\8d\31"
  "\24\b3\1a\84\85\62\5a\7b\3c\14\39\17\e6\6d\eb\37"
  "\c2\00\58\5b\0b\e3\3c\8a\62\e1\f8\35\4b\56\e2\87"
  "\60\8b\be\a7\38\91\77\54\a9\5a\24\25\90\9f\a5\42"
  "\77\f3\5c\39\df\ff\74\07\76\a1\cd\1f\62\0b\81\81"
  "\68\af\05\c1\c0\7f\26\ee\c0\91\a3\6a\7d\29\61\45"
  "\27\e5\57\88\dc\0d\97\04\1a\33\a9\44\8a\da\02\10"
  "\45\3f\8e\55\a6\76\8c\4d\e3\f1\89\83\c8\d0\f8\9b"
  "\50\77\9f\47\df\4c\9c\66\0d\aa\18\b8\5f\4f\c4\01"
  "\ce\dc\84\ac\46\9e\69\e1\76\45\6b\61\89\e4\5d\94"
  "\bb\11\83\9f\78\d8\0a\d2\f5\7e\5d\43\ea\bc\10\f1"
  "\3a\c9\e2\64\fb\53\65\d0\c7\b4\a7\fb\d4\05\53\25"
  "\d0\cd\29\88\00\56\25\24\7d\5d\b4\f3\41\9f\e9\b5"
  "\f7\ae\64\2c\e3\c9\6d\d5\84\3a\72\12\b8\7a\d9\1b"
  "\09\e8\38\da\26\4f\04\ce\03\71\6e\8a\44\7b\5c\81"
  "\59\9c\d2\e4\c3\ba\59\a6\e5\28\a7\8f\9a\e4\d5\4e"
  "\b9\ca\7f\cb\75\b8\2b\43\3e\b3\15\46\b1\a5\bc\9d"
  "\9e\38\15\f1\bd\1b\21\aa\f1\82\00\95\fc\a7\77\47"
  "\39\a7\33\43\92\d7\52\40\4b\06\81\8a\a0\bd\f1\6b"
  "\99\84\42\5b\e2\3b\c5\5e\12\5c\28\4d\b6\0e\4e\c8"
  "\5c\e8\01\8a\c5\e7\e4\9d\42\ee\5d\9c\c4\eb\eb\68"
  "\09\27\92\95\9a\11\54\73\c4\12\80\fb\7d\fe\c5\08"
  "\60\7f\36\41\e0\10\ba\d6\2b\6c\f1\b4\17\fe\26\34"
  "\e3\4b\f8\a8\e3\91\be\4f\2a\fc\da\81\b8\e7\fe\d5"
  "\26\50\47\f3\1a\65\32\81\e0\05\b8\4f\32\31\26\00"
  "\4a\53\97\c2\c3\0e\2e\a1\26\54\ab\05\8e\56\2f\7d"
  "\af\22\84\68\a5\8b\97\f6\a4\fd\a8\cc\75\41\96\86"
  "\fd\27\3d\29\86\8d\7f\4c\d4\8e\73\41\f4\1e\e2\dd"
  "\58\27\97\ce\9c\94\cf\7a\04\2f\dc\ed"
)
(assert_return
  (invoke "f64.kahan_sum" (i32.const 0) (i32.const 256))
  (f64.const 4.99640174314e+300)
)
(assert_return
  (invoke "f64.plain_sum" (i32.const 0) (i32.const 256))
  (f64.const 4.9964017433e+300)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\02\60"
  "\02\7d\7d\01\7d\60\02\7c\7c\01\7c\03\83\80\80\80"
  "\00\02\00\01\07\ad\80\80\80\00\02\13\66\33\32\2e"
  "\6e\6f\5f\66\6f\6c\64\5f\6e\65\67\5f\73\75\62\00"
  "\00\13\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\6e\65"
  "\67\5f\73\75\62\00\01\0a\9b\80\80\80\00\02\88\80"
  "\80\80\00\00\20\00\20\01\93\8c\0b\88\80\80\80\00"
  "\00\20\00\20\01\a1\9a\0b"
)
(assert_return
  (invoke "f32.no_fold_neg_sub" (f32.const -0.) (f32.const -0.))
  (f32.const -0.)
)
(assert_return
  (invoke "f32.no_fold_neg_sub" (f32.const 0.) (f32.const -0.))
  (f32.const -0.)
)
(assert_return
  (invoke "f32.no_fold_neg_sub" (f32.const -0.) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_neg_sub" (f32.const 0.) (f32.const 0.))
  (f32.const -0.)
)
(assert_return
  (invoke "f64.no_fold_neg_sub" (f64.const -0.) (f64.const -0.))
  (f64.const -0.)
)
(assert_return
  (invoke "f64.no_fold_neg_sub" (f64.const 0.) (f64.const -0.))
  (f64.const -0.)
)
(assert_return
  (invoke "f64.no_fold_neg_sub" (f64.const -0.) (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_neg_sub" (f64.const 0.) (f64.const 0.))
  (f64.const -0.)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\02\60"
  "\02\7d\7d\01\7d\60\02\7c\7c\01\7c\03\83\80\80\80"
  "\00\02\00\01\07\ad\80\80\80\00\02\13\66\33\32\2e"
  "\6e\6f\5f\66\6f\6c\64\5f\6e\65\67\5f\61\64\64\00"
  "\00\13\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\6e\65"
  "\67\5f\61\64\64\00\01\0a\9b\80\80\80\00\02\88\80"
  "\80\80\00\00\20\00\20\01\92\8c\0b\88\80\80\80\00"
  "\00\20\00\20\01\a0\9a\0b"
)
(assert_return
  (invoke "f32.no_fold_neg_add" (f32.const -0.) (f32.const -0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_neg_add" (f32.const 0.) (f32.const -0.))
  (f32.const -0.)
)
(assert_return
  (invoke "f32.no_fold_neg_add" (f32.const -0.) (f32.const 0.))
  (f32.const -0.)
)
(assert_return
  (invoke "f32.no_fold_neg_add" (f32.const 0.) (f32.const 0.))
  (f32.const -0.)
)
(assert_return
  (invoke "f64.no_fold_neg_add" (f64.const -0.) (f64.const -0.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_neg_add" (f64.const 0.) (f64.const -0.))
  (f64.const -0.)
)
(assert_return
  (invoke "f64.no_fold_neg_add" (f64.const -0.) (f64.const 0.))
  (f64.const -0.)
)
(assert_return
  (invoke "f64.no_fold_neg_add" (f64.const 0.) (f64.const 0.))
  (f64.const -0.)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\02\60"
  "\02\7d\7d\01\7d\60\02\7c\7c\01\7c\03\83\80\80\80"
  "\00\02\00\01\07\b5\80\80\80\00\02\17\66\33\32\2e"
  "\6e\6f\5f\66\6f\6c\64\5f\61\64\64\5f\6e\65\67\5f"
  "\6e\65\67\00\00\17\66\36\34\2e\6e\6f\5f\66\6f\6c"
  "\64\5f\61\64\64\5f\6e\65\67\5f\6e\65\67\00\01\0a"
  "\9d\80\80\80\00\02\89\80\80\80\00\00\20\00\8c\20"
  "\01\8c\92\0b\89\80\80\80\00\00\20\00\9a\20\01\9a"
  "\a0\0b"
)
(assert_return
  (invoke "f32.no_fold_add_neg_neg" (f32.const -0.) (f32.const -0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_add_neg_neg" (f32.const 0.) (f32.const -0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_add_neg_neg" (f32.const -0.) (f32.const 0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_add_neg_neg" (f32.const 0.) (f32.const 0.))
  (f32.const -0.)
)
(assert_return
  (invoke "f64.no_fold_add_neg_neg" (f64.const -0.) (f64.const -0.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_add_neg_neg" (f64.const 0.) (f64.const -0.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_add_neg_neg" (f64.const -0.) (f64.const 0.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_add_neg_neg" (f64.const 0.) (f64.const 0.))
  (f64.const -0.)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\83\80\80\80\00\02"
  "\00\01\07\ad\80\80\80\00\02\13\66\33\32\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\61\64\64\5f\6e\65\67\00\00\13"
  "\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\61\64\64\5f"
  "\6e\65\67\00\01\0a\9b\80\80\80\00\02\88\80\80\80"
  "\00\00\20\00\8c\20\00\92\0b\88\80\80\80\00\00\20"
  "\00\9a\20\00\a0\0b"
)
(assert_return (invoke "f32.no_fold_add_neg" (f32.const 0.)) (f32.const 0.))
(assert_return (invoke "f32.no_fold_add_neg" (f32.const -0.)) (f32.const 0.))
(assert_return_canonical_nan (invoke "f32.no_fold_add_neg" (f32.const inf)))
(assert_return_canonical_nan (invoke "f32.no_fold_add_neg" (f32.const -inf)))
(assert_return (invoke "f64.no_fold_add_neg" (f64.const 0.)) (f64.const 0.))
(assert_return (invoke "f64.no_fold_add_neg" (f64.const -0.)) (f64.const 0.))
(assert_return_canonical_nan (invoke "f64.no_fold_add_neg" (f64.const inf)))
(assert_return_canonical_nan (invoke "f64.no_fold_add_neg" (f64.const -inf)))
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\83\80\80\80\00\02"
  "\00\01\07\b3\80\80\80\00\02\16\66\33\32\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\36\78\5f\76\69\61\5f\61\64\64"
  "\00\00\16\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\36"
  "\78\5f\76\69\61\5f\61\64\64\00\01\0a\b1\80\80\80"
  "\00\02\93\80\80\80\00\00\20\00\20\00\92\20\00\92"
  "\20\00\92\20\00\92\20\00\92\0b\93\80\80\80\00\00"
  "\20\00\20\00\a0\20\00\a0\20\00\a0\20\00\a0\20\00"
  "\a0\0b"
)
(assert_return
  (invoke "f32.no_fold_6x_via_add" (f32.const -8.55513734559e+29))
  (f32.const -5.13308270959e+30)
)
(assert_return
  (invoke "f32.no_fold_6x_via_add" (f32.const -1.20950599457e-23))
  (f32.const -7.25703628298e-23)
)
(assert_return
  (invoke "f32.no_fold_6x_via_add" (f32.const 6.64268923825e-24))
  (f32.const 3.98561338518e-23)
)
(assert_return
  (invoke "f32.no_fold_6x_via_add" (f32.const -6.1473459656e-10))
  (f32.const -3.68840735732e-09)
)
(assert_return
  (invoke "f32.no_fold_6x_via_add" (f32.const -1.20985810077e+24))
  (f32.const -7.25914831637e+24)
)
(assert_return
  (invoke "f64.no_fold_6x_via_add" (f64.const -3.51704490603e+20))
  (f64.const -2.11022694362e+21)
)
(assert_return
  (invoke "f64.no_fold_6x_via_add" (f64.const -1.48242941099e-161))
  (f64.const -8.89457646592e-161)
)
(assert_return
  (invoke "f64.no_fold_6x_via_add" (f64.const -7.48456783878e+81))
  (f64.const -4.49074070327e+82)
)
(assert_return
  (invoke "f64.no_fold_6x_via_add" (f64.const 1.72778681929e+226))
  (f64.const 1.03667209158e+227)
)
(assert_return
  (invoke "f64.no_fold_6x_via_add" (f64.const -4.31163975252e+70))
  (f64.const -2.58698385151e+71)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8f\80\80\80\00\02\60"
  "\03\7d\7d\7d\01\7d\60\03\7c\7c\7c\01\7c\03\83\80"
  "\80\80\00\02\00\01\07\ad\80\80\80\00\02\13\66\33"
  "\32\2e\6e\6f\5f\66\6f\6c\64\5f\64\69\76\5f\64\69"
  "\76\00\00\13\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f"
  "\64\69\76\5f\64\69\76\00\01\0a\9f\80\80\80\00\02"
  "\8a\80\80\80\00\00\20\00\20\01\95\20\02\95\0b\8a"
  "\80\80\80\00\00\20\00\20\01\a3\20\02\a3\0b"
)
(assert_return
  (invoke "f32.no_fold_div_div"
    (f32.const -5.93847529169e+23)
    (f32.const -3.02656717395e-05)
    (f32.const -1584.86816406)
  )
  (f32.const -1.23803086183e+25)
)
(assert_return
  (invoke "f32.no_fold_div_div"
    (f32.const 1.54389616165e-21)
    (f32.const 2.53342928037e+33)
    (f32.const -2.68447828568e-34)
  )
  (f32.const -0.)
)
(assert_return
  (invoke "f32.no_fold_div_div"
    (f32.const 1.34174233068e+13)
    (f32.const 2.93392046445e-32)
    (f32.const 7.638637444e+31)
  )
  (f32.const inf)
)
(assert_return
  (invoke "f32.no_fold_div_div"
    (f32.const -0.000107765292341)
    (f32.const -3.42209429081e+37)
    (f32.const -1.65623238865e-13)
  )
  (f32.const -1.90113269357e-29)
)
(assert_return
  (invoke "f32.no_fold_div_div"
    (f32.const 1.30582499557e+14)
    (f32.const 9.62453466104e+16)
    (f32.const -4.14615451007e+37)
  )
  (f32.const -3.27231217389e-41)
)
(assert_return
  (invoke "f64.no_fold_div_div"
    (f64.const 4.77762874671e+101)
    (f64.const 1.0278672042e+176)
    (f64.const -7.18999894989e-236)
  )
  (f64.const -6.46467301188e+160)
)
(assert_return
  (invoke "f64.no_fold_div_div"
    (f64.const -2.17902367839e+238)
    (f64.const 2.83244368446e-09)
    (f64.const 1.8611076826e+95)
  )
  (f64.const -4.13360680799e+151)
)
(assert_return
  (invoke "f64.no_fold_div_div"
    (f64.const -7.28761934783)
    (f64.const -1.34676073167e+265)
    (f64.const 2.46271900701e+51)
  )
  (f64.const 2.19725454007e-316)
)
(assert_return
  (invoke "f64.no_fold_div_div"
    (f64.const -2.86552397863e+248)
    (f64.const 1.02119803706e-247)
    (f64.const 2.87645864833e+289)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "f64.no_fold_div_div"
    (f64.const -9.52573560266e-268)
    (f64.const 5.02339488166e-180)
    (f64.const -2.83045702282e-42)
  )
  (f64.const 6.69953467497e-47)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\91\80\80\80\00\02\60"
  "\04\7d\7d\7d\7d\01\7d\60\04\7c\7c\7c\7c\01\7c\03"
  "\83\80\80\80\00\02\00\01\07\af\80\80\80\00\02\14"
  "\66\33\32\2e\6e\6f\5f\66\6f\6c\64\5f\6d\75\6c\5f"
  "\64\69\76\73\00\00\14\66\36\34\2e\6e\6f\5f\66\6f"
  "\6c\64\5f\6d\75\6c\5f\64\69\76\73\00\01\0a\a5\80"
  "\80\80\00\02\8d\80\80\80\00\00\20\00\20\01\95\20"
  "\02\20\03\95\94\0b\8d\80\80\80\00\00\20\00\20\01"
  "\a3\20\02\20\03\a3\a2\0b"
)
(assert_return
  (invoke "f32.no_fold_mul_divs"
    (f32.const -2.72347329039e-33)
    (f32.const 3.89784291064e-28)
    (f32.const 4.84712309132e-27)
    (f32.const -25.3577747345)
  )
  (f32.const 1.33558547747e-33)
)
(assert_return
  (invoke "f32.no_fold_mul_divs"
    (f32.const -5.37284413169e+30)
    (f32.const 38340912.)
    (f32.const 1.49731622514e-05)
    (f32.const 0.192138254642)
  )
  (f32.const -1.09204748314e+19)
)
(assert_return
  (invoke "f32.no_fold_mul_divs"
    (f32.const -16085042176.)
    (f32.const -1.0929202135e+12)
    (f32.const -869606016.)
    (f32.const -1201.20605469)
  )
  (f32.const 10654.6386719)
)
(assert_return
  (invoke "f32.no_fold_mul_divs"
    (f32.const -1.27122314044e+33)
    (f32.const 1.07681141781e-10)
    (f32.const 1.85762710316e-05)
    (f32.const 4.92686197158e+23)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "f32.no_fold_mul_divs"
    (f32.const 1.37838637654e-16)
    (f32.const -6.50462845086e-20)
    (f32.const 6.81676837137e-28)
    (f32.const 2.28926270301e-11)
  )
  (f32.const -6.31002953881e-14)
)
(assert_return
  (invoke "f64.no_fold_mul_divs"
    (f64.const -3.46649980523e-247)
    (f64.const -4.04556751225e-140)
    (f64.const -6.46234107061e+164)
    (f64.const 1.00455895334e+56)
  )
  (f64.const -55.1221532131)
)
(assert_return
  (invoke "f64.no_fold_mul_divs"
    (f64.const -5.05488390764e+34)
    (f64.const 2.222378165e-277)
    (f64.const -1.50297903711e+109)
    (f64.const -6.99412375954e+140)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "f64.no_fold_mul_divs"
    (f64.const -8.36111653634e+92)
    (f64.const -1.00295288761e+58)
    (f64.const -1.2867801766e-42)
    (f64.const -4.22302777469e+220)
  )
  (f64.const 2.54017810056e-228)
)
(assert_return
  (invoke "f64.no_fold_mul_divs"
    (f64.const -1.20200321164e+39)
    (f64.const -4.66740977134e-105)
    (f64.const 1.08886523765e-288)
    (f64.const 1.83349486665e+67)
  )
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_mul_divs"
    (f64.const 6.33183956884e-06)
    (f64.const 5.54447424191e-84)
    (f64.const 2.78224724804e-187)
    (f64.const -1.44193210819e+106)
  )
  (f64.const -2.20353747707e-215)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8f\80\80\80\00\02\60"
  "\03\7d\7d\7d\01\7d\60\03\7c\7c\7c\01\7c\03\83\80"
  "\80\80\00\02\00\01\07\af\80\80\80\00\02\14\66\33"
  "\32\2e\6e\6f\5f\66\6f\6c\64\5f\61\64\64\5f\64\69"
  "\76\73\00\00\14\66\36\34\2e\6e\6f\5f\66\6f\6c\64"
  "\5f\61\64\64\5f\64\69\76\73\00\01\0a\a5\80\80\80"
  "\00\02\8d\80\80\80\00\00\20\00\20\02\95\20\01\20"
  "\02\95\92\0b\8d\80\80\80\00\00\20\00\20\02\a3\20"
  "\01\20\02\a3\a0\0b"
)
(assert_return
  (invoke "f32.no_fold_add_divs"
    (f32.const 377.368896484)
    (f32.const -0.0401181839406)
    (f32.const -1.36292985605e+38)
  )
  (f32.const -2.76851214838e-36)
)
(assert_return
  (invoke "f32.no_fold_add_divs"
    (f32.const -1.82340230412e-19)
    (f32.const -3.39702881134e-15)
    (f32.const -1.70996707361e+14)
  )
  (f32.const 1.98671154112e-29)
)
(assert_return
  (invoke "f32.no_fold_add_divs"
    (f32.const -1.96726383556e-14)
    (f32.const 6.4140987027e-20)
    (f32.const -5.41989070176e+14)
  )
  (f32.const 3.62969965672e-29)
)
(assert_return
  (invoke "f32.no_fold_add_divs"
    (f32.const -4.03850582219e-31)
    (f32.const 3.84822808143e-30)
    (f32.const -3.45237197913e+26)
  )
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_add_divs"
    (f32.const 0.00109344150405)
    (f32.const 0.207031235099)
    (f32.const 1.35097839699e-37)
  )
  (f32.const 1.54054772769e+36)
)
(assert_return
  (invoke "f64.no_fold_add_divs"
    (f64.const -4.91701943214e+129)
    (f64.const 6.8132156322e+130)
    (f64.const 2.61254101002e+274)
  )
  (f64.const 2.41968017525e-144)
)
(assert_return
  (invoke "f64.no_fold_add_divs"
    (f64.const -1.02064679532e+16)
    (f64.const 63.4226166717)
    (f64.const -1.60247478698e-288)
  )
  (f64.const 6.36919097645e+303)
)
(assert_return
  (invoke "f64.no_fold_add_divs"
    (f64.const -1.52705696331e-291)
    (f64.const 2.57555033292e-294)
    (f64.const 5.88269391642e+151)
  )
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_add_divs"
    (f64.const 2.66679648744e+94)
    (f64.const -2.13156925249e+99)
    (f64.const 1.23770045187e-38)
  )
  (f64.const -1.72217969325e+137)
)
(assert_return
  (invoke "f64.no_fold_add_divs"
    (f64.const -1.29528883773e-219)
    (f64.const 5.8087692599e-228)
    (f64.const 1.67457416994e-21)
  )
  (f64.const -7.73503410699e-199)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\83\80\80\80\00\02"
  "\00\01\07\b5\80\80\80\00\02\17\66\33\32\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\73\71\72\74\5f\73\71\75\61\72"
  "\65\00\00\17\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f"
  "\73\71\72\74\5f\73\71\75\61\72\65\00\01\0a\9b\80"
  "\80\80\00\02\88\80\80\80\00\00\20\00\20\00\94\91"
  "\0b\88\80\80\80\00\00\20\00\20\00\a2\9f\0b"
)
(assert_return
  (invoke "f32.no_fold_sqrt_square" (f32.const -1.84600007067e-20))
  (f32.const 1.84600104002e-20)
)
(assert_return
  (invoke "f32.no_fold_sqrt_square" (f32.const -1.7907473239e-22))
  (f32.const 1.79526781243e-22)
)
(assert_return
  (invoke "f32.no_fold_sqrt_square" (f32.const -7.91207848456e-22))
  (f32.const 7.91442007616e-22)
)
(assert_return
  (invoke "f32.no_fold_sqrt_square" (f32.const 1.80129377322e-26))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.no_fold_sqrt_square" (f32.const 6.10501968175e+32))
  (f32.const inf)
)
(assert_return
  (invoke "f64.no_fold_sqrt_square" (f64.const 6.20929716775e-160))
  (f64.const 6.20929954218e-160)
)
(assert_return
  (invoke "f64.no_fold_sqrt_square" (f64.const -2.42111753037e-155))
  (f64.const 2.42111753037e-155)
)
(assert_return
  (invoke "f64.no_fold_sqrt_square" (f64.const -1.64606876119e-157))
  (f64.const 1.64606876115e-157)
)
(assert_return
  (invoke "f64.no_fold_sqrt_square" (f64.const -3.79781161338e-186))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.no_fold_sqrt_square" (f64.const 8.15808428461e+257))
  (f64.const inf)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\02\60"
  "\02\7d\7d\01\7d\60\02\7c\7c\01\7c\03\83\80\80\80"
  "\00\02\00\01\07\b1\80\80\80\00\02\15\66\33\32\2e"
  "\6e\6f\5f\66\6f\6c\64\5f\6d\75\6c\5f\73\71\72\74"
  "\73\00\00\15\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f"
  "\6d\75\6c\5f\73\71\72\74\73\00\01\0a\9d\80\80\80"
  "\00\02\89\80\80\80\00\00\20\00\91\20\01\91\94\0b"
  "\89\80\80\80\00\00\20\00\9f\20\01\9f\a2\0b"
)
(assert_return_canonical_nan
  (invoke "f32.no_fold_mul_sqrts"
    (f32.const 4.38850469474e-38)
    (f32.const -1.18673337983e-25)
  )
)
(assert_return
  (invoke "f32.no_fold_mul_sqrts"
    (f32.const 2.53659081113e-28)
    (f32.const 4.13206746597e-10)
  )
  (f32.const 3.23749315218e-19)
)
(assert_return
  (invoke "f32.no_fold_mul_sqrts"
    (f32.const 4.21448322317e-27)
    (f32.const 97.2491149902)
  )
  (f32.const 6.40199048288e-13)
)
(assert_return
  (invoke "f32.no_fold_mul_sqrts"
    (f32.const 3.72407634228e+30)
    (f32.const 0.00294490810484)
  )
  (f32.const 1.04723751371e+14)
)
(assert_return
  (invoke "f32.no_fold_mul_sqrts"
    (f32.const 1.86605593445e-17)
    (f32.const 0.00211126101203)
  )
  (f32.const 1.98487545844e-10)
)
(assert_return_canonical_nan
  (invoke "f64.no_fold_mul_sqrts"
    (f64.const -1.27420643698e-191)
    (f64.const -0.0068299629382)
  )
)
(assert_return
  (invoke "f64.no_fold_mul_sqrts"
    (f64.const 3.70825692695e-194)
    (f64.const 4.7183002857e-122)
  )
  (f64.const 4.18290206889e-158)
)
(assert_return
  (invoke "f64.no_fold_mul_sqrts"
    (f64.const 2.32935950592e-27)
    (f64.const 2.07433996428e-275)
  )
  (f64.const 2.19815457016e-151)
)
(assert_return
  (invoke "f64.no_fold_mul_sqrts"
    (f64.const 1.05418993363e-109)
    (f64.const 5.98123819873e-173)
  )
  (f64.const 2.51104780913e-141)
)
(assert_return
  (invoke "f64.no_fold_mul_sqrts"
    (f64.const 25589482.7174)
    (f64.const 3.91389120712e+154)
  )
  (f64.const 1.00077195905e+81)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\02\60"
  "\02\7d\7d\01\7d\60\02\7c\7c\01\7c\03\83\80\80\80"
  "\00\02\00\01\07\b1\80\80\80\00\02\15\66\33\32\2e"
  "\6e\6f\5f\66\6f\6c\64\5f\64\69\76\5f\73\71\72\74"
  "\73\00\00\15\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f"
  "\64\69\76\5f\73\71\72\74\73\00\01\0a\9d\80\80\80"
  "\00\02\89\80\80\80\00\00\20\00\91\20\01\91\95\0b"
  "\89\80\80\80\00\00\20\00\9f\20\01\9f\a3\0b"
)
(assert_return_canonical_nan
  (invoke "f32.no_fold_div_sqrts"
    (f32.const -58545012.)
    (f32.const -6.44377295414e-18)
  )
)
(assert_return
  (invoke "f32.no_fold_div_sqrts"
    (f32.const 7407384064.)
    (f32.const 209778928.)
  )
  (f32.const 5.942258358)
)
(assert_return
  (invoke "f32.no_fold_div_sqrts"
    (f32.const 1.37641256948e-36)
    (f32.const 54692.8984375)
  )
  (f32.const 5.01659272899e-21)
)
(assert_return
  (invoke "f32.no_fold_div_sqrts"
    (f32.const 9.79288964811e+17)
    (f32.const 1.26435517611e-09)
  )
  (f32.const 2.7830490497e+13)
)
(assert_return
  (invoke "f32.no_fold_div_sqrts"
    (f32.const 2.91412832627e-34)
    (f32.const 1.7928174343e-31)
  )
  (f32.const 0.0403168201447)
)
(assert_return_canonical_nan
  (invoke "f64.no_fold_div_sqrts"
    (f64.const -1.22061373199e-214)
    (f64.const -8.20958344968e-57)
  )
)
(assert_return
  (invoke "f64.no_fold_div_sqrts"
    (f64.const 3.38188524623e-177)
    (f64.const 7.65578397632e+162)
  )
  (f64.const 2.10176714257e-170)
)
(assert_return
  (invoke "f64.no_fold_div_sqrts"
    (f64.const 4.59633356706e+157)
    (f64.const 2.39324678469e-33)
  )
  (f64.const 1.38583660173e+95)
)
(assert_return
  (invoke "f64.no_fold_div_sqrts"
    (f64.const 2.53273409787e-244)
    (f64.const 4.47530512996e+87)
  )
  (f64.const 2.37893991413e-166)
)
(assert_return
  (invoke "f64.no_fold_div_sqrts"
    (f64.const 5.1030701602e-238)
    (f64.const 4.60157669098e+284)
  )
  (f64.const 1.05308260099e-261)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\02\60"
  "\02\7d\7d\01\7d\60\02\7c\7c\01\7c\03\83\80\80\80"
  "\00\02\00\01\07\b7\80\80\80\00\02\18\66\33\32\2e"
  "\6e\6f\5f\66\6f\6c\64\5f\6d\75\6c\5f\73\71\72\74"
  "\5f\64\69\76\00\00\18\66\36\34\2e\6e\6f\5f\66\6f"
  "\6c\64\5f\6d\75\6c\5f\73\71\72\74\5f\64\69\76\00"
  "\01\0a\a1\80\80\80\00\02\8b\80\80\80\00\00\20\00"
  "\20\01\91\94\20\01\95\0b\8b\80\80\80\00\00\20\00"
  "\20\01\9f\a2\20\01\a3\0b"
)
(assert_return
  (invoke "f32.no_fold_mul_sqrt_div"
    (f32.const -4.72855680666e+24)
    (f32.const 8.67728170885e+27)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "f32.no_fold_mul_sqrt_div"
    (f32.const -1.17768817886e-36)
    (f32.const 9.80515309738e-30)
  )
  (f32.const -0.)
)
(assert_return
  (invoke "f32.no_fold_mul_sqrt_div"
    (f32.const 816717056.)
    (f32.const 3.32317090036e-39)
  )
  (f32.const 1.41675681435e+28)
)
(assert_return
  (invoke "f32.no_fold_mul_sqrt_div"
    (f32.const -1.19322674463e+13)
    (f32.const 8.63706680207e+33)
  )
  (f32.const -0.000128392552142)
)
(assert_return
  (invoke "f32.no_fold_mul_sqrt_div"
    (f32.const -401.023498535)
    (f32.const 134.330215454)
  )
  (f32.const -34.6005477905)
)
(assert_return
  (invoke "f64.no_fold_mul_sqrt_div"
    (f64.const 1.46813462291e+210)
    (f64.const 2.46607458229e+228)
  )
  (f64.const inf)
)
(assert_return
  (invoke "f64.no_fold_mul_sqrt_div"
    (f64.const -1.72540220168e-249)
    (f64.const 5.58355407471e-202)
  )
  (f64.const -0.)
)
(assert_return
  (invoke "f64.no_fold_mul_sqrt_div"
    (f64.const 1.6812810256e-128)
    (f64.const 7.36278360244e+168)
  )
  (f64.const 6.19611248619e-213)
)
(assert_return
  (invoke "f64.no_fold_mul_sqrt_div"
    (f64.const -1.06054837299e+106)
    (f64.const 6.22591783694e-146)
  )
  (f64.const -4.25039008222e+178)
)
(assert_return
  (invoke "f64.no_fold_mul_sqrt_div"
    (f64.const 2.63363496954e+31)
    (f64.const 3.07914132859e+253)
  )
  (f64.const 4.74614244751e-96)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8f\80\80\80\00\02\60"
  "\03\7d\7d\7d\01\7d\60\03\7c\7c\7c\01\7c\03\83\80"
  "\80\80\00\02\00\01\07\cd\80\80\80\00\02\23\66\33"
  "\32\2e\6e\6f\5f\66\6c\75\73\68\5f\69\6e\74\65\72"
  "\6d\65\64\69\61\74\65\5f\73\75\62\6e\6f\72\6d\61"
  "\6c\00\00\23\66\36\34\2e\6e\6f\5f\66\6c\75\73\68"
  "\5f\69\6e\74\65\72\6d\65\64\69\61\74\65\5f\73\75"
  "\62\6e\6f\72\6d\61\6c\00\01\0a\9f\80\80\80\00\02"
  "\8a\80\80\80\00\00\20\00\20\01\94\20\02\94\0b\8a"
  "\80\80\80\00\00\20\00\20\01\a2\20\02\a2\0b"
)
(assert_return
  (invoke "f32.no_flush_intermediate_subnormal"
    (f32.const 1.17549435082e-38)
    (f32.const 1.19209289551e-07)
    (f32.const 8388608.)
  )
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "f64.no_flush_intermediate_subnormal"
    (f64.const 2.22507385851e-308)
    (f64.const 2.22044604925e-16)
    (f64.const 4.50359962737e+15)
  )
  (f64.const 2.22507385851e-308)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\93\80\80\80\00\03\60"
  "\02\7d\7d\01\7f\60\02\7c\7c\01\7f\60\02\7c\7d\01"
  "\7d\03\88\80\80\80\00\07\00\00\00\01\01\01\02\07"
  "\ff\80\80\80\00\07\0f\66\33\32\2e\72\65\63\6f\64"
  "\69\6e\67\5f\65\71\00\00\0f\66\33\32\2e\72\65\63"
  "\6f\64\69\6e\67\5f\6c\65\00\01\0f\66\33\32\2e\72"
  "\65\63\6f\64\69\6e\67\5f\6c\74\00\02\0f\66\36\34"
  "\2e\72\65\63\6f\64\69\6e\67\5f\65\71\00\03\0f\66"
  "\36\34\2e\72\65\63\6f\64\69\6e\67\5f\6c\65\00\04"
  "\0f\66\36\34\2e\72\65\63\6f\64\69\6e\67\5f\6c\74"
  "\00\05\0f\72\65\63\6f\64\69\6e\67\5f\64\65\6d\6f"
  "\74\65\00\06\0a\e8\80\80\80\00\07\8a\80\80\80\00"
  "\00\20\00\20\01\94\20\00\5b\0b\8a\80\80\80\00\00"
  "\20\00\20\01\94\20\00\5f\0b\8a\80\80\80\00\00\20"
  "\00\20\01\94\20\00\5d\0b\8a\80\80\80\00\00\20\00"
  "\20\01\a2\20\00\61\0b\8a\80\80\80\00\00\20\00\20"
  "\01\a2\20\00\65\0b\8a\80\80\80\00\00\20\00\20\01"
  "\a2\20\00\63\0b\88\80\80\80\00\00\20\00\b6\20\01"
  "\94\0b"
)
(assert_return
  (invoke "f32.recoding_eq" (f32.const -inf) (f32.const 3.))
  (i32.const 1)
)
(assert_return
  (invoke "f32.recoding_le" (f32.const -inf) (f32.const 3.))
  (i32.const 1)
)
(assert_return
  (invoke "f32.recoding_lt" (f32.const -inf) (f32.const 3.))
  (i32.const 0)
)
(assert_return
  (invoke "f32.recoding_eq" (f32.const 0.) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "f32.recoding_le" (f32.const 0.) (f32.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "f32.recoding_lt" (f32.const 0.) (f32.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "f64.recoding_eq" (f64.const -inf) (f64.const 3.))
  (i32.const 1)
)
(assert_return
  (invoke "f64.recoding_le" (f64.const -inf) (f64.const 3.))
  (i32.const 1)
)
(assert_return
  (invoke "f64.recoding_lt" (f64.const -inf) (f64.const 3.))
  (i32.const 0)
)
(assert_return
  (invoke "f64.recoding_eq" (f64.const 0.) (f64.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "f64.recoding_le" (f64.const 0.) (f64.const 1.))
  (i32.const 1)
)
(assert_return
  (invoke "f64.recoding_lt" (f64.const 0.) (f64.const 1.))
  (i32.const 0)
)
(assert_return
  (invoke "recoding_demote" (f64.const 2.38600490819e-40) (f32.const 1221.))
  (f32.const 2.91331206297e-37)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8f\80\80\80\00\02\60"
  "\03\7d\7d\7d\01\7f\60\03\7c\7c\7c\01\7f\03\83\80"
  "\80\80\00\02\00\01\07\c1\80\80\80\00\02\1d\66\33"
  "\32\2e\6e\6f\5f\65\78\74\65\6e\64\65\64\5f\70\72"
  "\65\63\69\73\69\6f\6e\5f\64\69\76\00\00\1d\66\36"
  "\34\2e\6e\6f\5f\65\78\74\65\6e\64\65\64\5f\70\72"
  "\65\63\69\73\69\6f\6e\5f\64\69\76\00\01\0a\9f\80"
  "\80\80\00\02\8a\80\80\80\00\00\20\00\20\01\95\20"
  "\02\5b\0b\8a\80\80\80\00\00\20\00\20\01\a3\20\02"
  "\61\0b"
)
(assert_return
  (invoke "f32.no_extended_precision_div"
    (f32.const 3.)
    (f32.const 7.)
    (f32.const 0.428571432829)
  )
  (i32.const 1)
)
(assert_return
  (invoke "f64.no_extended_precision_div"
    (f64.const 3.)
    (f64.const 7.)
    (f64.const 0.428571428571)
  )
  (i32.const 1)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\83\80\80\80\00\02"
  "\00\01\07\b5\80\80\80\00\02\17\66\33\32\2e\6e\6f"
  "\5f\64\69\73\74\72\69\62\75\74\65\5f\65\78\61\63"
  "\74\00\00\17\66\36\34\2e\6e\6f\5f\64\69\73\74\72"
  "\69\62\75\74\65\5f\65\78\61\63\74\00\01\0a\b9\80"
  "\80\80\00\02\93\80\80\80\00\00\43\00\00\00\c1\20"
  "\00\94\43\00\00\00\41\20\00\94\92\0b\9b\80\80\80"
  "\00\00\44\00\00\00\00\00\00\20\c0\20\00\a2\44\00"
  "\00\00\00\00\00\20\40\20\00\a2\a0\0b"
)
(assert_return
  (invoke "f32.no_distribute_exact" (f32.const -0.))
  (f32.const 0.)
)
(assert_return
  (invoke "f64.no_distribute_exact" (f64.const -0.))
  (f64.const 0.)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\a9\80\80\80\00\06\60"
  "\01\7d\01\7d\60\04\7d\7d\7d\7d\01\7d\60\03\7d\7d"
  "\7d\01\7d\60\01\7c\01\7c\60\04\7c\7c\7c\7c\01\7c"
  "\60\03\7c\7c\7c\01\7c\03\8b\80\80\80\00\0a\00\01"
  "\02\02\01\03\04\05\05\04\07\b5\81\80\80\00\0a\08"
  "\66\33\32\2e\73\71\72\74\00\00\0f\66\33\32\2e\78"
  "\6b\63\64\5f\73\71\72\74\5f\32\00\01\0f\66\33\32"
  "\2e\78\6b\63\64\5f\73\71\72\74\5f\33\00\02\0f\66"
  "\33\32\2e\78\6b\63\64\5f\73\71\72\74\5f\35\00\03"
  "\16\66\33\32\2e\78\6b\63\64\5f\62\65\74\74\65\72"
  "\5f\73\71\72\74\5f\35\00\04\08\66\36\34\2e\73\71"
  "\72\74\00\05\0f\66\36\34\2e\78\6b\63\64\5f\73\71"
  "\72\74\5f\32\00\06\0f\66\36\34\2e\78\6b\63\64\5f"
  "\73\71\72\74\5f\33\00\07\0f\66\36\34\2e\78\6b\63"
  "\64\5f\73\71\72\74\5f\35\00\08\16\66\36\34\2e\78"
  "\6b\63\64\5f\62\65\74\74\65\72\5f\73\71\72\74\5f"
  "\35\00\09\0a\b1\81\80\80\00\0a\85\80\80\80\00\00"
  "\20\00\91\0b\90\80\80\80\00\00\20\00\20\01\95\20"
  "\02\20\03\20\02\93\95\92\0b\8a\80\80\80\00\00\20"
  "\00\20\01\94\20\02\95\0b\8d\80\80\80\00\00\20\00"
  "\20\01\95\20\02\20\00\95\92\0b\93\80\80\80\00\00"
  "\20\00\20\01\20\02\94\92\20\03\20\01\20\02\94\93"
  "\95\0b\85\80\80\80\00\00\20\00\9f\0b\90\80\80\80"
  "\00\00\20\00\20\01\a3\20\02\20\03\20\02\a1\a3\a0"
  "\0b\8a\80\80\80\00\00\20\00\20\01\a2\20\02\a3\0b"
  "\8d\80\80\80\00\00\20\00\20\01\a3\20\02\20\00\a3"
  "\a0\0b\93\80\80\80\00\00\20\00\20\01\20\02\a2\a0"
  "\20\03\20\01\20\02\a2\a1\a3\0b"
)
(assert_return (invoke "f32.sqrt" (f32.const 2.)) (f32.const 1.41421353817))
(assert_return
  (invoke "f32.xkcd_sqrt_2"
    (f32.const 3.)
    (f32.const 5.)
    (f32.const 3.14159274101)
    (f32.const 7.)
  )
  (f32.const 1.41422009468)
)
(assert_return (invoke "f32.sqrt" (f32.const 3.)) (f32.const 1.73205077648))
(assert_return
  (invoke "f32.xkcd_sqrt_3"
    (f32.const 2.)
    (f32.const 2.71828174591)
    (f32.const 3.14159274101)
  )
  (f32.const 1.73051190376)
)
(assert_return (invoke "f32.sqrt" (f32.const 5.)) (f32.const 2.23606801033))
(assert_return
  (invoke "f32.xkcd_sqrt_5"
    (f32.const 2.)
    (f32.const 2.71828174591)
    (f32.const 3.)
  )
  (f32.const 2.23575878143)
)
(assert_return
  (invoke "f32.xkcd_better_sqrt_5"
    (f32.const 13.)
    (f32.const 4.)
    (f32.const 3.14159274101)
    (f32.const 24.)
  )
  (f32.const 2.23606801033)
)
(assert_return (invoke "f64.sqrt" (f64.const 2.)) (f64.const 1.41421356237))
(assert_return
  (invoke "f64.xkcd_sqrt_2"
    (f64.const 3.)
    (f64.const 5.)
    (f64.const 3.14159265359)
    (f64.const 7.)
  )
  (f64.const 1.41422005805)
)
(assert_return (invoke "f64.sqrt" (f64.const 3.)) (f64.const 1.73205080757))
(assert_return
  (invoke "f64.xkcd_sqrt_3"
    (f64.const 2.)
    (f64.const 2.71828182846)
    (f64.const 3.14159265359)
  )
  (f64.const 1.73051195886)
)
(assert_return (invoke "f64.sqrt" (f64.const 5.)) (f64.const 2.2360679775))
(assert_return
  (invoke "f64.xkcd_sqrt_5"
    (f64.const 2.)
    (f64.const 2.71828182846)
    (f64.const 3.)
  )
  (f64.const 2.23575888234)
)
(assert_return
  (invoke "f64.xkcd_better_sqrt_5"
    (f64.const 13.)
    (f64.const 4.)
    (f64.const 3.14159265359)
    (f64.const 24.)
  )
  (f64.const 2.23606780945)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\02\60"
  "\02\7d\7d\01\7d\60\02\7c\7c\01\7c\03\83\80\80\80"
  "\00\02\00\01\07\a9\80\80\80\00\02\11\66\33\32\2e"
  "\63\6f\6d\70\75\74\65\5f\72\61\64\69\78\00\00\11"
  "\66\36\34\2e\63\6f\6d\70\75\74\65\5f\72\61\64\69"
  "\78\00\01\0a\a5\81\80\80\00\02\c3\80\80\80\00\00"
  "\03\40\20\00\20\00\92\22\00\43\00\00\80\3f\92\20"
  "\00\93\43\00\00\80\bf\92\43\00\00\00\00\5b\0d\00"
  "\0b\03\40\20\00\20\01\43\00\00\80\3f\92\22\01\92"
  "\20\00\93\20\01\93\43\00\00\00\00\5c\0d\00\0b\20"
  "\01\0b\d7\80\80\80\00\00\03\40\20\00\20\00\a0\22"
  "\00\44\00\00\00\00\00\00\f0\3f\a0\20\00\a1\44\00"
  "\00\00\00\00\00\f0\bf\a0\44\00\00\00\00\00\00\00"
  "\00\61\0d\00\0b\03\40\20\00\20\01\44\00\00\00\00"
  "\00\00\f0\3f\a0\22\01\a0\20\00\a1\20\01\a1\44\00"
  "\00\00\00\00\00\00\00\62\0d\00\0b\20\01\0b"
)
(assert_return
  (invoke "f32.compute_radix" (f32.const 1.) (f32.const 1.))
  (f32.const 2.)
)
(assert_return
  (invoke "f64.compute_radix" (f64.const 1.) (f64.const 1.))
  (f64.const 2.)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\02\60"
  "\02\7d\7d\01\7d\60\02\7c\7c\01\7c\03\83\80\80\80"
  "\00\02\00\01\07\b7\80\80\80\00\02\18\66\33\32\2e"
  "\6e\6f\5f\66\6f\6c\64\5f\73\75\62\31\5f\6d\75\6c"
  "\5f\61\64\64\00\00\18\66\36\34\2e\6e\6f\5f\66\6f"
  "\6c\64\5f\73\75\62\31\5f\6d\75\6c\5f\61\64\64\00"
  "\01\0a\af\80\80\80\00\02\90\80\80\80\00\00\20\00"
  "\43\00\00\80\3f\93\20\01\94\20\01\92\0b\94\80\80"
  "\80\00\00\20\00\44\00\00\00\00\00\00\f0\3f\a1\20"
  "\01\a2\20\01\a0\0b"
)
(assert_return
  (invoke "f32.no_fold_sub1_mul_add"
    (f32.const 2.32830643654e-10)
    (f32.const 1.)
  )
  (f32.const 0.)
)
(assert_return
  (invoke "f64.no_fold_sub1_mul_add"
    (f64.const 5.42101086243e-20)
    (f64.const 1.)
  )
  (f64.const 0.)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8f\80\80\80\00\02\60"
  "\03\7d\7d\7d\01\7f\60\03\7c\7c\7c\01\7f\03\85\80"
  "\80\80\00\04\00\00\01\01\07\89\81\80\80\00\04\1f"
  "\66\33\32\2e\6e\6f\5f\66\6f\6c\64\5f\61\64\64\5f"
  "\6c\65\5f\6d\6f\6e\6f\74\6f\6e\69\63\69\74\79\00"
  "\00\1f\66\33\32\2e\6e\6f\5f\66\6f\6c\64\5f\61\64"
  "\64\5f\67\65\5f\6d\6f\6e\6f\74\6f\6e\69\63\69\74"
  "\79\00\01\1f\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f"
  "\61\64\64\5f\6c\65\5f\6d\6f\6e\6f\74\6f\6e\69\63"
  "\69\74\79\00\02\1f\66\36\34\2e\6e\6f\5f\66\6f\6c"
  "\64\5f\61\64\64\5f\67\65\5f\6d\6f\6e\6f\74\6f\6e"
  "\69\63\69\74\79\00\03\0a\c9\80\80\80\00\04\8d\80"
  "\80\80\00\00\20\00\20\02\92\20\01\20\02\92\5f\0b"
  "\8d\80\80\80\00\00\20\00\20\02\92\20\01\20\02\92"
  "\60\0b\8d\80\80\80\00\00\20\00\20\02\a0\20\01\20"
  "\02\a0\65\0b\8d\80\80\80\00\00\20\00\20\02\a0\20"
  "\01\20\02\a0\66\0b"
)
(assert_return
  (invoke "f32.no_fold_add_le_monotonicity"
    (f32.const 0.)
    (f32.const 0.)
    (f32.const nan:0x400000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "f32.no_fold_add_le_monotonicity"
    (f32.const inf)
    (f32.const -inf)
    (f32.const inf)
  )
  (i32.const 0)
)
(assert_return
  (invoke "f64.no_fold_add_le_monotonicity"
    (f64.const 0.)
    (f64.const 0.)
    (f64.const nan:0x8000000000000)
  )
  (i32.const 0)
)
(assert_return
  (invoke "f64.no_fold_add_le_monotonicity"
    (f64.const inf)
    (f64.const -inf)
    (f64.const inf)
  )
  (i32.const 0)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\02\60"
  "\02\7d\7d\01\7f\60\02\7c\7c\01\7f\03\89\80\80\80"
  "\00\08\00\00\00\00\01\01\01\01\07\e9\80\80\80\00"
  "\08\0a\66\33\32\2e\6e\6f\74\5f\6c\74\00\00\0a\66"
  "\33\32\2e\6e\6f\74\5f\6c\65\00\01\0a\66\33\32\2e"
  "\6e\6f\74\5f\67\74\00\02\0a\66\33\32\2e\6e\6f\74"
  "\5f\67\65\00\03\0a\66\36\34\2e\6e\6f\74\5f\6c\74"
  "\00\04\0a\66\36\34\2e\6e\6f\74\5f\6c\65\00\05\0a"
  "\66\36\34\2e\6e\6f\74\5f\67\74\00\06\0a\66\36\34"
  "\2e\6e\6f\74\5f\67\65\00\07\0a\e9\80\80\80\00\08"
  "\88\80\80\80\00\00\20\00\20\01\5d\45\0b\88\80\80"
  "\80\00\00\20\00\20\01\5f\45\0b\88\80\80\80\00\00"
  "\20\00\20\01\5e\45\0b\88\80\80\80\00\00\20\00\20"
  "\01\60\45\0b\88\80\80\80\00\00\20\00\20\01\63\45"
  "\0b\88\80\80\80\00\00\20\00\20\01\65\45\0b\88\80"
  "\80\80\00\00\20\00\20\01\64\45\0b\88\80\80\80\00"
  "\00\20\00\20\01\66\45\0b"
)
(assert_return
  (invoke "f32.not_lt" (f32.const nan:0x400000) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "f32.not_le" (f32.const nan:0x400000) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "f32.not_gt" (f32.const nan:0x400000) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "f32.not_ge" (f32.const nan:0x400000) (f32.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "f64.not_lt" (f64.const nan:0x8000000000000) (f64.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "f64.not_le" (f64.const nan:0x8000000000000) (f64.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "f64.not_gt" (f64.const nan:0x8000000000000) (f64.const 0.))
  (i32.const 1)
)
(assert_return
  (invoke "f64.not_ge" (f64.const nan:0x8000000000000) (f64.const 0.))
  (i32.const 1)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\89\80\80\80\00\02\60"
  "\00\01\7d\60\00\01\7c\03\83\80\80\80\00\02\00\01"
  "\07\9d\80\80\80\00\02\0b\66\33\32\2e\65\70\73\69"
  "\6c\6f\6e\00\00\0b\66\36\34\2e\65\70\73\69\6c\6f"
  "\6e\00\01\0a\dd\80\80\80\00\02\9f\80\80\80\00\00"
  "\43\00\00\80\3f\43\00\00\40\40\43\00\00\80\40\43"
  "\00\00\40\40\95\43\00\00\80\3f\93\94\93\0b\b3\80"
  "\80\80\00\00\44\00\00\00\00\00\00\f0\3f\44\00\00"
  "\00\00\00\00\08\40\44\00\00\00\00\00\00\10\40\44"
  "\00\00\00\00\00\00\08\40\a3\44\00\00\00\00\00\00"
  "\f0\3f\a1\a2\a1\0b"
)
(assert_return (invoke "f32.epsilon") (f32.const -1.19209289551e-07))
(assert_return (invoke "f64.epsilon") (f64.const 2.22044604925e-16))
(module binary
  "\00\61\73\6d\01\00\00\00\01\89\80\80\80\00\02\60"
  "\00\01\7d\60\00\01\7c\03\83\80\80\80\00\02\00\01"
  "\07\9d\80\80\80\00\02\0b\66\33\32\2e\65\70\73\69"
  "\6c\6f\6e\00\00\0b\66\36\34\2e\65\70\73\69\6c\6f"
  "\6e\00\01\0a\ef\80\80\80\00\02\aa\80\80\80\00\01"
  "\02\7d\43\00\00\80\3f\21\00\03\40\20\00\22\01\43"
  "\00\00\00\3f\94\22\00\43\00\00\80\3f\92\43\00\00"
  "\80\3f\5e\0d\00\0b\20\01\0b\ba\80\80\80\00\01\02"
  "\7c\44\00\00\00\00\00\00\f0\3f\21\00\03\40\20\00"
  "\22\01\44\00\00\00\00\00\00\e0\3f\a2\22\00\44\00"
  "\00\00\00\00\00\f0\3f\a0\44\00\00\00\00\00\00\f0"
  "\3f\64\0d\00\0b\20\01\0b"
)
(assert_return (invoke "f32.epsilon") (f32.const 1.19209289551e-07))
(assert_return (invoke "f64.epsilon") (f64.const 2.22044604925e-16))
(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\02\60"
  "\02\7d\7d\01\7f\60\02\7c\7c\01\7f\03\89\80\80\80"
  "\00\08\00\00\00\00\01\01\01\01\07\b9\81\80\80\00"
  "\08\14\66\33\32\2e\6e\6f\5f\74\72\69\63\68\6f\74"
  "\6f\6d\79\5f\6c\74\00\00\14\66\33\32\2e\6e\6f\5f"
  "\74\72\69\63\68\6f\74\6f\6d\79\5f\6c\65\00\01\14"
  "\66\33\32\2e\6e\6f\5f\74\72\69\63\68\6f\74\6f\6d"
  "\79\5f\67\74\00\02\14\66\33\32\2e\6e\6f\5f\74\72"
  "\69\63\68\6f\74\6f\6d\79\5f\67\65\00\03\14\66\36"
  "\34\2e\6e\6f\5f\74\72\69\63\68\6f\74\6f\6d\79\5f"
  "\6c\74\00\04\14\66\36\34\2e\6e\6f\5f\74\72\69\63"
  "\68\6f\74\6f\6d\79\5f\6c\65\00\05\14\66\36\34\2e"
  "\6e\6f\5f\74\72\69\63\68\6f\74\6f\6d\79\5f\67\74"
  "\00\06\14\66\36\34\2e\6e\6f\5f\74\72\69\63\68\6f"
  "\74\6f\6d\79\5f\67\65\00\07\0a\91\81\80\80\00\08"
  "\8d\80\80\80\00\00\20\00\20\01\5d\20\00\20\01\60"
  "\72\0b\8d\80\80\80\00\00\20\00\20\01\5f\20\00\20"
  "\01\5e\72\0b\8d\80\80\80\00\00\20\00\20\01\5e\20"
  "\00\20\01\5f\72\0b\8d\80\80\80\00\00\20\00\20\01"
  "\60\20\00\20\01\5d\72\0b\8d\80\80\80\00\00\20\00"
  "\20\01\63\20\00\20\01\66\72\0b\8d\80\80\80\00\00"
  "\20\00\20\01\65\20\00\20\01\64\72\0b\8d\80\80\80"
  "\00\00\20\00\20\01\64\20\00\20\01\65\72\0b\8d\80"
  "\80\80\00\00\20\00\20\01\66\20\00\20\01\63\72\0b"
)
(assert_return
  (invoke "f32.no_trichotomy_lt" (f32.const 0.) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "f32.no_trichotomy_le" (f32.const 0.) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "f32.no_trichotomy_gt" (f32.const 0.) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "f32.no_trichotomy_ge" (f32.const 0.) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "f64.no_trichotomy_lt" (f64.const 0.) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "f64.no_trichotomy_le" (f64.const 0.) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "f64.no_trichotomy_gt" (f64.const 0.) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "f64.no_trichotomy_ge" (f64.const 0.) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\97\80\80\80\00\04\60"
  "\02\7f\7f\01\7f\60\01\7f\01\7f\60\02\7e\7e\01\7e"
  "\60\01\7e\01\7e\03\94\80\80\80\00\13\00\00\01\02"
  "\02\03\01\01\01\01\01\01\03\03\03\03\03\03\01\07"
  "\ee\83\80\80\00\13\1d\66\33\32\2e\61\72\69\74\68"
  "\6d\65\74\69\63\5f\6e\61\6e\5f\62\69\74\70\61\74"
  "\74\65\72\6e\00\00\1c\66\33\32\2e\63\61\6e\6f\6e"
  "\69\63\61\6c\5f\6e\61\6e\5f\62\69\74\70\61\74\74"
  "\65\72\6e\00\01\20\66\33\32\2e\6e\6f\6e\61\72\69"
  "\74\68\6d\65\74\69\63\5f\6e\61\6e\5f\62\69\74\70"
  "\61\74\74\65\72\6e\00\02\1d\66\36\34\2e\61\72\69"
  "\74\68\6d\65\74\69\63\5f\6e\61\6e\5f\62\69\74\70"
  "\61\74\74\65\72\6e\00\03\1c\66\36\34\2e\63\61\6e"
  "\6f\6e\69\63\61\6c\5f\6e\61\6e\5f\62\69\74\70\61"
  "\74\74\65\72\6e\00\04\20\66\36\34\2e\6e\6f\6e\61"
  "\72\69\74\68\6d\65\74\69\63\5f\6e\61\6e\5f\62\69"
  "\74\70\61\74\74\65\72\6e\00\05\14\66\33\32\2e\6e"
  "\6f\5f\66\6f\6c\64\5f\73\75\62\5f\7a\65\72\6f\00"
  "\06\14\66\33\32\2e\6e\6f\5f\66\6f\6c\64\5f\6e\65"
  "\67\30\5f\73\75\62\00\07\13\66\33\32\2e\6e\6f\5f"
  "\66\6f\6c\64\5f\6d\75\6c\5f\6f\6e\65\00\08\14\66"
  "\33\32\2e\6e\6f\5f\66\6f\6c\64\5f\6e\65\67\31\5f"
  "\6d\75\6c\00\09\13\66\33\32\2e\6e\6f\5f\66\6f\6c"
  "\64\5f\64\69\76\5f\6f\6e\65\00\0a\14\66\33\32\2e"
  "\6e\6f\5f\66\6f\6c\64\5f\64\69\76\5f\6e\65\67\31"
  "\00\0b\14\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\73"
  "\75\62\5f\7a\65\72\6f\00\0c\14\66\36\34\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\6e\65\67\30\5f\73\75\62\00\0d"
  "\13\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f\6d\75\6c"
  "\5f\6f\6e\65\00\0e\14\66\36\34\2e\6e\6f\5f\66\6f"
  "\6c\64\5f\6e\65\67\31\5f\6d\75\6c\00\0f\13\66\36"
  "\34\2e\6e\6f\5f\66\6f\6c\64\5f\64\69\76\5f\6f\6e"
  "\65\00\10\14\66\36\34\2e\6e\6f\5f\66\6f\6c\64\5f"
  "\64\69\76\5f\6e\65\67\31\00\11\16\6e\6f\5f\66\6f"
  "\6c\64\5f\70\72\6f\6d\6f\74\65\5f\64\65\6d\6f\74"
  "\65\00\12\0a\e5\83\80\80\00\13\91\80\80\80\00\00"
  "\20\00\be\20\01\be\95\bc\41\80\80\80\fe\07\71\0b"
  "\91\80\80\80\00\00\20\00\be\20\01\be\95\bc\41\ff"
  "\ff\ff\ff\07\71\0b\87\80\80\80\00\00\20\00\be\8c"
  "\bc\0b\96\80\80\80\00\00\20\00\bf\20\01\bf\a3\bd"
  "\42\80\80\80\80\80\80\80\fc\ff\00\83\0b\96\80\80"
  "\80\00\00\20\00\bf\20\01\bf\a3\bd\42\ff\ff\ff\ff"
  "\ff\ff\ff\ff\ff\00\83\0b\87\80\80\80\00\00\20\00"
  "\bf\9a\bd\0b\93\80\80\80\00\00\20\00\be\43\00\00"
  "\00\00\93\bc\41\80\80\80\fe\07\71\0b\93\80\80\80"
  "\00\00\43\00\00\00\80\20\00\be\93\bc\41\80\80\80"
  "\fe\07\71\0b\93\80\80\80\00\00\20\00\be\43\00\00"
  "\80\3f\94\bc\41\80\80\80\fe\07\71\0b\93\80\80\80"
  "\00\00\43\00\00\80\bf\20\00\be\94\bc\41\80\80\80"
  "\fe\07\71\0b\93\80\80\80\00\00\20\00\be\43\00\00"
  "\80\3f\95\bc\41\80\80\80\fe\07\71\0b\93\80\80\80"
  "\00\00\20\00\be\43\00\00\80\bf\95\bc\41\80\80\80"
  "\fe\07\71\0b\9c\80\80\80\00\00\20\00\bf\44\00\00"
  "\00\00\00\00\00\00\a1\bd\42\80\80\80\80\80\80\80"
  "\fc\ff\00\83\0b\9c\80\80\80\00\00\44\00\00\00\00"
  "\00\00\00\80\20\00\bf\a1\bd\42\80\80\80\80\80\80"
  "\80\fc\ff\00\83\0b\9c\80\80\80\00\00\20\00\bf\44"
  "\00\00\00\00\00\00\f0\3f\a2\bd\42\80\80\80\80\80"
  "\80\80\fc\ff\00\83\0b\9c\80\80\80\00\00\44\00\00"
  "\00\00\00\00\f0\bf\20\00\bf\a2\bd\42\80\80\80\80"
  "\80\80\80\fc\ff\00\83\0b\9c\80\80\80\00\00\20\00"
  "\bf\44\00\00\00\00\00\00\f0\3f\a3\bd\42\80\80\80"
  "\80\80\80\80\fc\ff\00\83\0b\9c\80\80\80\00\00\20"
  "\00\bf\44\00\00\00\00\00\00\f0\bf\a3\bd\42\80\80"
  "\80\80\80\80\80\fc\ff\00\83\0b\8f\80\80\80\00\00"
  "\20\00\be\bb\b6\bc\41\80\80\80\fe\07\71\0b"
)
(assert_return
  (invoke "f32.arithmetic_nan_bitpattern"
    (i32.const 2139107856)
    (i32.const 2139107856)
  )
  (i32.const 2143289344)
)
(assert_return
  (invoke "f32.canonical_nan_bitpattern" (i32.const 0) (i32.const 0))
  (i32.const 2143289344)
)
(assert_return
  (invoke "f32.canonical_nan_bitpattern"
    (i32.const 2143289344)
    (i32.const 2143289344)
  )
  (i32.const 2143289344)
)
(assert_return
  (invoke "f32.canonical_nan_bitpattern"
    (i32.const -4194304)
    (i32.const 2143289344)
  )
  (i32.const 2143289344)
)
(assert_return
  (invoke "f32.canonical_nan_bitpattern"
    (i32.const 2143289344)
    (i32.const -4194304)
  )
  (i32.const 2143289344)
)
(assert_return
  (invoke "f32.canonical_nan_bitpattern"
    (i32.const -4194304)
    (i32.const -4194304)
  )
  (i32.const 2143289344)
)
(assert_return
  (invoke "f32.nonarithmetic_nan_bitpattern" (i32.const 2143302160))
  (i32.const -4181488)
)
(assert_return
  (invoke "f32.nonarithmetic_nan_bitpattern" (i32.const -4181488))
  (i32.const 2143302160)
)
(assert_return
  (invoke "f32.nonarithmetic_nan_bitpattern" (i32.const 2139107856))
  (i32.const -8375792)
)
(assert_return
  (invoke "f32.nonarithmetic_nan_bitpattern" (i32.const -8375792))
  (i32.const 2139107856)
)
(assert_return
  (invoke "f64.arithmetic_nan_bitpattern"
    (i64.const 9218868437227418128)
    (i64.const 9218868437227418128)
  )
  (i64.const 9221120237041090560)
)
(assert_return
  (invoke "f64.canonical_nan_bitpattern" (i64.const 0) (i64.const 0))
  (i64.const 9221120237041090560)
)
(assert_return
  (invoke "f64.canonical_nan_bitpattern"
    (i64.const 9221120237041090560)
    (i64.const 9221120237041090560)
  )
  (i64.const 9221120237041090560)
)
(assert_return
  (invoke "f64.canonical_nan_bitpattern"
    (i64.const -2251799813685248)
    (i64.const 9221120237041090560)
  )
  (i64.const 9221120237041090560)
)
(assert_return
  (invoke "f64.canonical_nan_bitpattern"
    (i64.const 9221120237041090560)
    (i64.const -2251799813685248)
  )
  (i64.const 9221120237041090560)
)
(assert_return
  (invoke "f64.canonical_nan_bitpattern"
    (i64.const -2251799813685248)
    (i64.const -2251799813685248)
  )
  (i64.const 9221120237041090560)
)
(assert_return
  (invoke "f64.nonarithmetic_nan_bitpattern" (i64.const 9221120237041103376))
  (i64.const -2251799813672432)
)
(assert_return
  (invoke "f64.nonarithmetic_nan_bitpattern" (i64.const -2251799813672432))
  (i64.const 9221120237041103376)
)
(assert_return
  (invoke "f64.nonarithmetic_nan_bitpattern" (i64.const 9218868437227418128))
  (i64.const -4503599627357680)
)
(assert_return
  (invoke "f64.nonarithmetic_nan_bitpattern" (i64.const -4503599627357680))
  (i64.const 9218868437227418128)
)
(assert_return
  (invoke "f32.no_fold_sub_zero" (i32.const 2141192192))
  (i32.const 2143289344)
)
(assert_return
  (invoke "f32.no_fold_neg0_sub" (i32.const 2141192192))
  (i32.const 2143289344)
)
(assert_return
  (invoke "f32.no_fold_mul_one" (i32.const 2141192192))
  (i32.const 2143289344)
)
(assert_return
  (invoke "f32.no_fold_neg1_mul" (i32.const 2141192192))
  (i32.const 2143289344)
)
(assert_return
  (invoke "f32.no_fold_div_one" (i32.const 2141192192))
  (i32.const 2143289344)
)
(assert_return
  (invoke "f32.no_fold_div_neg1" (i32.const 2141192192))
  (i32.const 2143289344)
)
(assert_return
  (invoke "f64.no_fold_sub_zero" (i64.const 9219994337134247936))
  (i64.const 9221120237041090560)
)
(assert_return
  (invoke "f64.no_fold_neg0_sub" (i64.const 9219994337134247936))
  (i64.const 9221120237041090560)
)
(assert_return
  (invoke "f64.no_fold_mul_one" (i64.const 9219994337134247936))
  (i64.const 9221120237041090560)
)
(assert_return
  (invoke "f64.no_fold_neg1_mul" (i64.const 9219994337134247936))
  (i64.const 9221120237041090560)
)
(assert_return
  (invoke "f64.no_fold_div_one" (i64.const 9219994337134247936))
  (i64.const 9221120237041090560)
)
(assert_return
  (invoke "f64.no_fold_div_neg1" (i64.const 9219994337134247936))
  (i64.const 9221120237041090560)
)
(assert_return
  (invoke "no_fold_promote_demote" (i32.const 2141192192))
  (i32.const 2143289344)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\01\60"
  "\08\7c\7c\7c\7c\7c\7c\7c\7c\01\7c\03\83\80\80\80"
  "\00\02\00\00\07\b2\80\80\80\00\02\13\64\6f\74\5f"
  "\70\72\6f\64\75\63\74\5f\65\78\61\6d\70\6c\65\00"
  "\00\18\77\69\74\68\5f\62\69\6e\61\72\79\5f\73\75"
  "\6d\5f\63\6f\6c\6c\61\70\73\65\00\01\0a\bd\80\80"
  "\80\00\02\99\80\80\80\00\00\20\00\20\04\a2\20\01"
  "\20\05\a2\a0\20\02\20\06\a2\a0\20\03\20\07\a2\a0"
  "\0b\99\80\80\80\00\00\20\00\20\04\a2\20\01\20\05"
  "\a2\a0\20\02\20\06\a2\20\03\20\07\a2\a0\a0\0b"
)
(assert_return
  (invoke "dot_product_example"
    (f64.const 32000000.)
    (f64.const 1.)
    (f64.const -1.)
    (f64.const 80000000.)
    (f64.const 40000000.)
    (f64.const 1.)
    (f64.const -1.)
    (f64.const -16000000.)
  )
  (f64.const 2.)
)
(assert_return
  (invoke "with_binary_sum_collapse"
    (f64.const 32000000.)
    (f64.const 1.)
    (f64.const -1.)
    (f64.const 80000000.)
    (f64.const 40000000.)
    (f64.const 1.)
    (f64.const -1.)
    (f64.const -16000000.)
  )
  (f64.const 2.)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\02\60"
  "\02\7d\7d\01\7d\60\02\7c\7c\01\7c\03\83\80\80\80"
  "\00\02\00\01\07\a7\80\80\80\00\02\10\66\33\32\2e"
  "\63\6f\6e\74\72\61\63\74\32\66\6d\61\00\00\10\66"
  "\36\34\2e\63\6f\6e\74\72\61\63\74\32\66\6d\61\00"
  "\01\0a\a7\80\80\80\00\02\8e\80\80\80\00\00\20\00"
  "\20\00\94\20\01\20\01\94\93\91\0b\8e\80\80\80\00"
  "\00\20\00\20\00\a2\20\01\20\01\a2\a1\9f\0b"
)
(assert_return
  (invoke "f32.contract2fma" (f32.const 1.) (f32.const 1.))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.contract2fma"
    (f32.const 1.10000002384)
    (f32.const 1.10000002384)
  )
  (f32.const 0.)
)
(assert_return
  (invoke "f32.contract2fma"
    (f32.const 1.19999992847)
    (f32.const 1.19999992847)
  )
  (f32.const 0.)
)
(assert_return
  (invoke "f64.contract2fma" (f64.const 1.) (f64.const 1.))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.contract2fma" (f64.const 1.1) (f64.const 1.1))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.contract2fma" (f64.const 1.2) (f64.const 1.2))
  (f64.const 0.)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8f\80\80\80\00\02\60"
  "\03\7d\7d\7d\01\7d\60\03\7c\7c\7c\01\7c\03\83\80"
  "\80\80\00\02\00\01\07\bf\80\80\80\00\02\1c\66\33"
  "\32\2e\64\69\76\69\73\69\6f\6e\5f\62\79\5f\73\6d"
  "\61\6c\6c\5f\6e\75\6d\62\65\72\00\00\1c\66\36\34"
  "\2e\64\69\76\69\73\69\6f\6e\5f\62\79\5f\73\6d\61"
  "\6c\6c\5f\6e\75\6d\62\65\72\00\01\0a\9f\80\80\80"
  "\00\02\8a\80\80\80\00\00\20\00\20\01\20\02\95\93"
  "\0b\8a\80\80\80\00\00\20\00\20\01\20\02\a3\a1\0b"
)
(assert_return
  (invoke "f32.division_by_small_number"
    (f32.const 112000000.)
    (f32.const 100000.)
    (f32.const 0.00089999998454)
  )
  (f32.const 888888.)
)
(assert_return
  (invoke "f64.division_by_small_number"
    (f64.const 112000000.)
    (f64.const 100000.)
    (f64.const 0.0009)
  )
  (f64.const 888888.888889)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8f\80\80\80\00\02\60"
  "\03\7d\7d\7d\01\7d\60\03\7c\7c\7c\01\7c\03\83\80"
  "\80\80\00\02\00\01\07\a7\80\80\80\00\02\10\66\33"
  "\32\2e\67\6f\6c\64\65\6e\5f\72\61\74\69\6f\00\00"
  "\10\66\36\34\2e\67\6f\6c\64\65\6e\5f\72\61\74\69"
  "\6f\00\01\0a\a1\80\80\80\00\02\8b\80\80\80\00\00"
  "\20\00\20\01\20\02\91\92\94\0b\8b\80\80\80\00\00"
  "\20\00\20\01\20\02\9f\a0\a2\0b"
)
(assert_return
  (invoke "f32.golden_ratio" (f32.const 0.5) (f32.const 1.) (f32.const 5.))
  (f32.const 1.61803400517)
)
(assert_return
  (invoke "f64.golden_ratio" (f64.const 0.5) (f64.const 1.) (f64.const 5.))
  (f64.const 1.61803398875)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\8b\80\80\80\00\02\60"
  "\01\7d\01\7d\60\01\7c\01\7c\03\83\80\80\80\00\02"
  "\00\01\07\a7\80\80\80\00\02\10\66\33\32\2e\73\69"
  "\6c\76\65\72\5f\6d\65\61\6e\73\00\00\10\66\36\34"
  "\2e\73\69\6c\76\65\72\5f\6d\65\61\6e\73\00\01\0a"
  "\c1\80\80\80\00\02\97\80\80\80\00\00\43\00\00\00"
  "\3f\20\00\20\00\20\00\94\43\00\00\80\40\92\91\92"
  "\94\0b\9f\80\80\80\00\00\44\00\00\00\00\00\00\e0"
  "\3f\20\00\20\00\20\00\a2\44\00\00\00\00\00\00\10"
  "\40\a0\9f\a0\a2\0b"
)
(assert_return (invoke "f32.silver_means" (f32.const 0.)) (f32.const 1.))
(assert_return
  (invoke "f32.silver_means" (f32.const 1.))
  (f32.const 1.61803400517)
)
(assert_return
  (invoke "f32.silver_means" (f32.const 2.))
  (f32.const 2.41421365738)
)
(assert_return
  (invoke "f32.silver_means" (f32.const 3.))
  (f32.const 3.30277562141)
)
(assert_return
  (invoke "f32.silver_means" (f32.const 4.))
  (f32.const 4.23606777191)
)
(assert_return
  (invoke "f32.silver_means" (f32.const 5.))
  (f32.const 5.19258213043)
)
(assert_return (invoke "f64.silver_means" (f64.const 0.)) (f64.const 1.))
(assert_return
  (invoke "f64.silver_means" (f64.const 1.))
  (f64.const 1.61803398875)
)
(assert_return
  (invoke "f64.silver_means" (f64.const 2.))
  (f64.const 2.41421356237)
)
(assert_return
  (invoke "f64.silver_means" (f64.const 3.))
  (f64.const 3.30277563773)
)
(assert_return
  (invoke "f64.silver_means" (f64.const 4.))
  (f64.const 4.2360679775)
)
(assert_return
  (invoke "f64.silver_means" (f64.const 5.))
  (f64.const 5.19258240357)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7c\7c\01\7f\03\82\80\80\80\00\01\00\07\8e\80"
  "\80\80\00\01\0a\70\6f\69\6e\74\5f\66\6f\75\72\00"
  "\00\0a\97\80\80\80\00\01\91\80\80\80\00\00\20\00"
  "\20\01\a3\44\9a\99\99\99\99\99\d9\3f\63\0b"
)
(assert_return
  (invoke "point_four" (f64.const 4.) (f64.const 10.))
  (i32.const 0)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7c\03\82\80\80\80\00\01\00\07\87\80\80"
  "\80\00\01\03\74\61\75\00\00\0a\ce\81\80\80\00\01"
  "\c8\81\80\80\00\01\04\7c\44\00\00\00\00\00\00\00"
  "\00\21\01\02\40\20\00\41\01\48\0d\00\44\00\00\00"
  "\00\00\00\f0\3f\21\02\44\00\00\00\00\00\00\00\00"
  "\21\03\03\40\20\01\20\02\44\00\00\00\00\00\00\20"
  "\40\20\03\44\00\00\00\00\00\00\20\40\a2\22\04\44"
  "\00\00\00\00\00\00\f0\3f\a0\a3\44\00\00\00\00\00"
  "\00\10\40\20\04\44\00\00\00\00\00\00\10\40\a0\a3"
  "\a1\44\00\00\00\00\00\00\00\40\20\04\44\00\00\00"
  "\00\00\00\14\40\a0\a3\a1\44\00\00\00\00\00\00\00"
  "\40\20\04\44\00\00\00\00\00\00\18\40\a0\a3\a1\a2"
  "\a0\21\01\20\03\44\00\00\00\00\00\00\f0\3f\a0\21"
  "\03\20\02\44\00\00\00\00\00\00\b0\3f\a2\21\02\20"
  "\00\41\7f\6a\22\00\0d\00\0b\0b\20\01\0b"
)
(assert_return (invoke "tau" (i32.const 10)) (f64.const 6.28318530718))
(assert_return (invoke "tau" (i32.const 11)) (f64.const 6.28318530718))
(module binary
  "\00\61\73\6d\01\00\00\00\01\8d\80\80\80\00\02\60"
  "\02\7d\7d\01\7d\60\02\7c\7c\01\7c\03\83\80\80\80"
  "\00\02\00\01\07\bd\80\80\80\00\02\1b\66\33\32\2e"
  "\6e\6f\5f\66\6f\6c\64\5f\63\6f\6e\64\69\74\69\6f"
  "\6e\61\6c\5f\69\6e\63\00\00\1b\66\36\34\2e\6e\6f"
  "\5f\66\6f\6c\64\5f\63\6f\6e\64\69\74\69\6f\6e\61"
  "\6c\5f\69\6e\63\00\01\0a\bd\80\80\80\00\02\95\80"
  "\80\80\00\00\20\00\20\00\43\00\00\80\3f\92\20\01"
  "\43\00\00\00\00\5d\1b\0b\9d\80\80\80\00\00\20\00"
  "\20\00\44\00\00\00\00\00\00\f0\3f\a0\20\01\44\00"
  "\00\00\00\00\00\00\00\63\1b\0b"
)
(assert_return
  (invoke "f32.no_fold_conditional_inc" (f32.const -0.) (f32.const -1.))
  (f32.const -0.)
)
(assert_return
  (invoke "f64.no_fold_conditional_inc" (f64.const -0.) (f64.const -1.))
  (f64.const -0.)
)

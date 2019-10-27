(module binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\01\60"
  "\03\7c\7c\7c\01\7c\03\82\80\80\80\00\01\00\07\96"
  "\80\80\80\00\01\12\66\36\34\2e\6e\6f\5f\63\6f\6e"
  "\74\72\61\63\74\69\6f\6e\00\00\0a\90\80\80\80\00"
  "\01\8a\80\80\80\00\00\20\00\20\01\a2\20\02\a0\0b"
)
(assert_return
  (invoke "f64.no_contraction"
    (f64.const -1.596_713_360_409_623_4e-31)
    (f64.const 8.763_352_160_827_122_7e+199)
    (f64.const 4.289_657_620_489_845_8e+160)
  )
  (f64.const -1.399_256_143_427_063_2e+169)
)
(assert_return
  (invoke "f64.no_contraction"
    (f64.const 8_341_016_642_481_988)
    (f64.const 3.223_424_965_918_292_8e-97)
    (f64.const 2.331_083_574_165_908_6e-91)
  )
  (f64.const 2.688_664_128_884_749_6e-81)
)
(assert_return
  (invoke "f64.no_contraction"
    (f64.const -3.011_904_529_052_001_3e-179)
    (f64.const 5.269_933_643_923_674_9e+160)
    (f64.const 6.654_454_781_339_855_5e-32)
  )
  (f64.const -1.587_253_700_993_656_6e-18)
)
(assert_return
  (invoke "f64.no_contraction"
    (f64.const 3.141_393_611_678_074_3e-21)
    (f64.const -7.262_766_035_707_377_1e-31)
    (f64.const 4.619_684_894_228_460_9e-66)
  )
  (f64.const -2.281_520_682_768_359_9e-51)
)
(assert_return
  (invoke "f64.no_contraction"
    (f64.const -1.608_046_421_740_237_8e-286)
    (f64.const -3.821_034_102_268_329_7e+281)
    (f64.const 1.054_198_050_415_134_5e-16)
  )
  (f64.const 6.144_400_215_510_552_4e-05)
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
    (f32.const 3.518_430_412_294_782_6e+37)
    (f32.const 2.158_436_132_049_246_2e-07)
    (f32.const 2.593_406_430_766_022_9e+32)
  )
  (f32.const 2.669_349_603_329_164_8e+32)
)
(assert_return
  (invoke "f32.no_fma"
    (f32.const 7.175_324_334_696_142_6e-09)
    (f32.const -1.225_533_960_778_739_1e-15)
    (f32.const 4.131_643_583_655_494_2e-27)
  )
  (f32.const -8.789_472_428_754_409_1e-24)
)
(assert_return
  (invoke "f32.no_fma"
    (f32.const 231_063_437_312)
    (f32.const 0.000_207_732_620_765_455_07)
    (f32.const 1_797.642_089_843_75)
  )
  (f32.const 48_001_208)
)
(assert_return
  (invoke "f32.no_fma"
    (f32.const 0.004_554_270_301_014_185)
    (f32.const -7_265_493.5)
    (f32.const -2.396_428_346_633_911_1)
  )
  (f32.const -33_091.414_062_5)
)
(assert_return
  (invoke "f32.no_fma"
    (f32.const 9.888_172_614_935_959e+37)
    (f32.const -8.570_631_180_266_810_1e-22)
    (f32.const -21_579_143_168)
  )
  (f32.const -84_747_908_137_615_360)
)
(assert_return
  (invoke "f64.no_fma"
    (f64.const 7.890_842_843_751_791_6e+167)
    (f64.const 4.215_020_052_117_359_9e+129)
    (f64.const -1.336_601_081_131_744_7e+297)
  )
  (f64.const 1.989_405_000_320_312_8e+297)
)
(assert_return
  (invoke "f64.no_fma"
    (f64.const 5.586_822_348_009_285_5e+225)
    (f64.const 7.397_302_005_677_333_7e-40)
    (f64.const 3.656_783_417_204_091_7e+172)
  )
  (f64.const 4.132_741_216_029_240_7e+186)
)
(assert_return
  (invoke "f64.no_fma"
    (f64.const 1.426_047_782_227_458_7e-217)
    (f64.const -3.108_763_203_659_986_1e+304)
    (f64.const 3.432_692_355_237_776_3e+71)
  )
  (f64.const -4.433_244_872_049_653e+87)
)
(assert_return
  (invoke "f64.no_fma"
    (f64.const -8.090_347_017_354_779_8e-117)
    (f64.const -2.487_441_785_066_744_9e+133)
    (f64.const 49_484_765_138_510_808)
  )
  (f64.const 2.507_274_374_050_947_2e+17)
)
(assert_return
  (invoke "f64.no_fma"
    (f64.const 6_723_256_985_364_377)
    (f64.const 2.854_565_666_928_794_6e+206)
    (f64.const -5.593_839_470_050_757e+207)
  )
  (f64.const 1.919_197_856_036_028_6e+222)
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
(assert_return (invoke "f32.no_fold_add_zero" (f32.const -0)) (f32.const 0))
(assert_return (invoke "f64.no_fold_add_zero" (f64.const -0)) (f64.const 0))
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
(assert_return (invoke "f32.no_fold_zero_sub" (f32.const 0)) (f32.const 0))
(assert_return (invoke "f64.no_fold_zero_sub" (f64.const 0)) (f64.const 0))
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
(assert_return (invoke "f32.no_fold_mul_zero" (f32.const -0)) (f32.const -0))
(assert_return (invoke "f32.no_fold_mul_zero" (f32.const -1)) (f32.const -0))
(assert_return (invoke "f32.no_fold_mul_zero" (f32.const -2)) (f32.const -0))
(assert_return_arithmetic_nan
  (invoke "f32.no_fold_mul_zero" (f32.const nan:0x200000))
)
(assert_return (invoke "f64.no_fold_mul_zero" (f64.const -0)) (f64.const -0))
(assert_return (invoke "f64.no_fold_mul_zero" (f64.const -1)) (f64.const -0))
(assert_return (invoke "f64.no_fold_mul_zero" (f64.const -2)) (f64.const -0))
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
(assert_return_canonical_nan (invoke "f32.no_fold_zero_div" (f32.const 0)))
(assert_return_canonical_nan (invoke "f32.no_fold_zero_div" (f32.const -0)))
(assert_return_canonical_nan
  (invoke "f32.no_fold_zero_div" (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "f32.no_fold_zero_div" (f32.const nan:0x200000))
)
(assert_return_canonical_nan (invoke "f64.no_fold_zero_div" (f64.const 0)))
(assert_return_canonical_nan (invoke "f64.no_fold_zero_div" (f64.const -0)))
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
(assert_return_canonical_nan (invoke "f32.no_fold_div_self" (f32.const 0)))
(assert_return_canonical_nan (invoke "f32.no_fold_div_self" (f32.const -0)))
(assert_return_canonical_nan (invoke "f64.no_fold_div_self" (f64.const inf)))
(assert_return_canonical_nan
  (invoke "f64.no_fold_div_self" (f64.const nan:0x8000000000000))
)
(assert_return_canonical_nan (invoke "f64.no_fold_div_self" (f64.const 0)))
(assert_return_canonical_nan (invoke "f64.no_fold_div_self" (f64.const -0)))
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
  (invoke "f32.no_fold_div_3" (f32.const -1_361_678_981_660_672))
  (f32.const -453_892_982_702_080)
)
(assert_return
  (invoke "f32.no_fold_div_3" (f32.const -1.873_688_036_745_895_9e+28))
  (f32.const -6.245_626_592_387_716_2e+27)
)
(assert_return
  (invoke "f32.no_fold_div_3" (f32.const -1.204_513_072_036_643_8e-25))
  (f32.const -4.015_043_470_739_215_5e-26)
)
(assert_return
  (invoke "f32.no_fold_div_3" (f32.const -5.281_345_934_922_402_8e-38))
  (f32.const -1.760_448_598_264_185_5e-38)
)
(assert_return
  (invoke "f32.no_fold_div_3" (f32.const -2.549_556_267_217_888_2e-17))
  (f32.const -8.498_520_614_999_423_1e-18)
)
(assert_return
  (invoke "f64.no_fold_div_3" (f64.const -2.956_357_957_396_963_4e+190))
  (f64.const -9.854_526_524_656_545_4e+189)
)
(assert_return
  (invoke "f64.no_fold_div_3" (f64.const -9.291_150_921_449_772e-51))
  (f64.const -3.097_050_307_149_924_2e-51)
)
(assert_return
  (invoke "f64.no_fold_div_3" (f64.const 1.380_806_154_355_700_6e-263))
  (f64.const 4.602_687_181_185_668_9e-264)
)
(assert_return
  (invoke "f64.no_fold_div_3" (f64.const -1.378_076_163_468_348_9e+303))
  (f64.const -4.593_587_211_561_163_2e+302)
)
(assert_return
  (invoke "f64.no_fold_div_3" (f64.const 8.632_400_808_831_365_5e+124))
  (f64.const 2.877_466_936_277_122e+124)
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
    (f32.const -1_435_111_653_376)
    (f32.const -853_617_636_540_416)
    (f32.const 1.113_849_328_121_675_8e+18)
  )
  (f32.const -9.523_998_846_739_126_7e+32)
)
(assert_return
  (invoke "f32.no_factor"
    (f32.const -0.026_666_631_922_125_816)
    (f32.const 0.048_412_822_186_946_869)
    (f32.const -0.002_813_697_094_097_733_5)
  )
  (f32.const -6.118_720_193_626_359_1e-05)
)
(assert_return
  (invoke "f32.no_factor"
    (f32.const -4.661_977_726_604_094e-13)
    (f32.const 1.047_837_697_170_539_4e-19)
    (f32.const 1.446_920_226_931_785_3e+37)
  )
  (f32.const -6.745_507_951_006_969_6e+24)
)
(assert_return
  (invoke "f32.no_factor"
    (f32.const -1.068_904_630_279_072_6e-19)
    (f32.const 1.069_443_321_768_570_6e-25)
    (f32.const 5.683_070_165_258_062_1e+35)
  )
  (f32.const -60_746_539_965_874_176)
)
(assert_return
  (invoke "f32.no_factor"
    (f32.const -6.354_599_380_381_071_6e-26)
    (f32.const 7.524_624_844_008_798_1e-22)
    (f32.const 1_626_770.25)
  )
  (f32.const 1.223_980_290_595_237_9e-15)
)
(assert_return
  (invoke "f64.no_factor"
    (f64.const 2.839_055_470_998_877_4e-128)
    (f64.const 1.473_981_250_649_640_9e-139)
    (f64.const -2.900_122_984_655_076_6e-68)
  )
  (f64.const -8.233_610_026_197_335_8e-196)
)
(assert_return
  (invoke "f64.no_factor"
    (f64.const 6.461_015_505_916_123_1e-200)
    (f64.const -2.392_324_280_297_593_8e-304)
    (f64.const -1.530_073_879_856_160_4e-288)
  )
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_factor"
    (f64.const -2.939_056_292_080_733e-101)
    (f64.const -2.146_156_743_463_355_9e-85)
    (f64.const -2.510_967_223_130_241_6e+144)
  )
  (f64.const 5.388_929_238_536_426_3e+59)
)
(assert_return
  (invoke "f64.no_factor"
    (f64.const -1.778_546_677_170_887_8e-87)
    (f64.const 9.328_516_775_403_212_9e-79)
    (f64.const -1.212_100_904_487_673_5e-76)
  )
  (f64.const -1.130_710_359_943_689e-154)
)
(assert_return
  (invoke "f64.no_factor"
    (f64.const 1.519_485_906_317_736_2e-183)
    (f64.const 8.835_899_214_380_649_9e-175)
    (f64.const -1.735_830_019_469_195_8e+147)
  )
  (f64.const -1.533_761_913_170_190_8e-27)
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
    (f32.const -1_435_111_653_376)
    (f32.const -853_617_636_540_416)
    (f32.const 1.113_849_328_121_675_8e+18)
  )
  (f32.const -9.523_999_620_451_651_3e+32)
)
(assert_return
  (invoke "f32.no_distribute"
    (f32.const -0.026_666_631_922_125_816)
    (f32.const 0.048_412_822_186_946_869)
    (f32.const -0.002_813_697_094_097_733_5)
  )
  (f32.const -6.118_719_466_030_597_7e-05)
)
(assert_return
  (invoke "f32.no_distribute"
    (f32.const -4.661_977_726_604_094e-13)
    (f32.const 1.047_837_697_170_539_4e-19)
    (f32.const 1.446_920_226_931_785_3e+37)
  )
  (f32.const -6.745_508_527_467_721_9e+24)
)
(assert_return
  (invoke "f32.no_distribute"
    (f32.const -1.068_904_630_279_072_6e-19)
    (f32.const 1.069_443_321_768_570_6e-25)
    (f32.const 5.683_070_165_258_062_1e+35)
  )
  (f32.const -60_746_535_670_906_880)
)
(assert_return
  (invoke "f32.no_distribute"
    (f32.const -6.354_599_380_381_071_6e-26)
    (f32.const 7.524_624_844_008_798_1e-22)
    (f32.const 1_626_770.25)
  )
  (f32.const 1.223_980_184_716_119_5e-15)
)
(assert_return
  (invoke "f64.no_distribute"
    (f64.const 2.839_055_470_998_877_4e-128)
    (f64.const 1.473_981_250_649_640_9e-139)
    (f64.const -2.900_122_984_655_076_6e-68)
  )
  (f64.const -8.233_610_026_197_336_7e-196)
)
(assert_return
  (invoke "f64.no_distribute"
    (f64.const 6.461_015_505_916_123_1e-200)
    (f64.const -2.392_324_280_297_593_8e-304)
    (f64.const -1.530_073_879_856_160_4e-288)
  )
  (f64.const -0)
)
(assert_return
  (invoke "f64.no_distribute"
    (f64.const -2.939_056_292_080_733e-101)
    (f64.const -2.146_156_743_463_355_9e-85)
    (f64.const -2.510_967_223_130_241_6e+144)
  )
  (f64.const 5.388_929_238_536_425_4e+59)
)
(assert_return
  (invoke "f64.no_distribute"
    (f64.const -1.778_546_677_170_887_8e-87)
    (f64.const 9.328_516_775_403_212_9e-79)
    (f64.const -1.212_100_904_487_673_5e-76)
  )
  (f64.const -1.130_710_359_943_688_9e-154)
)
(assert_return
  (invoke "f64.no_distribute"
    (f64.const 1.519_485_906_317_736_2e-183)
    (f64.const 8.835_899_214_380_649_9e-175)
    (f64.const -1.735_830_019_469_195_8e+147)
  )
  (f64.const -1.533_761_913_170_190_7e-27)
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
    (f32.const -2.831_348_900_581_148_2e-35)
    (f32.const -7.270_787_044_900_694_7e-20)
    (f32.const 1.640_660_510_412_483_8e-35)
  )
  (f32.const 1.254_746_781_513_478_5e-19)
)
(assert_return
  (invoke "f32.no_regroup_div_mul"
    (f32.const -3.145_897_699_301_650_8e+27)
    (f32.const -4.086_400_341_725_103_5e-35)
    (f32.const -9.245_928_315_588_460_9e+21)
  )
  (f32.const -0)
)
(assert_return
  (invoke "f32.no_regroup_div_mul"
    (f32.const -93_157.429_687_5)
    (f32.const -8.129_265_438_583_388_5e-07)
    (f32.const -1.546_939_673_669_426_9e-37)
  )
  (f32.const -4.895_481_224_181_138_6e+35)
)
(assert_return
  (invoke "f32.no_regroup_div_mul"
    (f32.const -8.899_642_828_403_210_9e-29)
    (f32.const 1.788_772_463_686_302_7e+22)
    (f32.const 5.146_802_318_776_666_7e+20)
  )
  (f32.const -3.093_072_957_414_049_9e-27)
)
(assert_return
  (invoke "f32.no_regroup_div_mul"
    (f32.const 9.222_036_179_566_499_3e+33)
    (f32.const 33_330_492)
    (f32.const -3.253_108_762_736_574_1e+21)
  )
  (f32.const -9.448_654_932_511_660_4e+19)
)
(assert_return
  (invoke "f64.no_regroup_div_mul"
    (f64.const 5.698_811_412_550_058_7e-128)
    (f64.const -1.831_343_913_291_933_6e-36)
    (f64.const 9.543_270_551_003_097_8e-194)
  )
  (f64.const -1.093_596_114_413_330_9e+30)
)
(assert_return
  (invoke "f64.no_regroup_div_mul"
    (f64.const 3.572_892_884_255_075_5e+101)
    (f64.const 3.952_760_844_538_651e-135)
    (f64.const -1.450_781_241_254_900_8e+240)
  )
  (f64.const -0)
)
(assert_return
  (invoke "f64.no_regroup_div_mul"
    (f64.const 9.124_278_383_497_106_7e-145)
    (f64.const 5.556_134_527_714_796_8e+271)
    (f64.const 2.509_082_694_030_650_7e-135)
  )
  (f64.const inf)
)
(assert_return
  (invoke "f64.no_regroup_div_mul"
    (f64.const -4.492_093_000_352_014_7e+144)
    (f64.const -1.208_787_898_401_785_2e+184)
    (f64.const -5.966_133_806_260_622_6e+251)
  )
  (f64.const -9.101_350_780_337_626_2e+76)
)
(assert_return
  (invoke "f64.no_regroup_div_mul"
    (f64.const 7.470_269_158_630_455_4e-181)
    (f64.const 7.568_026_329_781_282_2e-265)
    (f64.const -1.055_389_683_973_521e-252)
  )
  (f64.const -5.356_807_494_101_560_7e-193)
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
    (f32.const -2.831_348_900_581_148_2e-35)
    (f32.const -7.270_787_044_900_694_7e-20)
    (f32.const 1.640_660_510_412_483_8e-35)
  )
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_regroup_mul_div"
    (f32.const -3.145_897_699_301_650_8e+27)
    (f32.const -4.086_400_341_725_103_5e-35)
    (f32.const -9.245_928_315_588_460_9e+21)
  )
  (f32.const -1.390_384_799_192_154_3e-29)
)
(assert_return
  (invoke "f32.no_regroup_mul_div"
    (f32.const -93_157.429_687_5)
    (f32.const -8.129_265_438_583_388_5e-07)
    (f32.const -1.546_939_673_669_426_9e-37)
  )
  (f32.const -4.895_481_620_321_951_1e+35)
)
(assert_return
  (invoke "f32.no_regroup_mul_div"
    (f32.const -8.899_642_828_403_210_9e-29)
    (f32.const 1.788_772_463_686_302_7e+22)
    (f32.const 5.146_802_318_776_666_7e+20)
  )
  (f32.const -3.093_073_150_007_044_3e-27)
)
(assert_return
  (invoke "f32.no_regroup_mul_div"
    (f32.const 9.222_036_179_566_499_3e+33)
    (f32.const 33_330_492)
    (f32.const -3.253_108_762_736_574_1e+21)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "f64.no_regroup_mul_div"
    (f64.const 5.698_811_412_550_058_7e-128)
    (f64.const -1.831_343_913_291_933_6e-36)
    (f64.const 9.543_270_551_003_097_8e-194)
  )
  (f64.const -1.093_596_114_413_331_1e+30)
)
(assert_return
  (invoke "f64.no_regroup_mul_div"
    (f64.const 3.572_892_884_255_075_5e+101)
    (f64.const 3.952_760_844_538_651e-135)
    (f64.const -1.450_781_241_254_900_8e+240)
  )
  (f64.const -9.734_611_044_734_944_7e-274)
)
(assert_return
  (invoke "f64.no_regroup_mul_div"
    (f64.const 9.124_278_383_497_106_7e-145)
    (f64.const 5.556_134_527_714_796_8e+271)
    (f64.const 2.509_082_694_030_650_7e-135)
  )
  (f64.const 2.020_488_136_466_766_3e+262)
)
(assert_return
  (invoke "f64.no_regroup_mul_div"
    (f64.const -4.492_093_000_352_014_7e+144)
    (f64.const -1.208_787_898_401_785_2e+184)
    (f64.const -5.966_133_806_260_622_6e+251)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "f64.no_regroup_mul_div"
    (f64.const 7.470_269_158_630_455_4e-181)
    (f64.const 7.568_026_329_781_282_2e-265)
    (f64.const -1.055_389_683_973_521e-252)
  )
  (f64.const -0)
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
    (f32.const -24_154_321_453_056)
    (f32.const 26_125_811_712)
    (f32.const -238_608_082_534_400)
    (f32.const -2_478_953_463_808)
  )
  (f32.const -265_215_220_383_744)
)
(assert_return
  (invoke "f32.no_reassociate_add"
    (f32.const 0.003_618_105_314_671_993_3)
    (f32.const -0.009_859_439_916_908_741)
    (f32.const 0.063_375_376_164_913_177)
    (f32.const -0.011_150_198_988_616_467)
  )
  (f32.const 0.045_983_839_780_092_239)
)
(assert_return
  (invoke "f32.no_reassociate_add"
    (f32.const -34_206_967_808)
    (f32.const -3_770_877_214_720)
    (f32.const 30_868_424_884_224)
    (f32.const 421_132_075_008)
  )
  (f32.const 27_484_470_902_784)
)
(assert_return
  (invoke "f32.no_reassociate_add"
    (f32.const 153_506_392_571_904)
    (f32.const 925_114_682_048_512)
    (f32.const -36_021_854_208)
    (f32.const 2_450_846_046_486_528)
  )
  (f32.const 3_529_430_982_983_680)
)
(assert_return
  (invoke "f32.no_reassociate_add"
    (f32.const 4.706_003_139_973_800_6e+32)
    (f32.const -3.965_520_407_781_218e+32)
    (f32.const 4.806_693_894_491_044_1e+31)
    (f32.const -3.564_407_275_758_035e+28)
  )
  (f32.const 1.220_795_633_595_999e+32)
)
(assert_return
  (invoke "f64.no_reassociate_add"
    (f64.const -2.070_465_292_771_701_9e+253)
    (f64.const 1.594_689_704_376_369_7e+255)
    (f64.const 4.511_066_365_594_161_3e+257)
    (f64.const -1.374_333_509_186_863_3e+258)
  )
  (f64.const -9.216_528_875_759_986_2e+257)
)
(assert_return
  (invoke "f64.no_reassociate_add"
    (f64.const 3.485_747_658_213_531_3e-164)
    (f64.const 3.121_095_739_131_175_4e-164)
    (f64.const -6.830_085_464_316_209_8e-164)
    (f64.const -2.617_177_347_131_094_9e-179)
  )
  (f64.const -2.232_420_669_715_053_6e-165)
)
(assert_return
  (invoke "f64.no_reassociate_add"
    (f64.const -5.412_584_921_122_726_3e+132)
    (f64.const 5.976_036_561_703_795e+122)
    (f64.const -3.558_300_777_933_963e+131)
    (f64.const 3.736_272_599_576_254_4e+119)
  )
  (f64.const -5.768_414_998_318_146_4e+132)
)
(assert_return
  (invoke "f64.no_reassociate_add"
    (f64.const -6.469_047_714_189_599_4e-96)
    (f64.const 6.428_658_497_474_600_4e-93)
    (f64.const -2.127_769_807_228_560_4e-79)
    (f64.const 8.768_287_273_189_493e-79)
  )
  (f64.const 6.640_517_465_960_996_5e-79)
)
(assert_return
  (invoke "f64.no_reassociate_add"
    (f64.const -1.642_213_708_641_482_8e+193)
    (f64.const -8.803_213_793_979_071e+184)
    (f64.const 4.499_570_597_828_578_5e+194)
    (f64.const -1.140_912_671_662_743_9e+194)
  )
  (f64.const 3.194_436_554_421_365_6e+194)
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
    (f32.const 1.904_514_939_832_524_1e-35)
    (f32.const 2.254_886_138_919_332e-10)
    (f32.const -6.964_321_833_196_614_2e+30)
    (f32.const 2.690_283_181_342_554_7e-17)
  )
  (f32.const -7.876_417_295_001_129_6e-31)
)
(assert_return
  (invoke "f32.no_reassociate_mul"
    (f32.const 1.873_312_459_090_269_1e-17)
    (f32.const -7.565_903_872_775_787_2e+30)
    (f32.const -3.080_768_406_543_060_7e-38)
    (f32.const -1.592_759_229_027_010_5e+21)
  )
  (f32.const -0.006_954_728_625_714_778_9)
)
(assert_return
  (invoke "f32.no_reassociate_mul"
    (f32.const 5.035_557_508_351_138_5e-15)
    (f32.const -56_466_884_228_284_416)
    (f32.const -1.174_051_199_141_767_9e-12)
    (f32.const 8.498_472_640_833_220_8e+22)
  )
  (f32.const 28_370_653_937_664)
)
(assert_return
  (invoke "f32.no_reassociate_mul"
    (f32.const 4.639_494_588_818_366_8e-32)
    (f32.const 2.544_493_617_355_654_1e+23)
    (f32.const -72_460_977_366_368_256)
    (f32.const -9.625_110_358_460_989_4e+17)
  )
  (f32.const 8.233_451_127_971_567_1e+26)
)
(assert_return
  (invoke "f32.no_reassociate_mul"
    (f32.const -1.942_053_589_140_402_7e-30)
    (f32.const 2.320_035_524_507_263_8e-15)
    (f32.const -9.772_747_993_469_238_3)
    (f32.const 8.640_659_873_752_678_4e+17)
  )
  (f32.const 3.511_361_637_582_630_4e-26)
)
(assert_return
  (invoke "f64.no_reassociate_mul"
    (f64.const -3.109_868_654_414_945_8e-201)
    (f64.const -2.071_319_048_774_543_4e+298)
    (f64.const -7.162_612_845_524_978e-114)
    (f64.const -8.847_825_329_596_909e+199)
  )
  (f64.const 4.082_226_181_327_861_4e+184)
)
(assert_return
  (invoke "f64.no_reassociate_mul"
    (f64.const 6.044_271_641_295_680_7e+136)
    (f64.const 6.700_545_015_107_396_5e-156)
    (f64.const -3.146_966_427_579_818_5e-271)
    (f64.const -6.401_677_295_640_561_5e+162)
  )
  (f64.const 8.159_057_447_560_471_2e-127)
)
(assert_return
  (invoke "f64.no_reassociate_mul"
    (f64.const 2.216_807_720_454_268e-151)
    (f64.const -1.802_234_186_536_721_6e+237)
    (f64.const 7.500_283_778_521_930_6e-230)
    (f64.const -4.144_121_524_339_569_3e+26)
  )
  (f64.const 1.241_793_627_299_937e-116)
)
(assert_return
  (invoke "f64.no_reassociate_mul"
    (f64.const 2.431_806_596_629_872e+208)
    (f64.const 6.508_014_075_793_435_9e-128)
    (f64.const 1.759_642_128_723_389_7e+67)
    (f64.const -1.416_141_401_305_357_9e-07)
  )
  (f64.const -3.943_741_918_531_222_8e+141)
)
(assert_return
  (invoke "f64.no_reassociate_mul"
    (f64.const 3.849_767_156_964_772_2e-71)
    (f64.const 7.000_875_494_322_487_5e-239)
    (f64.const -2.536_887_825_218_386_5e+219)
    (f64.const -6.101_114_518_858_448_5e-181)
  )
  (f64.const 4.171_548_126_376_116_6e-270)
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
(assert_return (invoke "f32.no_fold_div_0" (f32.const 1)) (f32.const inf))
(assert_return (invoke "f32.no_fold_div_0" (f32.const -1)) (f32.const -inf))
(assert_return (invoke "f32.no_fold_div_0" (f32.const inf)) (f32.const inf))
(assert_return (invoke "f32.no_fold_div_0" (f32.const -inf)) (f32.const -inf))
(assert_return_canonical_nan (invoke "f32.no_fold_div_0" (f32.const 0)))
(assert_return_canonical_nan (invoke "f32.no_fold_div_0" (f32.const -0)))
(assert_return_arithmetic_nan
  (invoke "f32.no_fold_div_0" (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "f32.no_fold_div_0" (f32.const nan:0x400000))
)
(assert_return (invoke "f64.no_fold_div_0" (f64.const 1)) (f64.const inf))
(assert_return (invoke "f64.no_fold_div_0" (f64.const -1)) (f64.const -inf))
(assert_return (invoke "f64.no_fold_div_0" (f64.const inf)) (f64.const inf))
(assert_return (invoke "f64.no_fold_div_0" (f64.const -inf)) (f64.const -inf))
(assert_return_canonical_nan (invoke "f64.no_fold_div_0" (f64.const 0)))
(assert_return_canonical_nan (invoke "f64.no_fold_div_0" (f64.const -0)))
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
(assert_return (invoke "f32.no_fold_div_neg0" (f32.const 1)) (f32.const -inf))
(assert_return (invoke "f32.no_fold_div_neg0" (f32.const -1)) (f32.const inf))
(assert_return (invoke "f32.no_fold_div_neg0" (f32.const inf)) (f32.const -inf))
(assert_return (invoke "f32.no_fold_div_neg0" (f32.const -inf)) (f32.const inf))
(assert_return_canonical_nan (invoke "f32.no_fold_div_neg0" (f32.const 0)))
(assert_return_canonical_nan (invoke "f32.no_fold_div_neg0" (f32.const -0)))
(assert_return_arithmetic_nan
  (invoke "f32.no_fold_div_neg0" (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "f32.no_fold_div_neg0" (f32.const nan:0x400000))
)
(assert_return (invoke "f64.no_fold_div_neg0" (f64.const 1)) (f64.const -inf))
(assert_return (invoke "f64.no_fold_div_neg0" (f64.const -1)) (f64.const inf))
(assert_return (invoke "f64.no_fold_div_neg0" (f64.const inf)) (f64.const -inf))
(assert_return (invoke "f64.no_fold_div_neg0" (f64.const -inf)) (f64.const inf))
(assert_return_canonical_nan (invoke "f64.no_fold_div_neg0" (f64.const 0)))
(assert_return_canonical_nan (invoke "f64.no_fold_div_neg0" (f64.const -0)))
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
    (f32.const 7.285_491_363_580_182_6e-25)
    (f32.const 4.236_579_586_704_008_2e-21)
  )
  (f32.const 4.236_653_499_815_383_8e-21)
)
(assert_return
  (invoke "f32.no_fold_to_hypot"
    (f32.const -7.470_285_075_631_298_8e-22)
    (f32.const -7.453_745_026_374_829_9e-33)
  )
  (f32.const 7.468_043_953_354_002_1e-22)
)
(assert_return
  (invoke "f32.no_fold_to_hypot"
    (f32.const -7.708_949_923_849_511_2e-35)
    (f32.const -3.262_721_433_852_002_3e-21)
  )
  (f32.const 3.262_769_497_569_235_6e-21)
)
(assert_return
  (invoke "f32.no_fold_to_hypot"
    (f32.const -35.428_180_694_580_078)
    (f32.const 174_209.484_375)
  )
  (f32.const 174_209.5)
)
(assert_return
  (invoke "f32.no_fold_to_hypot"
    (f32.const 2.062_814_311_395_588_9e-23)
    (f32.const -4.634_475_271_768_322e-22)
  )
  (f32.const 4.630_320_183_608_341_9e-22)
)
(assert_return
  (invoke "f64.no_fold_to_hypot"
    (f64.const 3.863_640_258_986_321_1e-192)
    (f64.const 1.913_301_475_262_401_4e-161)
  )
  (f64.const 1.912_089_375_323_555_4e-161)
)
(assert_return
  (invoke "f64.no_fold_to_hypot"
    (f64.const 1.385_612_389_503_297_7e+119)
    (f64.const -2.828_038_515_930_043_3e+123)
  )
  (f64.const 2.828_038_519_324_483_4e+123)
)
(assert_return
  (invoke "f64.no_fold_to_hypot"
    (f64.const 6.502_729_096_641_791_6e-162)
    (f64.const -4.544_399_933_151_274_7e-231)
  )
  (f64.const 6.668_276_248_455_232_5e-162)
)
(assert_return
  (invoke "f64.no_fold_to_hypot"
    (f64.const -2.234_023_202_420_260_4e-157)
    (f64.const 3.435_929_714_143_315_1e-221)
  )
  (f64.const 2.234_023_202_379_923_4e-157)
)
(assert_return
  (invoke "f64.no_fold_to_hypot"
    (f64.const 2.797_963_998_630_553_8e-202)
    (f64.const -1.906_867_996_862_015_9e-155)
  )
  (f64.const 1.906_867_996_862_010_5e-155)
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
  (invoke "f32.no_approximate_reciprocal"
    (f32.const -0.001_132_975_681_684_911_3)
  )
  (f32.const -882.631_469_726_562_5)
)
(assert_return
  (invoke "f32.no_approximate_reciprocal" (f32.const 3.237_530_143_903_465e+38))
  (f32.const 3.088_774_304_929_441_3e-39)
)
(assert_return
  (invoke "f32.no_approximate_reciprocal"
    (f32.const -1.272_599_016_394_562_8e-28)
  )
  (f32.const -7.857_934_595_785_829_1e+27)
)
(assert_return
  (invoke "f32.no_approximate_reciprocal"
    (f32.const 1.030_206_791_456_307_9e+23)
  )
  (f32.const 9.706_789_077_198_894_8e-24)
)
(assert_return
  (invoke "f32.no_approximate_reciprocal"
    (f32.const -2.844_376_290_951_804_6e-25)
  )
  (f32.const -3.515_709_324_545_706_2e+24)
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
  (invoke "f32.no_approximate_reciprocal_sqrt"
    (f32.const 1.611_786_469_265_033_6e-13)
  )
  (f32.const 2_490_842.5)
)
(assert_return
  (invoke "f32.no_approximate_reciprocal_sqrt"
    (f32.const 0.007_449_136_581_271_886_8)
  )
  (f32.const 11.586_359_977_722_168)
)
(assert_return
  (invoke "f32.no_approximate_reciprocal_sqrt"
    (f32.const 2.339_817_041_277_766_1e-20)
  )
  (f32.const 6_537_460_224)
)
(assert_return
  (invoke "f32.no_approximate_reciprocal_sqrt"
    (f32.const 1.112_350_432_575_480_4e-13)
  )
  (f32.const 2_998_328.25)
)
(assert_return
  (invoke "f32.no_approximate_reciprocal_sqrt"
    (f32.const 1.765_306_308_504_571_5e-26)
  )
  (f32.const 7_526_446_268_416)
)
(assert_return
  (invoke "f64.no_fuse_reciprocal_sqrt"
    (f64.const 4.472_459_252_766_336_6e+267)
  )
  (f64.const 1.495_294_733_589_809_6e-134)
)
(assert_return
  (invoke "f64.no_fuse_reciprocal_sqrt" (f64.const 4.752_392_260_007_119_1e+93))
  (f64.const 1.450_587_263_895_484_3e-47)
)
(assert_return
  (invoke "f64.no_fuse_reciprocal_sqrt" (f64.const 2.901_441_588_539_243_6e+31))
  (f64.const 1.856_492_008_479_360_8e-16)
)
(assert_return
  (invoke "f64.no_fuse_reciprocal_sqrt"
    (f64.const 1.396_612_507_697_477_8e+201)
  )
  (f64.const 2.675_851_675_107_213_2e-101)
)
(assert_return
  (invoke "f64.no_fuse_reciprocal_sqrt" (f64.const 1.515_964_154_407_044_3e+44))
  (f64.const 8.121_860_649_480_894_1e-23)
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
  (invoke "f32.no_approximate_sqrt_reciprocal"
    (f32.const 1.895_057_081_300_418_6e+18)
  )
  (f32.const 7.264_217_560_809_527_2e-10)
)
(assert_return
  (invoke "f32.no_approximate_sqrt_reciprocal"
    (f32.const 0.002_565_894_043_073_058_1)
  )
  (f32.const 19.741_521_835_327_148)
)
(assert_return
  (invoke "f32.no_approximate_sqrt_reciprocal"
    (f32.const 6.326_544_870_226_830_3e+20)
  )
  (f32.const 3.975_728_427_030_311_7e-11)
)
(assert_return
  (invoke "f32.no_approximate_sqrt_reciprocal" (f32.const 14_153.539_062_5))
  (f32.const 0.008_405_576_460_063_457_5)
)
(assert_return
  (invoke "f32.no_approximate_sqrt_reciprocal"
    (f32.const 2.617_372_998_283_620_7e+31)
  )
  (f32.const 1.954_641_816_445_993_3e-16)
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
  (invoke "i32.no_fold_f32_s" (i32.const 16_777_216))
  (i32.const 16_777_216)
)
(assert_return
  (invoke "i32.no_fold_f32_s" (i32.const 16_777_217))
  (i32.const 16_777_216)
)
(assert_return
  (invoke "i32.no_fold_f32_s" (i32.const -268_435_440))
  (i32.const -268_435_440)
)
(assert_return
  (invoke "i32.no_fold_f32_u" (i32.const 16_777_216))
  (i32.const 16_777_216)
)
(assert_return
  (invoke "i32.no_fold_f32_u" (i32.const 16_777_217))
  (i32.const 16_777_216)
)
(assert_return
  (invoke "i32.no_fold_f32_u" (i32.const -268_435_440))
  (i32.const -268_435_456)
)
(assert_return
  (invoke "i64.no_fold_f64_s" (i64.const 9_007_199_254_740_992))
  (i64.const 9_007_199_254_740_992)
)
(assert_return
  (invoke "i64.no_fold_f64_s" (i64.const 9_007_199_254_740_993))
  (i64.const 9_007_199_254_740_992)
)
(assert_return
  (invoke "i64.no_fold_f64_s" (i64.const -1_152_921_504_606_845_952))
  (i64.const -1_152_921_504_606_845_952)
)
(assert_return
  (invoke "i64.no_fold_f64_u" (i64.const 9_007_199_254_740_992))
  (i64.const 9_007_199_254_740_992)
)
(assert_return
  (invoke "i64.no_fold_f64_u" (i64.const 9_007_199_254_740_993))
  (i64.const 9_007_199_254_740_992)
)
(assert_return
  (invoke "i64.no_fold_f64_u" (i64.const -1_152_921_504_606_845_952))
  (i64.const -1_152_921_504_606_846_976)
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
    (f32.const 1.213_828_198_381_745_2e-14)
    (f32.const -2.094_638_418_270_733_4e-08)
  )
  (f32.const 1.243_449_787_580_175_3e-14)
)
(assert_return
  (invoke "f32.no_fold_add_sub"
    (f32.const -1.976_819_703_486_398_8e-07)
    (f32.const 3.715_456_614_372_669_7e-06)
  )
  (f32.const -1.976_820_840_354_776e-07)
)
(assert_return
  (invoke "f32.no_fold_add_sub"
    (f32.const -9.596_213_016_386_574_8e+24)
    (f32.const -3.538_041_396_989_809e+30)
  )
  (f32.const -9.671_406_556_917_033_4e+24)
)
(assert_return
  (invoke "f32.no_fold_add_sub"
    (f32.const 5.054_345_810_151_827_1e-24)
    (f32.const 2.457_265_575_605_754_3e-17)
  )
  (f32.const 4.963_083_675_318_166e-24)
)
(assert_return
  (invoke "f32.no_fold_add_sub"
    (f32.const -3.369_314_682_316_122_5e-33)
    (f32.const -7.101_491_652_849_161_1e-26)
  )
  (f32.const -6.162_975_822_039_154_7e-33)
)
(assert_return
  (invoke "f64.no_fold_add_sub"
    (f64.const -8.445_702_651_973_108_6e-264)
    (f64.const 1.110_684_389_828_854_1e-258)
  )
  (f64.const -8.445_702_651_873_978e-264)
)
(assert_return
  (invoke "f64.no_fold_add_sub"
    (f64.const 8.198_798_715_927_054_9e-165)
    (f64.const 4.624_035_606_110_903_4e-159)
  )
  (f64.const 8.198_798_715_897_085_2e-165)
)
(assert_return
  (invoke "f64.no_fold_add_sub"
    (f64.const -1.360_451_132_206_671_4e-09)
    (f64.const -0.175_143_174_070_709_81)
  )
  (f64.const -1.360_451_140_630_658_5e-09)
)
(assert_return
  (invoke "f64.no_fold_add_sub"
    (f64.const -3.944_335_437_865_966e-103)
    (f64.const 1.663_809_741_322_667_1e-92)
  )
  (f64.const -3.944_335_550_032_510_4e-103)
)
(assert_return
  (invoke "f64.no_fold_add_sub"
    (f64.const -5.078_309_818_866_000_2e-187)
    (f64.const -1.079_043_164_446_110_4e-177)
  )
  (f64.const -5.078_310_479_375_670_4e-187)
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
    (f32.const -676.474_365_234_375)
    (f32.const 403.036_804_199_218_75)
  )
  (f32.const -676.474_426_269_531_25)
)
(assert_return
  (invoke "f32.no_fold_sub_add"
    (f32.const -6.305_943_118_406_007_7e-34)
    (f32.const 3.671_860_068_759_610_2e-29)
  )
  (f32.const -6.319_457_630_020_617_6e-34)
)
(assert_return
  (invoke "f32.no_fold_sub_add"
    (f32.const 83_184_800)
    (f32.const 46_216_216_576)
  )
  (f32.const 83_185_664)
)
(assert_return
  (invoke "f32.no_fold_sub_add"
    (f32.const 2.211_956_963_080_186_1e-12)
    (f32.const -1.043_792_963_173_473_3e-08)
  )
  (f32.const 2.211_564_265_053_311_8e-12)
)
(assert_return
  (invoke "f32.no_fold_sub_add"
    (f32.const 0.149_443_954_229_354_86)
    (f32.const -27_393.650_390_625)
  )
  (f32.const 0.150_390_625)
)
(assert_return
  (invoke "f64.no_fold_sub_add"
    (f64.const 9.036_598_261_794_624_3e+76)
    (f64.const -9.581_864_275_355_520_2e+77)
  )
  (f64.const 9.036_598_261_794_628_1e+76)
)
(assert_return
  (invoke "f64.no_fold_sub_add"
    (f64.const 4.423_040_356_465_881_5e-201)
    (f64.const 2.671_349_104_936_657_6e-195)
  )
  (f64.const 4.423_040_356_647_721_1e-201)
)
(assert_return
  (invoke "f64.no_fold_sub_add"
    (f64.const 4.095_348_452_776_428_8e+75)
    (f64.const -4.050_190_019_576_568_7e+90)
  )
  (f64.const 4.070_815_637_249_397_5e+75)
)
(assert_return
  (invoke "f64.no_fold_sub_add"
    (f64.const 2.400_888_920_755_443_3e-08)
    (f64.const -0.000_172_537_979_291_884_84)
  )
  (f64.const 2.400_888_920_756_506_1e-08)
)
(assert_return
  (invoke "f64.no_fold_sub_add"
    (f64.const 4.336_754_291_830_586_6e-111)
    (f64.const -3.959_770_670_822_712_2e-109)
  )
  (f64.const 4.336_754_291_830_596_9e-111)
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
    (f32.const -32_476_715_183_767_552)
    (f32.const 1.012_137_541_069_350_5e-14)
  )
  (f32.const -32_476_713_036_283_904)
)
(assert_return
  (invoke "f32.no_fold_mul_div"
    (f32.const -1.556_116_302_481_314_1e-08)
    (f32.const 1.579_982_838_560_999_8e-32)
  )
  (f32.const -1.556_114_526_124_474_7e-08)
)
(assert_return
  (invoke "f32.no_fold_mul_div"
    (f32.const -6.763_110_003_396_490_7e-15)
    (f32.const -441_323_995_791_360)
  )
  (f32.const -6.763_109_579_880_017_1e-15)
)
(assert_return
  (invoke "f32.no_fold_mul_div"
    (f32.const 7_505_613_726_679_040)
    (f32.const -2.160_384_080_489_742_3e+18)
  )
  (f32.const 7_505_613_189_808_128)
)
(assert_return
  (invoke "f32.no_fold_mul_div"
    (f32.const -2.362_576_059_154_980_8e-28)
    (f32.const -1.080_875_926_956_492_7e-11)
  )
  (f32.const -2.362_576_540_637_466_9e-28)
)
(assert_return
  (invoke "f64.no_fold_mul_div"
    (f64.const -1.353_210_371_357_558_6e-252)
    (f64.const -3.347_836_467_564_916_2e-62)
  )
  (f64.const -1.353_210_371_367_243_4e-252)
)
(assert_return
  (invoke "f64.no_fold_mul_div"
    (f64.const 7.766_217_431_318_084_5e+115)
    (f64.const 1.959_591_556_069_395_3e+176)
  )
  (f64.const 7.766_217_431_318_085_4e+115)
)
(assert_return
  (invoke "f64.no_fold_mul_div"
    (f64.const -7.180_117_811_902_948_5e+71)
    (f64.const -9.320_036_042_623_635_9e-167)
  )
  (f64.const -7.180_117_811_902_947_5e+71)
)
(assert_return
  (invoke "f64.no_fold_mul_div"
    (f64.const 1.726_001_072_469_306_3e-50)
    (f64.const 3.568_792_428_129_926e-273)
  )
  (f64.const 1.661_286_799_244_215_9e-50)
)
(assert_return
  (invoke "f64.no_fold_mul_div"
    (f64.const -9.145_223_045_828_962_1e+198)
    (f64.const -5.562_094_034_342_844_7e-99)
  )
  (f64.const -9.145_223_045_828_963_2e+198)
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
    (f32.const -511_517_982_720)
    (f32.const 986_062_208)
  )
  (f32.const -511_517_949_952)
)
(assert_return
  (invoke "f32.no_fold_div_mul"
    (f32.const -2.494_485_295_186_516_8e-16)
    (f32.const -4.153_983_354_626_689_1e-06)
  )
  (f32.const -2.494_485_559_884_312_8e-16)
)
(assert_return
  (invoke "f32.no_fold_div_mul"
    (f32.const 2.082_785_500_506_969_5e-38)
    (f32.const -235.198_471_069_335_94)
  )
  (f32.const 2.082_801_335_179_616_3e-38)
)
(assert_return
  (invoke "f32.no_fold_div_mul"
    (f32.const -6.249_948_683_472_857_5e-23)
    (f32.const -6.963_126_049_722_859_5e+17)
  )
  (f32.const -6.249_919_022_302_821_2e-23)
)
(assert_return
  (invoke "f32.no_fold_div_mul"
    (f32.const 5.835_351_440_532_773_3e-30)
    (f32.const 212_781_120)
  )
  (f32.const 5.835_351_816_690_965_6e-30)
)
(assert_return
  (invoke "f64.no_fold_div_mul"
    (f64.const 3.598_464_425_993_536_2e-264)
    (f64.const -2.881_226_329_803_331_8e+55)
  )
  (f64.const 3.598_503_435_656_548_5e-264)
)
(assert_return
  (invoke "f64.no_fold_div_mul"
    (f64.const -1.748_636_704_747_944_7e-215)
    (f64.const 1.650_873_845_479_863_6e-16)
  )
  (f64.const -1.748_636_704_747_945e-215)
)
(assert_return
  (invoke "f64.no_fold_div_mul"
    (f64.const -3.140_341_989_542_684_1e-44)
    (f64.const 9.428_298_090_819_195_5e+128)
  )
  (f64.const -3.140_341_989_542_683_6e-44)
)
(assert_return
  (invoke "f64.no_fold_div_mul"
    (f64.const -3.919_745_428_533_519e-84)
    (f64.const -2.131_474_717_965_470_5e+85)
  )
  (f64.const -3.919_745_428_533_518_5e-84)
)
(assert_return
  (invoke "f64.no_fold_div_mul"
    (f64.const -5.734_160_003_788_981_7e+186)
    (f64.const 6.350_805_843_612_228_8e+297)
  )
  (f64.const -5.734_160_003_788_980_7e+186)
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
  (invoke "f32.no_fold_div2_mul2" (f32.const 2.350_988_561_514_728_6e-38))
  (f32.const 2.350_988_701_644_575e-38)
)
(assert_return
  (invoke "f64.no_fold_div2_mul2" (f64.const 4.450_147_717_014_402_3e-308))
  (f64.const 4.450_147_717_014_402_8e-308)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7c\01\7c\03\82\80\80\80\00\01\00\07\9a\80\80"
  "\80\00\01\16\6e\6f\5f\66\6f\6c\64\5f\64\65\6d\6f"
  "\74\65\5f\70\72\6f\6d\6f\74\65\00\00\0a\8c\80\80"
  "\80\00\01\86\80\80\80\00\00\20\00\b6\bb\0b"
)
(assert_return
  (invoke "no_fold_demote_promote" (f64.const -1.717_629_722_056_948_1e-40))
  (f64.const -1.717_627_579_661_501_3e-40)
)
(assert_return
  (invoke "no_fold_demote_promote" (f64.const -2.846_477_557_330_405_5e-26))
  (f64.const -2.846_477_619_188_087_1e-26)
)
(assert_return
  (invoke "no_fold_demote_promote" (f64.const 2.089_706_996_999_092_3e+32))
  (f64.const 2.089_707_004_453_259_8e+32)
)
(assert_return
  (invoke "no_fold_demote_promote" (f64.const -4.707_416_041_612_177_5e-27))
  (f64.const -4.707_416_133_155_602_4e-27)
)
(assert_return
  (invoke "no_fold_demote_promote" (f64.const 2.335_945_149_795_088e+31))
  (f64.const 2.335_945_222_454_219_8e+31)
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
(assert_return (invoke "no_fold_promote_demote" (f32.const 0)) (f32.const 0))
(assert_return (invoke "no_fold_promote_demote" (f32.const -0)) (f32.const -0))
(assert_return
  (invoke "no_fold_promote_demote" (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "no_fold_promote_demote" (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "no_fold_promote_demote" (f32.const 1.175_494_210_692_441_1e-38))
  (f32.const 1.175_494_210_692_441_1e-38)
)
(assert_return
  (invoke "no_fold_promote_demote" (f32.const -1.175_494_210_692_441_1e-38))
  (f32.const -1.175_494_210_692_441_1e-38)
)
(assert_return
  (invoke "no_fold_promote_demote" (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "no_fold_promote_demote" (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "no_fold_promote_demote" (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "no_fold_promote_demote" (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
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
    (f64.const 4.941_266_527_909_197_2e-29)
    (f32.const 1.876_718_272_300_497_2e-36)
  )
  (f32.const 4.941_266_675_715_418_8e-29)
)
(assert_return
  (invoke "no_demote_mixed_add"
    (f64.const 140_851_523_637.693_85)
    (f32.const 401_096_441_856)
  )
  (f32.const 541_947_953_152)
)
(assert_return
  (invoke "no_demote_mixed_add"
    (f64.const 2.083_116_091_419_285_2e-36)
    (f32.const -6.050_095_133_542_437_4e-37)
  )
  (f32.const 1.478_106_570_276_041_5e-36)
)
(assert_return
  (invoke "no_demote_mixed_add"
    (f64.const -1.003_282_755_367_462_6e-06)
    (f32.const 1.931_291_793_155_764_9e-09)
  )
  (f32.const -1.001_351_506_602_077_3e-06)
)
(assert_return
  (invoke "no_demote_mixed_add"
    (f64.const -1.384_020_703_575_271_1e-06)
    (f32.const -5.202_814_091_012_641_9e-13)
  )
  (f32.const -1.384_021_174_999_361_4e-06)
)
(assert_return
  (invoke "no_demote_mixed_add_commuted"
    (f32.const 1.876_718_272_300_497_2e-36)
    (f64.const 4.941_266_527_909_197_2e-29)
  )
  (f32.const 4.941_266_675_715_418_8e-29)
)
(assert_return
  (invoke "no_demote_mixed_add_commuted"
    (f32.const 401_096_441_856)
    (f64.const 140_851_523_637.693_85)
  )
  (f32.const 541_947_953_152)
)
(assert_return
  (invoke "no_demote_mixed_add_commuted"
    (f32.const -6.050_095_133_542_437_4e-37)
    (f64.const 2.083_116_091_419_285_2e-36)
  )
  (f32.const 1.478_106_570_276_041_5e-36)
)
(assert_return
  (invoke "no_demote_mixed_add_commuted"
    (f32.const 1.931_291_793_155_764_9e-09)
    (f64.const -1.003_282_755_367_462_6e-06)
  )
  (f32.const -1.001_351_506_602_077_3e-06)
)
(assert_return
  (invoke "no_demote_mixed_add_commuted"
    (f32.const -5.202_814_091_012_641_9e-13)
    (f64.const -1.384_020_703_575_271_1e-06)
  )
  (f32.const -1.384_021_174_999_361_4e-06)
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
    (f64.const 7.869_935_327_202_667_9e+24)
    (f32.const 4.086_347_059_257_409_5e+18)
  )
  (f32.const 7.869_930_965_402_192_2e+24)
)
(assert_return
  (invoke "no_demote_mixed_sub"
    (f64.const -1_535_841_968.905_654_4)
    (f32.const 239_897.281_25)
  )
  (f32.const -1_536_081_920)
)
(assert_return
  (invoke "no_demote_mixed_sub"
    (f64.const -102.194_592_727_226_02)
    (f32.const 0.000_394_261_383_917_182_68)
  )
  (f32.const -102.194_984_436_035_16)
)
(assert_return
  (invoke "no_demote_mixed_sub"
    (f64.const 5.645_470_375_565_188_2e-17)
    (f32.const 5.851_077_007_074_829_8e-22)
  )
  (f32.const 5.645_411_727_723_357_7e-17)
)
(assert_return
  (invoke "no_demote_mixed_sub"
    (f64.const 27_090.388_466_832_894)
    (f32.const 63_120.890_625)
  )
  (f32.const -36_030.503_906_25)
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
  (f32.const 1)
)
(assert_return
  (invoke "f32.i32.no_fold_trunc_s_convert_s" (f32.const -1.5))
  (f32.const -1)
)
(assert_return
  (invoke "f32.i32.no_fold_trunc_u_convert_s" (f32.const 1.5))
  (f32.const 1)
)
(assert_return
  (invoke "f32.i32.no_fold_trunc_u_convert_s" (f32.const -0.5))
  (f32.const 0)
)
(assert_return
  (invoke "f32.i32.no_fold_trunc_s_convert_u" (f32.const 1.5))
  (f32.const 1)
)
(assert_return
  (invoke "f32.i32.no_fold_trunc_s_convert_u" (f32.const -1.5))
  (f32.const 4_294_967_296)
)
(assert_return
  (invoke "f32.i32.no_fold_trunc_u_convert_u" (f32.const 1.5))
  (f32.const 1)
)
(assert_return
  (invoke "f32.i32.no_fold_trunc_u_convert_u" (f32.const -0.5))
  (f32.const 0)
)
(assert_return
  (invoke "f64.i32.no_fold_trunc_s_convert_s" (f64.const 1.5))
  (f64.const 1)
)
(assert_return
  (invoke "f64.i32.no_fold_trunc_s_convert_s" (f64.const -1.5))
  (f64.const -1)
)
(assert_return
  (invoke "f64.i32.no_fold_trunc_u_convert_s" (f64.const 1.5))
  (f64.const 1)
)
(assert_return
  (invoke "f64.i32.no_fold_trunc_u_convert_s" (f64.const -0.5))
  (f64.const 0)
)
(assert_return
  (invoke "f64.i32.no_fold_trunc_s_convert_u" (f64.const 1.5))
  (f64.const 1)
)
(assert_return
  (invoke "f64.i32.no_fold_trunc_s_convert_u" (f64.const -1.5))
  (f64.const 4_294_967_295)
)
(assert_return
  (invoke "f64.i32.no_fold_trunc_u_convert_u" (f64.const 1.5))
  (f64.const 1)
)
(assert_return
  (invoke "f64.i32.no_fold_trunc_u_convert_u" (f64.const -0.5))
  (f64.const 0)
)
(assert_return
  (invoke "f32.i64.no_fold_trunc_s_convert_s" (f32.const 1.5))
  (f32.const 1)
)
(assert_return
  (invoke "f32.i64.no_fold_trunc_s_convert_s" (f32.const -1.5))
  (f32.const -1)
)
(assert_return
  (invoke "f32.i64.no_fold_trunc_u_convert_s" (f32.const 1.5))
  (f32.const 1)
)
(assert_return
  (invoke "f32.i64.no_fold_trunc_u_convert_s" (f32.const -0.5))
  (f32.const 0)
)
(assert_return
  (invoke "f32.i64.no_fold_trunc_s_convert_u" (f32.const 1.5))
  (f32.const 1)
)
(assert_return
  (invoke "f32.i64.no_fold_trunc_s_convert_u" (f32.const -1.5))
  (f32.const 1.844_674_407_370_955_2e+19)
)
(assert_return
  (invoke "f32.i64.no_fold_trunc_u_convert_u" (f32.const 1.5))
  (f32.const 1)
)
(assert_return
  (invoke "f32.i64.no_fold_trunc_u_convert_u" (f32.const -0.5))
  (f32.const 0)
)
(assert_return
  (invoke "f64.i64.no_fold_trunc_s_convert_s" (f64.const 1.5))
  (f64.const 1)
)
(assert_return
  (invoke "f64.i64.no_fold_trunc_s_convert_s" (f64.const -1.5))
  (f64.const -1)
)
(assert_return
  (invoke "f64.i64.no_fold_trunc_u_convert_s" (f64.const 1.5))
  (f64.const 1)
)
(assert_return
  (invoke "f64.i64.no_fold_trunc_u_convert_s" (f64.const -0.5))
  (f64.const 0)
)
(assert_return
  (invoke "f64.i64.no_fold_trunc_s_convert_u" (f64.const 1.5))
  (f64.const 1)
)
(assert_return
  (invoke "f64.i64.no_fold_trunc_s_convert_u" (f64.const -1.5))
  (f64.const 1.844_674_407_370_955_2e+19)
)
(assert_return
  (invoke "f64.i64.no_fold_trunc_u_convert_u" (f64.const 1.5))
  (f64.const 1)
)
(assert_return
  (invoke "f64.i64.no_fold_trunc_u_convert_u" (f64.const -0.5))
  (f64.const 0)
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
(invoke "init" (i32.const 0) (f32.const 15.100_000_381_469_727))
(invoke "init" (i32.const 4) (f32.const 15.199_999_809_265_137))
(invoke "init" (i32.const 8) (f32.const 15.300_000_190_734_863))
(invoke "init" (i32.const 12) (f32.const 15.399_999_618_530_273))
(assert_return
  (invoke "check" (i32.const 0))
  (f32.const 15.100_000_381_469_727)
)
(assert_return
  (invoke "check" (i32.const 4))
  (f32.const 15.199_999_809_265_137)
)
(assert_return
  (invoke "check" (i32.const 8))
  (f32.const 15.300_000_190_734_863)
)
(assert_return
  (invoke "check" (i32.const 12))
  (f32.const 15.399_999_618_530_273)
)
(invoke "run" (i32.const 16) (f32.const 3))
(assert_return
  (invoke "check" (i32.const 0))
  (f32.const 5.033_333_301_544_189_5)
)
(assert_return
  (invoke "check" (i32.const 4))
  (f32.const 5.066_666_603_088_378_9)
)
(assert_return
  (invoke "check" (i32.const 8))
  (f32.const 5.099_999_904_632_568_4)
)
(assert_return
  (invoke "check" (i32.const 12))
  (f32.const 5.133_333_206_176_757_8)
)
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
(invoke "init" (i32.const 8) (f64.const 15.199_999_999_999_999))
(invoke "init" (i32.const 16) (f64.const 15.300_000_000_000_001))
(invoke "init" (i32.const 24) (f64.const 15.4))
(assert_return (invoke "check" (i32.const 0)) (f64.const 15.1))
(assert_return
  (invoke "check" (i32.const 8))
  (f64.const 15.199_999_999_999_999)
)
(assert_return
  (invoke "check" (i32.const 16))
  (f64.const 15.300_000_000_000_001)
)
(assert_return (invoke "check" (i32.const 24)) (f64.const 15.4))
(invoke "run" (i32.const 32) (f64.const 3))
(assert_return
  (invoke "check" (i32.const 0))
  (f64.const 5.033_333_333_333_333_2)
)
(assert_return
  (invoke "check" (i32.const 8))
  (f64.const 5.066_666_666_666_666_4)
)
(assert_return
  (invoke "check" (i32.const 16))
  (f64.const 5.100_000_000_000_000_5)
)
(assert_return
  (invoke "check" (i32.const 24))
  (f64.const 5.133_333_333_333_333_7)
)
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
(assert_return (invoke "f32.ult" (f32.const 3) (f32.const 2)) (i32.const 0))
(assert_return (invoke "f32.ult" (f32.const 2) (f32.const 2)) (i32.const 0))
(assert_return (invoke "f32.ult" (f32.const 2) (f32.const 3)) (i32.const 1))
(assert_return
  (invoke "f32.ult" (f32.const 2) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return (invoke "f32.ule" (f32.const 3) (f32.const 2)) (i32.const 0))
(assert_return (invoke "f32.ule" (f32.const 2) (f32.const 2)) (i32.const 1))
(assert_return (invoke "f32.ule" (f32.const 2) (f32.const 3)) (i32.const 1))
(assert_return
  (invoke "f32.ule" (f32.const 2) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return (invoke "f32.ugt" (f32.const 3) (f32.const 2)) (i32.const 1))
(assert_return (invoke "f32.ugt" (f32.const 2) (f32.const 2)) (i32.const 0))
(assert_return (invoke "f32.ugt" (f32.const 2) (f32.const 3)) (i32.const 0))
(assert_return
  (invoke "f32.ugt" (f32.const 2) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return (invoke "f32.uge" (f32.const 3) (f32.const 2)) (i32.const 1))
(assert_return (invoke "f32.uge" (f32.const 2) (f32.const 2)) (i32.const 1))
(assert_return (invoke "f32.uge" (f32.const 2) (f32.const 3)) (i32.const 0))
(assert_return
  (invoke "f32.uge" (f32.const 2) (f32.const nan:0x400000))
  (i32.const 1)
)
(assert_return (invoke "f64.ult" (f64.const 3) (f64.const 2)) (i32.const 0))
(assert_return (invoke "f64.ult" (f64.const 2) (f64.const 2)) (i32.const 0))
(assert_return (invoke "f64.ult" (f64.const 2) (f64.const 3)) (i32.const 1))
(assert_return
  (invoke "f64.ult" (f64.const 2) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return (invoke "f64.ule" (f64.const 3) (f64.const 2)) (i32.const 0))
(assert_return (invoke "f64.ule" (f64.const 2) (f64.const 2)) (i32.const 1))
(assert_return (invoke "f64.ule" (f64.const 2) (f64.const 3)) (i32.const 1))
(assert_return
  (invoke "f64.ule" (f64.const 2) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return (invoke "f64.ugt" (f64.const 3) (f64.const 2)) (i32.const 1))
(assert_return (invoke "f64.ugt" (f64.const 2) (f64.const 2)) (i32.const 0))
(assert_return (invoke "f64.ugt" (f64.const 2) (f64.const 3)) (i32.const 0))
(assert_return
  (invoke "f64.ugt" (f64.const 2) (f64.const nan:0x8000000000000))
  (i32.const 1)
)
(assert_return (invoke "f64.uge" (f64.const 3) (f64.const 2)) (i32.const 1))
(assert_return (invoke "f64.uge" (f64.const 2) (f64.const 2)) (i32.const 1))
(assert_return (invoke "f64.uge" (f64.const 2) (f64.const 3)) (i32.const 0))
(assert_return
  (invoke "f64.uge" (f64.const 2) (f64.const nan:0x8000000000000))
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
  (invoke "f32.no_fold_lt_select" (f32.const 0) (f32.const nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "f32.no_fold_lt_select" (f32.const nan:0x400000) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_fold_lt_select" (f32.const 0) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "f32.no_fold_lt_select" (f32.const -0) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_fold_le_select" (f32.const 0) (f32.const nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "f32.no_fold_le_select" (f32.const nan:0x400000) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_fold_le_select" (f32.const 0) (f32.const -0))
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_fold_le_select" (f32.const -0) (f32.const 0))
  (f32.const -0)
)
(assert_return
  (invoke "f32.no_fold_gt_select" (f32.const 0) (f32.const nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "f32.no_fold_gt_select" (f32.const nan:0x400000) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_fold_gt_select" (f32.const 0) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "f32.no_fold_gt_select" (f32.const -0) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_fold_ge_select" (f32.const 0) (f32.const nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "f32.no_fold_ge_select" (f32.const nan:0x400000) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_fold_ge_select" (f32.const 0) (f32.const -0))
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_fold_ge_select" (f32.const -0) (f32.const 0))
  (f32.const -0)
)
(assert_return
  (invoke "f64.no_fold_lt_select" (f64.const 0) (f64.const nan:0x8000000000000))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "f64.no_fold_lt_select" (f64.const nan:0x8000000000000) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_lt_select" (f64.const 0) (f64.const -0))
  (f64.const -0)
)
(assert_return
  (invoke "f64.no_fold_lt_select" (f64.const -0) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_le_select" (f64.const 0) (f64.const nan:0x8000000000000))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "f64.no_fold_le_select" (f64.const nan:0x8000000000000) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_le_select" (f64.const 0) (f64.const -0))
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_le_select" (f64.const -0) (f64.const 0))
  (f64.const -0)
)
(assert_return
  (invoke "f64.no_fold_gt_select" (f64.const 0) (f64.const nan:0x8000000000000))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "f64.no_fold_gt_select" (f64.const nan:0x8000000000000) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_gt_select" (f64.const 0) (f64.const -0))
  (f64.const -0)
)
(assert_return
  (invoke "f64.no_fold_gt_select" (f64.const -0) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_ge_select" (f64.const 0) (f64.const nan:0x8000000000000))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "f64.no_fold_ge_select" (f64.const nan:0x8000000000000) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_ge_select" (f64.const 0) (f64.const -0))
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_ge_select" (f64.const -0) (f64.const 0))
  (f64.const -0)
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
  (invoke "f32.no_fold_lt_if" (f32.const 0) (f32.const nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "f32.no_fold_lt_if" (f32.const nan:0x400000) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_fold_lt_if" (f32.const 0) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "f32.no_fold_lt_if" (f32.const -0) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_fold_le_if" (f32.const 0) (f32.const nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "f32.no_fold_le_if" (f32.const nan:0x400000) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_fold_le_if" (f32.const 0) (f32.const -0))
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_fold_le_if" (f32.const -0) (f32.const 0))
  (f32.const -0)
)
(assert_return
  (invoke "f32.no_fold_gt_if" (f32.const 0) (f32.const nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "f32.no_fold_gt_if" (f32.const nan:0x400000) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_fold_gt_if" (f32.const 0) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "f32.no_fold_gt_if" (f32.const -0) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_fold_ge_if" (f32.const 0) (f32.const nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return
  (invoke "f32.no_fold_ge_if" (f32.const nan:0x400000) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_fold_ge_if" (f32.const 0) (f32.const -0))
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_fold_ge_if" (f32.const -0) (f32.const 0))
  (f32.const -0)
)
(assert_return
  (invoke "f64.no_fold_lt_if" (f64.const 0) (f64.const nan:0x8000000000000))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "f64.no_fold_lt_if" (f64.const nan:0x8000000000000) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_lt_if" (f64.const 0) (f64.const -0))
  (f64.const -0)
)
(assert_return
  (invoke "f64.no_fold_lt_if" (f64.const -0) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_le_if" (f64.const 0) (f64.const nan:0x8000000000000))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "f64.no_fold_le_if" (f64.const nan:0x8000000000000) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_le_if" (f64.const 0) (f64.const -0))
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_le_if" (f64.const -0) (f64.const 0))
  (f64.const -0)
)
(assert_return
  (invoke "f64.no_fold_gt_if" (f64.const 0) (f64.const nan:0x8000000000000))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "f64.no_fold_gt_if" (f64.const nan:0x8000000000000) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_gt_if" (f64.const 0) (f64.const -0))
  (f64.const -0)
)
(assert_return
  (invoke "f64.no_fold_gt_if" (f64.const -0) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_ge_if" (f64.const 0) (f64.const nan:0x8000000000000))
  (f64.const nan:0x8000000000000)
)
(assert_return
  (invoke "f64.no_fold_ge_if" (f64.const nan:0x8000000000000) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_ge_if" (f64.const 0) (f64.const -0))
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_ge_if" (f64.const -0) (f64.const 0))
  (f64.const -0)
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
  (invoke "f32.no_fold_lt_select_to_abs" (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_fold_lt_select_to_abs" (f32.const -0))
  (f32.const -0)
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
  (invoke "f32.no_fold_le_select_to_abs" (f32.const 0))
  (f32.const -0)
)
(assert_return
  (invoke "f32.no_fold_le_select_to_abs" (f32.const -0))
  (f32.const 0)
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
  (invoke "f32.no_fold_gt_select_to_abs" (f32.const 0))
  (f32.const -0)
)
(assert_return
  (invoke "f32.no_fold_gt_select_to_abs" (f32.const -0))
  (f32.const 0)
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
  (invoke "f32.no_fold_ge_select_to_abs" (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_fold_ge_select_to_abs" (f32.const -0))
  (f32.const -0)
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
  (invoke "f64.no_fold_lt_select_to_abs" (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_lt_select_to_abs" (f64.const -0))
  (f64.const -0)
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
  (invoke "f64.no_fold_le_select_to_abs" (f64.const 0))
  (f64.const -0)
)
(assert_return
  (invoke "f64.no_fold_le_select_to_abs" (f64.const -0))
  (f64.const 0)
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
  (invoke "f64.no_fold_gt_select_to_abs" (f64.const 0))
  (f64.const -0)
)
(assert_return
  (invoke "f64.no_fold_gt_select_to_abs" (f64.const -0))
  (f64.const 0)
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
  (invoke "f64.no_fold_ge_select_to_abs" (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_ge_select_to_abs" (f64.const -0))
  (f64.const -0)
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
(assert_return (invoke "f32.no_fold_lt_if_to_abs" (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "f32.no_fold_lt_if_to_abs" (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "f32.no_fold_le_if_to_abs" (f32.const nan:0x200000))
  (f32.const nan:0x200000)
)
(assert_return
  (invoke "f32.no_fold_le_if_to_abs" (f32.const -nan:0x400000))
  (f32.const -nan:0x400000)
)
(assert_return (invoke "f32.no_fold_le_if_to_abs" (f32.const 0)) (f32.const -0))
(assert_return (invoke "f32.no_fold_le_if_to_abs" (f32.const -0)) (f32.const 0))
(assert_return
  (invoke "f32.no_fold_gt_if_to_abs" (f32.const nan:0x200000))
  (f32.const -nan:0x200000)
)
(assert_return
  (invoke "f32.no_fold_gt_if_to_abs" (f32.const -nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return (invoke "f32.no_fold_gt_if_to_abs" (f32.const 0)) (f32.const -0))
(assert_return (invoke "f32.no_fold_gt_if_to_abs" (f32.const -0)) (f32.const 0))
(assert_return
  (invoke "f32.no_fold_ge_if_to_abs" (f32.const nan:0x200000))
  (f32.const -nan:0x200000)
)
(assert_return
  (invoke "f32.no_fold_ge_if_to_abs" (f32.const -nan:0x400000))
  (f32.const nan:0x400000)
)
(assert_return (invoke "f32.no_fold_ge_if_to_abs" (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "f32.no_fold_ge_if_to_abs" (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "f64.no_fold_lt_if_to_abs" (f64.const nan:0x4000000000000))
  (f64.const nan:0x4000000000000)
)
(assert_return
  (invoke "f64.no_fold_lt_if_to_abs" (f64.const -nan:0x8000000000000))
  (f64.const -nan:0x8000000000000)
)
(assert_return (invoke "f64.no_fold_lt_if_to_abs" (f64.const 0)) (f64.const 0))
(assert_return
  (invoke "f64.no_fold_lt_if_to_abs" (f64.const -0))
  (f64.const -0)
)
(assert_return
  (invoke "f64.no_fold_le_if_to_abs" (f64.const nan:0x4000000000000))
  (f64.const nan:0x4000000000000)
)
(assert_return
  (invoke "f64.no_fold_le_if_to_abs" (f64.const -nan:0x8000000000000))
  (f64.const -nan:0x8000000000000)
)
(assert_return (invoke "f64.no_fold_le_if_to_abs" (f64.const 0)) (f64.const -0))
(assert_return (invoke "f64.no_fold_le_if_to_abs" (f64.const -0)) (f64.const 0))
(assert_return
  (invoke "f64.no_fold_gt_if_to_abs" (f64.const nan:0x4000000000000))
  (f64.const -nan:0x4000000000000)
)
(assert_return
  (invoke "f64.no_fold_gt_if_to_abs" (f64.const -nan:0x8000000000000))
  (f64.const nan:0x8000000000000)
)
(assert_return (invoke "f64.no_fold_gt_if_to_abs" (f64.const 0)) (f64.const -0))
(assert_return (invoke "f64.no_fold_gt_if_to_abs" (f64.const -0)) (f64.const 0))
(assert_return
  (invoke "f64.no_fold_ge_if_to_abs" (f64.const nan:0x4000000000000))
  (f64.const -nan:0x4000000000000)
)
(assert_return
  (invoke "f64.no_fold_ge_if_to_abs" (f64.const -nan:0x8000000000000))
  (f64.const nan:0x8000000000000)
)
(assert_return (invoke "f64.no_fold_ge_if_to_abs" (f64.const 0)) (f64.const 0))
(assert_return
  (invoke "f64.no_fold_ge_if_to_abs" (f64.const -0))
  (f64.const -0)
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
  (f32.const 1.192_092_895_507_812_5e-07)
)
(assert_return
  (invoke "f64.incorrect_correction")
  (f64.const -2.220_446_049_250_313_1e-16)
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
(assert_return (invoke "calculate") (f32.const -466.926_849_365_234_38))
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
(assert_return (invoke "calculate") (f64.const -466.926_956_301_738_02))
(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7d\01\7d\03\82\80\80\80\00\01\00\07\90\80\80"
  "\80\00\01\0c\6c\6c\76\6d\5f\70\72\32\36\37\34\36"
  "\00\00\0a\96\80\80\80\00\01\90\80\80\80\00\00\43"
  "\00\00\00\00\43\00\00\00\80\20\00\93\93\0b"
)
(assert_return (invoke "llvm_pr26746" (f32.const -0)) (f32.const 0))
(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7f\01\7d\03\82\80\80\80\00\01\00\07\90\80\80"
  "\80\00\01\0c\6c\6c\76\6d\5f\70\72\32\37\31\35\33"
  "\00\00\0a\98\80\80\80\00\01\92\80\80\80\00\00\20"
  "\00\41\ff\ff\ff\ff\00\71\b2\43\00\00\00\cb\92\0b"
)
(assert_return
  (invoke "llvm_pr27153" (i32.const 33_554_434))
  (f32.const 25_165_824)
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
  (invoke "llvm_pr27036" (i32.const -25_034_805) (i32.const 14_942_208))
  (f32.const -10_092_596)
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
    (f64.const 4.450_147_717_014_402_8e-308)
    (f64.const 0.999_999_999_999_999_89)
    (f64.const 2)
    (f64.const 0.5)
  )
  (f64.const 4.450_147_717_014_402_3e-308)
)
(assert_return
  (invoke "thepast1"
    (f64.const 5.551_115_123_125_782_7e-17)
    (f64.const 0.999_999_999_999_999_89)
    (f64.const 5.551_115_123_125_782_7e-17)
  )
  (f64.const -6.162_975_822_039_154_7e-33)
)
(assert_return
  (invoke "thepast2"
    (f32.const 2.350_988_701_644_575e-38)
    (f32.const 0.5)
    (f32.const 1)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7d\01\7d\03\82\80\80\80\00\01\00\07\8b\80\80"
  "\80\00\01\07\69\6e\76\65\72\73\65\00\00\0a\90\80"
  "\80\80\00\01\8a\80\80\80\00\00\43\00\00\80\3f\20"
  "\00\95\0b"
)
(assert_return
  (invoke "inverse" (f32.const 96))
  (f32.const 0.010_416_666_977_107_525)
)
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
(assert_return (invoke "f32_sqrt_minus_2" (f32.const 4)) (f32.const 0))
(assert_return (invoke "f64_sqrt_minus_2" (f64.const 4)) (f64.const 0))
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
  (invoke "f32.no_fold_recip_recip" (f32.const -7.043_578_799_867_926_9e+19))
  (f32.const -7.043_578_360_063_275_8e+19)
)
(assert_return
  (invoke "f32.no_fold_recip_recip" (f32.const 1.246_610_067_249_987_4e-23))
  (f32.const 1.246_609_988_363_896_9e-23)
)
(assert_return
  (invoke "f32.no_fold_recip_recip" (f32.const 9.718_454_544_006_024_2e-20))
  (f32.const 9.718_455_190_240_877_7e-20)
)
(assert_return
  (invoke "f32.no_fold_recip_recip" (f32.const -30.400_758_743_286_133))
  (f32.const -30.400_760_650_634_766)
)
(assert_return
  (invoke "f32.no_fold_recip_recip" (f32.const 2.331_659_190_390_153_5e+21))
  (f32.const 2.331_659_049_652_665_2e+21)
)
(assert_return (invoke "f32.no_fold_recip_recip" (f32.const -0)) (f32.const -0))
(assert_return (invoke "f32.no_fold_recip_recip" (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "f32.no_fold_recip_recip" (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "f32.no_fold_recip_recip" (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "f64.no_fold_recip_recip" (f64.const -6.579_715_343_628_868_6e+44))
  (f64.const -6.579_715_343_628_869_3e+44)
)
(assert_return
  (invoke "f64.no_fold_recip_recip" (f64.const -1.442_469_318_685_764_3e+20))
  (f64.const -1.442_469_318_685_764_2e+20)
)
(assert_return
  (invoke "f64.no_fold_recip_recip" (f64.const 1.849_946_892_062_313_5e+50))
  (f64.const 1.849_946_892_062_313_3e+50)
)
(assert_return
  (invoke "f64.no_fold_recip_recip" (f64.const 5.779_584_288_006_583e-207))
  (f64.const 5.779_584_288_006_582_3e-207)
)
(assert_return
  (invoke "f64.no_fold_recip_recip" (f64.const 5.150_117_869_614_164_1e+271))
  (f64.const 5.150_117_869_614_163_4e+271)
)
(assert_return (invoke "f64.no_fold_recip_recip" (f64.const -0)) (f64.const -0))
(assert_return (invoke "f64.no_fold_recip_recip" (f64.const 0)) (f64.const 0))
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
    (f32.const -5.371_186_465_411_003_1e-17)
    (f32.const 9.744_327_905_706_555e-17)
  )
  (f32.const -6.610_228_647_323_987_9e-33)
)
(assert_return
  (invoke "f32.no_algebraic_factoring"
    (f32.const -19_756_732)
    (f32.const 32_770_204)
  )
  (f32.const -683_557_802_475_520)
)
(assert_return
  (invoke "f32.no_algebraic_factoring"
    (f32.const 52_314_148_700_160)
    (f32.const -145_309_984_358_400)
  )
  (f32.const -1.837_822_135_545_149_2e+28)
)
(assert_return
  (invoke "f32.no_algebraic_factoring"
    (f32.const 195_260.375)
    (f32.const -227.757_232_666_015_62)
  )
  (f32.const 38_126_563_328)
)
(assert_return
  (invoke "f32.no_algebraic_factoring"
    (f32.const -237.487_060_546_875)
    (f32.const -972_341.5)
  )
  (f32.const -945_447_960_576)
)
(assert_return
  (invoke "f64.no_algebraic_factoring"
    (f64.const 9.639_720_335_949_766_8e-144)
    (f64.const 8.019_175_443_606_207_3e-140)
  )
  (f64.const -6.430_717_386_609_472_8e-279)
)
(assert_return
  (invoke "f64.no_algebraic_factoring"
    (f64.const 5.166_066_590_392_026_8e-114)
    (f64.const 1.494_333_315_888_213e-120)
  )
  (f64.const 2.668_824_401_636_246_8e-227)
)
(assert_return
  (invoke "f64.no_algebraic_factoring"
    (f64.const -2.866_135_870_517_634_8e-114)
    (f64.const -1.211_435_525_426_851_6e-111)
  )
  (f64.const -1.467_567_817_531_403_6e-222)
)
(assert_return
  (invoke "f64.no_algebraic_factoring"
    (f64.const -1.292_099_281_007_814_9e+54)
    (f64.const 6.627_171_877_280_340_1e+56)
  )
  (f64.const -4.391_924_013_896_022_7e+113)
)
(assert_return
  (invoke "f64.no_algebraic_factoring"
    (f64.const 2.624_279_568_901_057e+34)
    (f64.const -1.625_023_398_605_080_2e+27)
  )
  (f64.const 6.886_843_255_751_491_4e+68)
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
    (f32.const 2.210_299_610_981_743_3e-14)
    (f32.const 3.146_527_526_379_228_1e-12)
  )
  (f32.const -9.900_147_562_538_522_2e-24)
)
(assert_return
  (invoke "f32.no_algebraic_factoring"
    (f32.const -3_289_460_768_768)
    (f32.const -15_941_538_816)
  )
  (f32.const 1.082_029_860_086_527_9e+25)
)
(assert_return
  (invoke "f32.no_algebraic_factoring"
    (f32.const 0.000_364_975_421_689_450_74)
    (f32.const -0.000_161_537_143_867_462_87)
  )
  (f32.const 1.071_128_039_598_079_3e-07)
)
(assert_return
  (invoke "f32.no_algebraic_factoring"
    (f32.const 6.538_326_602_139_807_3e-14)
    (f32.const -2.741_277_291_154_562_6e-14)
  )
  (f32.const 3.523_511_174_043_802_9e-27)
)
(assert_return
  (invoke "f32.no_algebraic_factoring"
    (f32.const 3_609_681_910_038_528)
    (f32.const -5_260_104_429_469_696)
  )
  (f32.const -1.463_889_604_789_756e+31)
)
(assert_return
  (invoke "f64.no_algebraic_factoring"
    (f64.const 2.136_404_543_498_951_1e+107)
    (f64.const -2.928_587_558_394_428_2e+101)
  )
  (f64.const 4.564_224_373_474_384_6e+214)
)
(assert_return
  (invoke "f64.no_algebraic_factoring"
    (f64.const -1.229_017_115_924_435_8e+93)
    (f64.const -8.222_158_919_016_600_2e+99)
  )
  (f64.const -6.760_389_728_956_271_3e+199)
)
(assert_return
  (invoke "f64.no_algebraic_factoring"
    (f64.const 5_477_733_829_752.252)
    (f64.const -970_738_900_948.590_58)
  )
  (f64.const 2.906_323_389_579_739_7e+25)
)
(assert_return
  (invoke "f64.no_algebraic_factoring"
    (f64.const -1.068_914_174_492_355_1e+55)
    (f64.const -1.733_783_935_937_380_4e+50)
  )
  (f64.const 1.142_577_512_130_072_4e+110)
)
(assert_return
  (invoke "f64.no_algebraic_factoring"
    (f64.const -1.029_569_987_702_210_6e-71)
    (f64.const -8.952_274_637_805_907_7e-72)
  )
  (f64.const 2.585_821_476_701_010_5e-143)
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
(assert_return
  (invoke "f32.load" (i32.const 32))
  (f32.const 2.802_596_928_649_634_1e-45)
)
(assert_return (invoke "f32.load" (i32.const 36)) (f32.const 0))
(assert_return
  (invoke "f32.load" (i32.const 40))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "f32.load" (i32.const 44))
  (f32.const -1.401_298_464_324_817_1e-45)
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
  (f64.const 9.881_312_916_824_930_9e-324)
)
(assert_return (invoke "f64.load" (i32.const 72)) (f64.const 0))
(assert_return
  (invoke "f64.load" (i32.const 80))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "f64.load" (i32.const 88))
  (f64.const -4.940_656_458_412_465_4e-324)
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
  (f32.const -2.155_813_824_620_656_5e+31)
)
(assert_return
  (invoke "f32.plain_sum" (i32.const 0) (i32.const 256))
  (f32.const -1.648_753_947_207_110_6e+31)
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
  (f64.const 4.996_401_743_142_033_1e+300)
)
(assert_return
  (invoke "f64.plain_sum" (i32.const 0) (i32.const 256))
  (f64.const 4.996_401_743_297_957_6e+300)
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
  (invoke "f32.no_fold_neg_sub" (f32.const -0) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "f32.no_fold_neg_sub" (f32.const 0) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "f32.no_fold_neg_sub" (f32.const -0) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_fold_neg_sub" (f32.const 0) (f32.const 0))
  (f32.const -0)
)
(assert_return
  (invoke "f64.no_fold_neg_sub" (f64.const -0) (f64.const -0))
  (f64.const -0)
)
(assert_return
  (invoke "f64.no_fold_neg_sub" (f64.const 0) (f64.const -0))
  (f64.const -0)
)
(assert_return
  (invoke "f64.no_fold_neg_sub" (f64.const -0) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_neg_sub" (f64.const 0) (f64.const 0))
  (f64.const -0)
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
  (invoke "f32.no_fold_neg_add" (f32.const -0) (f32.const -0))
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_fold_neg_add" (f32.const 0) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "f32.no_fold_neg_add" (f32.const -0) (f32.const 0))
  (f32.const -0)
)
(assert_return
  (invoke "f32.no_fold_neg_add" (f32.const 0) (f32.const 0))
  (f32.const -0)
)
(assert_return
  (invoke "f64.no_fold_neg_add" (f64.const -0) (f64.const -0))
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_neg_add" (f64.const 0) (f64.const -0))
  (f64.const -0)
)
(assert_return
  (invoke "f64.no_fold_neg_add" (f64.const -0) (f64.const 0))
  (f64.const -0)
)
(assert_return
  (invoke "f64.no_fold_neg_add" (f64.const 0) (f64.const 0))
  (f64.const -0)
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
  (invoke "f32.no_fold_add_neg_neg" (f32.const -0) (f32.const -0))
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_fold_add_neg_neg" (f32.const 0) (f32.const -0))
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_fold_add_neg_neg" (f32.const -0) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_fold_add_neg_neg" (f32.const 0) (f32.const 0))
  (f32.const -0)
)
(assert_return
  (invoke "f64.no_fold_add_neg_neg" (f64.const -0) (f64.const -0))
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_add_neg_neg" (f64.const 0) (f64.const -0))
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_add_neg_neg" (f64.const -0) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_add_neg_neg" (f64.const 0) (f64.const 0))
  (f64.const -0)
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
(assert_return (invoke "f32.no_fold_add_neg" (f32.const 0)) (f32.const 0))
(assert_return (invoke "f32.no_fold_add_neg" (f32.const -0)) (f32.const 0))
(assert_return_canonical_nan (invoke "f32.no_fold_add_neg" (f32.const inf)))
(assert_return_canonical_nan (invoke "f32.no_fold_add_neg" (f32.const -inf)))
(assert_return (invoke "f64.no_fold_add_neg" (f64.const 0)) (f64.const 0))
(assert_return (invoke "f64.no_fold_add_neg" (f64.const -0)) (f64.const 0))
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
  (invoke "f32.no_fold_6x_via_add" (f32.const -8.555_137_345_589_493e+29))
  (f32.const -5.133_082_709_585_150_7e+30)
)
(assert_return
  (invoke "f32.no_fold_6x_via_add" (f32.const -1.209_505_994_572_917_2e-23))
  (f32.const -7.257_036_282_981_865e-23)
)
(assert_return
  (invoke "f32.no_fold_6x_via_add" (f32.const 6.642_689_238_252_199e-24))
  (f32.const 3.985_613_385_179_138_4e-23)
)
(assert_return
  (invoke "f32.no_fold_6x_via_add" (f32.const -6.147_345_965_601_402_9e-10))
  (f32.const -3.688_407_357_316_236_8e-09)
)
(assert_return
  (invoke "f32.no_fold_6x_via_add" (f32.const -1.209_858_100_766_291_9e+24))
  (f32.const -7.259_148_316_367_375_2e+24)
)
(assert_return
  (invoke "f64.no_fold_6x_via_add" (f64.const -3.517_044_906_027_713_8e+20))
  (f64.const -2.110_226_943_616_628_6e+21)
)
(assert_return
  (invoke "f64.no_fold_6x_via_add" (f64.const -1.482_429_410_986_873_4e-161))
  (f64.const -8.894_576_465_921_239_1e-161)
)
(assert_return
  (invoke "f64.no_fold_6x_via_add" (f64.const -7.484_567_838_781_002_8e+81))
  (f64.const -4.490_740_703_268_601_4e+82)
)
(assert_return
  (invoke "f64.no_fold_6x_via_add" (f64.const 1.727_786_819_293_606_7e+226))
  (f64.const 1.036_672_091_576_164_1e+227)
)
(assert_return
  (invoke "f64.no_fold_6x_via_add" (f64.const -4.311_639_752_519_561e+70))
  (f64.const -2.586_983_851_511_736_4e+71)
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
    (f32.const -5.938_475_291_688_351_2e+23)
    (f32.const -3.026_567_173_947_114_5e-05)
    (f32.const -1_584.868_164_062_5)
  )
  (f32.const -1.238_030_861_829_827_2e+25)
)
(assert_return
  (invoke "f32.no_fold_div_div"
    (f32.const 1.543_896_161_645_517_7e-21)
    (f32.const 2.533_429_280_374_554_4e+33)
    (f32.const -2.684_478_285_682_781_1e-34)
  )
  (f32.const -0)
)
(assert_return
  (invoke "f32.no_fold_div_div"
    (f32.const 13_417_423_306_752)
    (f32.const 2.933_920_464_447_575_3e-32)
    (f32.const 7.638_637_444_001_917_8e+31)
  )
  (f32.const inf)
)
(assert_return
  (invoke "f32.no_fold_div_div"
    (f32.const -0.000_107_765_292_341_355_23)
    (f32.const -3.422_094_290_809_958_1e+37)
    (f32.const -1.656_232_388_649_175_9e-13)
  )
  (f32.const -1.901_132_693_573_588_8e-29)
)
(assert_return
  (invoke "f32.no_fold_div_div"
    (f32.const 130_582_499_557_376)
    (f32.const 96_245_346_610_446_336)
    (f32.const -4.146_154_510_069_998_9e+37)
  )
  (f32.const -3.272_312_173_891_312_8e-41)
)
(assert_return
  (invoke "f64.no_fold_div_div"
    (f64.const 4.777_628_746_710_143_4e+101)
    (f64.const 1.027_867_204_204_040_1e+176)
    (f64.const -7.189_998_949_888_839_8e-236)
  )
  (f64.const -6.464_673_011_878_798_9e+160)
)
(assert_return
  (invoke "f64.no_fold_div_div"
    (f64.const -2.179_023_678_387_571_4e+238)
    (f64.const 2.832_443_684_461_657_6e-09)
    (f64.const 1.861_107_682_598_687e+95)
  )
  (f64.const -4.133_606_807_992_067_1e+151)
)
(assert_return
  (invoke "f64.no_fold_div_div"
    (f64.const -7.287_619_347_826_683_3)
    (f64.const -1.346_760_731_673_985_5e+265)
    (f64.const 2.462_719_007_013_688e+51)
  )
  (f64.const 2.197_254_540_070_561_1e-316)
)
(assert_return
  (invoke "f64.no_fold_div_div"
    (f64.const -2.865_523_978_629_633_2e+248)
    (f64.const 1.021_198_037_063_941_4e-247)
    (f64.const 2.876_458_648_332_401e+289)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "f64.no_fold_div_div"
    (f64.const -9.525_735_602_663_874e-268)
    (f64.const 5.023_394_881_663_179_6e-180)
    (f64.const -2.830_457_022_822_107_7e-42)
  )
  (f64.const 6.699_534_674_970_116_3e-47)
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
    (f32.const -2.723_473_290_390_395_1e-33)
    (f32.const 3.897_842_910_644_175_3e-28)
    (f32.const 4.847_123_091_321_452_5e-27)
    (f32.const -25.357_774_734_497_07)
  )
  (f32.const 1.335_585_477_473_751_8e-33)
)
(assert_return
  (invoke "f32.no_fold_mul_divs"
    (f32.const -5.372_844_131_686_041_6e+30)
    (f32.const 38_340_912)
    (f32.const 1.497_316_225_140_821_2e-05)
    (f32.const 0.192_138_254_642_486_57)
  )
  (f32.const -1.092_047_483_139_679_8e+19)
)
(assert_return
  (invoke "f32.no_fold_mul_divs"
    (f32.const -16_085_042_176)
    (f32.const -1_092_920_213_504)
    (f32.const -869_606_016)
    (f32.const -1_201.206_054_687_5)
  )
  (f32.const 10_654.638_671_875)
)
(assert_return
  (invoke "f32.no_fold_mul_divs"
    (f32.const -1.271_223_140_439_102_1e+33)
    (f32.const 1.076_811_417_810_574_8e-10)
    (f32.const 1.857_627_103_163_395_1e-05)
    (f32.const 4.926_861_971_581_612_6e+23)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "f32.no_fold_mul_divs"
    (f32.const 1.378_386_376_536_477_6e-16)
    (f32.const -6.504_628_450_864_498_9e-20)
    (f32.const 6.816_768_371_365_373_1e-28)
    (f32.const 2.289_262_703_014_660_6e-11)
  )
  (f32.const -6.310_029_538_811_323_7e-14)
)
(assert_return
  (invoke "f64.no_fold_mul_divs"
    (f64.const -3.466_499_805_233_368_9e-247)
    (f64.const -4.045_567_512_248_635e-140)
    (f64.const -6.462_341_070_607_592_3e+164)
    (f64.const 1.004_558_953_335_407_4e+56)
  )
  (f64.const -55.122_153_213_100_169)
)
(assert_return
  (invoke "f64.no_fold_mul_divs"
    (f64.const -5.054_883_907_636_325_5e+34)
    (f64.const 2.222_378_164_997_627_5e-277)
    (f64.const -1.502_979_037_110_085_2e+109)
    (f64.const -6.994_123_759_538_121_2e+140)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "f64.no_fold_mul_divs"
    (f64.const -8.361_116_536_344_947_2e+92)
    (f64.const -1.002_952_887_606_756_7e+58)
    (f64.const -1.286_780_176_603_877_2e-42)
    (f64.const -4.223_027_774_688_375_3e+220)
  )
  (f64.const 2.540_178_100_556_387e-228)
)
(assert_return
  (invoke "f64.no_fold_mul_divs"
    (f64.const -1.202_003_211_641_119_3e+39)
    (f64.const -4.667_409_771_338_768_9e-105)
    (f64.const 1.088_865_237_654_008_5e-288)
    (f64.const 1.833_494_866_651_721_6e+67)
  )
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_mul_divs"
    (f64.const 6.331_839_568_840_418_9e-06)
    (f64.const 5.544_474_241_905_778_2e-84)
    (f64.const 2.782_247_248_035_909_7e-187)
    (f64.const -1.441_932_108_189_302_2e+106)
  )
  (f64.const -2.203_537_477_074_651_8e-215)
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
    (f32.const 377.368_896_484_375)
    (f32.const -0.040_118_183_940_649_033)
    (f32.const -1.362_929_856_054_631_6e+38)
  )
  (f32.const -2.768_512_148_377_355e-36)
)
(assert_return
  (invoke "f32.no_fold_add_divs"
    (f32.const -1.823_402_304_123_743_5e-19)
    (f32.const -3.397_028_811_336_923_7e-15)
    (f32.const -170_996_707_360_768)
  )
  (f32.const 1.986_711_541_115_712_5e-29)
)
(assert_return
  (invoke "f32.no_fold_add_divs"
    (f32.const -1.967_263_835_557_855_9e-14)
    (f32.const 6.414_098_702_699_398_5e-20)
    (f32.const -541_989_070_176_256)
  )
  (f32.const 3.629_699_656_717_650_7e-29)
)
(assert_return
  (invoke "f32.no_fold_add_divs"
    (f32.const -4.038_505_822_193_515_2e-31)
    (f32.const 3.848_228_081_428_171_2e-30)
    (f32.const -3.452_371_979_129_237_6e+26)
  )
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_fold_add_divs"
    (f32.const 0.001_093_441_504_053_771_5)
    (f32.const 0.207_031_235_098_838_81)
    (f32.const 1.350_978_396_990_298_6e-37)
  )
  (f32.const 1.540_547_727_687_837_1e+36)
)
(assert_return
  (invoke "f64.no_fold_add_divs"
    (f64.const -4.917_019_432_143_76e+129)
    (f64.const 6.813_215_632_201_901_9e+130)
    (f64.const 2.612_541_010_023_778_4e+274)
  )
  (f64.const 2.419_680_175_252_058_4e-144)
)
(assert_return
  (invoke "f64.no_fold_add_divs"
    (f64.const -10_206_467_953_224_550)
    (f64.const 63.422_616_671_746_226)
    (f64.const -1.602_474_786_981_489_2e-288)
  )
  (f64.const 6.369_190_976_445_851e+303)
)
(assert_return
  (invoke "f64.no_fold_add_divs"
    (f64.const -1.527_056_963_310_983_7e-291)
    (f64.const 2.575_550_332_923_251_4e-294)
    (f64.const 5.882_693_916_421_491_6e+151)
  )
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_add_divs"
    (f64.const 2.666_796_487_439_464_2e+94)
    (f64.const -2.131_569_252_493_657_8e+99)
    (f64.const 1.237_700_451_868_001_2e-38)
  )
  (f64.const -1.722_179_693_246_253_4e+137)
)
(assert_return
  (invoke "f64.no_fold_add_divs"
    (f64.const -1.295_288_837_728_821_6e-219)
    (f64.const 5.808_769_259_900_048_3e-228)
    (f64.const 1.674_574_169_944_375_6e-21)
  )
  (f64.const -7.735_034_106_987_796_5e-199)
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
  (invoke "f32.no_fold_sqrt_square" (f32.const -1.846_000_070_665_125_3e-20))
  (f32.const 1.846_001_040_017_405_7e-20)
)
(assert_return
  (invoke "f32.no_fold_sqrt_square" (f32.const -1.790_747_323_900_843_7e-22))
  (f32.const 1.795_267_812_432_122_1e-22)
)
(assert_return
  (invoke "f32.no_fold_sqrt_square" (f32.const -7.912_078_484_555_784_6e-22))
  (f32.const 7.914_420_076_157_970_2e-22)
)
(assert_return
  (invoke "f32.no_fold_sqrt_square" (f32.const 1.801_293_773_222_204_8e-26))
  (f32.const 0)
)
(assert_return
  (invoke "f32.no_fold_sqrt_square" (f32.const 6.105_019_681_752_109_5e+32))
  (f32.const inf)
)
(assert_return
  (invoke "f64.no_fold_sqrt_square" (f64.const 6.209_297_167_747_495_9e-160))
  (f64.const 6.209_299_542_179_726_5e-160)
)
(assert_return
  (invoke "f64.no_fold_sqrt_square" (f64.const -2.421_117_530_373_894_5e-155))
  (f64.const 2.421_117_530_373_893_7e-155)
)
(assert_return
  (invoke "f64.no_fold_sqrt_square" (f64.const -1.646_068_761_187_564_5e-157))
  (f64.const 1.646_068_761_153_236_7e-157)
)
(assert_return
  (invoke "f64.no_fold_sqrt_square" (f64.const -3.797_811_613_378_828e-186))
  (f64.const 0)
)
(assert_return
  (invoke "f64.no_fold_sqrt_square" (f64.const 8.158_084_284_605_591_9e+257))
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
    (f32.const 4.388_504_694_742_145_5e-38)
    (f32.const -1.186_733_379_828_126_6e-25)
  )
)
(assert_return
  (invoke "f32.no_fold_mul_sqrts"
    (f32.const 2.536_590_811_126_416e-28)
    (f32.const 4.132_067_465_967_281_8e-10)
  )
  (f32.const 3.237_493_152_183_345_2e-19)
)
(assert_return
  (invoke "f32.no_fold_mul_sqrts"
    (f32.const 4.214_483_223_167_433_5e-27)
    (f32.const 97.249_114_990_234_375)
  )
  (f32.const 6.401_990_482_879_371_7e-13)
)
(assert_return
  (invoke "f32.no_fold_mul_sqrts"
    (f32.const 3.724_076_342_278_296_4e+30)
    (f32.const 0.002_944_908_104_836_940_8)
  )
  (f32.const 104_723_751_370_752)
)
(assert_return
  (invoke "f32.no_fold_mul_sqrts"
    (f32.const 1.866_055_934_448_586_4e-17)
    (f32.const 0.002_111_261_012_032_628_1)
  )
  (f32.const 1.984_875_458_438_395_4e-10)
)
(assert_return_canonical_nan
  (invoke "f64.no_fold_mul_sqrts"
    (f64.const -1.274_206_436_977_286_2e-191)
    (f64.const -0.006_829_962_938_197_245_8)
  )
)
(assert_return
  (invoke "f64.no_fold_mul_sqrts"
    (f64.const 3.708_256_926_952_753_4e-194)
    (f64.const 4.718_300_285_701_504_3e-122)
  )
  (f64.const 4.182_902_068_886_595_4e-158)
)
(assert_return
  (invoke "f64.no_fold_mul_sqrts"
    (f64.const 2.329_359_505_918_655_1e-27)
    (f64.const 2.074_339_964_280_636_4e-275)
  )
  (f64.const 2.198_154_570_157_445_2e-151)
)
(assert_return
  (invoke "f64.no_fold_mul_sqrts"
    (f64.const 1.054_189_933_628_943_7e-109)
    (f64.const 5.981_238_198_728_029_7e-173)
  )
  (f64.const 2.511_047_809_129_887e-141)
)
(assert_return
  (invoke "f64.no_fold_mul_sqrts"
    (f64.const 25_589_482.717_358_638)
    (f64.const 3.913_891_207_119_901_8e+154)
  )
  (f64.const 1.000_771_959_050_695_5e+81)
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
    (f32.const -58_545_012)
    (f32.const -6.443_772_954_144_731_6e-18)
  )
)
(assert_return
  (invoke "f32.no_fold_div_sqrts"
    (f32.const 7_407_384_064)
    (f32.const 209_778_928)
  )
  (f32.const 5.942_258_358_001_709)
)
(assert_return
  (invoke "f32.no_fold_div_sqrts"
    (f32.const 1.376_412_569_478_730_6e-36)
    (f32.const 54_692.898_437_5)
  )
  (f32.const 5.016_592_728_986_257e-21)
)
(assert_return
  (invoke "f32.no_fold_div_sqrts"
    (f32.const 9.792_889_648_106_700_8e+17)
    (f32.const 1.264_355_176_111_564_6e-09)
  )
  (f32.const 27_830_490_497_024)
)
(assert_return
  (invoke "f32.no_fold_div_sqrts"
    (f32.const 2.914_128_326_271_444_6e-34)
    (f32.const 1.792_817_434_297_860_3e-31)
  )
  (f32.const 0.040_316_820_144_653_32)
)
(assert_return_canonical_nan
  (invoke "f64.no_fold_div_sqrts"
    (f64.const -1.220_613_731_988_302_2e-214)
    (f64.const -8.209_583_449_676_082_9e-57)
  )
)
(assert_return
  (invoke "f64.no_fold_div_sqrts"
    (f64.const 3.381_885_246_230_582_4e-177)
    (f64.const 7.655_783_976_315_048e+162)
  )
  (f64.const 2.101_767_142_566_568_7e-170)
)
(assert_return
  (invoke "f64.no_fold_div_sqrts"
    (f64.const 4.596_333_567_064_751e+157)
    (f64.const 2.393_246_784_688_304_6e-33)
  )
  (f64.const 1.385_836_601_726_631_5e+95)
)
(assert_return
  (invoke "f64.no_fold_div_sqrts"
    (f64.const 2.532_734_097_866_808_6e-244)
    (f64.const 4.475_305_129_961_257_9e+87)
  )
  (f64.const 2.378_939_914_132_501_8e-166)
)
(assert_return
  (invoke "f64.no_fold_div_sqrts"
    (f64.const 5.103_070_160_197_939_2e-238)
    (f64.const 4.601_576_690_980_825_1e+284)
  )
  (f64.const 1.053_082_600_992_449_5e-261)
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
    (f32.const -4.728_556_806_658_255_5e+24)
    (f32.const 8.677_281_708_846_402_5e+27)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "f32.no_fold_mul_sqrt_div"
    (f32.const -1.177_688_178_856_483_6e-36)
    (f32.const 9.805_153_097_384_004_2e-30)
  )
  (f32.const -0)
)
(assert_return
  (invoke "f32.no_fold_mul_sqrt_div"
    (f32.const 816_717_056)
    (f32.const 3.323_170_900_355_517_7e-39)
  )
  (f32.const 1.416_756_814_348_236e+28)
)
(assert_return
  (invoke "f32.no_fold_mul_sqrt_div"
    (f32.const -11_932_267_446_272)
    (f32.const 8.637_066_802_072_801_8e+33)
  )
  (f32.const -0.000_128_392_552_142_031_49)
)
(assert_return
  (invoke "f32.no_fold_mul_sqrt_div"
    (f32.const -401.023_498_535_156_25)
    (f32.const 134.330_215_454_101_56)
  )
  (f32.const -34.600_547_790_527_344)
)
(assert_return
  (invoke "f64.no_fold_mul_sqrt_div"
    (f64.const 1.468_134_622_910_490_5e+210)
    (f64.const 2.466_074_582_285_183e+228)
  )
  (f64.const inf)
)
(assert_return
  (invoke "f64.no_fold_mul_sqrt_div"
    (f64.const -1.725_402_201_675_802_8e-249)
    (f64.const 5.583_554_074_713_002_5e-202)
  )
  (f64.const -0)
)
(assert_return
  (invoke "f64.no_fold_mul_sqrt_div"
    (f64.const 1.681_281_025_602_916_6e-128)
    (f64.const 7.362_783_602_442_128_7e+168)
  )
  (f64.const 6.196_112_486_187_196_3e-213)
)
(assert_return
  (invoke "f64.no_fold_mul_sqrt_div"
    (f64.const -1.060_548_372_993_983_6e+106)
    (f64.const 6.225_917_836_940_72e-146)
  )
  (f64.const -4.250_390_082_223_376_5e+178)
)
(assert_return
  (invoke "f64.no_fold_mul_sqrt_div"
    (f64.const 2.633_634_969_537_309_3e+31)
    (f64.const 3.079_141_328_585_329_9e+253)
  )
  (f64.const 4.746_142_447_510_694_7e-96)
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
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.192_092_895_507_812_5e-07)
    (f32.const 8_388_608)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "f64.no_flush_intermediate_subnormal"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 2.220_446_049_250_313_1e-16)
    (f64.const 4_503_599_627_370_496)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
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
  (invoke "f32.recoding_eq" (f32.const -inf) (f32.const 3))
  (i32.const 1)
)
(assert_return
  (invoke "f32.recoding_le" (f32.const -inf) (f32.const 3))
  (i32.const 1)
)
(assert_return
  (invoke "f32.recoding_lt" (f32.const -inf) (f32.const 3))
  (i32.const 0)
)
(assert_return
  (invoke "f32.recoding_eq" (f32.const 0) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "f32.recoding_le" (f32.const 0) (f32.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "f32.recoding_lt" (f32.const 0) (f32.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "f64.recoding_eq" (f64.const -inf) (f64.const 3))
  (i32.const 1)
)
(assert_return
  (invoke "f64.recoding_le" (f64.const -inf) (f64.const 3))
  (i32.const 1)
)
(assert_return
  (invoke "f64.recoding_lt" (f64.const -inf) (f64.const 3))
  (i32.const 0)
)
(assert_return
  (invoke "f64.recoding_eq" (f64.const 0) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "f64.recoding_le" (f64.const 0) (f64.const 1))
  (i32.const 1)
)
(assert_return
  (invoke "f64.recoding_lt" (f64.const 0) (f64.const 1))
  (i32.const 0)
)
(assert_return
  (invoke "recoding_demote"
    (f64.const 2.386_004_908_190_509_3e-40)
    (f32.const 1_221)
  )
  (f32.const 2.913_312_062_965_535e-37)
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
    (f32.const 3)
    (f32.const 7)
    (f32.const 0.428_571_432_828_903_2)
  )
  (i32.const 1)
)
(assert_return
  (invoke "f64.no_extended_precision_div"
    (f64.const 3)
    (f64.const 7)
    (f64.const 0.428_571_428_571_428_55)
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
(assert_return (invoke "f32.no_distribute_exact" (f32.const -0)) (f32.const 0))
(assert_return (invoke "f64.no_distribute_exact" (f64.const -0)) (f64.const 0))
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
(assert_return
  (invoke "f32.sqrt" (f32.const 2))
  (f32.const 1.414_213_538_169_860_8)
)
(assert_return
  (invoke "f32.xkcd_sqrt_2"
    (f32.const 3)
    (f32.const 5)
    (f32.const 3.141_592_741_012_573_2)
    (f32.const 7)
  )
  (f32.const 1.414_220_094_680_786_1)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 3))
  (f32.const 1.732_050_776_481_628_4)
)
(assert_return
  (invoke "f32.xkcd_sqrt_3"
    (f32.const 2)
    (f32.const 2.718_281_745_910_644_5)
    (f32.const 3.141_592_741_012_573_2)
  )
  (f32.const 1.730_511_903_762_817_4)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 5))
  (f32.const 2.236_068_010_330_200_2)
)
(assert_return
  (invoke "f32.xkcd_sqrt_5"
    (f32.const 2)
    (f32.const 2.718_281_745_910_644_5)
    (f32.const 3)
  )
  (f32.const 2.235_758_781_433_105_5)
)
(assert_return
  (invoke "f32.xkcd_better_sqrt_5"
    (f32.const 13)
    (f32.const 4)
    (f32.const 3.141_592_741_012_573_2)
    (f32.const 24)
  )
  (f32.const 2.236_068_010_330_200_2)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 2))
  (f64.const 1.414_213_562_373_095_1)
)
(assert_return
  (invoke "f64.xkcd_sqrt_2"
    (f64.const 3)
    (f64.const 5)
    (f64.const 3.141_592_653_589_793_1)
    (f64.const 7)
  )
  (f64.const 1.414_220_058_053_920_8)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 3))
  (f64.const 1.732_050_807_568_877_2)
)
(assert_return
  (invoke "f64.xkcd_sqrt_3"
    (f64.const 2)
    (f64.const 2.718_281_828_459_045_1)
    (f64.const 3.141_592_653_589_793_1)
  )
  (f64.const 1.730_511_958_864_530_1)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 5))
  (f64.const 2.236_067_977_499_789_8)
)
(assert_return
  (invoke "f64.xkcd_sqrt_5"
    (f64.const 2)
    (f64.const 2.718_281_828_459_045_1)
    (f64.const 3)
  )
  (f64.const 2.235_758_882_342_884_7)
)
(assert_return
  (invoke "f64.xkcd_better_sqrt_5"
    (f64.const 13)
    (f64.const 4)
    (f64.const 3.141_592_653_589_793_1)
    (f64.const 24)
  )
  (f64.const 2.236_067_809_445_289_3)
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
  (invoke "f32.compute_radix" (f32.const 1) (f32.const 1))
  (f32.const 2)
)
(assert_return
  (invoke "f64.compute_radix" (f64.const 1) (f64.const 1))
  (f64.const 2)
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
    (f32.const 2.328_306_436_538_696_3e-10)
    (f32.const 1)
  )
  (f32.const 0)
)
(assert_return
  (invoke "f64.no_fold_sub1_mul_add"
    (f64.const 5.421_010_862_427_522_2e-20)
    (f64.const 1)
  )
  (f64.const 0)
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
    (f32.const 0)
    (f32.const 0)
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
    (f64.const 0)
    (f64.const 0)
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
  (invoke "f32.not_lt" (f32.const nan:0x400000) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "f32.not_le" (f32.const nan:0x400000) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "f32.not_gt" (f32.const nan:0x400000) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "f32.not_ge" (f32.const nan:0x400000) (f32.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "f64.not_lt" (f64.const nan:0x8000000000000) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "f64.not_le" (f64.const nan:0x8000000000000) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "f64.not_gt" (f64.const nan:0x8000000000000) (f64.const 0))
  (i32.const 1)
)
(assert_return
  (invoke "f64.not_ge" (f64.const nan:0x8000000000000) (f64.const 0))
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
(assert_return (invoke "f32.epsilon") (f32.const -1.192_092_895_507_812_5e-07))
(assert_return (invoke "f64.epsilon") (f64.const 2.220_446_049_250_313_1e-16))
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
(assert_return (invoke "f32.epsilon") (f32.const 1.192_092_895_507_812_5e-07))
(assert_return (invoke "f64.epsilon") (f64.const 2.220_446_049_250_313_1e-16))
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
  (invoke "f32.no_trichotomy_lt" (f32.const 0) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "f32.no_trichotomy_le" (f32.const 0) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "f32.no_trichotomy_gt" (f32.const 0) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "f32.no_trichotomy_ge" (f32.const 0) (f32.const nan:0x400000))
  (i32.const 0)
)
(assert_return
  (invoke "f64.no_trichotomy_lt" (f64.const 0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "f64.no_trichotomy_le" (f64.const 0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "f64.no_trichotomy_gt" (f64.const 0) (f64.const nan:0x8000000000000))
  (i32.const 0)
)
(assert_return
  (invoke "f64.no_trichotomy_ge" (f64.const 0) (f64.const nan:0x8000000000000))
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
    (i32.const 2_139_107_856)
    (i32.const 2_139_107_856)
  )
  (i32.const 2_143_289_344)
)
(assert_return
  (invoke "f32.canonical_nan_bitpattern" (i32.const 0) (i32.const 0))
  (i32.const 2_143_289_344)
)
(assert_return
  (invoke "f32.canonical_nan_bitpattern"
    (i32.const 2_143_289_344)
    (i32.const 2_143_289_344)
  )
  (i32.const 2_143_289_344)
)
(assert_return
  (invoke "f32.canonical_nan_bitpattern"
    (i32.const -4_194_304)
    (i32.const 2_143_289_344)
  )
  (i32.const 2_143_289_344)
)
(assert_return
  (invoke "f32.canonical_nan_bitpattern"
    (i32.const 2_143_289_344)
    (i32.const -4_194_304)
  )
  (i32.const 2_143_289_344)
)
(assert_return
  (invoke "f32.canonical_nan_bitpattern"
    (i32.const -4_194_304)
    (i32.const -4_194_304)
  )
  (i32.const 2_143_289_344)
)
(assert_return
  (invoke "f32.nonarithmetic_nan_bitpattern" (i32.const 2_143_302_160))
  (i32.const -4_181_488)
)
(assert_return
  (invoke "f32.nonarithmetic_nan_bitpattern" (i32.const -4_181_488))
  (i32.const 2_143_302_160)
)
(assert_return
  (invoke "f32.nonarithmetic_nan_bitpattern" (i32.const 2_139_107_856))
  (i32.const -8_375_792)
)
(assert_return
  (invoke "f32.nonarithmetic_nan_bitpattern" (i32.const -8_375_792))
  (i32.const 2_139_107_856)
)
(assert_return
  (invoke "f64.arithmetic_nan_bitpattern"
    (i64.const 9_218_868_437_227_418_128)
    (i64.const 9_218_868_437_227_418_128)
  )
  (i64.const 9_221_120_237_041_090_560)
)
(assert_return
  (invoke "f64.canonical_nan_bitpattern" (i64.const 0) (i64.const 0))
  (i64.const 9_221_120_237_041_090_560)
)
(assert_return
  (invoke "f64.canonical_nan_bitpattern"
    (i64.const 9_221_120_237_041_090_560)
    (i64.const 9_221_120_237_041_090_560)
  )
  (i64.const 9_221_120_237_041_090_560)
)
(assert_return
  (invoke "f64.canonical_nan_bitpattern"
    (i64.const -2_251_799_813_685_248)
    (i64.const 9_221_120_237_041_090_560)
  )
  (i64.const 9_221_120_237_041_090_560)
)
(assert_return
  (invoke "f64.canonical_nan_bitpattern"
    (i64.const 9_221_120_237_041_090_560)
    (i64.const -2_251_799_813_685_248)
  )
  (i64.const 9_221_120_237_041_090_560)
)
(assert_return
  (invoke "f64.canonical_nan_bitpattern"
    (i64.const -2_251_799_813_685_248)
    (i64.const -2_251_799_813_685_248)
  )
  (i64.const 9_221_120_237_041_090_560)
)
(assert_return
  (invoke "f64.nonarithmetic_nan_bitpattern"
    (i64.const 9_221_120_237_041_103_376)
  )
  (i64.const -2_251_799_813_672_432)
)
(assert_return
  (invoke "f64.nonarithmetic_nan_bitpattern" (i64.const -2_251_799_813_672_432))
  (i64.const 9_221_120_237_041_103_376)
)
(assert_return
  (invoke "f64.nonarithmetic_nan_bitpattern"
    (i64.const 9_218_868_437_227_418_128)
  )
  (i64.const -4_503_599_627_357_680)
)
(assert_return
  (invoke "f64.nonarithmetic_nan_bitpattern" (i64.const -4_503_599_627_357_680))
  (i64.const 9_218_868_437_227_418_128)
)
(assert_return
  (invoke "f32.no_fold_sub_zero" (i32.const 2_141_192_192))
  (i32.const 2_143_289_344)
)
(assert_return
  (invoke "f32.no_fold_neg0_sub" (i32.const 2_141_192_192))
  (i32.const 2_143_289_344)
)
(assert_return
  (invoke "f32.no_fold_mul_one" (i32.const 2_141_192_192))
  (i32.const 2_143_289_344)
)
(assert_return
  (invoke "f32.no_fold_neg1_mul" (i32.const 2_141_192_192))
  (i32.const 2_143_289_344)
)
(assert_return
  (invoke "f32.no_fold_div_one" (i32.const 2_141_192_192))
  (i32.const 2_143_289_344)
)
(assert_return
  (invoke "f32.no_fold_div_neg1" (i32.const 2_141_192_192))
  (i32.const 2_143_289_344)
)
(assert_return
  (invoke "f64.no_fold_sub_zero" (i64.const 9_219_994_337_134_247_936))
  (i64.const 9_221_120_237_041_090_560)
)
(assert_return
  (invoke "f64.no_fold_neg0_sub" (i64.const 9_219_994_337_134_247_936))
  (i64.const 9_221_120_237_041_090_560)
)
(assert_return
  (invoke "f64.no_fold_mul_one" (i64.const 9_219_994_337_134_247_936))
  (i64.const 9_221_120_237_041_090_560)
)
(assert_return
  (invoke "f64.no_fold_neg1_mul" (i64.const 9_219_994_337_134_247_936))
  (i64.const 9_221_120_237_041_090_560)
)
(assert_return
  (invoke "f64.no_fold_div_one" (i64.const 9_219_994_337_134_247_936))
  (i64.const 9_221_120_237_041_090_560)
)
(assert_return
  (invoke "f64.no_fold_div_neg1" (i64.const 9_219_994_337_134_247_936))
  (i64.const 9_221_120_237_041_090_560)
)
(assert_return
  (invoke "no_fold_promote_demote" (i32.const 2_141_192_192))
  (i32.const 2_143_289_344)
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
    (f64.const 32_000_000)
    (f64.const 1)
    (f64.const -1)
    (f64.const 80_000_000)
    (f64.const 40_000_000)
    (f64.const 1)
    (f64.const -1)
    (f64.const -16_000_000)
  )
  (f64.const 2)
)
(assert_return
  (invoke "with_binary_sum_collapse"
    (f64.const 32_000_000)
    (f64.const 1)
    (f64.const -1)
    (f64.const 80_000_000)
    (f64.const 40_000_000)
    (f64.const 1)
    (f64.const -1)
    (f64.const -16_000_000)
  )
  (f64.const 2)
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
  (invoke "f32.contract2fma" (f32.const 1) (f32.const 1))
  (f32.const 0)
)
(assert_return
  (invoke "f32.contract2fma"
    (f32.const 1.100_000_023_841_857_9)
    (f32.const 1.100_000_023_841_857_9)
  )
  (f32.const 0)
)
(assert_return
  (invoke "f32.contract2fma"
    (f32.const 1.199_999_928_474_426_3)
    (f32.const 1.199_999_928_474_426_3)
  )
  (f32.const 0)
)
(assert_return
  (invoke "f64.contract2fma" (f64.const 1) (f64.const 1))
  (f64.const 0)
)
(assert_return
  (invoke "f64.contract2fma"
    (f64.const 1.100_000_000_000_000_1)
    (f64.const 1.100_000_000_000_000_1)
  )
  (f64.const 0)
)
(assert_return
  (invoke "f64.contract2fma" (f64.const 1.2) (f64.const 1.2))
  (f64.const 0)
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
    (f32.const 112_000_000)
    (f32.const 100_000)
    (f32.const 0.000_899_999_984_540_045_26)
  )
  (f32.const 888_888)
)
(assert_return
  (invoke "f64.division_by_small_number"
    (f64.const 112_000_000)
    (f64.const 100_000)
    (f64.const 0.000_899_999_999_999_999_98)
  )
  (f64.const 888_888.888_888_880_61)
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
  (invoke "f32.golden_ratio" (f32.const 0.5) (f32.const 1) (f32.const 5))
  (f32.const 1.618_034_005_165_100_1)
)
(assert_return
  (invoke "f64.golden_ratio" (f64.const 0.5) (f64.const 1) (f64.const 5))
  (f64.const 1.618_033_988_749_894_9)
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
(assert_return (invoke "f32.silver_means" (f32.const 0)) (f32.const 1))
(assert_return
  (invoke "f32.silver_means" (f32.const 1))
  (f32.const 1.618_034_005_165_100_1)
)
(assert_return
  (invoke "f32.silver_means" (f32.const 2))
  (f32.const 2.414_213_657_379_150_4)
)
(assert_return
  (invoke "f32.silver_means" (f32.const 3))
  (f32.const 3.302_775_621_414_184_6)
)
(assert_return
  (invoke "f32.silver_means" (f32.const 4))
  (f32.const 4.236_067_771_911_621_1)
)
(assert_return
  (invoke "f32.silver_means" (f32.const 5))
  (f32.const 5.192_582_130_432_128_9)
)
(assert_return (invoke "f64.silver_means" (f64.const 0)) (f64.const 1))
(assert_return
  (invoke "f64.silver_means" (f64.const 1))
  (f64.const 1.618_033_988_749_894_9)
)
(assert_return
  (invoke "f64.silver_means" (f64.const 2))
  (f64.const 2.414_213_562_373_094_9)
)
(assert_return
  (invoke "f64.silver_means" (f64.const 3))
  (f64.const 3.302_775_637_731_994_8)
)
(assert_return
  (invoke "f64.silver_means" (f64.const 4))
  (f64.const 4.236_067_977_499_789_8)
)
(assert_return
  (invoke "f64.silver_means" (f64.const 5))
  (f64.const 5.192_582_403_567_252_3)
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7c\7c\01\7f\03\82\80\80\80\00\01\00\07\8e\80"
  "\80\80\00\01\0a\70\6f\69\6e\74\5f\66\6f\75\72\00"
  "\00\0a\97\80\80\80\00\01\91\80\80\80\00\00\20\00"
  "\20\01\a3\44\9a\99\99\99\99\99\d9\3f\63\0b"
)
(assert_return (invoke "point_four" (f64.const 4) (f64.const 10)) (i32.const 0))
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
(assert_return
  (invoke "tau" (i32.const 10))
  (f64.const 6.283_185_307_179_582_7)
)
(assert_return
  (invoke "tau" (i32.const 11))
  (f64.const 6.283_185_307_179_586_2)
)
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
  (invoke "f32.no_fold_conditional_inc" (f32.const -0) (f32.const -1))
  (f32.const -0)
)
(assert_return
  (invoke "f64.no_fold_conditional_inc" (f64.const -0) (f64.const -1))
  (f64.const -0)
)

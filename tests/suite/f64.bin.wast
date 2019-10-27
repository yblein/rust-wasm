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
(assert_return (invoke "add" (f64.const -0) (f64.const -0)) (f64.const -0))
(assert_return (invoke "add" (f64.const -0) (f64.const 0)) (f64.const 0))
(assert_return (invoke "add" (f64.const 0) (f64.const -0)) (f64.const 0))
(assert_return (invoke "add" (f64.const 0) (f64.const 0)) (f64.const 0))
(assert_return
  (invoke "add" (f64.const -0) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "add" (f64.const -0) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "add" (f64.const 0) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "add" (f64.const 0) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "add" (f64.const -0) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "add" (f64.const -0) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "add" (f64.const 0) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "add" (f64.const 0) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return (invoke "add" (f64.const -0) (f64.const -0.5)) (f64.const -0.5))
(assert_return (invoke "add" (f64.const -0) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "add" (f64.const 0) (f64.const -0.5)) (f64.const -0.5))
(assert_return (invoke "add" (f64.const 0) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "add" (f64.const -0) (f64.const -1)) (f64.const -1))
(assert_return (invoke "add" (f64.const -0) (f64.const 1)) (f64.const 1))
(assert_return (invoke "add" (f64.const 0) (f64.const -1)) (f64.const -1))
(assert_return (invoke "add" (f64.const 0) (f64.const 1)) (f64.const 1))
(assert_return
  (invoke "add" (f64.const -0) (f64.const -6.283_185_307_179_586_2))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "add" (f64.const -0) (f64.const 6.283_185_307_179_586_2))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "add" (f64.const 0) (f64.const -6.283_185_307_179_586_2))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "add" (f64.const 0) (f64.const 6.283_185_307_179_586_2))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "add" (f64.const -0) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add" (f64.const -0) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add" (f64.const 0) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add" (f64.const 0) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return (invoke "add" (f64.const -0) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "add" (f64.const -0) (f64.const inf)) (f64.const inf))
(assert_return (invoke "add" (f64.const 0) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "add" (f64.const 0) (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan
  (invoke "add" (f64.const -0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -0) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 0) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "add" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "add" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "add" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "add" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "add"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -9.881_312_916_824_930_9e-324)
)
(assert_return
  (invoke "add"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 0)
)
(assert_return
  (invoke "add"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const 0)
)
(assert_return
  (invoke "add"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 9.881_312_916_824_930_9e-324)
)
(assert_return
  (invoke "add"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -2.225_073_858_507_201_9e-308)
)
(assert_return
  (invoke "add"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 2.225_073_858_507_200_9e-308)
)
(assert_return
  (invoke "add"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -2.225_073_858_507_200_9e-308)
)
(assert_return
  (invoke "add"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 2.225_073_858_507_201_9e-308)
)
(assert_return
  (invoke "add" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "add" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "add" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "add" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "add" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -1))
  (f64.const -1)
)
(assert_return
  (invoke "add" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 1))
  (f64.const 1)
)
(assert_return
  (invoke "add" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -1))
  (f64.const -1)
)
(assert_return
  (invoke "add" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 1))
  (f64.const 1)
)
(assert_return
  (invoke "add"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "add"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "add"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "add"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "add"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -4.940_656_458_412_465_4e-324) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const 4.940_656_458_412_465_4e-324) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "add" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "add" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "add" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "add" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "add"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -2.225_073_858_507_201_9e-308)
)
(assert_return
  (invoke "add"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const -2.225_073_858_507_200_9e-308)
)
(assert_return
  (invoke "add"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const 2.225_073_858_507_200_9e-308)
)
(assert_return
  (invoke "add"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 2.225_073_858_507_201_9e-308)
)
(assert_return
  (invoke "add"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -4.450_147_717_014_402_8e-308)
)
(assert_return
  (invoke "add"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 0)
)
(assert_return
  (invoke "add"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const 0)
)
(assert_return
  (invoke "add"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 4.450_147_717_014_402_8e-308)
)
(assert_return
  (invoke "add" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "add" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "add" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "add" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "add" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -1))
  (f64.const -1)
)
(assert_return
  (invoke "add" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 1))
  (f64.const 1)
)
(assert_return
  (invoke "add" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -1))
  (f64.const -1)
)
(assert_return
  (invoke "add" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 1))
  (f64.const 1)
)
(assert_return
  (invoke "add"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "add"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "add"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "add"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "add"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -2.225_073_858_507_201_4e-308) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const 2.225_073_858_507_201_4e-308) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return (invoke "add" (f64.const -0.5) (f64.const -0)) (f64.const -0.5))
(assert_return (invoke "add" (f64.const -0.5) (f64.const 0)) (f64.const -0.5))
(assert_return (invoke "add" (f64.const 0.5) (f64.const -0)) (f64.const 0.5))
(assert_return (invoke "add" (f64.const 0.5) (f64.const 0)) (f64.const 0.5))
(assert_return
  (invoke "add" (f64.const -0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -0.5)
)
(assert_return
  (invoke "add" (f64.const -0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const -0.5)
)
(assert_return
  (invoke "add" (f64.const 0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const 0.5)
)
(assert_return
  (invoke "add" (f64.const 0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 0.5)
)
(assert_return
  (invoke "add" (f64.const -0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -0.5)
)
(assert_return
  (invoke "add" (f64.const -0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const -0.5)
)
(assert_return
  (invoke "add" (f64.const 0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const 0.5)
)
(assert_return
  (invoke "add" (f64.const 0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 0.5)
)
(assert_return (invoke "add" (f64.const -0.5) (f64.const -0.5)) (f64.const -1))
(assert_return (invoke "add" (f64.const -0.5) (f64.const 0.5)) (f64.const 0))
(assert_return (invoke "add" (f64.const 0.5) (f64.const -0.5)) (f64.const 0))
(assert_return (invoke "add" (f64.const 0.5) (f64.const 0.5)) (f64.const 1))
(assert_return (invoke "add" (f64.const -0.5) (f64.const -1)) (f64.const -1.5))
(assert_return (invoke "add" (f64.const -0.5) (f64.const 1)) (f64.const 0.5))
(assert_return (invoke "add" (f64.const 0.5) (f64.const -1)) (f64.const -0.5))
(assert_return (invoke "add" (f64.const 0.5) (f64.const 1)) (f64.const 1.5))
(assert_return
  (invoke "add" (f64.const -0.5) (f64.const -6.283_185_307_179_586_2))
  (f64.const -6.783_185_307_179_586_2)
)
(assert_return
  (invoke "add" (f64.const -0.5) (f64.const 6.283_185_307_179_586_2))
  (f64.const 5.783_185_307_179_586_2)
)
(assert_return
  (invoke "add" (f64.const 0.5) (f64.const -6.283_185_307_179_586_2))
  (f64.const -5.783_185_307_179_586_2)
)
(assert_return
  (invoke "add" (f64.const 0.5) (f64.const 6.283_185_307_179_586_2))
  (f64.const 6.783_185_307_179_586_2)
)
(assert_return
  (invoke "add" (f64.const -0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add" (f64.const -0.5) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add" (f64.const 0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add" (f64.const 0.5) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
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
(assert_return (invoke "add" (f64.const -1) (f64.const -0)) (f64.const -1))
(assert_return (invoke "add" (f64.const -1) (f64.const 0)) (f64.const -1))
(assert_return (invoke "add" (f64.const 1) (f64.const -0)) (f64.const 1))
(assert_return (invoke "add" (f64.const 1) (f64.const 0)) (f64.const 1))
(assert_return
  (invoke "add" (f64.const -1) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -1)
)
(assert_return
  (invoke "add" (f64.const -1) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const -1)
)
(assert_return
  (invoke "add" (f64.const 1) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const 1)
)
(assert_return
  (invoke "add" (f64.const 1) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 1)
)
(assert_return
  (invoke "add" (f64.const -1) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -1)
)
(assert_return
  (invoke "add" (f64.const -1) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const -1)
)
(assert_return
  (invoke "add" (f64.const 1) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const 1)
)
(assert_return
  (invoke "add" (f64.const 1) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 1)
)
(assert_return (invoke "add" (f64.const -1) (f64.const -0.5)) (f64.const -1.5))
(assert_return (invoke "add" (f64.const -1) (f64.const 0.5)) (f64.const -0.5))
(assert_return (invoke "add" (f64.const 1) (f64.const -0.5)) (f64.const 0.5))
(assert_return (invoke "add" (f64.const 1) (f64.const 0.5)) (f64.const 1.5))
(assert_return (invoke "add" (f64.const -1) (f64.const -1)) (f64.const -2))
(assert_return (invoke "add" (f64.const -1) (f64.const 1)) (f64.const 0))
(assert_return (invoke "add" (f64.const 1) (f64.const -1)) (f64.const 0))
(assert_return (invoke "add" (f64.const 1) (f64.const 1)) (f64.const 2))
(assert_return
  (invoke "add" (f64.const -1) (f64.const -6.283_185_307_179_586_2))
  (f64.const -7.283_185_307_179_586_2)
)
(assert_return
  (invoke "add" (f64.const -1) (f64.const 6.283_185_307_179_586_2))
  (f64.const 5.283_185_307_179_586_2)
)
(assert_return
  (invoke "add" (f64.const 1) (f64.const -6.283_185_307_179_586_2))
  (f64.const -5.283_185_307_179_586_2)
)
(assert_return
  (invoke "add" (f64.const 1) (f64.const 6.283_185_307_179_586_2))
  (f64.const 7.283_185_307_179_586_2)
)
(assert_return
  (invoke "add" (f64.const -1) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add" (f64.const -1) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add" (f64.const 1) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add" (f64.const 1) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return (invoke "add" (f64.const -1) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "add" (f64.const -1) (f64.const inf)) (f64.const inf))
(assert_return (invoke "add" (f64.const 1) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "add" (f64.const 1) (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan
  (invoke "add" (f64.const -1) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -1) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -1) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -1) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 1) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 1) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const 1) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const 1) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "add" (f64.const -6.283_185_307_179_586_2) (f64.const -0))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "add" (f64.const -6.283_185_307_179_586_2) (f64.const 0))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "add" (f64.const 6.283_185_307_179_586_2) (f64.const -0))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "add" (f64.const 6.283_185_307_179_586_2) (f64.const 0))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "add"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "add"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "add"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "add"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "add"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "add"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "add"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "add"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "add" (f64.const -6.283_185_307_179_586_2) (f64.const -0.5))
  (f64.const -6.783_185_307_179_586_2)
)
(assert_return
  (invoke "add" (f64.const -6.283_185_307_179_586_2) (f64.const 0.5))
  (f64.const -5.783_185_307_179_586_2)
)
(assert_return
  (invoke "add" (f64.const 6.283_185_307_179_586_2) (f64.const -0.5))
  (f64.const 5.783_185_307_179_586_2)
)
(assert_return
  (invoke "add" (f64.const 6.283_185_307_179_586_2) (f64.const 0.5))
  (f64.const 6.783_185_307_179_586_2)
)
(assert_return
  (invoke "add" (f64.const -6.283_185_307_179_586_2) (f64.const -1))
  (f64.const -7.283_185_307_179_586_2)
)
(assert_return
  (invoke "add" (f64.const -6.283_185_307_179_586_2) (f64.const 1))
  (f64.const -5.283_185_307_179_586_2)
)
(assert_return
  (invoke "add" (f64.const 6.283_185_307_179_586_2) (f64.const -1))
  (f64.const 5.283_185_307_179_586_2)
)
(assert_return
  (invoke "add" (f64.const 6.283_185_307_179_586_2) (f64.const 1))
  (f64.const 7.283_185_307_179_586_2)
)
(assert_return
  (invoke "add"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -12.566_370_614_359_172)
)
(assert_return
  (invoke "add"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 0)
)
(assert_return
  (invoke "add"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const 0)
)
(assert_return
  (invoke "add"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 12.566_370_614_359_172)
)
(assert_return
  (invoke "add"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add" (f64.const -6.283_185_307_179_586_2) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -6.283_185_307_179_586_2) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const 6.283_185_307_179_586_2) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const 6.283_185_307_179_586_2) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "add" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -1))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 1))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -1))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 1))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "add"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "add"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 0)
)
(assert_return
  (invoke "add"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const 0)
)
(assert_return
  (invoke "add"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -1.797_693_134_862_315_7e+308) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const 1.797_693_134_862_315_7e+308) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return (invoke "add" (f64.const -inf) (f64.const -0)) (f64.const -inf))
(assert_return (invoke "add" (f64.const -inf) (f64.const 0)) (f64.const -inf))
(assert_return (invoke "add" (f64.const inf) (f64.const -0)) (f64.const inf))
(assert_return (invoke "add" (f64.const inf) (f64.const 0)) (f64.const inf))
(assert_return
  (invoke "add" (f64.const -inf) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const -0.5))
  (f64.const -inf)
)
(assert_return (invoke "add" (f64.const -inf) (f64.const 0.5)) (f64.const -inf))
(assert_return (invoke "add" (f64.const inf) (f64.const -0.5)) (f64.const inf))
(assert_return (invoke "add" (f64.const inf) (f64.const 0.5)) (f64.const inf))
(assert_return (invoke "add" (f64.const -inf) (f64.const -1)) (f64.const -inf))
(assert_return (invoke "add" (f64.const -inf) (f64.const 1)) (f64.const -inf))
(assert_return (invoke "add" (f64.const inf) (f64.const -1)) (f64.const inf))
(assert_return (invoke "add" (f64.const inf) (f64.const 1)) (f64.const inf))
(assert_return
  (invoke "add" (f64.const -inf) (f64.const -6.283_185_307_179_586_2))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const 6.283_185_307_179_586_2))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const -6.283_185_307_179_586_2))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const 6.283_185_307_179_586_2))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const -inf) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const inf)
)
(assert_return
  (invoke "add" (f64.const inf) (f64.const 1.797_693_134_862_315_7e+308))
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
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const -0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const -0))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const 0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const 0))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const -0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const -0))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const 0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const 0))
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x4000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x4000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const nan:0x4000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const nan:0x4000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x4000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x4000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const nan:0x4000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const nan:0x4000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
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
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const -1))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const -1))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const -nan:0x8000000000000) (f64.const 1))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const -nan:0x4000000000000) (f64.const 1))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const -1))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const -1))
)
(assert_return_canonical_nan
  (invoke "add" (f64.const nan:0x8000000000000) (f64.const 1))
)
(assert_return_arithmetic_nan
  (invoke "add" (f64.const nan:0x4000000000000) (f64.const 1))
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x4000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x4000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const nan:0x4000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const nan:0x4000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x4000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const -nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const -nan:0x4000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const nan:0x4000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f64.const nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f64.const nan:0x4000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
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
(assert_return (invoke "sub" (f64.const -0) (f64.const -0)) (f64.const 0))
(assert_return (invoke "sub" (f64.const -0) (f64.const 0)) (f64.const -0))
(assert_return (invoke "sub" (f64.const 0) (f64.const -0)) (f64.const 0))
(assert_return (invoke "sub" (f64.const 0) (f64.const 0)) (f64.const 0))
(assert_return
  (invoke "sub" (f64.const -0) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "sub" (f64.const -0) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "sub" (f64.const 0) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "sub" (f64.const 0) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "sub" (f64.const -0) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "sub" (f64.const -0) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "sub" (f64.const 0) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "sub" (f64.const 0) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return (invoke "sub" (f64.const -0) (f64.const -0.5)) (f64.const 0.5))
(assert_return (invoke "sub" (f64.const -0) (f64.const 0.5)) (f64.const -0.5))
(assert_return (invoke "sub" (f64.const 0) (f64.const -0.5)) (f64.const 0.5))
(assert_return (invoke "sub" (f64.const 0) (f64.const 0.5)) (f64.const -0.5))
(assert_return (invoke "sub" (f64.const -0) (f64.const -1)) (f64.const 1))
(assert_return (invoke "sub" (f64.const -0) (f64.const 1)) (f64.const -1))
(assert_return (invoke "sub" (f64.const 0) (f64.const -1)) (f64.const 1))
(assert_return (invoke "sub" (f64.const 0) (f64.const 1)) (f64.const -1))
(assert_return
  (invoke "sub" (f64.const -0) (f64.const -6.283_185_307_179_586_2))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub" (f64.const -0) (f64.const 6.283_185_307_179_586_2))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub" (f64.const 0) (f64.const -6.283_185_307_179_586_2))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub" (f64.const 0) (f64.const 6.283_185_307_179_586_2))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub" (f64.const -0) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub" (f64.const -0) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub" (f64.const 0) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub" (f64.const 0) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return (invoke "sub" (f64.const -0) (f64.const -inf)) (f64.const inf))
(assert_return (invoke "sub" (f64.const -0) (f64.const inf)) (f64.const -inf))
(assert_return (invoke "sub" (f64.const 0) (f64.const -inf)) (f64.const inf))
(assert_return (invoke "sub" (f64.const 0) (f64.const inf)) (f64.const -inf))
(assert_return_canonical_nan
  (invoke "sub" (f64.const -0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -0) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 0) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "sub" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "sub" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "sub" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "sub" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "sub"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const 0)
)
(assert_return
  (invoke "sub"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const -9.881_312_916_824_930_9e-324)
)
(assert_return
  (invoke "sub"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const 9.881_312_916_824_930_9e-324)
)
(assert_return
  (invoke "sub"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 0)
)
(assert_return
  (invoke "sub"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const 2.225_073_858_507_200_9e-308)
)
(assert_return
  (invoke "sub"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const -2.225_073_858_507_201_9e-308)
)
(assert_return
  (invoke "sub"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const 2.225_073_858_507_201_9e-308)
)
(assert_return
  (invoke "sub"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const -2.225_073_858_507_200_9e-308)
)
(assert_return
  (invoke "sub" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "sub" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "sub" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "sub" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "sub" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -1))
  (f64.const 1)
)
(assert_return
  (invoke "sub" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 1))
  (f64.const -1)
)
(assert_return
  (invoke "sub" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -1))
  (f64.const 1)
)
(assert_return
  (invoke "sub" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 1))
  (f64.const -1)
)
(assert_return
  (invoke "sub"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -4.940_656_458_412_465_4e-324) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const 4.940_656_458_412_465_4e-324) (f64.const inf))
  (f64.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "sub" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "sub" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "sub" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "sub" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "sub"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -2.225_073_858_507_200_9e-308)
)
(assert_return
  (invoke "sub"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const -2.225_073_858_507_201_9e-308)
)
(assert_return
  (invoke "sub"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const 2.225_073_858_507_201_9e-308)
)
(assert_return
  (invoke "sub"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 2.225_073_858_507_200_9e-308)
)
(assert_return
  (invoke "sub"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const 0)
)
(assert_return
  (invoke "sub"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const -4.450_147_717_014_402_8e-308)
)
(assert_return
  (invoke "sub"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const 4.450_147_717_014_402_8e-308)
)
(assert_return
  (invoke "sub"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 0)
)
(assert_return
  (invoke "sub" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "sub" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "sub" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "sub" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "sub" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -1))
  (f64.const 1)
)
(assert_return
  (invoke "sub" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 1))
  (f64.const -1)
)
(assert_return
  (invoke "sub" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -1))
  (f64.const 1)
)
(assert_return
  (invoke "sub" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 1))
  (f64.const -1)
)
(assert_return
  (invoke "sub"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -2.225_073_858_507_201_4e-308) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const 2.225_073_858_507_201_4e-308) (f64.const inf))
  (f64.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return (invoke "sub" (f64.const -0.5) (f64.const -0)) (f64.const -0.5))
(assert_return (invoke "sub" (f64.const -0.5) (f64.const 0)) (f64.const -0.5))
(assert_return (invoke "sub" (f64.const 0.5) (f64.const -0)) (f64.const 0.5))
(assert_return (invoke "sub" (f64.const 0.5) (f64.const 0)) (f64.const 0.5))
(assert_return
  (invoke "sub" (f64.const -0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -0.5)
)
(assert_return
  (invoke "sub" (f64.const -0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const -0.5)
)
(assert_return
  (invoke "sub" (f64.const 0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const 0.5)
)
(assert_return
  (invoke "sub" (f64.const 0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 0.5)
)
(assert_return
  (invoke "sub" (f64.const -0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -0.5)
)
(assert_return
  (invoke "sub" (f64.const -0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const -0.5)
)
(assert_return
  (invoke "sub" (f64.const 0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const 0.5)
)
(assert_return
  (invoke "sub" (f64.const 0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 0.5)
)
(assert_return (invoke "sub" (f64.const -0.5) (f64.const -0.5)) (f64.const 0))
(assert_return (invoke "sub" (f64.const -0.5) (f64.const 0.5)) (f64.const -1))
(assert_return (invoke "sub" (f64.const 0.5) (f64.const -0.5)) (f64.const 1))
(assert_return (invoke "sub" (f64.const 0.5) (f64.const 0.5)) (f64.const 0))
(assert_return (invoke "sub" (f64.const -0.5) (f64.const -1)) (f64.const 0.5))
(assert_return (invoke "sub" (f64.const -0.5) (f64.const 1)) (f64.const -1.5))
(assert_return (invoke "sub" (f64.const 0.5) (f64.const -1)) (f64.const 1.5))
(assert_return (invoke "sub" (f64.const 0.5) (f64.const 1)) (f64.const -0.5))
(assert_return
  (invoke "sub" (f64.const -0.5) (f64.const -6.283_185_307_179_586_2))
  (f64.const 5.783_185_307_179_586_2)
)
(assert_return
  (invoke "sub" (f64.const -0.5) (f64.const 6.283_185_307_179_586_2))
  (f64.const -6.783_185_307_179_586_2)
)
(assert_return
  (invoke "sub" (f64.const 0.5) (f64.const -6.283_185_307_179_586_2))
  (f64.const 6.783_185_307_179_586_2)
)
(assert_return
  (invoke "sub" (f64.const 0.5) (f64.const 6.283_185_307_179_586_2))
  (f64.const -5.783_185_307_179_586_2)
)
(assert_return
  (invoke "sub" (f64.const -0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub" (f64.const -0.5) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub" (f64.const 0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub" (f64.const 0.5) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
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
(assert_return (invoke "sub" (f64.const -1) (f64.const -0)) (f64.const -1))
(assert_return (invoke "sub" (f64.const -1) (f64.const 0)) (f64.const -1))
(assert_return (invoke "sub" (f64.const 1) (f64.const -0)) (f64.const 1))
(assert_return (invoke "sub" (f64.const 1) (f64.const 0)) (f64.const 1))
(assert_return
  (invoke "sub" (f64.const -1) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -1)
)
(assert_return
  (invoke "sub" (f64.const -1) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const -1)
)
(assert_return
  (invoke "sub" (f64.const 1) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const 1)
)
(assert_return
  (invoke "sub" (f64.const 1) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 1)
)
(assert_return
  (invoke "sub" (f64.const -1) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -1)
)
(assert_return
  (invoke "sub" (f64.const -1) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const -1)
)
(assert_return
  (invoke "sub" (f64.const 1) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const 1)
)
(assert_return
  (invoke "sub" (f64.const 1) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 1)
)
(assert_return (invoke "sub" (f64.const -1) (f64.const -0.5)) (f64.const -0.5))
(assert_return (invoke "sub" (f64.const -1) (f64.const 0.5)) (f64.const -1.5))
(assert_return (invoke "sub" (f64.const 1) (f64.const -0.5)) (f64.const 1.5))
(assert_return (invoke "sub" (f64.const 1) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "sub" (f64.const -1) (f64.const -1)) (f64.const 0))
(assert_return (invoke "sub" (f64.const -1) (f64.const 1)) (f64.const -2))
(assert_return (invoke "sub" (f64.const 1) (f64.const -1)) (f64.const 2))
(assert_return (invoke "sub" (f64.const 1) (f64.const 1)) (f64.const 0))
(assert_return
  (invoke "sub" (f64.const -1) (f64.const -6.283_185_307_179_586_2))
  (f64.const 5.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub" (f64.const -1) (f64.const 6.283_185_307_179_586_2))
  (f64.const -7.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub" (f64.const 1) (f64.const -6.283_185_307_179_586_2))
  (f64.const 7.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub" (f64.const 1) (f64.const 6.283_185_307_179_586_2))
  (f64.const -5.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub" (f64.const -1) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub" (f64.const -1) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub" (f64.const 1) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub" (f64.const 1) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return (invoke "sub" (f64.const -1) (f64.const -inf)) (f64.const inf))
(assert_return (invoke "sub" (f64.const -1) (f64.const inf)) (f64.const -inf))
(assert_return (invoke "sub" (f64.const 1) (f64.const -inf)) (f64.const inf))
(assert_return (invoke "sub" (f64.const 1) (f64.const inf)) (f64.const -inf))
(assert_return_canonical_nan
  (invoke "sub" (f64.const -1) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -1) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -1) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -1) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 1) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 1) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const 1) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const 1) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "sub" (f64.const -6.283_185_307_179_586_2) (f64.const -0))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub" (f64.const -6.283_185_307_179_586_2) (f64.const 0))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub" (f64.const 6.283_185_307_179_586_2) (f64.const -0))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub" (f64.const 6.283_185_307_179_586_2) (f64.const 0))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub" (f64.const -6.283_185_307_179_586_2) (f64.const -0.5))
  (f64.const -5.783_185_307_179_586_2)
)
(assert_return
  (invoke "sub" (f64.const -6.283_185_307_179_586_2) (f64.const 0.5))
  (f64.const -6.783_185_307_179_586_2)
)
(assert_return
  (invoke "sub" (f64.const 6.283_185_307_179_586_2) (f64.const -0.5))
  (f64.const 6.783_185_307_179_586_2)
)
(assert_return
  (invoke "sub" (f64.const 6.283_185_307_179_586_2) (f64.const 0.5))
  (f64.const 5.783_185_307_179_586_2)
)
(assert_return
  (invoke "sub" (f64.const -6.283_185_307_179_586_2) (f64.const -1))
  (f64.const -5.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub" (f64.const -6.283_185_307_179_586_2) (f64.const 1))
  (f64.const -7.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub" (f64.const 6.283_185_307_179_586_2) (f64.const -1))
  (f64.const 7.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub" (f64.const 6.283_185_307_179_586_2) (f64.const 1))
  (f64.const 5.283_185_307_179_586_2)
)
(assert_return
  (invoke "sub"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const 0)
)
(assert_return
  (invoke "sub"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const -12.566_370_614_359_172)
)
(assert_return
  (invoke "sub"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const 12.566_370_614_359_172)
)
(assert_return
  (invoke "sub"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 0)
)
(assert_return
  (invoke "sub"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub" (f64.const -6.283_185_307_179_586_2) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -6.283_185_307_179_586_2) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const 6.283_185_307_179_586_2) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const 6.283_185_307_179_586_2) (f64.const inf))
  (f64.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "sub" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -1))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 1))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -1))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 1))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "sub"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const 0)
)
(assert_return
  (invoke "sub"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "sub"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const inf)
)
(assert_return
  (invoke "sub"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 0)
)
(assert_return
  (invoke "sub" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -1.797_693_134_862_315_7e+308) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const 1.797_693_134_862_315_7e+308) (f64.const inf))
  (f64.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return (invoke "sub" (f64.const -inf) (f64.const -0)) (f64.const -inf))
(assert_return (invoke "sub" (f64.const -inf) (f64.const 0)) (f64.const -inf))
(assert_return (invoke "sub" (f64.const inf) (f64.const -0)) (f64.const inf))
(assert_return (invoke "sub" (f64.const inf) (f64.const 0)) (f64.const inf))
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const -0.5))
  (f64.const -inf)
)
(assert_return (invoke "sub" (f64.const -inf) (f64.const 0.5)) (f64.const -inf))
(assert_return (invoke "sub" (f64.const inf) (f64.const -0.5)) (f64.const inf))
(assert_return (invoke "sub" (f64.const inf) (f64.const 0.5)) (f64.const inf))
(assert_return (invoke "sub" (f64.const -inf) (f64.const -1)) (f64.const -inf))
(assert_return (invoke "sub" (f64.const -inf) (f64.const 1)) (f64.const -inf))
(assert_return (invoke "sub" (f64.const inf) (f64.const -1)) (f64.const inf))
(assert_return (invoke "sub" (f64.const inf) (f64.const 1)) (f64.const inf))
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const -6.283_185_307_179_586_2))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const 6.283_185_307_179_586_2))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const -6.283_185_307_179_586_2))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const 6.283_185_307_179_586_2))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const -inf) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const inf)
)
(assert_return
  (invoke "sub" (f64.const inf) (f64.const 1.797_693_134_862_315_7e+308))
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
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const -0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const -0))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const 0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const 0))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const -0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const -0))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const 0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const 0))
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x4000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x4000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const nan:0x4000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const nan:0x4000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x4000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x4000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const nan:0x4000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const nan:0x4000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
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
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const -1))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const -1))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const -nan:0x8000000000000) (f64.const 1))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const -nan:0x4000000000000) (f64.const 1))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const -1))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const -1))
)
(assert_return_canonical_nan
  (invoke "sub" (f64.const nan:0x8000000000000) (f64.const 1))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f64.const nan:0x4000000000000) (f64.const 1))
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x4000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x4000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const nan:0x4000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const nan:0x4000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x4000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const -nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const -nan:0x4000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const nan:0x4000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f64.const nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f64.const nan:0x4000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
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
(assert_return (invoke "mul" (f64.const -0) (f64.const -0)) (f64.const 0))
(assert_return (invoke "mul" (f64.const -0) (f64.const 0)) (f64.const -0))
(assert_return (invoke "mul" (f64.const 0) (f64.const -0)) (f64.const -0))
(assert_return (invoke "mul" (f64.const 0) (f64.const 0)) (f64.const 0))
(assert_return
  (invoke "mul" (f64.const -0) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const 0)
)
(assert_return
  (invoke "mul" (f64.const -0) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const -0)
)
(assert_return
  (invoke "mul" (f64.const 0) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -0)
)
(assert_return
  (invoke "mul" (f64.const 0) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 0)
)
(assert_return
  (invoke "mul" (f64.const -0) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const 0)
)
(assert_return
  (invoke "mul" (f64.const -0) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const -0)
)
(assert_return
  (invoke "mul" (f64.const 0) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -0)
)
(assert_return
  (invoke "mul" (f64.const 0) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 0)
)
(assert_return (invoke "mul" (f64.const -0) (f64.const -0.5)) (f64.const 0))
(assert_return (invoke "mul" (f64.const -0) (f64.const 0.5)) (f64.const -0))
(assert_return (invoke "mul" (f64.const 0) (f64.const -0.5)) (f64.const -0))
(assert_return (invoke "mul" (f64.const 0) (f64.const 0.5)) (f64.const 0))
(assert_return (invoke "mul" (f64.const -0) (f64.const -1)) (f64.const 0))
(assert_return (invoke "mul" (f64.const -0) (f64.const 1)) (f64.const -0))
(assert_return (invoke "mul" (f64.const 0) (f64.const -1)) (f64.const -0))
(assert_return (invoke "mul" (f64.const 0) (f64.const 1)) (f64.const 0))
(assert_return
  (invoke "mul" (f64.const -0) (f64.const -6.283_185_307_179_586_2))
  (f64.const 0)
)
(assert_return
  (invoke "mul" (f64.const -0) (f64.const 6.283_185_307_179_586_2))
  (f64.const -0)
)
(assert_return
  (invoke "mul" (f64.const 0) (f64.const -6.283_185_307_179_586_2))
  (f64.const -0)
)
(assert_return
  (invoke "mul" (f64.const 0) (f64.const 6.283_185_307_179_586_2))
  (f64.const 0)
)
(assert_return
  (invoke "mul" (f64.const -0) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const 0)
)
(assert_return
  (invoke "mul" (f64.const -0) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const -0)
)
(assert_return
  (invoke "mul" (f64.const 0) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -0)
)
(assert_return
  (invoke "mul" (f64.const 0) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 0)
)
(assert_return_canonical_nan (invoke "mul" (f64.const -0) (f64.const -inf)))
(assert_return_canonical_nan (invoke "mul" (f64.const -0) (f64.const inf)))
(assert_return_canonical_nan (invoke "mul" (f64.const 0) (f64.const -inf)))
(assert_return_canonical_nan (invoke "mul" (f64.const 0) (f64.const inf)))
(assert_return_canonical_nan
  (invoke "mul" (f64.const -0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -0) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 0) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "mul" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0))
  (f64.const 0)
)
(assert_return
  (invoke "mul" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0))
  (f64.const -0)
)
(assert_return
  (invoke "mul" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0))
  (f64.const -0)
)
(assert_return
  (invoke "mul" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "mul"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const 0)
)
(assert_return
  (invoke "mul"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const -0)
)
(assert_return
  (invoke "mul"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -0)
)
(assert_return
  (invoke "mul"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 0)
)
(assert_return
  (invoke "mul"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const 0)
)
(assert_return
  (invoke "mul"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const -0)
)
(assert_return
  (invoke "mul"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -0)
)
(assert_return
  (invoke "mul"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 0)
)
(assert_return
  (invoke "mul" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (f64.const 0)
)
(assert_return
  (invoke "mul" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (f64.const -0)
)
(assert_return
  (invoke "mul" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (f64.const -0)
)
(assert_return
  (invoke "mul" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (f64.const 0)
)
(assert_return
  (invoke "mul" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -1))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "mul" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 1))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "mul" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -1))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "mul" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 1))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "mul"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const 2.964_393_875_047_479_3e-323)
)
(assert_return
  (invoke "mul"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const -2.964_393_875_047_479_3e-323)
)
(assert_return
  (invoke "mul"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -2.964_393_875_047_479_3e-323)
)
(assert_return
  (invoke "mul"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 2.964_393_875_047_479_3e-323)
)
(assert_return
  (invoke "mul"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const 8.881_784_197_001_251_3e-16)
)
(assert_return
  (invoke "mul"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const -8.881_784_197_001_251_3e-16)
)
(assert_return
  (invoke "mul"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -8.881_784_197_001_251_3e-16)
)
(assert_return
  (invoke "mul"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 8.881_784_197_001_251_3e-16)
)
(assert_return
  (invoke "mul" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -4.940_656_458_412_465_4e-324) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 4.940_656_458_412_465_4e-324) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "mul" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0))
  (f64.const 0)
)
(assert_return
  (invoke "mul" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0))
  (f64.const -0)
)
(assert_return
  (invoke "mul" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0))
  (f64.const -0)
)
(assert_return
  (invoke "mul" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "mul"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const 0)
)
(assert_return
  (invoke "mul"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const -0)
)
(assert_return
  (invoke "mul"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -0)
)
(assert_return
  (invoke "mul"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 0)
)
(assert_return
  (invoke "mul"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const 0)
)
(assert_return
  (invoke "mul"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const -0)
)
(assert_return
  (invoke "mul"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -0)
)
(assert_return
  (invoke "mul"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 0)
)
(assert_return
  (invoke "mul" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (f64.const 1.112_536_929_253_600_7e-308)
)
(assert_return
  (invoke "mul" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (f64.const -1.112_536_929_253_600_7e-308)
)
(assert_return
  (invoke "mul" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (f64.const -1.112_536_929_253_600_7e-308)
)
(assert_return
  (invoke "mul" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (f64.const 1.112_536_929_253_600_7e-308)
)
(assert_return
  (invoke "mul" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -1))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "mul" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 1))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "mul" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -1))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "mul" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 1))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "mul"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const 1.398_055_137_516_183_7e-307)
)
(assert_return
  (invoke "mul"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const -1.398_055_137_516_183_7e-307)
)
(assert_return
  (invoke "mul"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -1.398_055_137_516_183_7e-307)
)
(assert_return
  (invoke "mul"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 1.398_055_137_516_183_7e-307)
)
(assert_return
  (invoke "mul"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const 3.999_999_999_999_999_6)
)
(assert_return
  (invoke "mul"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const -3.999_999_999_999_999_6)
)
(assert_return
  (invoke "mul"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -3.999_999_999_999_999_6)
)
(assert_return
  (invoke "mul"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 3.999_999_999_999_999_6)
)
(assert_return
  (invoke "mul" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -2.225_073_858_507_201_4e-308) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 2.225_073_858_507_201_4e-308) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return (invoke "mul" (f64.const -0.5) (f64.const -0)) (f64.const 0))
(assert_return (invoke "mul" (f64.const -0.5) (f64.const 0)) (f64.const -0))
(assert_return (invoke "mul" (f64.const 0.5) (f64.const -0)) (f64.const -0))
(assert_return (invoke "mul" (f64.const 0.5) (f64.const 0)) (f64.const 0))
(assert_return
  (invoke "mul" (f64.const -0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const 0)
)
(assert_return
  (invoke "mul" (f64.const -0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const -0)
)
(assert_return
  (invoke "mul" (f64.const 0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -0)
)
(assert_return
  (invoke "mul" (f64.const 0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 0)
)
(assert_return
  (invoke "mul" (f64.const -0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const 1.112_536_929_253_600_7e-308)
)
(assert_return
  (invoke "mul" (f64.const -0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const -1.112_536_929_253_600_7e-308)
)
(assert_return
  (invoke "mul" (f64.const 0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -1.112_536_929_253_600_7e-308)
)
(assert_return
  (invoke "mul" (f64.const 0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 1.112_536_929_253_600_7e-308)
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
(assert_return (invoke "mul" (f64.const -0.5) (f64.const -1)) (f64.const 0.5))
(assert_return (invoke "mul" (f64.const -0.5) (f64.const 1)) (f64.const -0.5))
(assert_return (invoke "mul" (f64.const 0.5) (f64.const -1)) (f64.const -0.5))
(assert_return (invoke "mul" (f64.const 0.5) (f64.const 1)) (f64.const 0.5))
(assert_return
  (invoke "mul" (f64.const -0.5) (f64.const -6.283_185_307_179_586_2))
  (f64.const 3.141_592_653_589_793_1)
)
(assert_return
  (invoke "mul" (f64.const -0.5) (f64.const 6.283_185_307_179_586_2))
  (f64.const -3.141_592_653_589_793_1)
)
(assert_return
  (invoke "mul" (f64.const 0.5) (f64.const -6.283_185_307_179_586_2))
  (f64.const -3.141_592_653_589_793_1)
)
(assert_return
  (invoke "mul" (f64.const 0.5) (f64.const 6.283_185_307_179_586_2))
  (f64.const 3.141_592_653_589_793_1)
)
(assert_return
  (invoke "mul" (f64.const -0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const 8.988_465_674_311_578_5e+307)
)
(assert_return
  (invoke "mul" (f64.const -0.5) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const -8.988_465_674_311_578_5e+307)
)
(assert_return
  (invoke "mul" (f64.const 0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -8.988_465_674_311_578_5e+307)
)
(assert_return
  (invoke "mul" (f64.const 0.5) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 8.988_465_674_311_578_5e+307)
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
(assert_return (invoke "mul" (f64.const -1) (f64.const -0)) (f64.const 0))
(assert_return (invoke "mul" (f64.const -1) (f64.const 0)) (f64.const -0))
(assert_return (invoke "mul" (f64.const 1) (f64.const -0)) (f64.const -0))
(assert_return (invoke "mul" (f64.const 1) (f64.const 0)) (f64.const 0))
(assert_return
  (invoke "mul" (f64.const -1) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "mul" (f64.const -1) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "mul" (f64.const 1) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "mul" (f64.const 1) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "mul" (f64.const -1) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "mul" (f64.const -1) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "mul" (f64.const 1) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "mul" (f64.const 1) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return (invoke "mul" (f64.const -1) (f64.const -0.5)) (f64.const 0.5))
(assert_return (invoke "mul" (f64.const -1) (f64.const 0.5)) (f64.const -0.5))
(assert_return (invoke "mul" (f64.const 1) (f64.const -0.5)) (f64.const -0.5))
(assert_return (invoke "mul" (f64.const 1) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "mul" (f64.const -1) (f64.const -1)) (f64.const 1))
(assert_return (invoke "mul" (f64.const -1) (f64.const 1)) (f64.const -1))
(assert_return (invoke "mul" (f64.const 1) (f64.const -1)) (f64.const -1))
(assert_return (invoke "mul" (f64.const 1) (f64.const 1)) (f64.const 1))
(assert_return
  (invoke "mul" (f64.const -1) (f64.const -6.283_185_307_179_586_2))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "mul" (f64.const -1) (f64.const 6.283_185_307_179_586_2))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "mul" (f64.const 1) (f64.const -6.283_185_307_179_586_2))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "mul" (f64.const 1) (f64.const 6.283_185_307_179_586_2))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "mul" (f64.const -1) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "mul" (f64.const -1) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "mul" (f64.const 1) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "mul" (f64.const 1) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return (invoke "mul" (f64.const -1) (f64.const -inf)) (f64.const inf))
(assert_return (invoke "mul" (f64.const -1) (f64.const inf)) (f64.const -inf))
(assert_return (invoke "mul" (f64.const 1) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "mul" (f64.const 1) (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan
  (invoke "mul" (f64.const -1) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -1) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -1) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -1) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 1) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 1) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const 1) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const 1) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "mul" (f64.const -6.283_185_307_179_586_2) (f64.const -0))
  (f64.const 0)
)
(assert_return
  (invoke "mul" (f64.const -6.283_185_307_179_586_2) (f64.const 0))
  (f64.const -0)
)
(assert_return
  (invoke "mul" (f64.const 6.283_185_307_179_586_2) (f64.const -0))
  (f64.const -0)
)
(assert_return
  (invoke "mul" (f64.const 6.283_185_307_179_586_2) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "mul"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const 2.964_393_875_047_479_3e-323)
)
(assert_return
  (invoke "mul"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const -2.964_393_875_047_479_3e-323)
)
(assert_return
  (invoke "mul"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -2.964_393_875_047_479_3e-323)
)
(assert_return
  (invoke "mul"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 2.964_393_875_047_479_3e-323)
)
(assert_return
  (invoke "mul"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const 1.398_055_137_516_183_7e-307)
)
(assert_return
  (invoke "mul"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const -1.398_055_137_516_183_7e-307)
)
(assert_return
  (invoke "mul"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -1.398_055_137_516_183_7e-307)
)
(assert_return
  (invoke "mul"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 1.398_055_137_516_183_7e-307)
)
(assert_return
  (invoke "mul" (f64.const -6.283_185_307_179_586_2) (f64.const -0.5))
  (f64.const 3.141_592_653_589_793_1)
)
(assert_return
  (invoke "mul" (f64.const -6.283_185_307_179_586_2) (f64.const 0.5))
  (f64.const -3.141_592_653_589_793_1)
)
(assert_return
  (invoke "mul" (f64.const 6.283_185_307_179_586_2) (f64.const -0.5))
  (f64.const -3.141_592_653_589_793_1)
)
(assert_return
  (invoke "mul" (f64.const 6.283_185_307_179_586_2) (f64.const 0.5))
  (f64.const 3.141_592_653_589_793_1)
)
(assert_return
  (invoke "mul" (f64.const -6.283_185_307_179_586_2) (f64.const -1))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "mul" (f64.const -6.283_185_307_179_586_2) (f64.const 1))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "mul" (f64.const 6.283_185_307_179_586_2) (f64.const -1))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "mul" (f64.const 6.283_185_307_179_586_2) (f64.const 1))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "mul"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const 39.478_417_604_357_432)
)
(assert_return
  (invoke "mul"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const -39.478_417_604_357_432)
)
(assert_return
  (invoke "mul"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -39.478_417_604_357_432)
)
(assert_return
  (invoke "mul"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 39.478_417_604_357_432)
)
(assert_return
  (invoke "mul"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const inf)
)
(assert_return
  (invoke "mul"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "mul"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "mul"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -6.283_185_307_179_586_2) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -6.283_185_307_179_586_2) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 6.283_185_307_179_586_2) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 6.283_185_307_179_586_2) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "mul" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0))
  (f64.const 0)
)
(assert_return
  (invoke "mul" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0))
  (f64.const -0)
)
(assert_return
  (invoke "mul" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0))
  (f64.const -0)
)
(assert_return
  (invoke "mul" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "mul"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const 8.881_784_197_001_251_3e-16)
)
(assert_return
  (invoke "mul"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const -8.881_784_197_001_251_3e-16)
)
(assert_return
  (invoke "mul"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -8.881_784_197_001_251_3e-16)
)
(assert_return
  (invoke "mul"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 8.881_784_197_001_251_3e-16)
)
(assert_return
  (invoke "mul"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const 3.999_999_999_999_999_6)
)
(assert_return
  (invoke "mul"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const -3.999_999_999_999_999_6)
)
(assert_return
  (invoke "mul"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -3.999_999_999_999_999_6)
)
(assert_return
  (invoke "mul"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 3.999_999_999_999_999_6)
)
(assert_return
  (invoke "mul" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (f64.const 8.988_465_674_311_578_5e+307)
)
(assert_return
  (invoke "mul" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (f64.const -8.988_465_674_311_578_5e+307)
)
(assert_return
  (invoke "mul" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (f64.const -8.988_465_674_311_578_5e+307)
)
(assert_return
  (invoke "mul" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (f64.const 8.988_465_674_311_578_5e+307)
)
(assert_return
  (invoke "mul" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -1))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "mul" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 1))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "mul" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -1))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "mul" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 1))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "mul"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const inf)
)
(assert_return
  (invoke "mul"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "mul"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "mul"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const inf)
)
(assert_return
  (invoke "mul"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const inf)
)
(assert_return
  (invoke "mul"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "mul"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "mul"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -inf))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -1.797_693_134_862_315_7e+308) (f64.const inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const 1.797_693_134_862_315_7e+308) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan (invoke "mul" (f64.const -inf) (f64.const -0)))
(assert_return_canonical_nan (invoke "mul" (f64.const -inf) (f64.const 0)))
(assert_return_canonical_nan (invoke "mul" (f64.const inf) (f64.const -0)))
(assert_return_canonical_nan (invoke "mul" (f64.const inf) (f64.const 0)))
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const inf)
)
(assert_return (invoke "mul" (f64.const -inf) (f64.const -0.5)) (f64.const inf))
(assert_return (invoke "mul" (f64.const -inf) (f64.const 0.5)) (f64.const -inf))
(assert_return (invoke "mul" (f64.const inf) (f64.const -0.5)) (f64.const -inf))
(assert_return (invoke "mul" (f64.const inf) (f64.const 0.5)) (f64.const inf))
(assert_return (invoke "mul" (f64.const -inf) (f64.const -1)) (f64.const inf))
(assert_return (invoke "mul" (f64.const -inf) (f64.const 1)) (f64.const -inf))
(assert_return (invoke "mul" (f64.const inf) (f64.const -1)) (f64.const -inf))
(assert_return (invoke "mul" (f64.const inf) (f64.const 1)) (f64.const inf))
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const -6.283_185_307_179_586_2))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const 6.283_185_307_179_586_2))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const -6.283_185_307_179_586_2))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const 6.283_185_307_179_586_2))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const inf)
)
(assert_return
  (invoke "mul" (f64.const -inf) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "mul" (f64.const inf) (f64.const 1.797_693_134_862_315_7e+308))
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
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const -0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const -0))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const 0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const 0))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const -0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const -0))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const 0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const 0))
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x4000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x4000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const nan:0x4000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const nan:0x4000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x4000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x4000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const nan:0x4000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const nan:0x4000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
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
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const -1))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const -1))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const -nan:0x8000000000000) (f64.const 1))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const -nan:0x4000000000000) (f64.const 1))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const -1))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const -1))
)
(assert_return_canonical_nan
  (invoke "mul" (f64.const nan:0x8000000000000) (f64.const 1))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f64.const nan:0x4000000000000) (f64.const 1))
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x4000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x4000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const nan:0x4000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const nan:0x4000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x4000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const -nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const -nan:0x4000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const nan:0x4000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f64.const nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f64.const nan:0x4000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
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
(assert_return_canonical_nan (invoke "div" (f64.const -0) (f64.const -0)))
(assert_return_canonical_nan (invoke "div" (f64.const -0) (f64.const 0)))
(assert_return_canonical_nan (invoke "div" (f64.const 0) (f64.const -0)))
(assert_return_canonical_nan (invoke "div" (f64.const 0) (f64.const 0)))
(assert_return
  (invoke "div" (f64.const -0) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const 0)
)
(assert_return
  (invoke "div" (f64.const -0) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const -0)
)
(assert_return
  (invoke "div" (f64.const 0) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -0)
)
(assert_return
  (invoke "div" (f64.const 0) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 0)
)
(assert_return
  (invoke "div" (f64.const -0) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const 0)
)
(assert_return
  (invoke "div" (f64.const -0) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const -0)
)
(assert_return
  (invoke "div" (f64.const 0) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -0)
)
(assert_return
  (invoke "div" (f64.const 0) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 0)
)
(assert_return (invoke "div" (f64.const -0) (f64.const -0.5)) (f64.const 0))
(assert_return (invoke "div" (f64.const -0) (f64.const 0.5)) (f64.const -0))
(assert_return (invoke "div" (f64.const 0) (f64.const -0.5)) (f64.const -0))
(assert_return (invoke "div" (f64.const 0) (f64.const 0.5)) (f64.const 0))
(assert_return (invoke "div" (f64.const -0) (f64.const -1)) (f64.const 0))
(assert_return (invoke "div" (f64.const -0) (f64.const 1)) (f64.const -0))
(assert_return (invoke "div" (f64.const 0) (f64.const -1)) (f64.const -0))
(assert_return (invoke "div" (f64.const 0) (f64.const 1)) (f64.const 0))
(assert_return
  (invoke "div" (f64.const -0) (f64.const -6.283_185_307_179_586_2))
  (f64.const 0)
)
(assert_return
  (invoke "div" (f64.const -0) (f64.const 6.283_185_307_179_586_2))
  (f64.const -0)
)
(assert_return
  (invoke "div" (f64.const 0) (f64.const -6.283_185_307_179_586_2))
  (f64.const -0)
)
(assert_return
  (invoke "div" (f64.const 0) (f64.const 6.283_185_307_179_586_2))
  (f64.const 0)
)
(assert_return
  (invoke "div" (f64.const -0) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const 0)
)
(assert_return
  (invoke "div" (f64.const -0) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const -0)
)
(assert_return
  (invoke "div" (f64.const 0) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -0)
)
(assert_return
  (invoke "div" (f64.const 0) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 0)
)
(assert_return (invoke "div" (f64.const -0) (f64.const -inf)) (f64.const 0))
(assert_return (invoke "div" (f64.const -0) (f64.const inf)) (f64.const -0))
(assert_return (invoke "div" (f64.const 0) (f64.const -inf)) (f64.const -0))
(assert_return (invoke "div" (f64.const 0) (f64.const inf)) (f64.const 0))
(assert_return_canonical_nan
  (invoke "div" (f64.const -0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -0) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 0) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "div" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0))
  (f64.const inf)
)
(assert_return
  (invoke "div"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const 1)
)
(assert_return
  (invoke "div"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const -1)
)
(assert_return
  (invoke "div"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -1)
)
(assert_return
  (invoke "div"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 1)
)
(assert_return
  (invoke "div"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const 2.220_446_049_250_313_1e-16)
)
(assert_return
  (invoke "div"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const -2.220_446_049_250_313_1e-16)
)
(assert_return
  (invoke "div"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -2.220_446_049_250_313_1e-16)
)
(assert_return
  (invoke "div"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 2.220_446_049_250_313_1e-16)
)
(assert_return
  (invoke "div" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (f64.const 9.881_312_916_824_930_9e-324)
)
(assert_return
  (invoke "div" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (f64.const -9.881_312_916_824_930_9e-324)
)
(assert_return
  (invoke "div" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (f64.const -9.881_312_916_824_930_9e-324)
)
(assert_return
  (invoke "div" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (f64.const 9.881_312_916_824_930_9e-324)
)
(assert_return
  (invoke "div" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -1))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "div" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 1))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "div" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -1))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "div" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 1))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "div"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const 0)
)
(assert_return
  (invoke "div"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const -0)
)
(assert_return
  (invoke "div"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -0)
)
(assert_return
  (invoke "div"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 0)
)
(assert_return
  (invoke "div"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const 0)
)
(assert_return
  (invoke "div"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const -0)
)
(assert_return
  (invoke "div"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -0)
)
(assert_return
  (invoke "div"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 0)
)
(assert_return
  (invoke "div" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -inf))
  (f64.const 0)
)
(assert_return
  (invoke "div" (f64.const -4.940_656_458_412_465_4e-324) (f64.const inf))
  (f64.const -0)
)
(assert_return
  (invoke "div" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -inf))
  (f64.const -0)
)
(assert_return
  (invoke "div" (f64.const 4.940_656_458_412_465_4e-324) (f64.const inf))
  (f64.const 0)
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "div" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0))
  (f64.const inf)
)
(assert_return
  (invoke "div"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const 4_503_599_627_370_496)
)
(assert_return
  (invoke "div"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const -4_503_599_627_370_496)
)
(assert_return
  (invoke "div"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -4_503_599_627_370_496)
)
(assert_return
  (invoke "div"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 4_503_599_627_370_496)
)
(assert_return
  (invoke "div"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const 1)
)
(assert_return
  (invoke "div"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const -1)
)
(assert_return
  (invoke "div"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -1)
)
(assert_return
  (invoke "div"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 1)
)
(assert_return
  (invoke "div" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (f64.const 4.450_147_717_014_402_8e-308)
)
(assert_return
  (invoke "div" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (f64.const -4.450_147_717_014_402_8e-308)
)
(assert_return
  (invoke "div" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (f64.const -4.450_147_717_014_402_8e-308)
)
(assert_return
  (invoke "div" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (f64.const 4.450_147_717_014_402_8e-308)
)
(assert_return
  (invoke "div" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -1))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "div" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 1))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "div" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -1))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "div" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 1))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "div"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const 3.541_315_033_259_774_5e-309)
)
(assert_return
  (invoke "div"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const -3.541_315_033_259_774_5e-309)
)
(assert_return
  (invoke "div"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -3.541_315_033_259_774_5e-309)
)
(assert_return
  (invoke "div"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 3.541_315_033_259_774_5e-309)
)
(assert_return
  (invoke "div"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const 0)
)
(assert_return
  (invoke "div"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const -0)
)
(assert_return
  (invoke "div"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -0)
)
(assert_return
  (invoke "div"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 0)
)
(assert_return
  (invoke "div" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -inf))
  (f64.const 0)
)
(assert_return
  (invoke "div" (f64.const -2.225_073_858_507_201_4e-308) (f64.const inf))
  (f64.const -0)
)
(assert_return
  (invoke "div" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -inf))
  (f64.const -0)
)
(assert_return
  (invoke "div" (f64.const 2.225_073_858_507_201_4e-308) (f64.const inf))
  (f64.const 0)
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return (invoke "div" (f64.const -0.5) (f64.const -0)) (f64.const inf))
(assert_return (invoke "div" (f64.const -0.5) (f64.const 0)) (f64.const -inf))
(assert_return (invoke "div" (f64.const 0.5) (f64.const -0)) (f64.const -inf))
(assert_return (invoke "div" (f64.const 0.5) (f64.const 0)) (f64.const inf))
(assert_return
  (invoke "div" (f64.const -0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const 2.247_116_418_577_894_9e+307)
)
(assert_return
  (invoke "div" (f64.const -0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const -2.247_116_418_577_894_9e+307)
)
(assert_return
  (invoke "div" (f64.const 0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -2.247_116_418_577_894_9e+307)
)
(assert_return
  (invoke "div" (f64.const 0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 2.247_116_418_577_894_9e+307)
)
(assert_return (invoke "div" (f64.const -0.5) (f64.const -0.5)) (f64.const 1))
(assert_return (invoke "div" (f64.const -0.5) (f64.const 0.5)) (f64.const -1))
(assert_return (invoke "div" (f64.const 0.5) (f64.const -0.5)) (f64.const -1))
(assert_return (invoke "div" (f64.const 0.5) (f64.const 0.5)) (f64.const 1))
(assert_return (invoke "div" (f64.const -0.5) (f64.const -1)) (f64.const 0.5))
(assert_return (invoke "div" (f64.const -0.5) (f64.const 1)) (f64.const -0.5))
(assert_return (invoke "div" (f64.const 0.5) (f64.const -1)) (f64.const -0.5))
(assert_return (invoke "div" (f64.const 0.5) (f64.const 1)) (f64.const 0.5))
(assert_return
  (invoke "div" (f64.const -0.5) (f64.const -6.283_185_307_179_586_2))
  (f64.const 0.079_577_471_545_947_673)
)
(assert_return
  (invoke "div" (f64.const -0.5) (f64.const 6.283_185_307_179_586_2))
  (f64.const -0.079_577_471_545_947_673)
)
(assert_return
  (invoke "div" (f64.const 0.5) (f64.const -6.283_185_307_179_586_2))
  (f64.const -0.079_577_471_545_947_673)
)
(assert_return
  (invoke "div" (f64.const 0.5) (f64.const 6.283_185_307_179_586_2))
  (f64.const 0.079_577_471_545_947_673)
)
(assert_return
  (invoke "div" (f64.const -0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const 2.781_342_323_134_001_7e-309)
)
(assert_return
  (invoke "div" (f64.const -0.5) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const -2.781_342_323_134_001_7e-309)
)
(assert_return
  (invoke "div" (f64.const 0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -2.781_342_323_134_001_7e-309)
)
(assert_return
  (invoke "div" (f64.const 0.5) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 2.781_342_323_134_001_7e-309)
)
(assert_return (invoke "div" (f64.const -0.5) (f64.const -inf)) (f64.const 0))
(assert_return (invoke "div" (f64.const -0.5) (f64.const inf)) (f64.const -0))
(assert_return (invoke "div" (f64.const 0.5) (f64.const -inf)) (f64.const -0))
(assert_return (invoke "div" (f64.const 0.5) (f64.const inf)) (f64.const 0))
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
(assert_return (invoke "div" (f64.const -1) (f64.const -0)) (f64.const inf))
(assert_return (invoke "div" (f64.const -1) (f64.const 0)) (f64.const -inf))
(assert_return (invoke "div" (f64.const 1) (f64.const -0)) (f64.const -inf))
(assert_return (invoke "div" (f64.const 1) (f64.const 0)) (f64.const inf))
(assert_return
  (invoke "div" (f64.const -1) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -1) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 1) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 1) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -1) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const 4.494_232_837_155_789_8e+307)
)
(assert_return
  (invoke "div" (f64.const -1) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const -4.494_232_837_155_789_8e+307)
)
(assert_return
  (invoke "div" (f64.const 1) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -4.494_232_837_155_789_8e+307)
)
(assert_return
  (invoke "div" (f64.const 1) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 4.494_232_837_155_789_8e+307)
)
(assert_return (invoke "div" (f64.const -1) (f64.const -0.5)) (f64.const 2))
(assert_return (invoke "div" (f64.const -1) (f64.const 0.5)) (f64.const -2))
(assert_return (invoke "div" (f64.const 1) (f64.const -0.5)) (f64.const -2))
(assert_return (invoke "div" (f64.const 1) (f64.const 0.5)) (f64.const 2))
(assert_return (invoke "div" (f64.const -1) (f64.const -1)) (f64.const 1))
(assert_return (invoke "div" (f64.const -1) (f64.const 1)) (f64.const -1))
(assert_return (invoke "div" (f64.const 1) (f64.const -1)) (f64.const -1))
(assert_return (invoke "div" (f64.const 1) (f64.const 1)) (f64.const 1))
(assert_return
  (invoke "div" (f64.const -1) (f64.const -6.283_185_307_179_586_2))
  (f64.const 0.159_154_943_091_895_35)
)
(assert_return
  (invoke "div" (f64.const -1) (f64.const 6.283_185_307_179_586_2))
  (f64.const -0.159_154_943_091_895_35)
)
(assert_return
  (invoke "div" (f64.const 1) (f64.const -6.283_185_307_179_586_2))
  (f64.const -0.159_154_943_091_895_35)
)
(assert_return
  (invoke "div" (f64.const 1) (f64.const 6.283_185_307_179_586_2))
  (f64.const 0.159_154_943_091_895_35)
)
(assert_return
  (invoke "div" (f64.const -1) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const 5.562_684_646_268_003_5e-309)
)
(assert_return
  (invoke "div" (f64.const -1) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const -5.562_684_646_268_003_5e-309)
)
(assert_return
  (invoke "div" (f64.const 1) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -5.562_684_646_268_003_5e-309)
)
(assert_return
  (invoke "div" (f64.const 1) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 5.562_684_646_268_003_5e-309)
)
(assert_return (invoke "div" (f64.const -1) (f64.const -inf)) (f64.const 0))
(assert_return (invoke "div" (f64.const -1) (f64.const inf)) (f64.const -0))
(assert_return (invoke "div" (f64.const 1) (f64.const -inf)) (f64.const -0))
(assert_return (invoke "div" (f64.const 1) (f64.const inf)) (f64.const 0))
(assert_return_canonical_nan
  (invoke "div" (f64.const -1) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -1) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -1) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -1) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 1) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 1) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const 1) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const 1) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "div" (f64.const -6.283_185_307_179_586_2) (f64.const -0))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -6.283_185_307_179_586_2) (f64.const 0))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 6.283_185_307_179_586_2) (f64.const -0))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 6.283_185_307_179_586_2) (f64.const 0))
  (f64.const inf)
)
(assert_return
  (invoke "div"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const inf)
)
(assert_return
  (invoke "div"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "div"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "div"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const inf)
)
(assert_return
  (invoke "div"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const inf)
)
(assert_return
  (invoke "div"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "div"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "div"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -6.283_185_307_179_586_2) (f64.const -0.5))
  (f64.const 12.566_370_614_359_172)
)
(assert_return
  (invoke "div" (f64.const -6.283_185_307_179_586_2) (f64.const 0.5))
  (f64.const -12.566_370_614_359_172)
)
(assert_return
  (invoke "div" (f64.const 6.283_185_307_179_586_2) (f64.const -0.5))
  (f64.const -12.566_370_614_359_172)
)
(assert_return
  (invoke "div" (f64.const 6.283_185_307_179_586_2) (f64.const 0.5))
  (f64.const 12.566_370_614_359_172)
)
(assert_return
  (invoke "div" (f64.const -6.283_185_307_179_586_2) (f64.const -1))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "div" (f64.const -6.283_185_307_179_586_2) (f64.const 1))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "div" (f64.const 6.283_185_307_179_586_2) (f64.const -1))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "div" (f64.const 6.283_185_307_179_586_2) (f64.const 1))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "div"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const 1)
)
(assert_return
  (invoke "div"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const -1)
)
(assert_return
  (invoke "div"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -1)
)
(assert_return
  (invoke "div"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 1)
)
(assert_return
  (invoke "div"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const 3.495_137_843_790_459_8e-308)
)
(assert_return
  (invoke "div"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const -3.495_137_843_790_459_8e-308)
)
(assert_return
  (invoke "div"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -3.495_137_843_790_459_8e-308)
)
(assert_return
  (invoke "div"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 3.495_137_843_790_459_8e-308)
)
(assert_return
  (invoke "div" (f64.const -6.283_185_307_179_586_2) (f64.const -inf))
  (f64.const 0)
)
(assert_return
  (invoke "div" (f64.const -6.283_185_307_179_586_2) (f64.const inf))
  (f64.const -0)
)
(assert_return
  (invoke "div" (f64.const 6.283_185_307_179_586_2) (f64.const -inf))
  (f64.const -0)
)
(assert_return
  (invoke "div" (f64.const 6.283_185_307_179_586_2) (f64.const inf))
  (f64.const 0)
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "div" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0))
  (f64.const inf)
)
(assert_return
  (invoke "div"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const inf)
)
(assert_return
  (invoke "div"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "div"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "div"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const inf)
)
(assert_return
  (invoke "div"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const inf)
)
(assert_return
  (invoke "div"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "div"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "div"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -1))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "div" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 1))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "div" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -1))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "div" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 1))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "div"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const 2.861_117_485_757_027_8e+307)
)
(assert_return
  (invoke "div"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const -2.861_117_485_757_027_8e+307)
)
(assert_return
  (invoke "div"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -2.861_117_485_757_027_8e+307)
)
(assert_return
  (invoke "div"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 2.861_117_485_757_027_8e+307)
)
(assert_return
  (invoke "div"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const 1)
)
(assert_return
  (invoke "div"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const -1)
)
(assert_return
  (invoke "div"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -1)
)
(assert_return
  (invoke "div"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 1)
)
(assert_return
  (invoke "div" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -inf))
  (f64.const 0)
)
(assert_return
  (invoke "div" (f64.const -1.797_693_134_862_315_7e+308) (f64.const inf))
  (f64.const -0)
)
(assert_return
  (invoke "div" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -inf))
  (f64.const -0)
)
(assert_return
  (invoke "div" (f64.const 1.797_693_134_862_315_7e+308) (f64.const inf))
  (f64.const 0)
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return (invoke "div" (f64.const -inf) (f64.const -0)) (f64.const inf))
(assert_return (invoke "div" (f64.const -inf) (f64.const 0)) (f64.const -inf))
(assert_return (invoke "div" (f64.const inf) (f64.const -0)) (f64.const -inf))
(assert_return (invoke "div" (f64.const inf) (f64.const 0)) (f64.const inf))
(assert_return
  (invoke "div" (f64.const -inf) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const inf)
)
(assert_return (invoke "div" (f64.const -inf) (f64.const -0.5)) (f64.const inf))
(assert_return (invoke "div" (f64.const -inf) (f64.const 0.5)) (f64.const -inf))
(assert_return (invoke "div" (f64.const inf) (f64.const -0.5)) (f64.const -inf))
(assert_return (invoke "div" (f64.const inf) (f64.const 0.5)) (f64.const inf))
(assert_return (invoke "div" (f64.const -inf) (f64.const -1)) (f64.const inf))
(assert_return (invoke "div" (f64.const -inf) (f64.const 1)) (f64.const -inf))
(assert_return (invoke "div" (f64.const inf) (f64.const -1)) (f64.const -inf))
(assert_return (invoke "div" (f64.const inf) (f64.const 1)) (f64.const inf))
(assert_return
  (invoke "div" (f64.const -inf) (f64.const -6.283_185_307_179_586_2))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const 6.283_185_307_179_586_2))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const -6.283_185_307_179_586_2))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const 6.283_185_307_179_586_2))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const inf)
)
(assert_return
  (invoke "div" (f64.const -inf) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "div" (f64.const inf) (f64.const 1.797_693_134_862_315_7e+308))
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
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const -0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const -0))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const 0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const 0))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const -0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const -0))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const 0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const 0))
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x4000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x4000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const nan:0x4000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const nan:0x4000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x4000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x4000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const nan:0x4000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const nan:0x4000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
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
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const -1))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const -1))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const -nan:0x8000000000000) (f64.const 1))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const -nan:0x4000000000000) (f64.const 1))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const -1))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const -1))
)
(assert_return_canonical_nan
  (invoke "div" (f64.const nan:0x8000000000000) (f64.const 1))
)
(assert_return_arithmetic_nan
  (invoke "div" (f64.const nan:0x4000000000000) (f64.const 1))
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x4000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x4000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const nan:0x4000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const nan:0x4000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x4000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const -nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const -nan:0x4000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const nan:0x4000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f64.const nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f64.const nan:0x4000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
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
(assert_return (invoke "min" (f64.const -0) (f64.const -0)) (f64.const -0))
(assert_return (invoke "min" (f64.const -0) (f64.const 0)) (f64.const -0))
(assert_return (invoke "min" (f64.const 0) (f64.const -0)) (f64.const -0))
(assert_return (invoke "min" (f64.const 0) (f64.const 0)) (f64.const 0))
(assert_return
  (invoke "min" (f64.const -0) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min" (f64.const -0) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const -0)
)
(assert_return
  (invoke "min" (f64.const 0) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min" (f64.const 0) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 0)
)
(assert_return
  (invoke "min" (f64.const -0) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min" (f64.const -0) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const -0)
)
(assert_return
  (invoke "min" (f64.const 0) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min" (f64.const 0) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 0)
)
(assert_return (invoke "min" (f64.const -0) (f64.const -0.5)) (f64.const -0.5))
(assert_return (invoke "min" (f64.const -0) (f64.const 0.5)) (f64.const -0))
(assert_return (invoke "min" (f64.const 0) (f64.const -0.5)) (f64.const -0.5))
(assert_return (invoke "min" (f64.const 0) (f64.const 0.5)) (f64.const 0))
(assert_return (invoke "min" (f64.const -0) (f64.const -1)) (f64.const -1))
(assert_return (invoke "min" (f64.const -0) (f64.const 1)) (f64.const -0))
(assert_return (invoke "min" (f64.const 0) (f64.const -1)) (f64.const -1))
(assert_return (invoke "min" (f64.const 0) (f64.const 1)) (f64.const 0))
(assert_return
  (invoke "min" (f64.const -0) (f64.const -6.283_185_307_179_586_2))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min" (f64.const -0) (f64.const 6.283_185_307_179_586_2))
  (f64.const -0)
)
(assert_return
  (invoke "min" (f64.const 0) (f64.const -6.283_185_307_179_586_2))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min" (f64.const 0) (f64.const 6.283_185_307_179_586_2))
  (f64.const 0)
)
(assert_return
  (invoke "min" (f64.const -0) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min" (f64.const -0) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const -0)
)
(assert_return
  (invoke "min" (f64.const 0) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min" (f64.const 0) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 0)
)
(assert_return (invoke "min" (f64.const -0) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "min" (f64.const -0) (f64.const inf)) (f64.const -0))
(assert_return (invoke "min" (f64.const 0) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "min" (f64.const 0) (f64.const inf)) (f64.const 0))
(assert_return_canonical_nan
  (invoke "min" (f64.const -0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -0) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 0) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "min" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0))
  (f64.const -0)
)
(assert_return
  (invoke "min" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "min"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "min" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "min" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -1))
  (f64.const -1)
)
(assert_return
  (invoke "min" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 1))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -1))
  (f64.const -1)
)
(assert_return
  (invoke "min" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 1))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -4.940_656_458_412_465_4e-324) (f64.const inf))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const 4.940_656_458_412_465_4e-324) (f64.const inf))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "min" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0))
  (f64.const -0)
)
(assert_return
  (invoke "min" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "min"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "min" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "min" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -1))
  (f64.const -1)
)
(assert_return
  (invoke "min" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 1))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -1))
  (f64.const -1)
)
(assert_return
  (invoke "min" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 1))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -2.225_073_858_507_201_4e-308) (f64.const inf))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const 2.225_073_858_507_201_4e-308) (f64.const inf))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return (invoke "min" (f64.const -0.5) (f64.const -0)) (f64.const -0.5))
(assert_return (invoke "min" (f64.const -0.5) (f64.const 0)) (f64.const -0.5))
(assert_return (invoke "min" (f64.const 0.5) (f64.const -0)) (f64.const -0))
(assert_return (invoke "min" (f64.const 0.5) (f64.const 0)) (f64.const 0))
(assert_return
  (invoke "min" (f64.const -0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -0.5)
)
(assert_return
  (invoke "min" (f64.const -0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const -0.5)
)
(assert_return
  (invoke "min" (f64.const 0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min" (f64.const 0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min" (f64.const -0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -0.5)
)
(assert_return
  (invoke "min" (f64.const -0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const -0.5)
)
(assert_return
  (invoke "min" (f64.const 0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min" (f64.const 0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min" (f64.const -0.5) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return (invoke "min" (f64.const -0.5) (f64.const 0.5)) (f64.const -0.5))
(assert_return (invoke "min" (f64.const 0.5) (f64.const -0.5)) (f64.const -0.5))
(assert_return (invoke "min" (f64.const 0.5) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "min" (f64.const -0.5) (f64.const -1)) (f64.const -1))
(assert_return (invoke "min" (f64.const -0.5) (f64.const 1)) (f64.const -0.5))
(assert_return (invoke "min" (f64.const 0.5) (f64.const -1)) (f64.const -1))
(assert_return (invoke "min" (f64.const 0.5) (f64.const 1)) (f64.const 0.5))
(assert_return
  (invoke "min" (f64.const -0.5) (f64.const -6.283_185_307_179_586_2))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min" (f64.const -0.5) (f64.const 6.283_185_307_179_586_2))
  (f64.const -0.5)
)
(assert_return
  (invoke "min" (f64.const 0.5) (f64.const -6.283_185_307_179_586_2))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min" (f64.const 0.5) (f64.const 6.283_185_307_179_586_2))
  (f64.const 0.5)
)
(assert_return
  (invoke "min" (f64.const -0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min" (f64.const -0.5) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const -0.5)
)
(assert_return
  (invoke "min" (f64.const 0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min" (f64.const 0.5) (f64.const 1.797_693_134_862_315_7e+308))
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
(assert_return (invoke "min" (f64.const -1) (f64.const -0)) (f64.const -1))
(assert_return (invoke "min" (f64.const -1) (f64.const 0)) (f64.const -1))
(assert_return (invoke "min" (f64.const 1) (f64.const -0)) (f64.const -0))
(assert_return (invoke "min" (f64.const 1) (f64.const 0)) (f64.const 0))
(assert_return
  (invoke "min" (f64.const -1) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -1)
)
(assert_return
  (invoke "min" (f64.const -1) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const -1)
)
(assert_return
  (invoke "min" (f64.const 1) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min" (f64.const 1) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min" (f64.const -1) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -1)
)
(assert_return
  (invoke "min" (f64.const -1) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const -1)
)
(assert_return
  (invoke "min" (f64.const 1) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min" (f64.const 1) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return (invoke "min" (f64.const -1) (f64.const -0.5)) (f64.const -1))
(assert_return (invoke "min" (f64.const -1) (f64.const 0.5)) (f64.const -1))
(assert_return (invoke "min" (f64.const 1) (f64.const -0.5)) (f64.const -0.5))
(assert_return (invoke "min" (f64.const 1) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "min" (f64.const -1) (f64.const -1)) (f64.const -1))
(assert_return (invoke "min" (f64.const -1) (f64.const 1)) (f64.const -1))
(assert_return (invoke "min" (f64.const 1) (f64.const -1)) (f64.const -1))
(assert_return (invoke "min" (f64.const 1) (f64.const 1)) (f64.const 1))
(assert_return
  (invoke "min" (f64.const -1) (f64.const -6.283_185_307_179_586_2))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min" (f64.const -1) (f64.const 6.283_185_307_179_586_2))
  (f64.const -1)
)
(assert_return
  (invoke "min" (f64.const 1) (f64.const -6.283_185_307_179_586_2))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min" (f64.const 1) (f64.const 6.283_185_307_179_586_2))
  (f64.const 1)
)
(assert_return
  (invoke "min" (f64.const -1) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min" (f64.const -1) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const -1)
)
(assert_return
  (invoke "min" (f64.const 1) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min" (f64.const 1) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 1)
)
(assert_return (invoke "min" (f64.const -1) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "min" (f64.const -1) (f64.const inf)) (f64.const -1))
(assert_return (invoke "min" (f64.const 1) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "min" (f64.const 1) (f64.const inf)) (f64.const 1))
(assert_return_canonical_nan
  (invoke "min" (f64.const -1) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -1) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -1) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -1) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 1) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 1) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const 1) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const 1) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "min" (f64.const -6.283_185_307_179_586_2) (f64.const -0))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min" (f64.const -6.283_185_307_179_586_2) (f64.const 0))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min" (f64.const 6.283_185_307_179_586_2) (f64.const -0))
  (f64.const -0)
)
(assert_return
  (invoke "min" (f64.const 6.283_185_307_179_586_2) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "min"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min" (f64.const -6.283_185_307_179_586_2) (f64.const -0.5))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min" (f64.const -6.283_185_307_179_586_2) (f64.const 0.5))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min" (f64.const 6.283_185_307_179_586_2) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "min" (f64.const 6.283_185_307_179_586_2) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "min" (f64.const -6.283_185_307_179_586_2) (f64.const -1))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min" (f64.const -6.283_185_307_179_586_2) (f64.const 1))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min" (f64.const 6.283_185_307_179_586_2) (f64.const -1))
  (f64.const -1)
)
(assert_return
  (invoke "min" (f64.const 6.283_185_307_179_586_2) (f64.const 1))
  (f64.const 1)
)
(assert_return
  (invoke "min"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min" (f64.const -6.283_185_307_179_586_2) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -6.283_185_307_179_586_2) (f64.const inf))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min" (f64.const 6.283_185_307_179_586_2) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const 6.283_185_307_179_586_2) (f64.const inf))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "min" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0))
  (f64.const -0)
)
(assert_return
  (invoke "min" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "min"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "min" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "min" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -1))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 1))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -1))
  (f64.const -1)
)
(assert_return
  (invoke "min" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 1))
  (f64.const 1)
)
(assert_return
  (invoke "min"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -1.797_693_134_862_315_7e+308) (f64.const inf))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -inf))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const 1.797_693_134_862_315_7e+308) (f64.const inf))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return (invoke "min" (f64.const -inf) (f64.const -0)) (f64.const -inf))
(assert_return (invoke "min" (f64.const -inf) (f64.const 0)) (f64.const -inf))
(assert_return (invoke "min" (f64.const inf) (f64.const -0)) (f64.const -0))
(assert_return (invoke "min" (f64.const inf) (f64.const 0)) (f64.const 0))
(assert_return
  (invoke "min" (f64.const -inf) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const -0.5))
  (f64.const -inf)
)
(assert_return (invoke "min" (f64.const -inf) (f64.const 0.5)) (f64.const -inf))
(assert_return (invoke "min" (f64.const inf) (f64.const -0.5)) (f64.const -0.5))
(assert_return (invoke "min" (f64.const inf) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "min" (f64.const -inf) (f64.const -1)) (f64.const -inf))
(assert_return (invoke "min" (f64.const -inf) (f64.const 1)) (f64.const -inf))
(assert_return (invoke "min" (f64.const inf) (f64.const -1)) (f64.const -1))
(assert_return (invoke "min" (f64.const inf) (f64.const 1)) (f64.const 1))
(assert_return
  (invoke "min" (f64.const -inf) (f64.const -6.283_185_307_179_586_2))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const 6.283_185_307_179_586_2))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const -6.283_185_307_179_586_2))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const 6.283_185_307_179_586_2))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const -inf) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const -inf)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "min" (f64.const inf) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
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
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const -0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const -0))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const 0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const 0))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const -0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const -0))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const 0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const 0))
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x4000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x4000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const nan:0x4000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const nan:0x4000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x4000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x4000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const nan:0x4000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const nan:0x4000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
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
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const -1))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const -1))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const -nan:0x8000000000000) (f64.const 1))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const -nan:0x4000000000000) (f64.const 1))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const -1))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const -1))
)
(assert_return_canonical_nan
  (invoke "min" (f64.const nan:0x8000000000000) (f64.const 1))
)
(assert_return_arithmetic_nan
  (invoke "min" (f64.const nan:0x4000000000000) (f64.const 1))
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x4000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x4000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const nan:0x4000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const nan:0x4000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x4000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const -nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const -nan:0x4000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const nan:0x4000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f64.const nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f64.const nan:0x4000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
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
(assert_return (invoke "max" (f64.const -0) (f64.const -0)) (f64.const -0))
(assert_return (invoke "max" (f64.const -0) (f64.const 0)) (f64.const 0))
(assert_return (invoke "max" (f64.const 0) (f64.const -0)) (f64.const 0))
(assert_return (invoke "max" (f64.const 0) (f64.const 0)) (f64.const 0))
(assert_return
  (invoke "max" (f64.const -0) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -0)
)
(assert_return
  (invoke "max" (f64.const -0) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max" (f64.const 0) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const 0)
)
(assert_return
  (invoke "max" (f64.const 0) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max" (f64.const -0) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -0)
)
(assert_return
  (invoke "max" (f64.const -0) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max" (f64.const 0) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const 0)
)
(assert_return
  (invoke "max" (f64.const 0) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return (invoke "max" (f64.const -0) (f64.const -0.5)) (f64.const -0))
(assert_return (invoke "max" (f64.const -0) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "max" (f64.const 0) (f64.const -0.5)) (f64.const 0))
(assert_return (invoke "max" (f64.const 0) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "max" (f64.const -0) (f64.const -1)) (f64.const -0))
(assert_return (invoke "max" (f64.const -0) (f64.const 1)) (f64.const 1))
(assert_return (invoke "max" (f64.const 0) (f64.const -1)) (f64.const 0))
(assert_return (invoke "max" (f64.const 0) (f64.const 1)) (f64.const 1))
(assert_return
  (invoke "max" (f64.const -0) (f64.const -6.283_185_307_179_586_2))
  (f64.const -0)
)
(assert_return
  (invoke "max" (f64.const -0) (f64.const 6.283_185_307_179_586_2))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max" (f64.const 0) (f64.const -6.283_185_307_179_586_2))
  (f64.const 0)
)
(assert_return
  (invoke "max" (f64.const 0) (f64.const 6.283_185_307_179_586_2))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max" (f64.const -0) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -0)
)
(assert_return
  (invoke "max" (f64.const -0) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max" (f64.const 0) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const 0)
)
(assert_return
  (invoke "max" (f64.const 0) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return (invoke "max" (f64.const -0) (f64.const -inf)) (f64.const -0))
(assert_return (invoke "max" (f64.const -0) (f64.const inf)) (f64.const inf))
(assert_return (invoke "max" (f64.const 0) (f64.const -inf)) (f64.const 0))
(assert_return (invoke "max" (f64.const 0) (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan
  (invoke "max" (f64.const -0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -0) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 0) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 0) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 0) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 0) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "max" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0))
  (f64.const -0)
)
(assert_return
  (invoke "max" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "max" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "max" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -0.5))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "max" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -1))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max" (f64.const -4.940_656_458_412_465_4e-324) (f64.const 1))
  (f64.const 1)
)
(assert_return
  (invoke "max" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -1))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max" (f64.const 4.940_656_458_412_465_4e-324) (f64.const 1))
  (f64.const 1)
)
(assert_return
  (invoke "max"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max" (f64.const -4.940_656_458_412_465_4e-324) (f64.const -inf))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max" (f64.const -4.940_656_458_412_465_4e-324) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const 4.940_656_458_412_465_4e-324) (f64.const -inf))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max" (f64.const 4.940_656_458_412_465_4e-324) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -4.940_656_458_412_465_4e-324)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const 4.940_656_458_412_465_4e-324)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "max" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0))
  (f64.const -0)
)
(assert_return
  (invoke "max" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "max" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "max" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -0.5))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "max" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -1))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max" (f64.const -2.225_073_858_507_201_4e-308) (f64.const 1))
  (f64.const 1)
)
(assert_return
  (invoke "max" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -1))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max" (f64.const 2.225_073_858_507_201_4e-308) (f64.const 1))
  (f64.const 1)
)
(assert_return
  (invoke "max"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max" (f64.const -2.225_073_858_507_201_4e-308) (f64.const -inf))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max" (f64.const -2.225_073_858_507_201_4e-308) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const 2.225_073_858_507_201_4e-308) (f64.const -inf))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max" (f64.const 2.225_073_858_507_201_4e-308) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -2.225_073_858_507_201_4e-308)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const 2.225_073_858_507_201_4e-308)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return (invoke "max" (f64.const -0.5) (f64.const -0)) (f64.const -0))
(assert_return (invoke "max" (f64.const -0.5) (f64.const 0)) (f64.const 0))
(assert_return (invoke "max" (f64.const 0.5) (f64.const -0)) (f64.const 0.5))
(assert_return (invoke "max" (f64.const 0.5) (f64.const 0)) (f64.const 0.5))
(assert_return
  (invoke "max" (f64.const -0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max" (f64.const -0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max" (f64.const 0.5) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const 0.5)
)
(assert_return
  (invoke "max" (f64.const 0.5) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 0.5)
)
(assert_return
  (invoke "max" (f64.const -0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max" (f64.const -0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max" (f64.const 0.5) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const 0.5)
)
(assert_return
  (invoke "max" (f64.const 0.5) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 0.5)
)
(assert_return
  (invoke "max" (f64.const -0.5) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return (invoke "max" (f64.const -0.5) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "max" (f64.const 0.5) (f64.const -0.5)) (f64.const 0.5))
(assert_return (invoke "max" (f64.const 0.5) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "max" (f64.const -0.5) (f64.const -1)) (f64.const -0.5))
(assert_return (invoke "max" (f64.const -0.5) (f64.const 1)) (f64.const 1))
(assert_return (invoke "max" (f64.const 0.5) (f64.const -1)) (f64.const 0.5))
(assert_return (invoke "max" (f64.const 0.5) (f64.const 1)) (f64.const 1))
(assert_return
  (invoke "max" (f64.const -0.5) (f64.const -6.283_185_307_179_586_2))
  (f64.const -0.5)
)
(assert_return
  (invoke "max" (f64.const -0.5) (f64.const 6.283_185_307_179_586_2))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max" (f64.const 0.5) (f64.const -6.283_185_307_179_586_2))
  (f64.const 0.5)
)
(assert_return
  (invoke "max" (f64.const 0.5) (f64.const 6.283_185_307_179_586_2))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max" (f64.const -0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -0.5)
)
(assert_return
  (invoke "max" (f64.const -0.5) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max" (f64.const 0.5) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const 0.5)
)
(assert_return
  (invoke "max" (f64.const 0.5) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
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
(assert_return (invoke "max" (f64.const -1) (f64.const -0)) (f64.const -0))
(assert_return (invoke "max" (f64.const -1) (f64.const 0)) (f64.const 0))
(assert_return (invoke "max" (f64.const 1) (f64.const -0)) (f64.const 1))
(assert_return (invoke "max" (f64.const 1) (f64.const 0)) (f64.const 1))
(assert_return
  (invoke "max" (f64.const -1) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max" (f64.const -1) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max" (f64.const 1) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const 1)
)
(assert_return
  (invoke "max" (f64.const 1) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 1)
)
(assert_return
  (invoke "max" (f64.const -1) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max" (f64.const -1) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max" (f64.const 1) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const 1)
)
(assert_return
  (invoke "max" (f64.const 1) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 1)
)
(assert_return (invoke "max" (f64.const -1) (f64.const -0.5)) (f64.const -0.5))
(assert_return (invoke "max" (f64.const -1) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "max" (f64.const 1) (f64.const -0.5)) (f64.const 1))
(assert_return (invoke "max" (f64.const 1) (f64.const 0.5)) (f64.const 1))
(assert_return (invoke "max" (f64.const -1) (f64.const -1)) (f64.const -1))
(assert_return (invoke "max" (f64.const -1) (f64.const 1)) (f64.const 1))
(assert_return (invoke "max" (f64.const 1) (f64.const -1)) (f64.const 1))
(assert_return (invoke "max" (f64.const 1) (f64.const 1)) (f64.const 1))
(assert_return
  (invoke "max" (f64.const -1) (f64.const -6.283_185_307_179_586_2))
  (f64.const -1)
)
(assert_return
  (invoke "max" (f64.const -1) (f64.const 6.283_185_307_179_586_2))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max" (f64.const 1) (f64.const -6.283_185_307_179_586_2))
  (f64.const 1)
)
(assert_return
  (invoke "max" (f64.const 1) (f64.const 6.283_185_307_179_586_2))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max" (f64.const -1) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -1)
)
(assert_return
  (invoke "max" (f64.const -1) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max" (f64.const 1) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const 1)
)
(assert_return
  (invoke "max" (f64.const 1) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return (invoke "max" (f64.const -1) (f64.const -inf)) (f64.const -1))
(assert_return (invoke "max" (f64.const -1) (f64.const inf)) (f64.const inf))
(assert_return (invoke "max" (f64.const 1) (f64.const -inf)) (f64.const 1))
(assert_return (invoke "max" (f64.const 1) (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan
  (invoke "max" (f64.const -1) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -1) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -1) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -1) (f64.const nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 1) (f64.const -nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 1) (f64.const -nan:0x4000000000000))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const 1) (f64.const nan:0x8000000000000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const 1) (f64.const nan:0x4000000000000))
)
(assert_return
  (invoke "max" (f64.const -6.283_185_307_179_586_2) (f64.const -0))
  (f64.const -0)
)
(assert_return
  (invoke "max" (f64.const -6.283_185_307_179_586_2) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "max" (f64.const 6.283_185_307_179_586_2) (f64.const -0))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max" (f64.const 6.283_185_307_179_586_2) (f64.const 0))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max" (f64.const -6.283_185_307_179_586_2) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "max" (f64.const -6.283_185_307_179_586_2) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "max" (f64.const 6.283_185_307_179_586_2) (f64.const -0.5))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max" (f64.const 6.283_185_307_179_586_2) (f64.const 0.5))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max" (f64.const -6.283_185_307_179_586_2) (f64.const -1))
  (f64.const -1)
)
(assert_return
  (invoke "max" (f64.const -6.283_185_307_179_586_2) (f64.const 1))
  (f64.const 1)
)
(assert_return
  (invoke "max" (f64.const 6.283_185_307_179_586_2) (f64.const -1))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max" (f64.const 6.283_185_307_179_586_2) (f64.const 1))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max" (f64.const -6.283_185_307_179_586_2) (f64.const -inf))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max" (f64.const -6.283_185_307_179_586_2) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const 6.283_185_307_179_586_2) (f64.const -inf))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max" (f64.const 6.283_185_307_179_586_2) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -6.283_185_307_179_586_2)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const 6.283_185_307_179_586_2)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return
  (invoke "max" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0))
  (f64.const -0)
)
(assert_return
  (invoke "max" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0))
  (f64.const 0)
)
(assert_return
  (invoke "max" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return
  (invoke "max" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (f64.const 0.5)
)
(assert_return
  (invoke "max" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -0.5))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 0.5))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -1))
  (f64.const -1)
)
(assert_return
  (invoke "max" (f64.const -1.797_693_134_862_315_7e+308) (f64.const 1))
  (f64.const 1)
)
(assert_return
  (invoke "max" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -1))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max" (f64.const 1.797_693_134_862_315_7e+308) (f64.const 1))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -6.283_185_307_179_586_2)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 6.283_185_307_179_586_2)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max" (f64.const -1.797_693_134_862_315_7e+308) (f64.const -inf))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max" (f64.const -1.797_693_134_862_315_7e+308) (f64.const inf))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const 1.797_693_134_862_315_7e+308) (f64.const -inf))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max" (f64.const 1.797_693_134_862_315_7e+308) (f64.const inf))
  (f64.const inf)
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -1.797_693_134_862_315_7e+308)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const -nan:0x4000000000000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const nan:0x8000000000000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const 1.797_693_134_862_315_7e+308)
    (f64.const nan:0x4000000000000)
  )
)
(assert_return (invoke "max" (f64.const -inf) (f64.const -0)) (f64.const -0))
(assert_return (invoke "max" (f64.const -inf) (f64.const 0)) (f64.const 0))
(assert_return (invoke "max" (f64.const inf) (f64.const -0)) (f64.const inf))
(assert_return (invoke "max" (f64.const inf) (f64.const 0)) (f64.const inf))
(assert_return
  (invoke "max" (f64.const -inf) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 4.940_656_458_412_465_4e-324)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 2.225_073_858_507_201_4e-308)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const -0.5))
  (f64.const -0.5)
)
(assert_return (invoke "max" (f64.const -inf) (f64.const 0.5)) (f64.const 0.5))
(assert_return (invoke "max" (f64.const inf) (f64.const -0.5)) (f64.const inf))
(assert_return (invoke "max" (f64.const inf) (f64.const 0.5)) (f64.const inf))
(assert_return (invoke "max" (f64.const -inf) (f64.const -1)) (f64.const -1))
(assert_return (invoke "max" (f64.const -inf) (f64.const 1)) (f64.const 1))
(assert_return (invoke "max" (f64.const inf) (f64.const -1)) (f64.const inf))
(assert_return (invoke "max" (f64.const inf) (f64.const 1)) (f64.const inf))
(assert_return
  (invoke "max" (f64.const -inf) (f64.const -6.283_185_307_179_586_2))
  (f64.const -6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const 6.283_185_307_179_586_2))
  (f64.const 6.283_185_307_179_586_2)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const -6.283_185_307_179_586_2))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const 6.283_185_307_179_586_2))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max" (f64.const -inf) (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const inf)
)
(assert_return
  (invoke "max" (f64.const inf) (f64.const 1.797_693_134_862_315_7e+308))
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
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const -0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const -0))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const 0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const 0))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const -0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const -0))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const 0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const 0))
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x4000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x4000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const nan:0x8000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const nan:0x4000000000000)
    (f64.const -4.940_656_458_412_465_4e-324)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const nan:0x8000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const nan:0x4000000000000)
    (f64.const 4.940_656_458_412_465_4e-324)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x4000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x4000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const nan:0x8000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const nan:0x4000000000000)
    (f64.const -2.225_073_858_507_201_4e-308)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const nan:0x8000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const nan:0x4000000000000)
    (f64.const 2.225_073_858_507_201_4e-308)
  )
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
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const -1))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const -1))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const -nan:0x8000000000000) (f64.const 1))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const -nan:0x4000000000000) (f64.const 1))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const -1))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const -1))
)
(assert_return_canonical_nan
  (invoke "max" (f64.const nan:0x8000000000000) (f64.const 1))
)
(assert_return_arithmetic_nan
  (invoke "max" (f64.const nan:0x4000000000000) (f64.const 1))
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x4000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x4000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const nan:0x8000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const nan:0x4000000000000)
    (f64.const -6.283_185_307_179_586_2)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const nan:0x8000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const nan:0x4000000000000)
    (f64.const 6.283_185_307_179_586_2)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x4000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const -nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const -nan:0x4000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const nan:0x8000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const nan:0x4000000000000)
    (f64.const -1.797_693_134_862_315_7e+308)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f64.const nan:0x8000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f64.const nan:0x4000000000000)
    (f64.const 1.797_693_134_862_315_7e+308)
  )
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
(assert_return (invoke "sqrt" (f64.const -0)) (f64.const -0))
(assert_return (invoke "sqrt" (f64.const 0)) (f64.const 0))
(assert_return_canonical_nan
  (invoke "sqrt" (f64.const -4.940_656_458_412_465_4e-324))
)
(assert_return
  (invoke "sqrt" (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 2.222_758_749_485_077_5e-162)
)
(assert_return_canonical_nan
  (invoke "sqrt" (f64.const -2.225_073_858_507_201_4e-308))
)
(assert_return
  (invoke "sqrt" (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 1.491_668_146_240_041_3e-154)
)
(assert_return_canonical_nan (invoke "sqrt" (f64.const -0.5)))
(assert_return
  (invoke "sqrt" (f64.const 0.5))
  (f64.const 0.707_106_781_186_547_57)
)
(assert_return_canonical_nan (invoke "sqrt" (f64.const -1)))
(assert_return (invoke "sqrt" (f64.const 1)) (f64.const 1))
(assert_return_canonical_nan
  (invoke "sqrt" (f64.const -6.283_185_307_179_586_2))
)
(assert_return
  (invoke "sqrt" (f64.const 6.283_185_307_179_586_2))
  (f64.const 2.506_628_274_631_000_2)
)
(assert_return_canonical_nan
  (invoke "sqrt" (f64.const -1.797_693_134_862_315_7e+308))
)
(assert_return
  (invoke "sqrt" (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 1.340_780_792_994_259_6e+154)
)
(assert_return_canonical_nan (invoke "sqrt" (f64.const -inf)))
(assert_return (invoke "sqrt" (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan (invoke "sqrt" (f64.const -nan:0x8000000000000)))
(assert_return_arithmetic_nan (invoke "sqrt" (f64.const -nan:0x4000000000000)))
(assert_return_canonical_nan (invoke "sqrt" (f64.const nan:0x8000000000000)))
(assert_return_arithmetic_nan (invoke "sqrt" (f64.const nan:0x4000000000000)))
(assert_return (invoke "floor" (f64.const -0)) (f64.const -0))
(assert_return (invoke "floor" (f64.const 0)) (f64.const 0))
(assert_return
  (invoke "floor" (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -1)
)
(assert_return
  (invoke "floor" (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 0)
)
(assert_return
  (invoke "floor" (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -1)
)
(assert_return
  (invoke "floor" (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 0)
)
(assert_return (invoke "floor" (f64.const -0.5)) (f64.const -1))
(assert_return (invoke "floor" (f64.const 0.5)) (f64.const 0))
(assert_return (invoke "floor" (f64.const -1)) (f64.const -1))
(assert_return (invoke "floor" (f64.const 1)) (f64.const 1))
(assert_return
  (invoke "floor" (f64.const -6.283_185_307_179_586_2))
  (f64.const -7)
)
(assert_return
  (invoke "floor" (f64.const 6.283_185_307_179_586_2))
  (f64.const 6)
)
(assert_return
  (invoke "floor" (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "floor" (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return (invoke "floor" (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "floor" (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan (invoke "floor" (f64.const -nan:0x8000000000000)))
(assert_return_arithmetic_nan (invoke "floor" (f64.const -nan:0x4000000000000)))
(assert_return_canonical_nan (invoke "floor" (f64.const nan:0x8000000000000)))
(assert_return_arithmetic_nan (invoke "floor" (f64.const nan:0x4000000000000)))
(assert_return (invoke "ceil" (f64.const -0)) (f64.const -0))
(assert_return (invoke "ceil" (f64.const 0)) (f64.const 0))
(assert_return
  (invoke "ceil" (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -0)
)
(assert_return
  (invoke "ceil" (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 1)
)
(assert_return
  (invoke "ceil" (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -0)
)
(assert_return
  (invoke "ceil" (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 1)
)
(assert_return (invoke "ceil" (f64.const -0.5)) (f64.const -0))
(assert_return (invoke "ceil" (f64.const 0.5)) (f64.const 1))
(assert_return (invoke "ceil" (f64.const -1)) (f64.const -1))
(assert_return (invoke "ceil" (f64.const 1)) (f64.const 1))
(assert_return
  (invoke "ceil" (f64.const -6.283_185_307_179_586_2))
  (f64.const -6)
)
(assert_return
  (invoke "ceil" (f64.const 6.283_185_307_179_586_2))
  (f64.const 7)
)
(assert_return
  (invoke "ceil" (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "ceil" (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return (invoke "ceil" (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "ceil" (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan (invoke "ceil" (f64.const -nan:0x8000000000000)))
(assert_return_arithmetic_nan (invoke "ceil" (f64.const -nan:0x4000000000000)))
(assert_return_canonical_nan (invoke "ceil" (f64.const nan:0x8000000000000)))
(assert_return_arithmetic_nan (invoke "ceil" (f64.const nan:0x4000000000000)))
(assert_return (invoke "trunc" (f64.const -0)) (f64.const -0))
(assert_return (invoke "trunc" (f64.const 0)) (f64.const 0))
(assert_return
  (invoke "trunc" (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -0)
)
(assert_return
  (invoke "trunc" (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 0)
)
(assert_return
  (invoke "trunc" (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -0)
)
(assert_return
  (invoke "trunc" (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 0)
)
(assert_return (invoke "trunc" (f64.const -0.5)) (f64.const -0))
(assert_return (invoke "trunc" (f64.const 0.5)) (f64.const 0))
(assert_return (invoke "trunc" (f64.const -1)) (f64.const -1))
(assert_return (invoke "trunc" (f64.const 1)) (f64.const 1))
(assert_return
  (invoke "trunc" (f64.const -6.283_185_307_179_586_2))
  (f64.const -6)
)
(assert_return
  (invoke "trunc" (f64.const 6.283_185_307_179_586_2))
  (f64.const 6)
)
(assert_return
  (invoke "trunc" (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "trunc" (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
)
(assert_return (invoke "trunc" (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "trunc" (f64.const inf)) (f64.const inf))
(assert_return_canonical_nan (invoke "trunc" (f64.const -nan:0x8000000000000)))
(assert_return_arithmetic_nan (invoke "trunc" (f64.const -nan:0x4000000000000)))
(assert_return_canonical_nan (invoke "trunc" (f64.const nan:0x8000000000000)))
(assert_return_arithmetic_nan (invoke "trunc" (f64.const nan:0x4000000000000)))
(assert_return (invoke "nearest" (f64.const -0)) (f64.const -0))
(assert_return (invoke "nearest" (f64.const 0)) (f64.const 0))
(assert_return
  (invoke "nearest" (f64.const -4.940_656_458_412_465_4e-324))
  (f64.const -0)
)
(assert_return
  (invoke "nearest" (f64.const 4.940_656_458_412_465_4e-324))
  (f64.const 0)
)
(assert_return
  (invoke "nearest" (f64.const -2.225_073_858_507_201_4e-308))
  (f64.const -0)
)
(assert_return
  (invoke "nearest" (f64.const 2.225_073_858_507_201_4e-308))
  (f64.const 0)
)
(assert_return (invoke "nearest" (f64.const -0.5)) (f64.const -0))
(assert_return (invoke "nearest" (f64.const 0.5)) (f64.const 0))
(assert_return (invoke "nearest" (f64.const -1)) (f64.const -1))
(assert_return (invoke "nearest" (f64.const 1)) (f64.const 1))
(assert_return
  (invoke "nearest" (f64.const -6.283_185_307_179_586_2))
  (f64.const -6)
)
(assert_return
  (invoke "nearest" (f64.const 6.283_185_307_179_586_2))
  (f64.const 6)
)
(assert_return
  (invoke "nearest" (f64.const -1.797_693_134_862_315_7e+308))
  (f64.const -1.797_693_134_862_315_7e+308)
)
(assert_return
  (invoke "nearest" (f64.const 1.797_693_134_862_315_7e+308))
  (f64.const 1.797_693_134_862_315_7e+308)
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
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7c\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\a0"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7c\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\a3"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7c\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\a5"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7c\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\a4"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7c\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\a2"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7c\03\82\80\80\80\00\01\00\0a\90\80\80\80"
    "\00\01\8a\80\80\80\00\00\42\00\43\00\00\00\00\a1"
    "\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7c\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\42\00\9b\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7c\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\42\00\9c\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7c\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\42\00\9e\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7c\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\42\00\9f\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7c\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\42\00\9d\0b"
  )
  "type mismatch"
)

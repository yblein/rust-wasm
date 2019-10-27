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
(assert_return (invoke "add" (f32.const -0) (f32.const -0)) (f32.const -0))
(assert_return (invoke "add" (f32.const -0) (f32.const 0)) (f32.const 0))
(assert_return (invoke "add" (f32.const 0) (f32.const -0)) (f32.const 0))
(assert_return (invoke "add" (f32.const 0) (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "add" (f32.const -0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "add" (f32.const -0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "add" (f32.const 0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "add" (f32.const 0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "add" (f32.const -0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "add" (f32.const -0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "add" (f32.const 0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "add" (f32.const 0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return (invoke "add" (f32.const -0) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "add" (f32.const -0) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "add" (f32.const 0) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "add" (f32.const 0) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "add" (f32.const -0) (f32.const -1)) (f32.const -1))
(assert_return (invoke "add" (f32.const -0) (f32.const 1)) (f32.const 1))
(assert_return (invoke "add" (f32.const 0) (f32.const -1)) (f32.const -1))
(assert_return (invoke "add" (f32.const 0) (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "add" (f32.const -0) (f32.const -6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const -0) (f32.const 6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const 0) (f32.const -6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const 0) (f32.const 6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const -0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const -0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const 0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const 0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return (invoke "add" (f32.const -0) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "add" (f32.const -0) (f32.const inf)) (f32.const inf))
(assert_return (invoke "add" (f32.const 0) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "add" (f32.const 0) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "add" (f32.const -0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -0) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 0) (f32.const nan:0x200000))
)
(assert_return
  (invoke "add" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "add" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "add" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "add" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "add"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -2.802_596_928_649_634_1e-45)
)
(assert_return
  (invoke "add"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 0)
)
(assert_return
  (invoke "add"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 0)
)
(assert_return
  (invoke "add"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 2.802_596_928_649_634_1e-45)
)
(assert_return
  (invoke "add"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_490_952_133_9e-38)
)
(assert_return
  (invoke "add"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_210_692_441_1e-38)
)
(assert_return
  (invoke "add"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_210_692_441_1e-38)
)
(assert_return
  (invoke "add"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_490_952_133_9e-38)
)
(assert_return
  (invoke "add" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "add" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "add" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "add" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "add" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const -1)
)
(assert_return
  (invoke "add" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const 1)
)
(assert_return
  (invoke "add" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const -1)
)
(assert_return
  (invoke "add" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const 1)
)
(assert_return
  (invoke "add"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const 1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
)
(assert_return
  (invoke "add" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "add" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "add" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "add" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "add"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.175_494_490_952_133_9e-38)
)
(assert_return
  (invoke "add"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.175_494_210_692_441_1e-38)
)
(assert_return
  (invoke "add"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.175_494_210_692_441_1e-38)
)
(assert_return
  (invoke "add"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.175_494_490_952_133_9e-38)
)
(assert_return
  (invoke "add"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -2.350_988_701_644_575e-38)
)
(assert_return
  (invoke "add"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "add"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "add"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 2.350_988_701_644_575e-38)
)
(assert_return
  (invoke "add" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "add" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "add" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "add" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "add" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const -1)
)
(assert_return
  (invoke "add" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const 1)
)
(assert_return
  (invoke "add" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const -1)
)
(assert_return
  (invoke "add" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const 1)
)
(assert_return
  (invoke "add"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const 1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
)
(assert_return (invoke "add" (f32.const -0.5) (f32.const -0)) (f32.const -0.5))
(assert_return (invoke "add" (f32.const -0.5) (f32.const 0)) (f32.const -0.5))
(assert_return (invoke "add" (f32.const 0.5) (f32.const -0)) (f32.const 0.5))
(assert_return (invoke "add" (f32.const 0.5) (f32.const 0)) (f32.const 0.5))
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -0.5)
)
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -0.5)
)
(assert_return
  (invoke "add" (f32.const 0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 0.5)
)
(assert_return
  (invoke "add" (f32.const 0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 0.5)
)
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -0.5)
)
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -0.5)
)
(assert_return
  (invoke "add" (f32.const 0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 0.5)
)
(assert_return
  (invoke "add" (f32.const 0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 0.5)
)
(assert_return (invoke "add" (f32.const -0.5) (f32.const -0.5)) (f32.const -1))
(assert_return (invoke "add" (f32.const -0.5) (f32.const 0.5)) (f32.const 0))
(assert_return (invoke "add" (f32.const 0.5) (f32.const -0.5)) (f32.const 0))
(assert_return (invoke "add" (f32.const 0.5) (f32.const 0.5)) (f32.const 1))
(assert_return (invoke "add" (f32.const -0.5) (f32.const -1)) (f32.const -1.5))
(assert_return (invoke "add" (f32.const -0.5) (f32.const 1)) (f32.const 0.5))
(assert_return (invoke "add" (f32.const 0.5) (f32.const -1)) (f32.const -0.5))
(assert_return (invoke "add" (f32.const 0.5) (f32.const 1)) (f32.const 1.5))
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const -6.783_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const 5.783_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const 0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const -5.783_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const 0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const 6.783_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const -0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const 0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const 0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
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
(assert_return (invoke "add" (f32.const -1) (f32.const -0)) (f32.const -1))
(assert_return (invoke "add" (f32.const -1) (f32.const 0)) (f32.const -1))
(assert_return (invoke "add" (f32.const 1) (f32.const -0)) (f32.const 1))
(assert_return (invoke "add" (f32.const 1) (f32.const 0)) (f32.const 1))
(assert_return
  (invoke "add" (f32.const -1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1)
)
(assert_return
  (invoke "add" (f32.const -1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -1)
)
(assert_return
  (invoke "add" (f32.const 1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 1)
)
(assert_return
  (invoke "add" (f32.const 1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1)
)
(assert_return
  (invoke "add" (f32.const -1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1)
)
(assert_return
  (invoke "add" (f32.const -1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -1)
)
(assert_return
  (invoke "add" (f32.const 1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 1)
)
(assert_return
  (invoke "add" (f32.const 1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1)
)
(assert_return (invoke "add" (f32.const -1) (f32.const -0.5)) (f32.const -1.5))
(assert_return (invoke "add" (f32.const -1) (f32.const 0.5)) (f32.const -0.5))
(assert_return (invoke "add" (f32.const 1) (f32.const -0.5)) (f32.const 0.5))
(assert_return (invoke "add" (f32.const 1) (f32.const 0.5)) (f32.const 1.5))
(assert_return (invoke "add" (f32.const -1) (f32.const -1)) (f32.const -2))
(assert_return (invoke "add" (f32.const -1) (f32.const 1)) (f32.const 0))
(assert_return (invoke "add" (f32.const 1) (f32.const -1)) (f32.const 0))
(assert_return (invoke "add" (f32.const 1) (f32.const 1)) (f32.const 2))
(assert_return
  (invoke "add" (f32.const -1) (f32.const -6.283_185_482_025_146_5))
  (f32.const -7.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const -1) (f32.const 6.283_185_482_025_146_5))
  (f32.const 5.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const 1) (f32.const -6.283_185_482_025_146_5))
  (f32.const -5.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const 1) (f32.const 6.283_185_482_025_146_5))
  (f32.const 7.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const -1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const -1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const 1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const 1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return (invoke "add" (f32.const -1) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "add" (f32.const -1) (f32.const inf)) (f32.const inf))
(assert_return (invoke "add" (f32.const 1) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "add" (f32.const 1) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "add" (f32.const -1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -1) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 1) (f32.const nan:0x200000))
)
(assert_return
  (invoke "add" (f32.const -6.283_185_482_025_146_5) (f32.const -0))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const -6.283_185_482_025_146_5) (f32.const 0))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const 6.283_185_482_025_146_5) (f32.const -0))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const 6.283_185_482_025_146_5) (f32.const 0))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const -6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const -6.783_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const -6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const -5.783_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const 6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const 5.783_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const 6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const 6.783_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const -6.283_185_482_025_146_5) (f32.const -1))
  (f32.const -7.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const -6.283_185_482_025_146_5) (f32.const 1))
  (f32.const -5.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const 6.283_185_482_025_146_5) (f32.const -1))
  (f32.const 5.283_185_482_025_146_5)
)
(assert_return
  (invoke "add" (f32.const 6.283_185_482_025_146_5) (f32.const 1))
  (f32.const 7.283_185_482_025_146_5)
)
(assert_return
  (invoke "add"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -12.566_370_964_050_293)
)
(assert_return
  (invoke "add"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 0)
)
(assert_return
  (invoke "add"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 0)
)
(assert_return
  (invoke "add"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 12.566_370_964_050_293)
)
(assert_return
  (invoke "add"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const -6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -6.283_185_482_025_146_5) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const 6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const 6.283_185_482_025_146_5) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x200000))
)
(assert_return
  (invoke "add" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "add"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "add"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const 3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
)
(assert_return (invoke "add" (f32.const -inf) (f32.const -0)) (f32.const -inf))
(assert_return (invoke "add" (f32.const -inf) (f32.const 0)) (f32.const -inf))
(assert_return (invoke "add" (f32.const inf) (f32.const -0)) (f32.const inf))
(assert_return (invoke "add" (f32.const inf) (f32.const 0)) (f32.const inf))
(assert_return
  (invoke "add" (f32.const -inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const -0.5))
  (f32.const -inf)
)
(assert_return (invoke "add" (f32.const -inf) (f32.const 0.5)) (f32.const -inf))
(assert_return (invoke "add" (f32.const inf) (f32.const -0.5)) (f32.const inf))
(assert_return (invoke "add" (f32.const inf) (f32.const 0.5)) (f32.const inf))
(assert_return (invoke "add" (f32.const -inf) (f32.const -1)) (f32.const -inf))
(assert_return (invoke "add" (f32.const -inf) (f32.const 1)) (f32.const -inf))
(assert_return (invoke "add" (f32.const inf) (f32.const -1)) (f32.const inf))
(assert_return (invoke "add" (f32.const inf) (f32.const 1)) (f32.const inf))
(assert_return
  (invoke "add" (f32.const -inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const -inf) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const inf)
)
(assert_return
  (invoke "add" (f32.const inf) (f32.const 3.402_823_466_385_288_6e+38))
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
  (invoke "add" (f32.const -nan:0x400000) (f32.const -0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -0))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const 0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const 0))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -0))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const 0))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const 0))
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const -nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const -nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const -nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const -nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const -nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const -nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const -nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const -nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
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
  (invoke "add" (f32.const -nan:0x400000) (f32.const -1))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -1))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const 1))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const 1))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -1))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -1))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const 1))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const 1))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const -nan:0x400000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const -nan:0x200000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "add" (f32.const nan:0x400000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "add" (f32.const nan:0x200000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const -nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const -nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const -nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const -nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "add"
    (f32.const nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "add"
    (f32.const nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
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
(assert_return (invoke "sub" (f32.const -0) (f32.const -0)) (f32.const 0))
(assert_return (invoke "sub" (f32.const -0) (f32.const 0)) (f32.const -0))
(assert_return (invoke "sub" (f32.const 0) (f32.const -0)) (f32.const 0))
(assert_return (invoke "sub" (f32.const 0) (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "sub" (f32.const -0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "sub" (f32.const -0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "sub" (f32.const 0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "sub" (f32.const 0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "sub" (f32.const -0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "sub" (f32.const -0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "sub" (f32.const 0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "sub" (f32.const 0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return (invoke "sub" (f32.const -0) (f32.const -0.5)) (f32.const 0.5))
(assert_return (invoke "sub" (f32.const -0) (f32.const 0.5)) (f32.const -0.5))
(assert_return (invoke "sub" (f32.const 0) (f32.const -0.5)) (f32.const 0.5))
(assert_return (invoke "sub" (f32.const 0) (f32.const 0.5)) (f32.const -0.5))
(assert_return (invoke "sub" (f32.const -0) (f32.const -1)) (f32.const 1))
(assert_return (invoke "sub" (f32.const -0) (f32.const 1)) (f32.const -1))
(assert_return (invoke "sub" (f32.const 0) (f32.const -1)) (f32.const 1))
(assert_return (invoke "sub" (f32.const 0) (f32.const 1)) (f32.const -1))
(assert_return
  (invoke "sub" (f32.const -0) (f32.const -6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const -0) (f32.const 6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const 0) (f32.const -6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const 0) (f32.const 6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const -0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const -0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const 0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const 0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return (invoke "sub" (f32.const -0) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "sub" (f32.const -0) (f32.const inf)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const 0) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "sub" (f32.const 0) (f32.const inf)) (f32.const -inf))
(assert_return_canonical_nan
  (invoke "sub" (f32.const -0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -0) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 0) (f32.const nan:0x200000))
)
(assert_return
  (invoke "sub" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "sub" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "sub" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "sub" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "sub"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 0)
)
(assert_return
  (invoke "sub"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -2.802_596_928_649_634_1e-45)
)
(assert_return
  (invoke "sub"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 2.802_596_928_649_634_1e-45)
)
(assert_return
  (invoke "sub"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 0)
)
(assert_return
  (invoke "sub"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_210_692_441_1e-38)
)
(assert_return
  (invoke "sub"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_490_952_133_9e-38)
)
(assert_return
  (invoke "sub"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_490_952_133_9e-38)
)
(assert_return
  (invoke "sub"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_210_692_441_1e-38)
)
(assert_return
  (invoke "sub" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "sub" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "sub" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "sub" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "sub" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const 1)
)
(assert_return
  (invoke "sub" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const -1)
)
(assert_return
  (invoke "sub" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const 1)
)
(assert_return
  (invoke "sub" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const -1)
)
(assert_return
  (invoke "sub"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const 1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
)
(assert_return
  (invoke "sub" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "sub" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "sub" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "sub" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "sub"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.175_494_210_692_441_1e-38)
)
(assert_return
  (invoke "sub"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.175_494_490_952_133_9e-38)
)
(assert_return
  (invoke "sub"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.175_494_490_952_133_9e-38)
)
(assert_return
  (invoke "sub"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.175_494_210_692_441_1e-38)
)
(assert_return
  (invoke "sub"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "sub"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -2.350_988_701_644_575e-38)
)
(assert_return
  (invoke "sub"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 2.350_988_701_644_575e-38)
)
(assert_return
  (invoke "sub"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "sub" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "sub" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "sub" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "sub" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "sub" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const 1)
)
(assert_return
  (invoke "sub" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const -1)
)
(assert_return
  (invoke "sub" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const 1)
)
(assert_return
  (invoke "sub" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const -1)
)
(assert_return
  (invoke "sub"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const 1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
)
(assert_return (invoke "sub" (f32.const -0.5) (f32.const -0)) (f32.const -0.5))
(assert_return (invoke "sub" (f32.const -0.5) (f32.const 0)) (f32.const -0.5))
(assert_return (invoke "sub" (f32.const 0.5) (f32.const -0)) (f32.const 0.5))
(assert_return (invoke "sub" (f32.const 0.5) (f32.const 0)) (f32.const 0.5))
(assert_return
  (invoke "sub" (f32.const -0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -0.5)
)
(assert_return
  (invoke "sub" (f32.const -0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -0.5)
)
(assert_return
  (invoke "sub" (f32.const 0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 0.5)
)
(assert_return
  (invoke "sub" (f32.const 0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 0.5)
)
(assert_return
  (invoke "sub" (f32.const -0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -0.5)
)
(assert_return
  (invoke "sub" (f32.const -0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -0.5)
)
(assert_return
  (invoke "sub" (f32.const 0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 0.5)
)
(assert_return
  (invoke "sub" (f32.const 0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 0.5)
)
(assert_return (invoke "sub" (f32.const -0.5) (f32.const -0.5)) (f32.const 0))
(assert_return (invoke "sub" (f32.const -0.5) (f32.const 0.5)) (f32.const -1))
(assert_return (invoke "sub" (f32.const 0.5) (f32.const -0.5)) (f32.const 1))
(assert_return (invoke "sub" (f32.const 0.5) (f32.const 0.5)) (f32.const 0))
(assert_return (invoke "sub" (f32.const -0.5) (f32.const -1)) (f32.const 0.5))
(assert_return (invoke "sub" (f32.const -0.5) (f32.const 1)) (f32.const -1.5))
(assert_return (invoke "sub" (f32.const 0.5) (f32.const -1)) (f32.const 1.5))
(assert_return (invoke "sub" (f32.const 0.5) (f32.const 1)) (f32.const -0.5))
(assert_return
  (invoke "sub" (f32.const -0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const 5.783_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const -0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const -6.783_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const 0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const 6.783_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const 0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const -5.783_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const -0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const -0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const 0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const 0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
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
(assert_return (invoke "sub" (f32.const -1) (f32.const -0)) (f32.const -1))
(assert_return (invoke "sub" (f32.const -1) (f32.const 0)) (f32.const -1))
(assert_return (invoke "sub" (f32.const 1) (f32.const -0)) (f32.const 1))
(assert_return (invoke "sub" (f32.const 1) (f32.const 0)) (f32.const 1))
(assert_return
  (invoke "sub" (f32.const -1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1)
)
(assert_return
  (invoke "sub" (f32.const -1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -1)
)
(assert_return
  (invoke "sub" (f32.const 1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 1)
)
(assert_return
  (invoke "sub" (f32.const 1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1)
)
(assert_return
  (invoke "sub" (f32.const -1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1)
)
(assert_return
  (invoke "sub" (f32.const -1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -1)
)
(assert_return
  (invoke "sub" (f32.const 1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 1)
)
(assert_return
  (invoke "sub" (f32.const 1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1)
)
(assert_return (invoke "sub" (f32.const -1) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "sub" (f32.const -1) (f32.const 0.5)) (f32.const -1.5))
(assert_return (invoke "sub" (f32.const 1) (f32.const -0.5)) (f32.const 1.5))
(assert_return (invoke "sub" (f32.const 1) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "sub" (f32.const -1) (f32.const -1)) (f32.const 0))
(assert_return (invoke "sub" (f32.const -1) (f32.const 1)) (f32.const -2))
(assert_return (invoke "sub" (f32.const 1) (f32.const -1)) (f32.const 2))
(assert_return (invoke "sub" (f32.const 1) (f32.const 1)) (f32.const 0))
(assert_return
  (invoke "sub" (f32.const -1) (f32.const -6.283_185_482_025_146_5))
  (f32.const 5.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const -1) (f32.const 6.283_185_482_025_146_5))
  (f32.const -7.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const 1) (f32.const -6.283_185_482_025_146_5))
  (f32.const 7.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const 1) (f32.const 6.283_185_482_025_146_5))
  (f32.const -5.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const -1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const -1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const 1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const 1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return (invoke "sub" (f32.const -1) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "sub" (f32.const -1) (f32.const inf)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const 1) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "sub" (f32.const 1) (f32.const inf)) (f32.const -inf))
(assert_return_canonical_nan
  (invoke "sub" (f32.const -1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -1) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 1) (f32.const nan:0x200000))
)
(assert_return
  (invoke "sub" (f32.const -6.283_185_482_025_146_5) (f32.const -0))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const -6.283_185_482_025_146_5) (f32.const 0))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const 6.283_185_482_025_146_5) (f32.const -0))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const 6.283_185_482_025_146_5) (f32.const 0))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const -6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const -5.783_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const -6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const -6.783_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const 6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const 6.783_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const 6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const 5.783_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const -6.283_185_482_025_146_5) (f32.const -1))
  (f32.const -5.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const -6.283_185_482_025_146_5) (f32.const 1))
  (f32.const -7.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const 6.283_185_482_025_146_5) (f32.const -1))
  (f32.const 7.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub" (f32.const 6.283_185_482_025_146_5) (f32.const 1))
  (f32.const 5.283_185_482_025_146_5)
)
(assert_return
  (invoke "sub"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 0)
)
(assert_return
  (invoke "sub"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -12.566_370_964_050_293)
)
(assert_return
  (invoke "sub"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 12.566_370_964_050_293)
)
(assert_return
  (invoke "sub"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 0)
)
(assert_return
  (invoke "sub"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const -6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -6.283_185_482_025_146_5) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const 6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const 6.283_185_482_025_146_5) (f32.const inf))
  (f32.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x200000))
)
(assert_return
  (invoke "sub" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "sub"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "sub"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const inf)
)
(assert_return
  (invoke "sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "sub" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const 3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const -inf)
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
)
(assert_return (invoke "sub" (f32.const -inf) (f32.const -0)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const -inf) (f32.const 0)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const inf) (f32.const -0)) (f32.const inf))
(assert_return (invoke "sub" (f32.const inf) (f32.const 0)) (f32.const inf))
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const -0.5))
  (f32.const -inf)
)
(assert_return (invoke "sub" (f32.const -inf) (f32.const 0.5)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const inf) (f32.const -0.5)) (f32.const inf))
(assert_return (invoke "sub" (f32.const inf) (f32.const 0.5)) (f32.const inf))
(assert_return (invoke "sub" (f32.const -inf) (f32.const -1)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const -inf) (f32.const 1)) (f32.const -inf))
(assert_return (invoke "sub" (f32.const inf) (f32.const -1)) (f32.const inf))
(assert_return (invoke "sub" (f32.const inf) (f32.const 1)) (f32.const inf))
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const -inf) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const inf)
)
(assert_return
  (invoke "sub" (f32.const inf) (f32.const 3.402_823_466_385_288_6e+38))
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
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -0))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const 0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const 0))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -0))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const 0))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const 0))
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const -nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const -nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const -nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const -nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const -nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const -nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const -nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const -nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
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
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -1))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -1))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const 1))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const 1))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -1))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -1))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const 1))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const 1))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const -nan:0x400000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const -nan:0x200000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "sub" (f32.const nan:0x400000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "sub" (f32.const nan:0x200000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const -nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const -nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const -nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const -nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "sub"
    (f32.const nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "sub"
    (f32.const nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
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
(assert_return (invoke "mul" (f32.const -0) (f32.const -0)) (f32.const 0))
(assert_return (invoke "mul" (f32.const -0) (f32.const 0)) (f32.const -0))
(assert_return (invoke "mul" (f32.const 0) (f32.const -0)) (f32.const -0))
(assert_return (invoke "mul" (f32.const 0) (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "mul" (f32.const -0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 0)
)
(assert_return (invoke "mul" (f32.const -0) (f32.const -0.5)) (f32.const 0))
(assert_return (invoke "mul" (f32.const -0) (f32.const 0.5)) (f32.const -0))
(assert_return (invoke "mul" (f32.const 0) (f32.const -0.5)) (f32.const -0))
(assert_return (invoke "mul" (f32.const 0) (f32.const 0.5)) (f32.const 0))
(assert_return (invoke "mul" (f32.const -0) (f32.const -1)) (f32.const 0))
(assert_return (invoke "mul" (f32.const -0) (f32.const 1)) (f32.const -0))
(assert_return (invoke "mul" (f32.const 0) (f32.const -1)) (f32.const -0))
(assert_return (invoke "mul" (f32.const 0) (f32.const 1)) (f32.const 0))
(assert_return
  (invoke "mul" (f32.const -0) (f32.const -6.283_185_482_025_146_5))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -0) (f32.const 6.283_185_482_025_146_5))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 0) (f32.const -6.283_185_482_025_146_5))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 0) (f32.const 6.283_185_482_025_146_5))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 0)
)
(assert_return_canonical_nan (invoke "mul" (f32.const -0) (f32.const -inf)))
(assert_return_canonical_nan (invoke "mul" (f32.const -0) (f32.const inf)))
(assert_return_canonical_nan (invoke "mul" (f32.const 0) (f32.const -inf)))
(assert_return_canonical_nan (invoke "mul" (f32.const 0) (f32.const inf)))
(assert_return_canonical_nan
  (invoke "mul" (f32.const -0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -0) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 0) (f32.const nan:0x200000))
)
(assert_return
  (invoke "mul" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "mul"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 0)
)
(assert_return
  (invoke "mul"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -0)
)
(assert_return
  (invoke "mul"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -0)
)
(assert_return
  (invoke "mul"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 0)
)
(assert_return
  (invoke "mul"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "mul"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -0)
)
(assert_return
  (invoke "mul"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -0)
)
(assert_return
  (invoke "mul"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "mul" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "mul" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "mul" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "mul"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 8.407_790_785_948_902_4e-45)
)
(assert_return
  (invoke "mul"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -8.407_790_785_948_902_4e-45)
)
(assert_return
  (invoke "mul"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -8.407_790_785_948_902_4e-45)
)
(assert_return
  (invoke "mul"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 8.407_790_785_948_902_4e-45)
)
(assert_return
  (invoke "mul"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 4.768_371_297_814_155_7e-07)
)
(assert_return
  (invoke "mul"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -4.768_371_297_814_155_7e-07)
)
(assert_return
  (invoke "mul"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -4.768_371_297_814_155_7e-07)
)
(assert_return
  (invoke "mul"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 4.768_371_297_814_155_7e-07)
)
(assert_return
  (invoke "mul" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
)
(assert_return
  (invoke "mul" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "mul"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 0)
)
(assert_return
  (invoke "mul"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -0)
)
(assert_return
  (invoke "mul"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -0)
)
(assert_return
  (invoke "mul"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 0)
)
(assert_return
  (invoke "mul"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "mul"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -0)
)
(assert_return
  (invoke "mul"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -0)
)
(assert_return
  (invoke "mul"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const 5.877_471_754_111_437_5e-39)
)
(assert_return
  (invoke "mul" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const -5.877_471_754_111_437_5e-39)
)
(assert_return
  (invoke "mul" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const -5.877_471_754_111_437_5e-39)
)
(assert_return
  (invoke "mul" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const 5.877_471_754_111_437_5e-39)
)
(assert_return
  (invoke "mul" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "mul" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "mul" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "mul" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "mul"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 7.385_849_039_289_171_2e-38)
)
(assert_return
  (invoke "mul"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -7.385_849_039_289_171_2e-38)
)
(assert_return
  (invoke "mul"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -7.385_849_039_289_171_2e-38)
)
(assert_return
  (invoke "mul"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 7.385_849_039_289_171_2e-38)
)
(assert_return
  (invoke "mul"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.999_999_761_581_420_9)
)
(assert_return
  (invoke "mul"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.999_999_761_581_420_9)
)
(assert_return
  (invoke "mul"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.999_999_761_581_420_9)
)
(assert_return
  (invoke "mul"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.999_999_761_581_420_9)
)
(assert_return
  (invoke "mul" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
)
(assert_return (invoke "mul" (f32.const -0.5) (f32.const -0)) (f32.const 0))
(assert_return (invoke "mul" (f32.const -0.5) (f32.const 0)) (f32.const -0))
(assert_return (invoke "mul" (f32.const 0.5) (f32.const -0)) (f32.const -0))
(assert_return (invoke "mul" (f32.const 0.5) (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 5.877_471_754_111_437_5e-39)
)
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -5.877_471_754_111_437_5e-39)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -5.877_471_754_111_437_5e-39)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 5.877_471_754_111_437_5e-39)
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
(assert_return (invoke "mul" (f32.const -0.5) (f32.const -1)) (f32.const 0.5))
(assert_return (invoke "mul" (f32.const -0.5) (f32.const 1)) (f32.const -0.5))
(assert_return (invoke "mul" (f32.const 0.5) (f32.const -1)) (f32.const -0.5))
(assert_return (invoke "mul" (f32.const 0.5) (f32.const 1)) (f32.const 0.5))
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const 3.141_592_741_012_573_2)
)
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const -3.141_592_741_012_573_2)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const -3.141_592_741_012_573_2)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const 3.141_592_741_012_573_2)
)
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 1.701_411_733_192_644_3e+38)
)
(assert_return
  (invoke "mul" (f32.const -0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -1.701_411_733_192_644_3e+38)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -1.701_411_733_192_644_3e+38)
)
(assert_return
  (invoke "mul" (f32.const 0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 1.701_411_733_192_644_3e+38)
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
(assert_return (invoke "mul" (f32.const -1) (f32.const -0)) (f32.const 0))
(assert_return (invoke "mul" (f32.const -1) (f32.const 0)) (f32.const -0))
(assert_return (invoke "mul" (f32.const 1) (f32.const -0)) (f32.const -0))
(assert_return (invoke "mul" (f32.const 1) (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "mul" (f32.const -1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "mul" (f32.const -1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "mul" (f32.const 1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "mul" (f32.const 1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "mul" (f32.const -1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "mul" (f32.const -1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "mul" (f32.const 1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "mul" (f32.const 1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return (invoke "mul" (f32.const -1) (f32.const -0.5)) (f32.const 0.5))
(assert_return (invoke "mul" (f32.const -1) (f32.const 0.5)) (f32.const -0.5))
(assert_return (invoke "mul" (f32.const 1) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "mul" (f32.const 1) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "mul" (f32.const -1) (f32.const -1)) (f32.const 1))
(assert_return (invoke "mul" (f32.const -1) (f32.const 1)) (f32.const -1))
(assert_return (invoke "mul" (f32.const 1) (f32.const -1)) (f32.const -1))
(assert_return (invoke "mul" (f32.const 1) (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "mul" (f32.const -1) (f32.const -6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "mul" (f32.const -1) (f32.const 6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "mul" (f32.const 1) (f32.const -6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "mul" (f32.const 1) (f32.const 6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "mul" (f32.const -1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "mul" (f32.const -1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "mul" (f32.const 1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "mul" (f32.const 1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return (invoke "mul" (f32.const -1) (f32.const -inf)) (f32.const inf))
(assert_return (invoke "mul" (f32.const -1) (f32.const inf)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const 1) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const 1) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "mul" (f32.const -1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -1) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 1) (f32.const nan:0x200000))
)
(assert_return
  (invoke "mul" (f32.const -6.283_185_482_025_146_5) (f32.const -0))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -6.283_185_482_025_146_5) (f32.const 0))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 6.283_185_482_025_146_5) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 6.283_185_482_025_146_5) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "mul"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 8.407_790_785_948_902_4e-45)
)
(assert_return
  (invoke "mul"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -8.407_790_785_948_902_4e-45)
)
(assert_return
  (invoke "mul"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -8.407_790_785_948_902_4e-45)
)
(assert_return
  (invoke "mul"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 8.407_790_785_948_902_4e-45)
)
(assert_return
  (invoke "mul"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 7.385_849_039_289_171_2e-38)
)
(assert_return
  (invoke "mul"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -7.385_849_039_289_171_2e-38)
)
(assert_return
  (invoke "mul"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -7.385_849_039_289_171_2e-38)
)
(assert_return
  (invoke "mul"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 7.385_849_039_289_171_2e-38)
)
(assert_return
  (invoke "mul" (f32.const -6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const 3.141_592_741_012_573_2)
)
(assert_return
  (invoke "mul" (f32.const -6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const -3.141_592_741_012_573_2)
)
(assert_return
  (invoke "mul" (f32.const 6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const -3.141_592_741_012_573_2)
)
(assert_return
  (invoke "mul" (f32.const 6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const 3.141_592_741_012_573_2)
)
(assert_return
  (invoke "mul" (f32.const -6.283_185_482_025_146_5) (f32.const -1))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "mul" (f32.const -6.283_185_482_025_146_5) (f32.const 1))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "mul" (f32.const 6.283_185_482_025_146_5) (f32.const -1))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "mul" (f32.const 6.283_185_482_025_146_5) (f32.const 1))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "mul"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 39.478_420_257_568_359)
)
(assert_return
  (invoke "mul"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -39.478_420_257_568_359)
)
(assert_return
  (invoke "mul"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -39.478_420_257_568_359)
)
(assert_return
  (invoke "mul"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 39.478_420_257_568_359)
)
(assert_return
  (invoke "mul"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const inf)
)
(assert_return
  (invoke "mul"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "mul"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "mul"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -6.283_185_482_025_146_5) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 6.283_185_482_025_146_5) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x200000))
)
(assert_return
  (invoke "mul" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const 0)
)
(assert_return
  (invoke "mul" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "mul" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "mul"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 4.768_371_297_814_155_7e-07)
)
(assert_return
  (invoke "mul"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -4.768_371_297_814_155_7e-07)
)
(assert_return
  (invoke "mul"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -4.768_371_297_814_155_7e-07)
)
(assert_return
  (invoke "mul"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 4.768_371_297_814_155_7e-07)
)
(assert_return
  (invoke "mul"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 3.999_999_761_581_420_9)
)
(assert_return
  (invoke "mul"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -3.999_999_761_581_420_9)
)
(assert_return
  (invoke "mul"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -3.999_999_761_581_420_9)
)
(assert_return
  (invoke "mul"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 3.999_999_761_581_420_9)
)
(assert_return
  (invoke "mul" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const 1.701_411_733_192_644_3e+38)
)
(assert_return
  (invoke "mul" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const -1.701_411_733_192_644_3e+38)
)
(assert_return
  (invoke "mul" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const -1.701_411_733_192_644_3e+38)
)
(assert_return
  (invoke "mul" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const 1.701_411_733_192_644_3e+38)
)
(assert_return
  (invoke "mul" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "mul" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "mul" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "mul" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "mul"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const inf)
)
(assert_return
  (invoke "mul"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "mul"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "mul"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const inf)
)
(assert_return
  (invoke "mul"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const inf)
)
(assert_return
  (invoke "mul"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "mul"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "mul"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const 3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan (invoke "mul" (f32.const -inf) (f32.const -0)))
(assert_return_canonical_nan (invoke "mul" (f32.const -inf) (f32.const 0)))
(assert_return_canonical_nan (invoke "mul" (f32.const inf) (f32.const -0)))
(assert_return_canonical_nan (invoke "mul" (f32.const inf) (f32.const 0)))
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const inf)
)
(assert_return (invoke "mul" (f32.const -inf) (f32.const -0.5)) (f32.const inf))
(assert_return (invoke "mul" (f32.const -inf) (f32.const 0.5)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const inf) (f32.const -0.5)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const inf) (f32.const 0.5)) (f32.const inf))
(assert_return (invoke "mul" (f32.const -inf) (f32.const -1)) (f32.const inf))
(assert_return (invoke "mul" (f32.const -inf) (f32.const 1)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const inf) (f32.const -1)) (f32.const -inf))
(assert_return (invoke "mul" (f32.const inf) (f32.const 1)) (f32.const inf))
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const inf)
)
(assert_return
  (invoke "mul" (f32.const -inf) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "mul" (f32.const inf) (f32.const 3.402_823_466_385_288_6e+38))
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
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -0))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const 0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const 0))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -0))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const 0))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const 0))
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const -nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const -nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const -nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const -nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const -nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const -nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const -nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const -nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
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
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -1))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -1))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const 1))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const 1))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -1))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -1))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const 1))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const 1))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const -nan:0x400000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const -nan:0x200000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "mul" (f32.const nan:0x400000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "mul" (f32.const nan:0x200000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const -nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const -nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const -nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const -nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "mul"
    (f32.const nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "mul"
    (f32.const nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
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
(assert_return_canonical_nan (invoke "div" (f32.const -0) (f32.const -0)))
(assert_return_canonical_nan (invoke "div" (f32.const -0) (f32.const 0)))
(assert_return_canonical_nan (invoke "div" (f32.const 0) (f32.const -0)))
(assert_return_canonical_nan (invoke "div" (f32.const 0) (f32.const 0)))
(assert_return
  (invoke "div" (f32.const -0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 0)
)
(assert_return
  (invoke "div" (f32.const -0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 0)
)
(assert_return
  (invoke "div" (f32.const -0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 0)
)
(assert_return
  (invoke "div" (f32.const -0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 0)
)
(assert_return (invoke "div" (f32.const -0) (f32.const -0.5)) (f32.const 0))
(assert_return (invoke "div" (f32.const -0) (f32.const 0.5)) (f32.const -0))
(assert_return (invoke "div" (f32.const 0) (f32.const -0.5)) (f32.const -0))
(assert_return (invoke "div" (f32.const 0) (f32.const 0.5)) (f32.const 0))
(assert_return (invoke "div" (f32.const -0) (f32.const -1)) (f32.const 0))
(assert_return (invoke "div" (f32.const -0) (f32.const 1)) (f32.const -0))
(assert_return (invoke "div" (f32.const 0) (f32.const -1)) (f32.const -0))
(assert_return (invoke "div" (f32.const 0) (f32.const 1)) (f32.const 0))
(assert_return
  (invoke "div" (f32.const -0) (f32.const -6.283_185_482_025_146_5))
  (f32.const 0)
)
(assert_return
  (invoke "div" (f32.const -0) (f32.const 6.283_185_482_025_146_5))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 0) (f32.const -6.283_185_482_025_146_5))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 0) (f32.const 6.283_185_482_025_146_5))
  (f32.const 0)
)
(assert_return
  (invoke "div" (f32.const -0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 0)
)
(assert_return
  (invoke "div" (f32.const -0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 0)
)
(assert_return (invoke "div" (f32.const -0) (f32.const -inf)) (f32.const 0))
(assert_return (invoke "div" (f32.const -0) (f32.const inf)) (f32.const -0))
(assert_return (invoke "div" (f32.const 0) (f32.const -inf)) (f32.const -0))
(assert_return (invoke "div" (f32.const 0) (f32.const inf)) (f32.const 0))
(assert_return_canonical_nan
  (invoke "div" (f32.const -0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -0) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 0) (f32.const nan:0x200000))
)
(assert_return
  (invoke "div" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const inf)
)
(assert_return
  (invoke "div"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 1)
)
(assert_return
  (invoke "div"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -1)
)
(assert_return
  (invoke "div"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1)
)
(assert_return
  (invoke "div"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1)
)
(assert_return
  (invoke "div"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.192_092_895_507_812_5e-07)
)
(assert_return
  (invoke "div"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.192_092_895_507_812_5e-07)
)
(assert_return
  (invoke "div"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.192_092_895_507_812_5e-07)
)
(assert_return
  (invoke "div"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.192_092_895_507_812_5e-07)
)
(assert_return
  (invoke "div" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const 2.802_596_928_649_634_1e-45)
)
(assert_return
  (invoke "div" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const -2.802_596_928_649_634_1e-45)
)
(assert_return
  (invoke "div" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const -2.802_596_928_649_634_1e-45)
)
(assert_return
  (invoke "div" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const 2.802_596_928_649_634_1e-45)
)
(assert_return
  (invoke "div" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "div" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "div" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "div" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "div"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 0)
)
(assert_return
  (invoke "div"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -0)
)
(assert_return
  (invoke "div"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -0)
)
(assert_return
  (invoke "div"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 0)
)
(assert_return
  (invoke "div"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "div"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -0)
)
(assert_return
  (invoke "div"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -0)
)
(assert_return
  (invoke "div"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "div" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const 0)
)
(assert_return
  (invoke "div" (f32.const -1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const 0)
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
)
(assert_return
  (invoke "div" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const inf)
)
(assert_return
  (invoke "div"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 8_388_608)
)
(assert_return
  (invoke "div"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -8_388_608)
)
(assert_return
  (invoke "div"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -8_388_608)
)
(assert_return
  (invoke "div"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 8_388_608)
)
(assert_return
  (invoke "div"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 1)
)
(assert_return
  (invoke "div"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -1)
)
(assert_return
  (invoke "div"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1)
)
(assert_return
  (invoke "div"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1)
)
(assert_return
  (invoke "div" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const 2.350_988_701_644_575e-38)
)
(assert_return
  (invoke "div" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const -2.350_988_701_644_575e-38)
)
(assert_return
  (invoke "div" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const -2.350_988_701_644_575e-38)
)
(assert_return
  (invoke "div" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const 2.350_988_701_644_575e-38)
)
(assert_return
  (invoke "div" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "div" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "div" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "div" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "div"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 1.870_856_764_138_491_4e-39)
)
(assert_return
  (invoke "div"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -1.870_856_764_138_491_4e-39)
)
(assert_return
  (invoke "div"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -1.870_856_764_138_491_4e-39)
)
(assert_return
  (invoke "div"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 1.870_856_764_138_491_4e-39)
)
(assert_return
  (invoke "div"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "div"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -0)
)
(assert_return
  (invoke "div"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -0)
)
(assert_return
  (invoke "div"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 0)
)
(assert_return
  (invoke "div" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const 0)
)
(assert_return
  (invoke "div" (f32.const -1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const 0)
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
)
(assert_return (invoke "div" (f32.const -0.5) (f32.const -0)) (f32.const inf))
(assert_return (invoke "div" (f32.const -0.5) (f32.const 0)) (f32.const -inf))
(assert_return (invoke "div" (f32.const 0.5) (f32.const -0)) (f32.const -inf))
(assert_return (invoke "div" (f32.const 0.5) (f32.const 0)) (f32.const inf))
(assert_return
  (invoke "div" (f32.const -0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 4.253_529_586_511_730_8e+37)
)
(assert_return
  (invoke "div" (f32.const -0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -4.253_529_586_511_730_8e+37)
)
(assert_return
  (invoke "div" (f32.const 0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -4.253_529_586_511_730_8e+37)
)
(assert_return
  (invoke "div" (f32.const 0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 4.253_529_586_511_730_8e+37)
)
(assert_return (invoke "div" (f32.const -0.5) (f32.const -0.5)) (f32.const 1))
(assert_return (invoke "div" (f32.const -0.5) (f32.const 0.5)) (f32.const -1))
(assert_return (invoke "div" (f32.const 0.5) (f32.const -0.5)) (f32.const -1))
(assert_return (invoke "div" (f32.const 0.5) (f32.const 0.5)) (f32.const 1))
(assert_return (invoke "div" (f32.const -0.5) (f32.const -1)) (f32.const 0.5))
(assert_return (invoke "div" (f32.const -0.5) (f32.const 1)) (f32.const -0.5))
(assert_return (invoke "div" (f32.const 0.5) (f32.const -1)) (f32.const -0.5))
(assert_return (invoke "div" (f32.const 0.5) (f32.const 1)) (f32.const 0.5))
(assert_return
  (invoke "div" (f32.const -0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const 0.079_577_468_335_628_51)
)
(assert_return
  (invoke "div" (f32.const -0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const -0.079_577_468_335_628_51)
)
(assert_return
  (invoke "div" (f32.const 0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const -0.079_577_468_335_628_51)
)
(assert_return
  (invoke "div" (f32.const 0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const 0.079_577_468_335_628_51)
)
(assert_return
  (invoke "div" (f32.const -0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 1.469_367_938_527_859_4e-39)
)
(assert_return
  (invoke "div" (f32.const -0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -1.469_367_938_527_859_4e-39)
)
(assert_return
  (invoke "div" (f32.const 0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -1.469_367_938_527_859_4e-39)
)
(assert_return
  (invoke "div" (f32.const 0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 1.469_367_938_527_859_4e-39)
)
(assert_return (invoke "div" (f32.const -0.5) (f32.const -inf)) (f32.const 0))
(assert_return (invoke "div" (f32.const -0.5) (f32.const inf)) (f32.const -0))
(assert_return (invoke "div" (f32.const 0.5) (f32.const -inf)) (f32.const -0))
(assert_return (invoke "div" (f32.const 0.5) (f32.const inf)) (f32.const 0))
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
(assert_return (invoke "div" (f32.const -1) (f32.const -0)) (f32.const inf))
(assert_return (invoke "div" (f32.const -1) (f32.const 0)) (f32.const -inf))
(assert_return (invoke "div" (f32.const 1) (f32.const -0)) (f32.const -inf))
(assert_return (invoke "div" (f32.const 1) (f32.const 0)) (f32.const inf))
(assert_return
  (invoke "div" (f32.const -1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 8.507_059_173_023_461_6e+37)
)
(assert_return
  (invoke "div" (f32.const -1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -8.507_059_173_023_461_6e+37)
)
(assert_return
  (invoke "div" (f32.const 1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -8.507_059_173_023_461_6e+37)
)
(assert_return
  (invoke "div" (f32.const 1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 8.507_059_173_023_461_6e+37)
)
(assert_return (invoke "div" (f32.const -1) (f32.const -0.5)) (f32.const 2))
(assert_return (invoke "div" (f32.const -1) (f32.const 0.5)) (f32.const -2))
(assert_return (invoke "div" (f32.const 1) (f32.const -0.5)) (f32.const -2))
(assert_return (invoke "div" (f32.const 1) (f32.const 0.5)) (f32.const 2))
(assert_return (invoke "div" (f32.const -1) (f32.const -1)) (f32.const 1))
(assert_return (invoke "div" (f32.const -1) (f32.const 1)) (f32.const -1))
(assert_return (invoke "div" (f32.const 1) (f32.const -1)) (f32.const -1))
(assert_return (invoke "div" (f32.const 1) (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "div" (f32.const -1) (f32.const -6.283_185_482_025_146_5))
  (f32.const 0.159_154_936_671_257_02)
)
(assert_return
  (invoke "div" (f32.const -1) (f32.const 6.283_185_482_025_146_5))
  (f32.const -0.159_154_936_671_257_02)
)
(assert_return
  (invoke "div" (f32.const 1) (f32.const -6.283_185_482_025_146_5))
  (f32.const -0.159_154_936_671_257_02)
)
(assert_return
  (invoke "div" (f32.const 1) (f32.const 6.283_185_482_025_146_5))
  (f32.const 0.159_154_936_671_257_02)
)
(assert_return
  (invoke "div" (f32.const -1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 2.938_735_877_055_718_8e-39)
)
(assert_return
  (invoke "div" (f32.const -1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -2.938_735_877_055_718_8e-39)
)
(assert_return
  (invoke "div" (f32.const 1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -2.938_735_877_055_718_8e-39)
)
(assert_return
  (invoke "div" (f32.const 1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 2.938_735_877_055_718_8e-39)
)
(assert_return (invoke "div" (f32.const -1) (f32.const -inf)) (f32.const 0))
(assert_return (invoke "div" (f32.const -1) (f32.const inf)) (f32.const -0))
(assert_return (invoke "div" (f32.const 1) (f32.const -inf)) (f32.const -0))
(assert_return (invoke "div" (f32.const 1) (f32.const inf)) (f32.const 0))
(assert_return_canonical_nan
  (invoke "div" (f32.const -1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -1) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 1) (f32.const nan:0x200000))
)
(assert_return
  (invoke "div" (f32.const -6.283_185_482_025_146_5) (f32.const -0))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -6.283_185_482_025_146_5) (f32.const 0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 6.283_185_482_025_146_5) (f32.const -0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 6.283_185_482_025_146_5) (f32.const 0))
  (f32.const inf)
)
(assert_return
  (invoke "div"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const inf)
)
(assert_return
  (invoke "div"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "div"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "div"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const inf)
)
(assert_return
  (invoke "div"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const inf)
)
(assert_return
  (invoke "div"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "div"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "div"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const 12.566_370_964_050_293)
)
(assert_return
  (invoke "div" (f32.const -6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const -12.566_370_964_050_293)
)
(assert_return
  (invoke "div" (f32.const 6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const -12.566_370_964_050_293)
)
(assert_return
  (invoke "div" (f32.const 6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const 12.566_370_964_050_293)
)
(assert_return
  (invoke "div" (f32.const -6.283_185_482_025_146_5) (f32.const -1))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "div" (f32.const -6.283_185_482_025_146_5) (f32.const 1))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "div" (f32.const 6.283_185_482_025_146_5) (f32.const -1))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "div" (f32.const 6.283_185_482_025_146_5) (f32.const 1))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "div"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 1)
)
(assert_return
  (invoke "div"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -1)
)
(assert_return
  (invoke "div"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -1)
)
(assert_return
  (invoke "div"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 1)
)
(assert_return
  (invoke "div"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 1.846_462_399_952_139_2e-38)
)
(assert_return
  (invoke "div"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -1.846_462_399_952_139_2e-38)
)
(assert_return
  (invoke "div"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -1.846_462_399_952_139_2e-38)
)
(assert_return
  (invoke "div"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 1.846_462_399_952_139_2e-38)
)
(assert_return
  (invoke "div" (f32.const -6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const 0)
)
(assert_return
  (invoke "div" (f32.const -6.283_185_482_025_146_5) (f32.const inf))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 6.283_185_482_025_146_5) (f32.const inf))
  (f32.const 0)
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x200000))
)
(assert_return
  (invoke "div" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const inf)
)
(assert_return
  (invoke "div"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const inf)
)
(assert_return
  (invoke "div"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "div"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "div"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const inf)
)
(assert_return
  (invoke "div"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const inf)
)
(assert_return
  (invoke "div"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "div"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -inf)
)
(assert_return
  (invoke "div"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "div" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "div" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "div" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "div"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 5.415_761_348_704_500_5e+37)
)
(assert_return
  (invoke "div"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -5.415_761_348_704_500_5e+37)
)
(assert_return
  (invoke "div"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -5.415_761_348_704_500_5e+37)
)
(assert_return
  (invoke "div"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 5.415_761_348_704_500_5e+37)
)
(assert_return
  (invoke "div"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 1)
)
(assert_return
  (invoke "div"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -1)
)
(assert_return
  (invoke "div"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -1)
)
(assert_return
  (invoke "div"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 1)
)
(assert_return
  (invoke "div" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const 0)
)
(assert_return
  (invoke "div" (f32.const -3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const -0)
)
(assert_return
  (invoke "div" (f32.const 3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const 0)
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
)
(assert_return (invoke "div" (f32.const -inf) (f32.const -0)) (f32.const inf))
(assert_return (invoke "div" (f32.const -inf) (f32.const 0)) (f32.const -inf))
(assert_return (invoke "div" (f32.const inf) (f32.const -0)) (f32.const -inf))
(assert_return (invoke "div" (f32.const inf) (f32.const 0)) (f32.const inf))
(assert_return
  (invoke "div" (f32.const -inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const inf)
)
(assert_return (invoke "div" (f32.const -inf) (f32.const -0.5)) (f32.const inf))
(assert_return (invoke "div" (f32.const -inf) (f32.const 0.5)) (f32.const -inf))
(assert_return (invoke "div" (f32.const inf) (f32.const -0.5)) (f32.const -inf))
(assert_return (invoke "div" (f32.const inf) (f32.const 0.5)) (f32.const inf))
(assert_return (invoke "div" (f32.const -inf) (f32.const -1)) (f32.const inf))
(assert_return (invoke "div" (f32.const -inf) (f32.const 1)) (f32.const -inf))
(assert_return (invoke "div" (f32.const inf) (f32.const -1)) (f32.const -inf))
(assert_return (invoke "div" (f32.const inf) (f32.const 1)) (f32.const inf))
(assert_return
  (invoke "div" (f32.const -inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const inf)
)
(assert_return
  (invoke "div" (f32.const -inf) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "div" (f32.const inf) (f32.const 3.402_823_466_385_288_6e+38))
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
  (invoke "div" (f32.const -nan:0x400000) (f32.const -0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -0))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const 0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const 0))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -0))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const 0))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const 0))
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const -nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const -nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const -nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const -nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const -nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const -nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const -nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const -nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
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
  (invoke "div" (f32.const -nan:0x400000) (f32.const -1))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -1))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const 1))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const 1))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -1))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -1))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const 1))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const 1))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const -nan:0x400000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const -nan:0x200000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "div" (f32.const nan:0x400000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "div" (f32.const nan:0x200000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const -nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const -nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const -nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const -nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "div"
    (f32.const nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "div"
    (f32.const nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
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
(assert_return (invoke "min" (f32.const -0) (f32.const -0)) (f32.const -0))
(assert_return (invoke "min" (f32.const -0) (f32.const 0)) (f32.const -0))
(assert_return (invoke "min" (f32.const 0) (f32.const -0)) (f32.const -0))
(assert_return (invoke "min" (f32.const 0) (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "min" (f32.const -0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const -0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -0)
)
(assert_return
  (invoke "min" (f32.const 0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const 0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 0)
)
(assert_return
  (invoke "min" (f32.const -0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const -0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -0)
)
(assert_return
  (invoke "min" (f32.const 0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const 0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 0)
)
(assert_return (invoke "min" (f32.const -0) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const -0) (f32.const 0.5)) (f32.const -0))
(assert_return (invoke "min" (f32.const 0) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const 0) (f32.const 0.5)) (f32.const 0))
(assert_return (invoke "min" (f32.const -0) (f32.const -1)) (f32.const -1))
(assert_return (invoke "min" (f32.const -0) (f32.const 1)) (f32.const -0))
(assert_return (invoke "min" (f32.const 0) (f32.const -1)) (f32.const -1))
(assert_return (invoke "min" (f32.const 0) (f32.const 1)) (f32.const 0))
(assert_return
  (invoke "min" (f32.const -0) (f32.const -6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const -0) (f32.const 6.283_185_482_025_146_5))
  (f32.const -0)
)
(assert_return
  (invoke "min" (f32.const 0) (f32.const -6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const 0) (f32.const 6.283_185_482_025_146_5))
  (f32.const 0)
)
(assert_return
  (invoke "min" (f32.const -0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const -0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -0)
)
(assert_return
  (invoke "min" (f32.const 0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const 0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 0)
)
(assert_return (invoke "min" (f32.const -0) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "min" (f32.const -0) (f32.const inf)) (f32.const -0))
(assert_return (invoke "min" (f32.const 0) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "min" (f32.const 0) (f32.const inf)) (f32.const 0))
(assert_return_canonical_nan
  (invoke "min" (f32.const -0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -0) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 0) (f32.const nan:0x200000))
)
(assert_return
  (invoke "min" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "min" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "min"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const -1)
)
(assert_return
  (invoke "min" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const -1)
)
(assert_return
  (invoke "min" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const 1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
)
(assert_return
  (invoke "min" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "min" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "min"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const -1)
)
(assert_return
  (invoke "min" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const -1)
)
(assert_return
  (invoke "min" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const 1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
)
(assert_return (invoke "min" (f32.const -0.5) (f32.const -0)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const -0.5) (f32.const 0)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const 0.5) (f32.const -0)) (f32.const -0))
(assert_return (invoke "min" (f32.const 0.5) (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const 0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const 0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const 0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const 0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return (invoke "min" (f32.const -0.5) (f32.const 0.5)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const 0.5) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const 0.5) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "min" (f32.const -0.5) (f32.const -1)) (f32.const -1))
(assert_return (invoke "min" (f32.const -0.5) (f32.const 1)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const 0.5) (f32.const -1)) (f32.const -1))
(assert_return (invoke "min" (f32.const 0.5) (f32.const 1)) (f32.const 0.5))
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const 0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const 0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const 0.5)
)
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const -0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const 0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const 0.5) (f32.const 3.402_823_466_385_288_6e+38))
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
(assert_return (invoke "min" (f32.const -1) (f32.const -0)) (f32.const -1))
(assert_return (invoke "min" (f32.const -1) (f32.const 0)) (f32.const -1))
(assert_return (invoke "min" (f32.const 1) (f32.const -0)) (f32.const -0))
(assert_return (invoke "min" (f32.const 1) (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "min" (f32.const -1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1)
)
(assert_return
  (invoke "min" (f32.const -1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -1)
)
(assert_return
  (invoke "min" (f32.const 1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const 1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const -1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1)
)
(assert_return
  (invoke "min" (f32.const -1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -1)
)
(assert_return
  (invoke "min" (f32.const 1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const 1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return (invoke "min" (f32.const -1) (f32.const -0.5)) (f32.const -1))
(assert_return (invoke "min" (f32.const -1) (f32.const 0.5)) (f32.const -1))
(assert_return (invoke "min" (f32.const 1) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const 1) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "min" (f32.const -1) (f32.const -1)) (f32.const -1))
(assert_return (invoke "min" (f32.const -1) (f32.const 1)) (f32.const -1))
(assert_return (invoke "min" (f32.const 1) (f32.const -1)) (f32.const -1))
(assert_return (invoke "min" (f32.const 1) (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "min" (f32.const -1) (f32.const -6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const -1) (f32.const 6.283_185_482_025_146_5))
  (f32.const -1)
)
(assert_return
  (invoke "min" (f32.const 1) (f32.const -6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const 1) (f32.const 6.283_185_482_025_146_5))
  (f32.const 1)
)
(assert_return
  (invoke "min" (f32.const -1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const -1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -1)
)
(assert_return
  (invoke "min" (f32.const 1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const 1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 1)
)
(assert_return (invoke "min" (f32.const -1) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "min" (f32.const -1) (f32.const inf)) (f32.const -1))
(assert_return (invoke "min" (f32.const 1) (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "min" (f32.const 1) (f32.const inf)) (f32.const 1))
(assert_return_canonical_nan
  (invoke "min" (f32.const -1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -1) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 1) (f32.const nan:0x200000))
)
(assert_return
  (invoke "min" (f32.const -6.283_185_482_025_146_5) (f32.const -0))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const -6.283_185_482_025_146_5) (f32.const 0))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const 6.283_185_482_025_146_5) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "min" (f32.const 6.283_185_482_025_146_5) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "min"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const -6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const -6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const 6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const 6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "min" (f32.const -6.283_185_482_025_146_5) (f32.const -1))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const -6.283_185_482_025_146_5) (f32.const 1))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const 6.283_185_482_025_146_5) (f32.const -1))
  (f32.const -1)
)
(assert_return
  (invoke "min" (f32.const 6.283_185_482_025_146_5) (f32.const 1))
  (f32.const 1)
)
(assert_return
  (invoke "min"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const -6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -6.283_185_482_025_146_5) (f32.const inf))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const 6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const 6.283_185_482_025_146_5) (f32.const inf))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x200000))
)
(assert_return
  (invoke "min" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "min" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "min"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "min" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "min" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const -1)
)
(assert_return
  (invoke "min" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const 1)
)
(assert_return
  (invoke "min"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const 3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
)
(assert_return (invoke "min" (f32.const -inf) (f32.const -0)) (f32.const -inf))
(assert_return (invoke "min" (f32.const -inf) (f32.const 0)) (f32.const -inf))
(assert_return (invoke "min" (f32.const inf) (f32.const -0)) (f32.const -0))
(assert_return (invoke "min" (f32.const inf) (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "min" (f32.const -inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const -0.5))
  (f32.const -inf)
)
(assert_return (invoke "min" (f32.const -inf) (f32.const 0.5)) (f32.const -inf))
(assert_return (invoke "min" (f32.const inf) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "min" (f32.const inf) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "min" (f32.const -inf) (f32.const -1)) (f32.const -inf))
(assert_return (invoke "min" (f32.const -inf) (f32.const 1)) (f32.const -inf))
(assert_return (invoke "min" (f32.const inf) (f32.const -1)) (f32.const -1))
(assert_return (invoke "min" (f32.const inf) (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "min" (f32.const -inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const -inf) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const -inf)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "min" (f32.const inf) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
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
  (invoke "min" (f32.const -nan:0x400000) (f32.const -0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -0))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const 0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const 0))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -0))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const 0))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const 0))
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const -nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const -nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const -nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const -nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const -nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const -nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const -nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const -nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
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
  (invoke "min" (f32.const -nan:0x400000) (f32.const -1))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -1))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const 1))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const 1))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -1))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -1))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const 1))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const 1))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const -nan:0x400000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const -nan:0x200000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "min" (f32.const nan:0x400000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "min" (f32.const nan:0x200000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const -nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const -nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const -nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const -nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "min"
    (f32.const nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "min"
    (f32.const nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
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
(assert_return (invoke "max" (f32.const -0) (f32.const -0)) (f32.const -0))
(assert_return (invoke "max" (f32.const -0) (f32.const 0)) (f32.const 0))
(assert_return (invoke "max" (f32.const 0) (f32.const -0)) (f32.const 0))
(assert_return (invoke "max" (f32.const 0) (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "max" (f32.const -0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -0)
)
(assert_return
  (invoke "max" (f32.const -0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const 0) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 0)
)
(assert_return
  (invoke "max" (f32.const 0) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const -0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -0)
)
(assert_return
  (invoke "max" (f32.const -0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const 0) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 0)
)
(assert_return
  (invoke "max" (f32.const 0) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return (invoke "max" (f32.const -0) (f32.const -0.5)) (f32.const -0))
(assert_return (invoke "max" (f32.const -0) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const 0) (f32.const -0.5)) (f32.const 0))
(assert_return (invoke "max" (f32.const 0) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const -0) (f32.const -1)) (f32.const -0))
(assert_return (invoke "max" (f32.const -0) (f32.const 1)) (f32.const 1))
(assert_return (invoke "max" (f32.const 0) (f32.const -1)) (f32.const 0))
(assert_return (invoke "max" (f32.const 0) (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "max" (f32.const -0) (f32.const -6.283_185_482_025_146_5))
  (f32.const -0)
)
(assert_return
  (invoke "max" (f32.const -0) (f32.const 6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const 0) (f32.const -6.283_185_482_025_146_5))
  (f32.const 0)
)
(assert_return
  (invoke "max" (f32.const 0) (f32.const 6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const -0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -0)
)
(assert_return
  (invoke "max" (f32.const -0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const 0) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 0)
)
(assert_return
  (invoke "max" (f32.const 0) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return (invoke "max" (f32.const -0) (f32.const -inf)) (f32.const -0))
(assert_return (invoke "max" (f32.const -0) (f32.const inf)) (f32.const inf))
(assert_return (invoke "max" (f32.const 0) (f32.const -inf)) (f32.const 0))
(assert_return (invoke "max" (f32.const 0) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "max" (f32.const -0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -0) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 0) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 0) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 0) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 0) (f32.const nan:0x200000))
)
(assert_return
  (invoke "max" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "max" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "max" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -0.5))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const -1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const 1)
)
(assert_return
  (invoke "max" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -1))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const 1.401_298_464_324_817_1e-45) (f32.const 1))
  (f32.const 1)
)
(assert_return
  (invoke "max"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const -1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const -1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const 1.401_298_464_324_817_1e-45) (f32.const -inf))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const 1.401_298_464_324_817_1e-45) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const -1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const 1.401_298_464_324_817_1e-45)
    (f32.const nan:0x200000)
  )
)
(assert_return
  (invoke "max" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "max" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "max" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -0.5))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const -1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const 1)
)
(assert_return
  (invoke "max" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -1))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const 1.175_494_350_822_287_5e-38) (f32.const 1))
  (f32.const 1)
)
(assert_return
  (invoke "max"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const -1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const -1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const 1.175_494_350_822_287_5e-38) (f32.const -inf))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const 1.175_494_350_822_287_5e-38) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const -1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const 1.175_494_350_822_287_5e-38)
    (f32.const nan:0x200000)
  )
)
(assert_return (invoke "max" (f32.const -0.5) (f32.const -0)) (f32.const -0))
(assert_return (invoke "max" (f32.const -0.5) (f32.const 0)) (f32.const 0))
(assert_return (invoke "max" (f32.const 0.5) (f32.const -0)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const 0.5) (f32.const 0)) (f32.const 0.5))
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const 0.5) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const 0.5) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const 0.5) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const 0.5) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return (invoke "max" (f32.const -0.5) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const 0.5) (f32.const -0.5)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const 0.5) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const -0.5) (f32.const -1)) (f32.const -0.5))
(assert_return (invoke "max" (f32.const -0.5) (f32.const 1)) (f32.const 1))
(assert_return (invoke "max" (f32.const 0.5) (f32.const -1)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const 0.5) (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const -0.5)
)
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const 0.5) (f32.const -6.283_185_482_025_146_5))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const 0.5) (f32.const 6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -0.5)
)
(assert_return
  (invoke "max" (f32.const -0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const 0.5) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const 0.5) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
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
(assert_return (invoke "max" (f32.const -1) (f32.const -0)) (f32.const -0))
(assert_return (invoke "max" (f32.const -1) (f32.const 0)) (f32.const 0))
(assert_return (invoke "max" (f32.const 1) (f32.const -0)) (f32.const 1))
(assert_return (invoke "max" (f32.const 1) (f32.const 0)) (f32.const 1))
(assert_return
  (invoke "max" (f32.const -1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const -1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const 1) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const 1)
)
(assert_return
  (invoke "max" (f32.const 1) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1)
)
(assert_return
  (invoke "max" (f32.const -1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const -1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const 1) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const 1)
)
(assert_return
  (invoke "max" (f32.const 1) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1)
)
(assert_return (invoke "max" (f32.const -1) (f32.const -0.5)) (f32.const -0.5))
(assert_return (invoke "max" (f32.const -1) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const 1) (f32.const -0.5)) (f32.const 1))
(assert_return (invoke "max" (f32.const 1) (f32.const 0.5)) (f32.const 1))
(assert_return (invoke "max" (f32.const -1) (f32.const -1)) (f32.const -1))
(assert_return (invoke "max" (f32.const -1) (f32.const 1)) (f32.const 1))
(assert_return (invoke "max" (f32.const 1) (f32.const -1)) (f32.const 1))
(assert_return (invoke "max" (f32.const 1) (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "max" (f32.const -1) (f32.const -6.283_185_482_025_146_5))
  (f32.const -1)
)
(assert_return
  (invoke "max" (f32.const -1) (f32.const 6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const 1) (f32.const -6.283_185_482_025_146_5))
  (f32.const 1)
)
(assert_return
  (invoke "max" (f32.const 1) (f32.const 6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const -1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -1)
)
(assert_return
  (invoke "max" (f32.const -1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const 1) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const 1)
)
(assert_return
  (invoke "max" (f32.const 1) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return (invoke "max" (f32.const -1) (f32.const -inf)) (f32.const -1))
(assert_return (invoke "max" (f32.const -1) (f32.const inf)) (f32.const inf))
(assert_return (invoke "max" (f32.const 1) (f32.const -inf)) (f32.const 1))
(assert_return (invoke "max" (f32.const 1) (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan
  (invoke "max" (f32.const -1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -1) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 1) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 1) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 1) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 1) (f32.const nan:0x200000))
)
(assert_return
  (invoke "max" (f32.const -6.283_185_482_025_146_5) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "max" (f32.const -6.283_185_482_025_146_5) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "max" (f32.const 6.283_185_482_025_146_5) (f32.const -0))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const 6.283_185_482_025_146_5) (f32.const 0))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const -6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "max" (f32.const -6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const 6.283_185_482_025_146_5) (f32.const -0.5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const 6.283_185_482_025_146_5) (f32.const 0.5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const -6.283_185_482_025_146_5) (f32.const -1))
  (f32.const -1)
)
(assert_return
  (invoke "max" (f32.const -6.283_185_482_025_146_5) (f32.const 1))
  (f32.const 1)
)
(assert_return
  (invoke "max" (f32.const 6.283_185_482_025_146_5) (f32.const -1))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const 6.283_185_482_025_146_5) (f32.const 1))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const -6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const 6.283_185_482_025_146_5)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const -6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const -6.283_185_482_025_146_5) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const 6.283_185_482_025_146_5) (f32.const -inf))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const 6.283_185_482_025_146_5) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -6.283_185_482_025_146_5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -6.283_185_482_025_146_5) (f32.const nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 6.283_185_482_025_146_5) (f32.const -nan:0x200000))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x400000))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const 6.283_185_482_025_146_5) (f32.const nan:0x200000))
)
(assert_return
  (invoke "max" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const -0)
)
(assert_return
  (invoke "max" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const 0)
)
(assert_return
  (invoke "max" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return
  (invoke "max" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const 0.5)
)
(assert_return
  (invoke "max" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -0.5))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 0.5))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const -1)
)
(assert_return
  (invoke "max" (f32.const -3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const 1)
)
(assert_return
  (invoke "max" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -1))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const 3.402_823_466_385_288_6e+38) (f32.const 1))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -6.283_185_482_025_146_5)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 6.283_185_482_025_146_5)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const -3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const -3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const 3.402_823_466_385_288_6e+38) (f32.const -inf))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const 3.402_823_466_385_288_6e+38) (f32.const inf))
  (f32.const inf)
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const -3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const -nan:0x200000)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const nan:0x400000)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const 3.402_823_466_385_288_6e+38)
    (f32.const nan:0x200000)
  )
)
(assert_return (invoke "max" (f32.const -inf) (f32.const -0)) (f32.const -0))
(assert_return (invoke "max" (f32.const -inf) (f32.const 0)) (f32.const 0))
(assert_return (invoke "max" (f32.const inf) (f32.const -0)) (f32.const inf))
(assert_return (invoke "max" (f32.const inf) (f32.const 0)) (f32.const inf))
(assert_return
  (invoke "max" (f32.const -inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1.401_298_464_324_817_1e-45)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.175_494_350_822_287_5e-38)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const -0.5))
  (f32.const -0.5)
)
(assert_return (invoke "max" (f32.const -inf) (f32.const 0.5)) (f32.const 0.5))
(assert_return (invoke "max" (f32.const inf) (f32.const -0.5)) (f32.const inf))
(assert_return (invoke "max" (f32.const inf) (f32.const 0.5)) (f32.const inf))
(assert_return (invoke "max" (f32.const -inf) (f32.const -1)) (f32.const -1))
(assert_return (invoke "max" (f32.const -inf) (f32.const 1)) (f32.const 1))
(assert_return (invoke "max" (f32.const inf) (f32.const -1)) (f32.const inf))
(assert_return (invoke "max" (f32.const inf) (f32.const 1)) (f32.const inf))
(assert_return
  (invoke "max" (f32.const -inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const -6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const 6.283_185_482_025_146_5)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const -6.283_185_482_025_146_5))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const 6.283_185_482_025_146_5))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const -inf) (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const inf)
)
(assert_return
  (invoke "max" (f32.const inf) (f32.const 3.402_823_466_385_288_6e+38))
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
  (invoke "max" (f32.const -nan:0x400000) (f32.const -0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -0))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const 0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const 0))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -0))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const 0))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const 0))
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const -nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const -nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const -nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const -nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const nan:0x400000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const nan:0x200000)
    (f32.const -1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const nan:0x400000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const nan:0x200000)
    (f32.const 1.401_298_464_324_817_1e-45)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const -nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const -nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const -nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const -nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const nan:0x400000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const nan:0x200000)
    (f32.const -1.175_494_350_822_287_5e-38)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const nan:0x400000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const nan:0x200000)
    (f32.const 1.175_494_350_822_287_5e-38)
  )
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
  (invoke "max" (f32.const -nan:0x400000) (f32.const -1))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -1))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const 1))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const 1))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -1))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -1))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const 1))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const 1))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const -nan:0x400000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const -nan:0x200000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const -6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "max" (f32.const nan:0x400000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_arithmetic_nan
  (invoke "max" (f32.const nan:0x200000) (f32.const 6.283_185_482_025_146_5))
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const -nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const -nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const -nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const -nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const nan:0x400000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const nan:0x200000)
    (f32.const -3.402_823_466_385_288_6e+38)
  )
)
(assert_return_canonical_nan
  (invoke "max"
    (f32.const nan:0x400000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
)
(assert_return_arithmetic_nan
  (invoke "max"
    (f32.const nan:0x200000)
    (f32.const 3.402_823_466_385_288_6e+38)
  )
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
(assert_return (invoke "sqrt" (f32.const -0)) (f32.const -0))
(assert_return (invoke "sqrt" (f32.const 0)) (f32.const 0))
(assert_return_canonical_nan
  (invoke "sqrt" (f32.const -1.401_298_464_324_817_1e-45))
)
(assert_return
  (invoke "sqrt" (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 3.743_392_066_509_216_2e-23)
)
(assert_return_canonical_nan
  (invoke "sqrt" (f32.const -1.175_494_350_822_287_5e-38))
)
(assert_return
  (invoke "sqrt" (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1.084_202_172_485_504_4e-19)
)
(assert_return_canonical_nan (invoke "sqrt" (f32.const -0.5)))
(assert_return
  (invoke "sqrt" (f32.const 0.5))
  (f32.const 0.707_106_769_084_930_42)
)
(assert_return_canonical_nan (invoke "sqrt" (f32.const -1)))
(assert_return (invoke "sqrt" (f32.const 1)) (f32.const 1))
(assert_return_canonical_nan
  (invoke "sqrt" (f32.const -6.283_185_482_025_146_5))
)
(assert_return
  (invoke "sqrt" (f32.const 6.283_185_482_025_146_5))
  (f32.const 2.506_628_274_917_602_5)
)
(assert_return_canonical_nan
  (invoke "sqrt" (f32.const -3.402_823_466_385_288_6e+38))
)
(assert_return
  (invoke "sqrt" (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 1.844_674_297_419_792_4e+19)
)
(assert_return_canonical_nan (invoke "sqrt" (f32.const -inf)))
(assert_return (invoke "sqrt" (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan (invoke "sqrt" (f32.const -nan:0x400000)))
(assert_return_arithmetic_nan (invoke "sqrt" (f32.const -nan:0x200000)))
(assert_return_canonical_nan (invoke "sqrt" (f32.const nan:0x400000)))
(assert_return_arithmetic_nan (invoke "sqrt" (f32.const nan:0x200000)))
(assert_return (invoke "floor" (f32.const -0)) (f32.const -0))
(assert_return (invoke "floor" (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "floor" (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -1)
)
(assert_return
  (invoke "floor" (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 0)
)
(assert_return
  (invoke "floor" (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -1)
)
(assert_return
  (invoke "floor" (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 0)
)
(assert_return (invoke "floor" (f32.const -0.5)) (f32.const -1))
(assert_return (invoke "floor" (f32.const 0.5)) (f32.const 0))
(assert_return (invoke "floor" (f32.const -1)) (f32.const -1))
(assert_return (invoke "floor" (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "floor" (f32.const -6.283_185_482_025_146_5))
  (f32.const -7)
)
(assert_return
  (invoke "floor" (f32.const 6.283_185_482_025_146_5))
  (f32.const 6)
)
(assert_return
  (invoke "floor" (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "floor" (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return (invoke "floor" (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "floor" (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan (invoke "floor" (f32.const -nan:0x400000)))
(assert_return_arithmetic_nan (invoke "floor" (f32.const -nan:0x200000)))
(assert_return_canonical_nan (invoke "floor" (f32.const nan:0x400000)))
(assert_return_arithmetic_nan (invoke "floor" (f32.const nan:0x200000)))
(assert_return (invoke "ceil" (f32.const -0)) (f32.const -0))
(assert_return (invoke "ceil" (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "ceil" (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -0)
)
(assert_return
  (invoke "ceil" (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 1)
)
(assert_return
  (invoke "ceil" (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -0)
)
(assert_return
  (invoke "ceil" (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 1)
)
(assert_return (invoke "ceil" (f32.const -0.5)) (f32.const -0))
(assert_return (invoke "ceil" (f32.const 0.5)) (f32.const 1))
(assert_return (invoke "ceil" (f32.const -1)) (f32.const -1))
(assert_return (invoke "ceil" (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "ceil" (f32.const -6.283_185_482_025_146_5))
  (f32.const -6)
)
(assert_return
  (invoke "ceil" (f32.const 6.283_185_482_025_146_5))
  (f32.const 7)
)
(assert_return
  (invoke "ceil" (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "ceil" (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return (invoke "ceil" (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "ceil" (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan (invoke "ceil" (f32.const -nan:0x400000)))
(assert_return_arithmetic_nan (invoke "ceil" (f32.const -nan:0x200000)))
(assert_return_canonical_nan (invoke "ceil" (f32.const nan:0x400000)))
(assert_return_arithmetic_nan (invoke "ceil" (f32.const nan:0x200000)))
(assert_return (invoke "trunc" (f32.const -0)) (f32.const -0))
(assert_return (invoke "trunc" (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "trunc" (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -0)
)
(assert_return
  (invoke "trunc" (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 0)
)
(assert_return
  (invoke "trunc" (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -0)
)
(assert_return
  (invoke "trunc" (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 0)
)
(assert_return (invoke "trunc" (f32.const -0.5)) (f32.const -0))
(assert_return (invoke "trunc" (f32.const 0.5)) (f32.const 0))
(assert_return (invoke "trunc" (f32.const -1)) (f32.const -1))
(assert_return (invoke "trunc" (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "trunc" (f32.const -6.283_185_482_025_146_5))
  (f32.const -6)
)
(assert_return
  (invoke "trunc" (f32.const 6.283_185_482_025_146_5))
  (f32.const 6)
)
(assert_return
  (invoke "trunc" (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "trunc" (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return (invoke "trunc" (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "trunc" (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan (invoke "trunc" (f32.const -nan:0x400000)))
(assert_return_arithmetic_nan (invoke "trunc" (f32.const -nan:0x200000)))
(assert_return_canonical_nan (invoke "trunc" (f32.const nan:0x400000)))
(assert_return_arithmetic_nan (invoke "trunc" (f32.const nan:0x200000)))
(assert_return (invoke "nearest" (f32.const -0)) (f32.const -0))
(assert_return (invoke "nearest" (f32.const 0)) (f32.const 0))
(assert_return
  (invoke "nearest" (f32.const -1.401_298_464_324_817_1e-45))
  (f32.const -0)
)
(assert_return
  (invoke "nearest" (f32.const 1.401_298_464_324_817_1e-45))
  (f32.const 0)
)
(assert_return
  (invoke "nearest" (f32.const -1.175_494_350_822_287_5e-38))
  (f32.const -0)
)
(assert_return
  (invoke "nearest" (f32.const 1.175_494_350_822_287_5e-38))
  (f32.const 0)
)
(assert_return (invoke "nearest" (f32.const -0.5)) (f32.const -0))
(assert_return (invoke "nearest" (f32.const 0.5)) (f32.const 0))
(assert_return (invoke "nearest" (f32.const -1)) (f32.const -1))
(assert_return (invoke "nearest" (f32.const 1)) (f32.const 1))
(assert_return
  (invoke "nearest" (f32.const -6.283_185_482_025_146_5))
  (f32.const -6)
)
(assert_return
  (invoke "nearest" (f32.const 6.283_185_482_025_146_5))
  (f32.const 6)
)
(assert_return
  (invoke "nearest" (f32.const -3.402_823_466_385_288_6e+38))
  (f32.const -3.402_823_466_385_288_6e+38)
)
(assert_return
  (invoke "nearest" (f32.const 3.402_823_466_385_288_6e+38))
  (f32.const 3.402_823_466_385_288_6e+38)
)
(assert_return (invoke "nearest" (f32.const -inf)) (f32.const -inf))
(assert_return (invoke "nearest" (f32.const inf)) (f32.const inf))
(assert_return_canonical_nan (invoke "nearest" (f32.const -nan:0x400000)))
(assert_return_arithmetic_nan (invoke "nearest" (f32.const -nan:0x200000)))
(assert_return_canonical_nan (invoke "nearest" (f32.const nan:0x400000)))
(assert_return_arithmetic_nan (invoke "nearest" (f32.const nan:0x200000)))
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7d\03\82\80\80\80\00\01\00\0a\94\80\80\80"
    "\00\01\8e\80\80\80\00\00\42\00\44\00\00\00\00\00"
    "\00\00\00\92\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7d\03\82\80\80\80\00\01\00\0a\94\80\80\80"
    "\00\01\8e\80\80\80\00\00\42\00\44\00\00\00\00\00"
    "\00\00\00\95\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7d\03\82\80\80\80\00\01\00\0a\94\80\80\80"
    "\00\01\8e\80\80\80\00\00\42\00\44\00\00\00\00\00"
    "\00\00\00\97\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7d\03\82\80\80\80\00\01\00\0a\94\80\80\80"
    "\00\01\8e\80\80\80\00\00\42\00\44\00\00\00\00\00"
    "\00\00\00\96\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7d\03\82\80\80\80\00\01\00\0a\94\80\80\80"
    "\00\01\8e\80\80\80\00\00\42\00\44\00\00\00\00\00"
    "\00\00\00\94\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7d\03\82\80\80\80\00\01\00\0a\94\80\80\80"
    "\00\01\8e\80\80\80\00\00\42\00\44\00\00\00\00\00"
    "\00\00\00\93\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7d\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\42\00\8d\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7d\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\42\00\8e\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7d\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\42\00\90\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7d\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\42\00\91\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7d\03\82\80\80\80\00\01\00\0a\8b\80\80\80"
    "\00\01\85\80\80\80\00\00\42\00\8f\0b"
  )
  "type mismatch"
)

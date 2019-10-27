(module binary "\00\61\73\6d\01\00\00\00\05\83\80\80\80\00\01\00" "\02")
(module binary "\00\61\73\6d\01\00\00\00\05\83\80\80\80\00\01\00" "\02")
(module binary "\00\61\73\6d\01\00\00\00\05\84\80\80\80\00\01\01" "\02\02")
(module binary "\00\61\73\6d\01\00\00\00\05\84\80\80\80\00\01\01" "\02\02")
(module binary
  "\00\61\73\6d\01\00\00\00\05\83\80\80\80\00\01\00"
  "\00\0b\86\80\80\80\00\01\00\41\00\0b\00"
)
(module binary
  "\00\61\73\6d\01\00\00\00\04\84\80\80\80\00\01\70"
  "\00\00\09\86\80\80\80\00\01\00\41\00\0b\00"
)
(module binary "\00\61\73\6d\01\00\00\00")
(module binary "\00\61\73\6d\01\00\00\00")
(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7f\7e\01\7f"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7f\7e\01\7f"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\01\7f\00\02\96\80\80\80\00\01\08\73\70\65\63\74"
  "\65\73\74\09\70\72\69\6e\74\5f\69\33\32\00\00"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\01\7f\00\02\96\80\80\80\00\01\08\73\70\65\63\74"
  "\65\73\74\09\70\72\69\6e\74\5f\69\33\32\00\00"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\01\7f\00\02\96\80\80\80\00\01\08\73\70\65\63\74"
  "\65\73\74\09\70\72\69\6e\74\5f\69\33\32\00\00"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
  "\00\00\03\82\80\80\80\00\01\00\0a\88\80\80\80\00"
  "\01\82\80\80\80\00\00\0b"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
  "\00\00\03\82\80\80\80\00\01\00\07\86\80\80\80\00"
  "\01\02\66\31\00\00\0a\88\80\80\80\00\01\82\80\80"
  "\80\00\00\0b"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
  "\00\00\03\82\80\80\80\00\01\00\07\86\80\80\80\00"
  "\01\02\66\31\00\00\0a\88\80\80\80\00\01\82\80\80"
  "\80\00\00\0b"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
  "\00\00\03\82\80\80\80\00\01\00\0a\88\80\80\80\00"
  "\01\82\80\80\80\00\00\0b"
)
(module binary
  "\00\61\73\6d\01\00\00\00\06\86\80\80\80\00\01\7f"
  "\00\41\00\0b"
)
(module binary
  "\00\61\73\6d\01\00\00\00\06\86\80\80\80\00\01\7f"
  "\00\41\7f\0b"
)
(module binary
  "\00\61\73\6d\01\00\00\00\06\86\80\80\80\00\01\7f"
  "\00\41\00\0b"
)
(module binary
  "\00\61\73\6d\01\00\00\00\06\86\80\80\80\00\01\7f"
  "\00\41\7f\0b"
)
(module binary
  "\00\61\73\6d\01\00\00\00\06\86\80\80\80\00\01\7e"
  "\00\42\00\0b"
)
(module binary
  "\00\61\73\6d\01\00\00\00\06\86\80\80\80\00\01\7e"
  "\00\42\7f\0b"
)
(module binary
  "\00\61\73\6d\01\00\00\00\06\86\80\80\80\00\01\7e"
  "\00\42\00\0b"
)
(module binary
  "\00\61\73\6d\01\00\00\00\06\86\80\80\80\00\01\7e"
  "\00\42\7f\0b"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\05\08\01\00\82\80\80\80" "\80\00")
  "integer representation too long"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\05\0a\01\01\82\00\82\80"
    "\80\80\80\00"
  )
  "integer representation too long"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\05\03\01\00\00\0b\0b\01"
    "\80\80\80\80\80\00\41\00\0b\00"
  )
  "integer representation too long"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\04\04\01\70\00\00\09\0b"
    "\01\80\80\80\80\80\00\41\00\0b\00"
  )
  "integer representation too long"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\83\80\80\80\80\00\01" "\31\32")
  "integer representation too long"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\00\0a\83\80\80\80\80\00"
    "\31\32\33\34"
  )
  "integer representation too long"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\0c\01\60\82\80\80\80"
    "\80\00\7f\7e\01\7f"
  )
  "integer representation too long"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\08\01\60\02\7f\7e\81"
    "\80\80\80\80\00\7f"
  )
  "integer representation too long"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\05\01\60\01\7f\00\02"
    "\1b\01\88\80\80\80\80\00\73\70\65\63\74\65\73\74"
    "\09\70\72\69\6e\74\5f\69\33\32\00\00"
  )
  "integer representation too long"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\05\01\60\01\7f\00\02"
    "\1b\01\08\73\70\65\63\74\65\73\74\89\80\80\80\80"
    "\00\70\72\69\6e\74\5f\69\33\32\00\00"
  )
  "integer representation too long"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\05\01\60\01\7f\00\02"
    "\1b\01\08\73\70\65\63\74\65\73\74\09\70\72\69\6e"
    "\74\5f\69\33\32\00\80\80\80\80\80\00"
  )
  "integer representation too long"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\03"
    "\01\80\80\80\80\80\00\0a\04\01\02\00\0b"
  )
  "integer representation too long"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02"
    "\01\00\07\0b\01\82\80\80\80\80\00\66\31\00\00\0a"
    "\04\01\02\00\0b"
  )
  "integer representation too long"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02"
    "\01\00\07\0b\01\02\66\31\00\80\80\80\80\80\00\0a"
    "\04\01\02\00\0b"
  )
  "integer representation too long"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02"
    "\01\00\0a\05\81\80\80\80\80\00\02\00\0b"
  )
  "integer representation too long"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02"
    "\01\00\05\03\01\00\01\0a\11\01\0f\01\01\7f\41\00"
    "\28\02\82\80\80\80\80\00\1a\0b"
  )
  "integer representation too long"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02"
    "\01\00\05\03\01\00\01\0a\11\01\0f\01\01\7f\41\00"
    "\28\82\80\80\80\80\00\00\1a\0b"
  )
  "integer representation too long"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02"
    "\01\00\05\03\01\00\01\0a\12\01\10\01\01\7f\41\00"
    "\41\03\36\82\80\80\80\80\00\03\0b"
  )
  "integer representation too long"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02"
    "\01\00\05\03\01\00\01\0a\12\01\10\01\01\7f\41\00"
    "\41\03\36\02\82\80\80\80\80\00\0b"
  )
  "integer representation too long"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\0b\01\7f\00\41\80\80"
    "\80\80\80\00\0b"
  )
  "integer representation too long"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\0b\01\7f\00\41\ff\ff"
    "\ff\ff\ff\7f\0b"
  )
  "integer representation too long"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\10\01\7e\00\42\80\80"
    "\80\80\80\80\80\80\80\80\00\0b"
  )
  "integer representation too long"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\10\01\7e\00\42\ff\ff"
    "\ff\ff\ff\ff\ff\ff\ff\ff\7f\0b"
  )
  "integer representation too long"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\05\07\01\00\82\80\80\80" "\70")
  "integer too large"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\05\07\01\00\82\80\80\80" "\40")
  "integer too large"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\05\09\01\01\82\00\82\80" "\80\80\10")
  "integer too large"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\05\09\01\01\82\00\82\80" "\80\80\40")
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\05\03\01\00\00\0b\0a\01"
    "\80\80\80\80\10\41\00\0b\00"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\04\04\01\70\00\00\09\0a"
    "\01\80\80\80\80\10\41\00\0b\00"
  )
  "integer too large"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\83\80\80\80\10\01\31" "\32")
  "integer too large"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\09\83\80\80\80\40\31" "\32\33\34")
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\0b\01\60\82\80\80\80"
    "\10\7f\7e\01\7f"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\0b\01\60\02\7f\7e\81"
    "\80\80\80\40\7f"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\05\01\60\01\7f\00\02"
    "\1a\01\88\80\80\80\10\73\70\65\63\74\65\73\74\09"
    "\70\72\69\6e\74\5f\69\33\32\00\00"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\05\01\60\01\7f\00\02"
    "\1a\01\08\73\70\65\63\74\65\73\74\89\80\80\80\40"
    "\70\72\69\6e\74\5f\69\33\32\00\00"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\05\01\60\01\7f\00\02"
    "\1a\01\08\73\70\65\63\74\65\73\74\09\70\72\69\6e"
    "\74\5f\69\33\32\00\80\80\80\80\10"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\06"
    "\01\80\80\80\80\10\0a\04\01\02\00\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02"
    "\01\00\07\0a\01\82\80\80\80\10\66\31\00\00\0a\04"
    "\01\02\00\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02"
    "\01\00\07\0a\01\02\66\31\00\80\80\80\80\10\0a\04"
    "\01\02\00\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02"
    "\01\00\0a\08\81\80\80\80\10\02\00\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02"
    "\01\00\05\03\01\00\01\0a\10\01\0e\01\01\7f\41\00"
    "\28\02\82\80\80\80\10\1a\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02"
    "\01\00\05\03\01\00\01\0a\10\01\0e\01\01\7f\41\00"
    "\28\02\82\80\80\80\40\1a\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02"
    "\01\00\05\03\01\00\01\0a\10\01\0e\01\01\7f\41\00"
    "\28\82\80\80\80\10\00\1a\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02"
    "\01\00\05\03\01\00\01\0a\10\01\0e\01\01\7f\41\00"
    "\28\82\80\80\80\40\00\1a\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02"
    "\01\00\05\03\01\00\01\0a\11\01\0f\01\01\7f\41\00"
    "\41\03\36\82\80\80\80\10\03\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02"
    "\01\00\05\03\01\00\01\0a\11\01\0f\01\01\7f\41\00"
    "\41\03\36\82\80\80\80\40\03\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02"
    "\01\00\05\03\01\00\01\0a\11\01\0f\01\01\7f\41\00"
    "\41\03\36\03\82\80\80\80\10\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02"
    "\01\00\05\03\01\00\01\0a\11\01\0f\01\01\7f\41\00"
    "\41\03\36\02\82\80\80\80\40\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\0a\01\7f\00\41\80\80"
    "\80\80\70\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\0a\01\7f\00\41\ff\ff"
    "\ff\ff\0f\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\0a\01\7f\00\41\80\80"
    "\80\80\1f\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\0a\01\7f\00\41\ff\ff"
    "\ff\ff\4f\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\0f\01\7e\00\42\80\80"
    "\80\80\80\80\80\80\80\7e\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\0f\01\7e\00\42\ff\ff"
    "\ff\ff\ff\ff\ff\ff\ff\01\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\0f\01\7e\00\42\80\80"
    "\80\80\80\80\80\80\80\02\0b"
  )
  "integer too large"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\06\0f\01\7e\00\42\ff\ff"
    "\ff\ff\ff\ff\ff\ff\ff\41\0b"
  )
  "integer too large"
)

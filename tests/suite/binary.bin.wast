(module binary "\00\61\73\6d\01\00\00\00")
(module binary "\00\61\73\6d\01\00\00\00")
(module $M1 binary "\00\61\73\6d\01\00\00\00")
(module $M2 binary "\00\61\73\6d\01\00\00\00")
(assert_malformed (module binary) "unexpected end")
(assert_malformed (module binary "\01") "unexpected end")
(assert_malformed (module binary "\00\61\73") "unexpected end")
(assert_malformed (module binary "\61\73\6d\00") "magic header not detected")
(assert_malformed (module binary "\6d\73\61\00") "magic header not detected")
(assert_malformed
  (module binary "\6d\73\61\00\01\00\00\00")
  "magic header not detected"
)
(assert_malformed
  (module binary "\6d\73\61\00\00\00\00\01")
  "magic header not detected"
)
(assert_malformed
  (module binary "\61\73\6d\01\00\00\00\00")
  "magic header not detected"
)
(assert_malformed
  (module binary "\77\61\73\6d\01\00\00\00")
  "magic header not detected"
)
(assert_malformed
  (module binary "\7f\61\73\6d\01\00\00\00")
  "magic header not detected"
)
(assert_malformed
  (module binary "\80\61\73\6d\01\00\00\00")
  "magic header not detected"
)
(assert_malformed
  (module binary "\82\61\73\6d\01\00\00\00")
  "magic header not detected"
)
(assert_malformed
  (module binary "\ff\61\73\6d\01\00\00\00")
  "magic header not detected"
)
(assert_malformed
  (module binary "\00\00\00\01\6d\73\61\00")
  "magic header not detected"
)
(assert_malformed
  (module binary "\61\00\6d\73\00\01\00\00")
  "magic header not detected"
)
(assert_malformed
  (module binary "\73\6d\00\61\00\00\01\00")
  "magic header not detected"
)
(assert_malformed
  (module binary "\00\41\53\4d\01\00\00\00")
  "magic header not detected"
)
(assert_malformed
  (module binary "\00\81\a2\94\01\00\00\00")
  "magic header not detected"
)
(assert_malformed
  (module binary "\ef\bb\bf\00\61\73\6d\01\00\00\00")
  "magic header not detected"
)
(assert_malformed (module binary "\00\61\73\6d") "unexpected end")
(assert_malformed (module binary "\00\61\73\6d\01") "unexpected end")
(assert_malformed (module binary "\00\61\73\6d\01\00\00") "unexpected end")
(assert_malformed
  (module binary "\00\61\73\6d\00\00\00\00")
  "unknown binary version"
)
(assert_malformed
  (module binary "\00\61\73\6d\0d\00\00\00")
  "unknown binary version"
)
(assert_malformed
  (module binary "\00\61\73\6d\0e\00\00\00")
  "unknown binary version"
)
(assert_malformed
  (module binary "\00\61\73\6d\00\01\00\00")
  "unknown binary version"
)
(assert_malformed
  (module binary "\00\61\73\6d\00\00\01\00")
  "unknown binary version"
)
(assert_malformed
  (module binary "\00\61\73\6d\00\00\00\01")
  "unknown binary version"
)

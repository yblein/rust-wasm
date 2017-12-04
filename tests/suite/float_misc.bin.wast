(module binary
  "\00\61\73\6d\01\00\00\00\01\97\80\80\80\00\04\60"
  "\02\7d\7d\01\7d\60\01\7d\01\7d\60\02\7c\7c\01\7c"
  "\60\01\7c\01\7c\03\9d\80\80\80\00\1c\00\00\00\00"
  "\01\01\01\00\01\01\01\01\00\00\02\02\02\02\03\03"
  "\03\02\03\03\03\03\02\02\07\b7\82\80\80\00\1c\07"
  "\66\33\32\2e\61\64\64\00\00\07\66\33\32\2e\73\75"
  "\62\00\01\07\66\33\32\2e\6d\75\6c\00\02\07\66\33"
  "\32\2e\64\69\76\00\03\08\66\33\32\2e\73\71\72\74"
  "\00\04\07\66\33\32\2e\61\62\73\00\05\07\66\33\32"
  "\2e\6e\65\67\00\06\0c\66\33\32\2e\63\6f\70\79\73"
  "\69\67\6e\00\07\08\66\33\32\2e\63\65\69\6c\00\08"
  "\09\66\33\32\2e\66\6c\6f\6f\72\00\09\09\66\33\32"
  "\2e\74\72\75\6e\63\00\0a\0b\66\33\32\2e\6e\65\61"
  "\72\65\73\74\00\0b\07\66\33\32\2e\6d\69\6e\00\0c"
  "\07\66\33\32\2e\6d\61\78\00\0d\07\66\36\34\2e\61"
  "\64\64\00\0e\07\66\36\34\2e\73\75\62\00\0f\07\66"
  "\36\34\2e\6d\75\6c\00\10\07\66\36\34\2e\64\69\76"
  "\00\11\08\66\36\34\2e\73\71\72\74\00\12\07\66\36"
  "\34\2e\61\62\73\00\13\07\66\36\34\2e\6e\65\67\00"
  "\14\0c\66\36\34\2e\63\6f\70\79\73\69\67\6e\00\15"
  "\08\66\36\34\2e\63\65\69\6c\00\16\09\66\36\34\2e"
  "\66\6c\6f\6f\72\00\17\09\66\36\34\2e\74\72\75\6e"
  "\63\00\18\0b\66\36\34\2e\6e\65\61\72\65\73\74\00"
  "\19\07\66\36\34\2e\6d\69\6e\00\1a\07\66\36\34\2e"
  "\6d\61\78\00\1b\0a\b5\82\80\80\00\1c\87\80\80\80"
  "\00\00\20\00\20\01\92\0b\87\80\80\80\00\00\20\00"
  "\20\01\93\0b\87\80\80\80\00\00\20\00\20\01\94\0b"
  "\87\80\80\80\00\00\20\00\20\01\95\0b\85\80\80\80"
  "\00\00\20\00\91\0b\85\80\80\80\00\00\20\00\8b\0b"
  "\85\80\80\80\00\00\20\00\8c\0b\87\80\80\80\00\00"
  "\20\00\20\01\98\0b\85\80\80\80\00\00\20\00\8d\0b"
  "\85\80\80\80\00\00\20\00\8e\0b\85\80\80\80\00\00"
  "\20\00\8f\0b\85\80\80\80\00\00\20\00\90\0b\87\80"
  "\80\80\00\00\20\00\20\01\96\0b\87\80\80\80\00\00"
  "\20\00\20\01\97\0b\87\80\80\80\00\00\20\00\20\01"
  "\a0\0b\87\80\80\80\00\00\20\00\20\01\a1\0b\87\80"
  "\80\80\00\00\20\00\20\01\a2\0b\87\80\80\80\00\00"
  "\20\00\20\01\a3\0b\85\80\80\80\00\00\20\00\9f\0b"
  "\85\80\80\80\00\00\20\00\99\0b\85\80\80\80\00\00"
  "\20\00\9a\0b\87\80\80\80\00\00\20\00\20\01\a6\0b"
  "\85\80\80\80\00\00\20\00\9b\0b\85\80\80\80\00\00"
  "\20\00\9c\0b\85\80\80\80\00\00\20\00\9d\0b\85\80"
  "\80\80\00\00\20\00\9e\0b\87\80\80\80\00\00\20\00"
  "\20\01\a4\0b\87\80\80\80\00\00\20\00\20\01\a5\0b"
)
(assert_return
  (invoke "f32.add" (f32.const 1.12345683575) (f32.const 1.23450000222e-10))
  (f32.const 1.12345683575)
)
(assert_return
  (invoke "f64.add" (f64.const 1.123456789) (f64.const 1.2345e-10))
  (f64.const 1.12345678912)
)
(assert_return
  (invoke "f32.add" (f32.const 1.) (f32.const 5.96046447754e-08))
  (f32.const 1.)
)
(assert_return
  (invoke "f32.add" (f32.const 1.) (f32.const 5.96046518808e-08))
  (f32.const 1.00000011921)
)
(assert_return
  (invoke "f64.add" (f64.const 1.) (f64.const 1.11022302463e-16))
  (f64.const 1.)
)
(assert_return
  (invoke "f64.add" (f64.const 1.) (f64.const 1.11022302463e-16))
  (f64.const 1.)
)
(assert_return
  (invoke "f32.add" (f32.const 1.40129846432e-45) (f32.const 1.17549421069e-38))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "f64.add"
    (f64.const 4.94065645841e-324)
    (f64.const 2.22507385851e-308)
  )
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "f32.add" (f32.const 2147483648.) (f32.const 1024.25))
  (f32.const 2147484672.)
)
(assert_return
  (invoke "f64.add" (f64.const 9.22337203685e+18) (f64.const 1024.25))
  (f64.const 9.22337203685e+18)
)
(assert_return
  (invoke "f64.add"
    (f64.const -3.64556100978e-304)
    (f64.const 2.91992796692e-320)
  )
  (f64.const -3.64556100978e-304)
)
(assert_return
  (invoke "f64.add" (f64.const 9.00719925474e+15) (f64.const 1.00001))
  (f64.const 9.00719925474e+15)
)
(assert_return
  (invoke "f64.add" (f64.const 9.00719925474e+15) (f64.const 0.999984741211))
  (f64.const 9.00719925474e+15)
)
(assert_return
  (invoke "f32.add" (f32.const 8388608.) (f32.const 0.5))
  (f32.const 8388608.)
)
(assert_return
  (invoke "f32.add" (f32.const 8388609.) (f32.const 0.5))
  (f32.const 8388610.)
)
(assert_return
  (invoke "f64.add" (f64.const 4.50359962737e+15) (f64.const 0.5))
  (f64.const 4.50359962737e+15)
)
(assert_return
  (invoke "f64.add" (f64.const 4.50359962737e+15) (f64.const 0.5))
  (f64.const 4.50359962737e+15)
)
(assert_return
  (invoke "f32.add"
    (f32.const -6.20760015658e+30)
    (f32.const 2.30979900343e-30)
  )
  (f32.const -6.20760015658e+30)
)
(assert_return
  (invoke "f32.add"
    (f32.const 2.09865807495e+20)
    (f32.const -5.27015250546e+15)
  )
  (f32.const 2.09860529839e+20)
)
(assert_return
  (invoke "f32.add" (f32.const 1.96349204943e-25) (f32.const 4.62200670123e-38))
  (f32.const 1.96349204943e-25)
)
(assert_return
  (invoke "f32.add" (f32.const 640904986624.) (f32.const -6.44495490993e+16))
  (f32.const -6.44489091492e+16)
)
(assert_return
  (invoke "f32.add" (f32.const 6.0196598497e-05) (f32.const 1.20372792216e+32))
  (f32.const 1.20372792216e+32)
)
(assert_return
  (invoke "f64.add" (f64.const 9.218993827e-125) (f64.const -1.28307824388e+75))
  (f64.const -1.28307824388e+75)
)
(assert_return
  (invoke "f64.add"
    (f64.const -9.65034078701e+22)
    (f64.const 4.67020898848e-56)
  )
  (f64.const -9.65034078701e+22)
)
(assert_return
  (invoke "f64.add"
    (f64.const 2.85591476754e-45)
    (f64.const -0.000261242805707)
  )
  (f64.const -0.000261242805707)
)
(assert_return
  (invoke "f64.add"
    (f64.const 4.17909928165e+149)
    (f64.const 7.93355647415e+19)
  )
  (f64.const 4.17909928165e+149)
)
(assert_return
  (invoke "f64.add" (f64.const 8.26544286875e+96) (f64.const 4.3603327839e+118))
  (f64.const 4.3603327839e+118)
)
(assert_return
  (invoke "f32.add" (f32.const 5.23840412782e+21) (f32.const -1570182.5))
  (f32.const 5.23840412782e+21)
)
(assert_return
  (invoke "f32.add" (f32.const 4.25893790178e-14) (f32.const -5.7092352567e-24))
  (f32.const 4.25893790178e-14)
)
(assert_return
  (invoke "f32.add"
    (f32.const -2.72510258716e-13)
    (f32.const 8.37115587335e+37)
  )
  (f32.const 8.37115587335e+37)
)
(assert_return
  (invoke "f32.add"
    (f32.const -8.84535974739e-14)
    (f32.const -1.51656256735e-32)
  )
  (f32.const -8.84535974739e-14)
)
(assert_return
  (invoke "f32.add" (f32.const 0.00105210347101) (f32.const -7.58213472342e-33))
  (f32.const 0.00105210347101)
)
(assert_return
  (invoke "f64.add"
    (f64.const 1.51113522819e+54)
    (f64.const -2.7602181006e-159)
  )
  (f64.const 1.51113522819e+54)
)
(assert_return
  (invoke "f64.add"
    (f64.const 6.23867197604e+46)
    (f64.const -8.59218548884e-19)
  )
  (f64.const 6.23867197604e+46)
)
(assert_return
  (invoke "f64.add"
    (f64.const 4.19502284844e-122)
    (f64.const -2.92253420226e-295)
  )
  (f64.const 4.19502284844e-122)
)
(assert_return
  (invoke "f64.add"
    (f64.const -2.15220546715e+44)
    (f64.const -1.11222041205e+42)
  )
  (f64.const -2.16332767127e+44)
)
(assert_return
  (invoke "f64.add" (f64.const -13.6911535056) (f64.const 2.06611789892e+87))
  (f64.const 2.06611789892e+87)
)
(assert_return
  (invoke "f32.add"
    (f32.const -6.45602103061e-36)
    (f32.const 2.02199490333e-13)
  )
  (f32.const 2.02199490333e-13)
)
(assert_return
  (invoke "f32.add"
    (f32.const -2.68231688096e-05)
    (f32.const 1.11960156701e-08)
  )
  (f32.const -2.68119729299e-05)
)
(assert_return
  (invoke "f32.add" (f32.const -128526172160.) (f32.const 2.73563047337e-33))
  (f32.const -128526172160.)
)
(assert_return
  (invoke "f32.add" (f32.const 4.15897312732e-36) (f32.const -1573528704.))
  (f32.const -1573528704.)
)
(assert_return
  (invoke "f32.add" (f32.const -9.3387686441e-37) (f32.const 7.86475144986e+28))
  (f32.const 7.86475144986e+28)
)
(assert_return
  (invoke "f64.add"
    (f64.const 2.19865966507e-234)
    (f64.const -2.35447594845e+302)
  )
  (f64.const -2.35447594845e+302)
)
(assert_return
  (invoke "f64.add"
    (f64.const -3.14175619594e+155)
    (f64.const -3.01140985146e+148)
  )
  (f64.const -3.14175649708e+155)
)
(assert_return
  (invoke "f64.add"
    (f64.const -1.37228583677e-291)
    (f64.const 1.15718427497e-85)
  )
  (f64.const 1.15718427497e-85)
)
(assert_return
  (invoke "f64.add"
    (f64.const -9.82858375655e-154)
    (f64.const 1.68625815748e-259)
  )
  (f64.const -9.82858375655e-154)
)
(assert_return
  (invoke "f64.add"
    (f64.const -6.72584203522e+290)
    (f64.const 8.37400793097e+240)
  )
  (f64.const -6.72584203522e+290)
)
(assert_return
  (invoke "f64.add"
    (f64.const -2.10896605328e+242)
    (f64.const 5.81483233421e+248)
  )
  (f64.const 5.81483022525e+248)
)
(assert_return
  (invoke "f64.add"
    (f64.const 1.02315792667e+236)
    (f64.const 4.50204300797e+224)
  )
  (f64.const 1.02315792667e+236)
)
(assert_return
  (invoke "f64.add"
    (f64.const -1.30529978571e+188)
    (f64.const 1.5489943422e+203)
  )
  (f64.const 1.5489943422e+203)
)
(assert_return
  (invoke "f64.add"
    (f64.const 4.76299974347e+139)
    (f64.const 4.55586451058e+155)
  )
  (f64.const 4.55586451058e+155)
)
(assert_return
  (invoke "f64.add"
    (f64.const 3.95895251656e-300)
    (f64.const 2.30924607101e-290)
  )
  (f64.const 2.3092460714e-290)
)
(assert_return
  (invoke "f64.add"
    (f64.const -4.37805584754e+226)
    (f64.const -4.96807593474e+286)
  )
  (f64.const -4.96807593474e+286)
)
(assert_return
  (invoke "f64.add"
    (f64.const 2.11743111685e+58)
    (f64.const -2.63859284746e+82)
  )
  (f64.const -2.63859284746e+82)
)
(assert_return
  (invoke "f64.add"
    (f64.const -9.5084895617e+90)
    (f64.const 7.85806823573e-128)
  )
  (f64.const -9.5084895617e+90)
)
(assert_return
  (invoke "f64.add"
    (f64.const -5.07914492855e-96)
    (f64.const -3.54021720742e+140)
  )
  (f64.const -3.54021720742e+140)
)
(assert_return
  (invoke "f64.add"
    (f64.const -4.16538210399e-60)
    (f64.const 1.08659422835e-298)
  )
  (f64.const -4.16538210399e-60)
)
(assert_return
  (invoke "f32.add" (f32.const 9.72156491625e+34) (f32.const 3.05590867039e+38))
  (f32.const 3.05688080629e+38)
)
(assert_return
  (invoke "f32.add"
    (f32.const 2.70465627829e+38)
    (f32.const -2.30236846838e+32)
  )
  (f32.const 2.70465404722e+38)
)
(assert_return
  (invoke "f32.add"
    (f32.const 3.57209281934e+35)
    (f32.const -2.36494052076e+38)
  )
  (f32.const -2.36136838278e+38)
)
(assert_return
  (invoke "f32.add"
    (f32.const -1.48423409279e+36)
    (f32.const -3.28991392884e+38)
  )
  (f32.const -3.30475619053e+38)
)
(assert_return
  (invoke "f32.add"
    (f32.const -2.19885598148e+38)
    (f32.const -8.1560928643e+37)
  )
  (f32.const -3.0144652172e+38)
)
(assert_return
  (invoke "f64.add"
    (f64.const 9.03902049395e+307)
    (f64.const 2.2943337422e+295)
  )
  (f64.const 9.03902049396e+307)
)
(assert_return
  (invoke "f64.add"
    (f64.const 1.65916059736e+308)
    (f64.const 1.25773493314e+298)
  )
  (f64.const 1.65916059749e+308)
)
(assert_return
  (invoke "f64.add"
    (f64.const -1.36351292561e+308)
    (f64.const 6.05070306039e+304)
  )
  (f64.const -1.36290785531e+308)
)
(assert_return
  (invoke "f64.add"
    (f64.const -3.43776132582e+301)
    (f64.const 1.69947152759e+308)
  )
  (f64.const 1.69947118381e+308)
)
(assert_return
  (invoke "f64.add"
    (f64.const 9.22734270086e+307)
    (f64.const -3.9269416451e+298)
  )
  (f64.const 9.22734269694e+307)
)
(assert_return
  (invoke "f32.add" (f32.const 8.31345537333e-39) (f32.const 8.73008943274e-43))
  (f32.const 8.31432838227e-39)
)
(assert_return
  (invoke "f32.add" (f32.const 5.184804318e-44) (f32.const -2.80259692865e-45))
  (f32.const 4.90454462514e-44)
)
(assert_return
  (invoke "f32.add"
    (f32.const -1.12103877146e-44)
    (f32.const 5.18628408918e-39)
  )
  (f32.const 5.18627287879e-39)
)
(assert_return
  (invoke "f32.add"
    (f32.const -2.80259692865e-44)
    (f32.const 2.36752828347e-37)
  )
  (f32.const 2.36752805926e-37)
)
(assert_return
  (invoke "f32.add" (f32.const 6.34788204339e-43) (f32.const -3.326962814e-41))
  (f32.const -3.26348399357e-41)
)
(assert_return
  (invoke "f64.add"
    (f64.const 2.84614893759e-308)
    (f64.const -5.1301606086e-308)
  )
  (f64.const -2.28401167101e-308)
)
(assert_return
  (invoke "f64.add"
    (f64.const 4.74048113548e-308)
    (f64.const -8.8954177765e-308)
  )
  (f64.const -4.15493664103e-308)
)
(assert_return
  (invoke "f64.add"
    (f64.const -9.33008200125e-309)
    (f64.const -2.98639806094e-308)
  )
  (f64.const -3.91940626107e-308)
)
(assert_return
  (invoke "f64.add"
    (f64.const 1.44186938845e-307)
    (f64.const -1.63249143778e-307)
  )
  (f64.const -1.90622049327e-308)
)
(assert_return
  (invoke "f64.add"
    (f64.const -4.32036193623e-308)
    (f64.const 2.5215119664e-308)
  )
  (f64.const -1.79884996983e-308)
)
(assert_return
  (invoke "f32.add" (f32.const 3.40282326356e+38) (f32.const 2.02824096037e+31))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "f64.add"
    (f64.const 1.79769313486e+308)
    (f64.const 1.99584030953e+292)
  )
  (f64.const 1.79769313486e+308)
)
(assert_return (invoke "f32.add" (f32.const 2.) (f32.const 2.)) (f32.const 4.))
(assert_return (invoke "f64.add" (f64.const 2.) (f64.const 2.)) (f64.const 4.))
(assert_return
  (invoke "f32.add" (f32.const 3.40282346639e+38) (f32.const 1.01412041974e+31))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "f32.add" (f32.const 3.40282346639e+38) (f32.const 1.01412048018e+31))
  (f32.const inf)
)
(assert_return
  (invoke "f64.add"
    (f64.const 1.79769313486e+308)
    (f64.const 9.97920154767e+291)
  )
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "f64.add"
    (f64.const 1.79769313486e+308)
    (f64.const 9.97920154767e+291)
  )
  (f64.const inf)
)
(assert_return
  (invoke "f32.sub" (f32.const 65536.) (f32.const 7.27595761418e-12))
  (f32.const 65536.)
)
(assert_return
  (invoke "f64.sub" (f64.const 65536.) (f64.const 7.27595761418e-12))
  (f64.const 65536.)
)
(assert_return
  (invoke "f32.sub" (f32.const 1.) (f32.const 2.98023223877e-08))
  (f32.const 1.)
)
(assert_return
  (invoke "f32.sub" (f32.const 1.) (f32.const 2.98023259404e-08))
  (f32.const 0.999999940395)
)
(assert_return
  (invoke "f64.sub" (f64.const 1.) (f64.const 5.55111512313e-17))
  (f64.const 1.)
)
(assert_return
  (invoke "f64.sub" (f64.const 1.) (f64.const 5.55111512313e-17))
  (f64.const 1.)
)
(assert_return
  (invoke "f32.sub"
    (f32.const 2.37920805984e-32)
    (f32.const -7.22129761698e+35)
  )
  (f32.const 7.22129761698e+35)
)
(assert_return
  (invoke "f32.sub"
    (f32.const -8.4228402384e+35)
    (f32.const -1.11184141353e+13)
  )
  (f32.const -8.4228402384e+35)
)
(assert_return
  (invoke "f32.sub" (f32.const 1.45494437218) (f32.const -3.37926145558e-25))
  (f32.const 1.45494437218)
)
(assert_return
  (invoke "f32.sub" (f32.const 9.48089142841e-36) (f32.const 1.85895024984e-23))
  (f32.const -1.85895024984e-23)
)
(assert_return
  (invoke "f32.sub"
    (f32.const 6.18116700934e-06)
    (f32.const -9.39598642425e-33)
  )
  (f32.const 6.18116700934e-06)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -7.75701650124e-101)
    (f64.const -2.52484508212e-272)
  )
  (f64.const -7.75701650124e-101)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -2.09918710648e+166)
    (f64.const -3.81650797784e-48)
  )
  (f64.const -2.09918710648e+166)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 2.85920309642e-139)
    (f64.const -2.08894651943e-252)
  )
  (f64.const 2.85920309642e-139)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 3.03879528931e-303)
    (f64.const -2.3204941114e+46)
  )
  (f64.const 2.3204941114e+46)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -1.4953904039e-43)
    (f64.const -1.05922526956e-162)
  )
  (f64.const -1.4953904039e-43)
)
(assert_return
  (invoke "f32.sub"
    (f32.const -4.48601655272e+32)
    (f32.const -8.98414805089e+33)
  )
  (f32.const 8.5355464343e+33)
)
(assert_return
  (invoke "f32.sub" (f32.const -8.99427424567e+32) (f32.const 91.5793838501))
  (f32.const -8.99427424567e+32)
)
(assert_return
  (invoke "f32.sub"
    (f32.const -1.19749997533e-25)
    (f32.const 6.31404049045e-08)
  )
  (f32.const -6.31404049045e-08)
)
(assert_return
  (invoke "f32.sub"
    (f32.const -1.18004866619e-23)
    (f32.const -0.000315587356454)
  )
  (f32.const 0.000315587356454)
)
(assert_return
  (invoke "f32.sub"
    (f32.const -7.36483805054e+29)
    (f32.const 3.08245132955e-18)
  )
  (f32.const -7.36483805054e+29)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -9.4104699642e+60)
    (f64.const -1.73062756914e+271)
  )
  (f64.const 1.73062756914e+271)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 2.87790856423e-111)
    (f64.const 2.33944878599e-136)
  )
  (f64.const 2.87790856423e-111)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -9.71921978353e-61)
    (f64.const 1.57201508231e-153)
  )
  (f64.const -9.71921978353e-61)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -3.49088960318e-299)
    (f64.const -1.99284797213e-99)
  )
  (f64.const 1.99284797213e-99)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -7.53829876373e+33)
    (f64.const 4.44701258019e+51)
  )
  (f64.const -4.44701258019e+51)
)
(assert_return
  (invoke "f32.sub" (f32.const 7.58469764467e+28) (f32.const 4.63917531306e-05))
  (f32.const 7.58469764467e+28)
)
(assert_return
  (invoke "f32.sub" (f32.const -567139.875) (f32.const -3.0334842277e-11))
  (f32.const -567139.875)
)
(assert_return
  (invoke "f32.sub"
    (f32.const -1.74122608693e-11)
    (f32.const -1.78777933677e-17)
  )
  (f32.const -1.7412243522e-11)
)
(assert_return
  (invoke "f32.sub"
    (f32.const -6.56455449644e-05)
    (f32.const 0.000144738063682)
  )
  (f32.const -0.000210383615922)
)
(assert_return
  (invoke "f32.sub"
    (f32.const -1.60161148233e-10)
    (f32.const -8.53800749739e-32)
  )
  (f32.const -1.60161148233e-10)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -9.35872526718e-48)
    (f64.const -3.11371473387e+217)
  )
  (f64.const 3.11371473387e+217)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -4.39076759677e+228)
    (f64.const -6.7890457159e+271)
  )
  (f64.const 6.7890457159e+271)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 3.62882810108e-240)
    (f64.const 3.38319968325e+54)
  )
  (f64.const -3.38319968325e+54)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -3.64509775181e-173)
    (f64.const 3.14234909697e-164)
  )
  (f64.const -3.14234910061e-164)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -8.02152963899e-169)
    (f64.const -6.77497276907e-05)
  )
  (f64.const 6.77497276907e-05)
)
(assert_return
  (invoke "f64.sub" (f64.const 5.81698806579e-24) (f64.const 2.50214992415e-35))
  (f64.const 5.81698806577e-24)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 4.33366833048e-296)
    (f64.const 1.69455826075e-304)
  )
  (f64.const 4.33366831354e-296)
)
(assert_return
  (invoke "f64.sub" (f64.const 6.90805267632e-77) (f64.const 1.20017737348e-60))
  (f64.const -1.20017737348e-60)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -2.20442915474e-12)
    (f64.const -2.79474299256e-21)
  )
  (f64.const -2.20442915195e-12)
)
(assert_return
  (invoke "f64.sub" (f64.const 4.01639356912e-08) (f64.const 0.170538819894))
  (f64.const -0.17053877973)
)
(assert_return
  (invoke "f64.sub"
    (f64.const -1.00151068987e-245)
    (f64.const -4.78537595894e-231)
  )
  (f64.const 4.78537595894e-231)
)
(assert_return
  (invoke "f64.sub" (f64.const -15618959953.6) (f64.const 5.98234410621e+110))
  (f64.const -5.98234410621e+110)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 3.88320715404e+34)
    (f64.const 4.21922792743e-178)
  )
  (f64.const 3.88320715404e+34)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 1.07059868908e-147)
    (f64.const -1.74666077347e-209)
  )
  (f64.const 1.07059868908e-147)
)
(assert_return
  (invoke "f64.sub" (f64.const 9.49378346262e-18) (f64.const 1.4584885435e-186))
  (f64.const 9.49378346262e-18)
)
(assert_return
  (invoke "f32.sub" (f32.const 23.1406917572) (f32.const 3.14159274101))
  (f32.const 19.9990997314)
)
(assert_return
  (invoke "f64.sub" (f64.const 23.1406926328) (f64.const 3.14159265359))
  (f64.const 19.9990999792)
)
(assert_return
  (invoke "f32.sub" (f32.const 2999999.) (f32.const 2999998.))
  (f32.const 1.)
)
(assert_return
  (invoke "f32.sub" (f32.const 1999999.) (f32.const 1999995.))
  (f32.const 4.)
)
(assert_return
  (invoke "f32.sub" (f32.const 1999999.) (f32.const 1999993.))
  (f32.const 6.)
)
(assert_return
  (invoke "f32.sub" (f32.const 400002.) (f32.const 400001.))
  (f32.const 1.)
)
(assert_return
  (invoke "f32.sub" (f32.const 400002.) (f32.const 400000.))
  (f32.const 2.)
)
(assert_return
  (invoke "f64.sub" (f64.const 3e+15) (f64.const 3e+15))
  (f64.const 1.)
)
(assert_return
  (invoke "f64.sub" (f64.const 2e+15) (f64.const 2e+15))
  (f64.const 4.)
)
(assert_return
  (invoke "f64.sub" (f64.const 2e+15) (f64.const 2e+15))
  (f64.const 6.)
)
(assert_return
  (invoke "f64.sub" (f64.const 4e+14) (f64.const 4e+14))
  (f64.const 1.)
)
(assert_return
  (invoke "f64.sub" (f64.const 4e+14) (f64.const 4e+14))
  (f64.const 2.)
)
(assert_return
  (invoke "f32.sub" (f32.const 1.17549435082e-38) (f32.const 1.17549421069e-38))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 2.22507385851e-308)
    (f64.const 2.22507385851e-308)
  )
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "f32.sub" (f32.const 1.00000011921) (f32.const 0.999999940395))
  (f32.const 1.78813934326e-07)
)
(assert_return
  (invoke "f32.sub" (f32.const 1.00000011921) (f32.const 1.))
  (f32.const 1.19209289551e-07)
)
(assert_return
  (invoke "f32.sub" (f32.const 1.) (f32.const 0.999999940395))
  (f32.const 5.96046447754e-08)
)
(assert_return
  (invoke "f64.sub" (f64.const 1.) (f64.const 1.))
  (f64.const 3.33066907388e-16)
)
(assert_return
  (invoke "f64.sub" (f64.const 1.) (f64.const 1.))
  (f64.const 2.22044604925e-16)
)
(assert_return
  (invoke "f64.sub" (f64.const 1.) (f64.const 1.))
  (f64.const 1.11022302463e-16)
)
(assert_return
  (invoke "f32.sub" (f32.const 3.40282346639e+38) (f32.const 1.01412041974e+31))
  (f32.const 3.40282346639e+38)
)
(assert_return
  (invoke "f32.sub" (f32.const 3.40282346639e+38) (f32.const 1.01412048018e+31))
  (f32.const 3.40282326356e+38)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 1.79769313486e+308)
    (f64.const 9.97920154767e+291)
  )
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "f64.sub"
    (f64.const 1.79769313486e+308)
    (f64.const 9.97920154767e+291)
  )
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "f32.mul" (f32.const 9.99999986991e+14) (f32.const 9.99999986991e+14))
  (f32.const 9.9999993949e+29)
)
(assert_return
  (invoke "f32.mul" (f32.const 1.00000002004e+20) (f32.const 1.00000002004e+20))
  (f32.const inf)
)
(assert_return
  (invoke "f32.mul" (f32.const 9.99999956202e+24) (f32.const 9.99999956202e+24))
  (f32.const inf)
)
(assert_return
  (invoke "f64.mul" (f64.const 1e+15) (f64.const 1e+15))
  (f64.const 1e+30)
)
(assert_return
  (invoke "f64.mul" (f64.const 1e+20) (f64.const 1e+20))
  (f64.const 1e+40)
)
(assert_return
  (invoke "f64.mul" (f64.const 1e+25) (f64.const 1e+25))
  (f64.const 1e+50)
)
(assert_return
  (invoke "f32.mul" (f32.const 1848874880.) (f32.const 19954563072.))
  (f32.const 3.68934925455e+19)
)
(assert_return
  (invoke "f64.mul" (f64.const 1848874847.) (f64.const 19954562207.))
  (f64.const 3.68934881474e+19)
)
(assert_return
  (invoke "f32.mul" (f32.const 77.0999984741) (f32.const 850.))
  (f32.const 65535.)
)
(assert_return
  (invoke "f64.mul" (f64.const 77.1) (f64.const 850.))
  (f64.const 65535.)
)
(assert_return
  (invoke "f32.mul"
    (f32.const -2.49383943148e+18)
    (f32.const 2.11760539659e-11)
  )
  (f32.const -52809680.)
)
(assert_return
  (invoke "f32.mul"
    (f32.const -6.77724842063e+30)
    (f32.const -3.47582418302e-31)
  )
  (f32.const 2.35565233231)
)
(assert_return
  (invoke "f32.mul"
    (f32.const -8.3843975881e+27)
    (f32.const -1.19489907302e-29)
  )
  (f32.const 0.100185088813)
)
(assert_return
  (invoke "f32.mul"
    (f32.const -6.56765410037e+23)
    (f32.const -4.68897659886e-23)
  )
  (f32.const 30.7955760956)
)
(assert_return
  (invoke "f32.mul" (f32.const 1.33282037162e+16) (f32.const 45.5672225952))
  (f32.const 6.07329197656e+17)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -9.94262260933e+127)
    (f64.const 5.83177241514e+284)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -2.7481558243e-297)
    (f64.const -2.09303543778e-66)
  )
  (f64.const 0.)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 4.64888257371e+182)
    (f64.const -1.59272886487e+32)
  )
  (f64.const -7.40440946456e+214)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -8.26192776417e-95)
    (f64.const 3.66847441905e+175)
  )
  (f64.const -3.03086706549e+81)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 2.53838958332e+239)
    (f64.const 7.84289288181e-259)
  )
  (f64.const 1.99083175943e-19)
)
(assert_return
  (invoke "f32.mul"
    (f32.const -2.01533334574e-27)
    (f32.const -5.03135328303e+27)
  )
  (f32.const 10.1398544312)
)
(assert_return
  (invoke "f32.mul" (f32.const 1.22863253125e+22) (f32.const 749601.8125))
  (f32.const 9.20985190161e+27)
)
(assert_return
  (invoke "f32.mul"
    (f32.const -2.76351386219e-10)
    (f32.const -3.55247136163e+22)
  )
  (f32.const 9.81730433434e+12)
)
(assert_return
  (invoke "f32.mul" (f32.const 2.18931219293e+20) (f32.const -40298.7851562))
  (f32.const -8.82266206225e+24)
)
(assert_return
  (invoke "f32.mul" (f32.const 1691996288.) (f32.const -1.22103352316e+20))
  (f32.const -2.0659841458e+29)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -7.57631607645e-193)
    (f64.const 4.60135587951e-95)
  )
  (f64.const -3.48613265234e-287)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 1.22286160814e-83)
    (f64.const -8.05552618518e-192)
  )
  (f64.const -9.85079370526e-275)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -2.06865124604e+99)
    (f64.const -3.66801071583e+251)
  )
  (f64.const inf)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 1.54323883561e+285)
    (f64.const 7.37062138579e-133)
  )
  (f64.const 1.13746291651e+153)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 2.23587656624e+102)
    (f64.const -7.6066900592e+50)
  )
  (f64.const -1.700762005e+153)
)
(assert_return
  (invoke "f32.mul"
    (f32.const -1.10087033061e+14)
    (f32.const -5.4038020774e+28)
  )
  (f32.const inf)
)
(assert_return
  (invoke "f32.mul" (f32.const -0.1936635077) (f32.const 2.97489539984e-30))
  (f32.const -5.76128683287e-31)
)
(assert_return
  (invoke "f32.mul"
    (f32.const -3.43007127412e-06)
    (f32.const 7.79915232792e+31)
  )
  (f32.const -2.67516490338e+26)
)
(assert_return
  (invoke "f32.mul"
    (f32.const -9.90038494858e+16)
    (f32.const 2.09337736553e-29)
  )
  (f32.const -2.07252422689e-12)
)
(assert_return
  (invoke "f32.mul" (f32.const -129919.070312) (f32.const 1.84809985644e-36))
  (f32.const -2.40103419814e-31)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -6.62557220084e-150)
    (f64.const -3.73740206817e+130)
  )
  (f64.const 2.47624272463e-19)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 8.21076848562e+143)
    (f64.const -1.29765523286e-230)
  )
  (f64.const -1.06547466911e-86)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -1.02234492949e+52)
    (f64.const 1.97085558333e+108)
  )
  (f64.const -2.01489421238e+160)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 2.91824308012e+231)
    (f64.const -6.36331709417e+112)
  )
  (f64.const -inf)
)
(assert_return
  (invoke "f64.mul" (f64.const 3.4070377988e+24) (f64.const 1.22579142397e+21))
  (f64.const 4.17631771492e+45)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 4.40919272844e-103)
    (f64.const 1.15188407023e-173)
  )
  (f64.const 5.07887886646e-276)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -0.00298004182647)
    (f64.const 6.31254129932e+217)
  )
  (f64.const -1.88116371033e+215)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -3.08344578081e+110)
    (f64.const -1.0081049555e-196)
  )
  (f64.const 3.10843697166e-86)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 3.49387501316e+233)
    (f64.const 2.13131691593e+18)
  )
  (f64.const 7.44655491769e+251)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -1.25001080051e-83)
    (f64.const 1.03526570416e+270)
  )
  (f64.const -1.2940933116e+187)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 8.94746166176e-181)
    (f64.const 2.08538441413e-128)
  )
  (f64.const 1.86588970955e-308)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -1.16181303733e-17)
    (f64.const -1.87370381356e-291)
  )
  (f64.const 2.17689351869e-308)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -2.17523267684e-147)
    (f64.const -6.63121006807e-162)
  )
  (f64.const 1.4424424827e-308)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -7.14951815744e-233)
    (f64.const 2.27704450624e-77)
  )
  (f64.const -1.62797710426e-309)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -4.81773930215e-156)
    (f64.const -2.53750230497e-153)
  )
  (f64.const 1.2225024584e-308)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 4.65764416295e+256)
    (f64.const 7.02134489353e-266)
  )
  (f64.const 3.27029260594e-09)
)
(assert_return
  (invoke "f64.mul" (f64.const 0.0124517162783) (f64.const 1.94530917785e-45))
  (f64.const 2.42224379562e-47)
)
(assert_return
  (invoke "f64.mul" (f64.const -3.83123147776) (f64.const 9.03988774174e-13))
  (f64.const -3.46339024716e-12)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 9.84358263885e-113)
    (f64.const 3.37540565478e-62)
  )
  (f64.const 3.32260845024e-174)
)
(assert_return
  (invoke "f64.mul"
    (f64.const -2.60544537095e+23)
    (f64.const 3.28875281858e-105)
  )
  (f64.const -8.56866580735e-82)
)
(assert_return
  (invoke "f32.mul" (f32.const 2.64697796017e-23) (f32.const 2.64697796017e-23))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.mul" (f32.const 2.64697827571e-23) (f32.const 2.64697827571e-23))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "f64.mul" (f64.const 1.5717277847e-162) (f64.const 1.5717277847e-162))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.mul" (f64.const 1.5717277847e-162) (f64.const 1.5717277847e-162))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "f32.mul" (f32.const 1.84467429742e+19) (f32.const 1.84467429742e+19))
  (f32.const 3.40282326356e+38)
)
(assert_return
  (invoke "f32.mul" (f32.const 1.84467440737e+19) (f32.const 1.84467440737e+19))
  (f32.const inf)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 1.34078079299e+154)
    (f64.const 1.34078079299e+154)
  )
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 1.34078079299e+154)
    (f64.const 1.34078079299e+154)
  )
  (f64.const inf)
)
(assert_return
  (invoke "f32.mul" (f32.const 1.00000011921) (f32.const 1.00000011921))
  (f32.const 1.00000023842)
)
(assert_return
  (invoke "f32.mul" (f32.const 0.999999940395) (f32.const 0.999999940395))
  (f32.const 0.999999880791)
)
(assert_return (invoke "f64.mul" (f64.const 1.) (f64.const 1.)) (f64.const 1.))
(assert_return (invoke "f64.mul" (f64.const 1.) (f64.const 1.)) (f64.const 1.))
(assert_return
  (invoke "f32.mul" (f32.const 1.00000011921) (f32.const 0.999999940395))
  (f32.const 1.)
)
(assert_return
  (invoke "f32.mul" (f32.const 1.00000023842) (f32.const 0.999999880791))
  (f32.const 1.00000011921)
)
(assert_return (invoke "f64.mul" (f64.const 1.) (f64.const 1.)) (f64.const 1.))
(assert_return (invoke "f64.mul" (f64.const 1.) (f64.const 1.)) (f64.const 1.))
(assert_return
  (invoke "f32.mul" (f32.const 1.17549435082e-38) (f32.const 1.19209289551e-07))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "f64.mul"
    (f64.const 2.22507385851e-308)
    (f64.const 2.22044604925e-16)
  )
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "f32.mul" (f32.const -16.0014648438) (f32.const 2.98465362513e-40))
  (f32.const -4.77588300534e-39)
)
(assert_return
  (invoke "f32.div" (f32.const 1.12345683575) (f32.const 100.))
  (f32.const 0.011234568432)
)
(assert_return
  (invoke "f32.div" (f32.const 8391667.) (f32.const 12582905.))
  (f32.const 0.666910171509)
)
(assert_return
  (invoke "f32.div" (f32.const 65536.) (f32.const 7.27595761418e-12))
  (f32.const 9.00719925474e+15)
)
(assert_return
  (invoke "f32.div" (f32.const 1.8622957468) (f32.const 3.40282346639e+38))
  (f32.const 5.47279497449e-39)
)
(assert_return
  (invoke "f32.div" (f32.const 4.) (f32.const 3.))
  (f32.const 1.33333337307)
)
(assert_return
  (invoke "f64.div" (f64.const 1.123456789) (f64.const 100.))
  (f64.const 0.01123456789)
)
(assert_return
  (invoke "f64.div" (f64.const 8391667.) (f64.const 12582905.))
  (f64.const 0.666910145153)
)
(assert_return
  (invoke "f64.div" (f64.const 65536.) (f64.const 7.27595761418e-12))
  (f64.const 9.00719925474e+15)
)
(assert_return
  (invoke "f64.div" (f64.const 1.8622957468) (f64.const 1.79769313486e+308))
  (f64.const 1.03593639576e-308)
)
(assert_return
  (invoke "f64.div" (f64.const 4.) (f64.const 3.))
  (f64.const 1.33333333333)
)
(assert_return
  (invoke "f32.div" (f32.const 4195835.) (f32.const 3145727.))
  (f32.const 1.33382046223)
)
(assert_return
  (invoke "f64.div" (f64.const 4195835.) (f64.const 3145727.))
  (f64.const 1.33382044914)
)
(assert_return
  (invoke "f32.div" (f32.const 5.0296329364e-15) (f32.const 3.36324376381e+38))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.div" (f32.const 8.92198679354e-27) (f32.const 3.54097526211e+20))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.div" (f32.const -104167.46875) (f32.const 1.5866622669e-24))
  (f32.const -6.56519491718e+28)
)
(assert_return
  (invoke "f32.div"
    (f32.const -2.49386573826e-23)
    (f32.const -3.62300875064e-37)
  )
  (f32.const 6.88341070643e+13)
)
(assert_return
  (invoke "f32.div"
    (f32.const -4.14220419072e+12)
    (f32.const 1.19549483882e-24)
  )
  (f32.const -3.46484498333e+36)
)
(assert_return
  (invoke "f64.div" (f64.const 1.93901163824e+44) (f64.const 2.52907423573e+67))
  (f64.const 7.66688304696e-24)
)
(assert_return
  (invoke "f64.div"
    (f64.const 6.60033214975e-189)
    (f64.const 3.00791515347e-293)
  )
  (f64.const 2.19432125342e+104)
)
(assert_return
  (invoke "f64.div"
    (f64.const -9.34827517366e+89)
    (f64.const 4.80930952904e+192)
  )
  (f64.const -1.94378738096e-103)
)
(assert_return
  (invoke "f64.div"
    (f64.const -1.75983390884e+208)
    (f64.const 1.99386072581e+74)
  )
  (f64.const -8.82626296844e+133)
)
(assert_return
  (invoke "f64.div"
    (f64.const -4.56626887784e+162)
    (f64.const 3.12824958223e+136)
  )
  (f64.const -1.45968816036e+26)
)
(assert_return
  (invoke "f32.div"
    (f32.const -1.03940637604e+21)
    (f32.const -1.2965965898e-26)
  )
  (f32.const inf)
)
(assert_return
  (invoke "f32.div" (f32.const 2.68315626201e-14) (f32.const 3.1241038463e+13))
  (f32.const 8.58856325341e-28)
)
(assert_return
  (invoke "f32.div" (f32.const 1.27342474461) (f32.const -6.92783706823e+26))
  (f32.const -1.838127376e-27)
)
(assert_return
  (invoke "f32.div" (f32.const 6.89888271446e-16) (f32.const 3.762675552e-39))
  (f32.const 1.83350457958e+23)
)
(assert_return
  (invoke "f32.div" (f32.const 1.81991622049e+27) (f32.const 2.05067030525e+26))
  (f32.const 8.87473869324)
)
(assert_return
  (invoke "f64.div"
    (f64.const 2.11377159244e-308)
    (f64.const -1.67332616129e+109)
  )
  (f64.const -0.)
)
(assert_return
  (invoke "f64.div"
    (f64.const -8.11664494802e-298)
    (f64.const 6.517571349e-162)
  )
  (f64.const -1.24534807728e-136)
)
(assert_return
  (invoke "f64.div"
    (f64.const -9.33547691226e-122)
    (f64.const -3.90992814664e+13)
  )
  (f64.const 2.38763388025e-135)
)
(assert_return
  (invoke "f64.div"
    (f64.const -1.68685698549e+24)
    (f64.const 1.35359938611e-238)
  )
  (f64.const -1.24620105683e+262)
)
(assert_return
  (invoke "f64.div"
    (f64.const -1.73388773325e+71)
    (f64.const -7.00261604752e+16)
  )
  (f64.const 2.47605712134e+54)
)
(assert_return
  (invoke "f32.div" (f32.const 93506192.) (f32.const 2.87608846382e-36))
  (f32.const inf)
)
(assert_return
  (invoke "f32.div" (f32.const -2.00575393467e+23) (f32.const 246697216.))
  (f32.const -8.1304281206e+14)
)
(assert_return
  (invoke "f32.div" (f32.const 384712212480.) (f32.const -1.07037848166e+29))
  (f32.const -3.59417007189e-18)
)
(assert_return
  (invoke "f32.div" (f32.const -4.15666500377e+33) (f32.const -901.419189453))
  (f32.const 4.61124534608e+30)
)
(assert_return
  (invoke "f32.div" (f32.const -6.70238686512e+27) (f32.const -14000.2548828))
  (f32.const 4.7873321685e+23)
)
(assert_return
  (invoke "f64.div"
    (f64.const -1.00852695989e-197)
    (f64.const 1.87803740329e-208)
  )
  (f64.const -53701111496.9)
)
(assert_return
  (invoke "f64.div"
    (f64.const -3.2571664563e+235)
    (f64.const -5.88573851921e-167)
  )
  (f64.const inf)
)
(assert_return
  (invoke "f64.div"
    (f64.const -3.16409468612e-225)
    (f64.const 4.58545105565e-20)
  )
  (f64.const -6.90029104601e-206)
)
(assert_return
  (invoke "f64.div"
    (f64.const -5.26842242947e+95)
    (f64.const -1.48169070715e-177)
  )
  (f64.const 3.5556829803e+272)
)
(assert_return
  (invoke "f64.div"
    (f64.const 4.03995627002e+54)
    (f64.const -4.70978819719e+64)
  )
  (f64.const -8.57778757955e-11)
)
(assert_return
  (invoke "f64.div"
    (f64.const -2.03959560468e+176)
    (f64.const -7.47408873946e+58)
  )
  (f64.const 2.7288886656e+117)
)
(assert_return
  (invoke "f64.div"
    (f64.const -3.04261712295e+164)
    (f64.const -2.65567923266e+99)
  )
  (f64.const 1.1457020432e+65)
)
(assert_return
  (invoke "f64.div"
    (f64.const 4.92352405125e+55)
    (f64.const -3.6634082831e+290)
  )
  (f64.const -1.34397360894e-235)
)
(assert_return
  (invoke "f64.div"
    (f64.const 2.89260843556e+65)
    (f64.const 5.17194875837e+128)
  )
  (f64.const 5.59287914614e-64)
)
(assert_return
  (invoke "f64.div"
    (f64.const -4.21542582344e+248)
    (f64.const 1.42850585467e+105)
  )
  (f64.const -2.95093352937e+143)
)
(assert_return
  (invoke "f64.div" (f64.const 1.86229574331) (f64.const 1.79769313486e+308))
  (f64.const 1.03593639381e-308)
)
(assert_return
  (invoke "f64.div" (f64.const 8.56663248078e-305) (f64.const 5381.26997966))
  (f64.const 1.59193508469e-308)
)
(assert_return
  (invoke "f64.div"
    (f64.const -8.1962209195e-44)
    (f64.const -1.04065570865e+265)
  )
  (f64.const 7.8760159113e-309)
)
(assert_return
  (invoke "f64.div"
    (f64.const -7.05280186645e-119)
    (f64.const -1.37674294058e+190)
  )
  (f64.const 5.12281680085e-309)
)
(assert_return
  (invoke "f64.div"
    (f64.const 2.26556217342e-258)
    (f64.const 1.33219932963e+50)
  )
  (f64.const 1.7006180104e-308)
)
(assert_return
  (invoke "f64.div" (f64.const 4.19630410655e-303) (f64.const -9789327.29765))
  (f64.const -4.28661130531e-310)
)
(assert_return
  (invoke "f32.div" (f32.const 1.03886078499e+27) (f32.const 6.21107950387e+12))
  (f32.const 1.67259297284e+14)
)
(assert_return
  (invoke "f32.div"
    (f32.const 1.86903296399e+27)
    (f32.const -1.12355728108e+32)
  )
  (f32.const -1.66349600477e-05)
)
(assert_return
  (invoke "f32.div" (f32.const 3.29074724534e+24) (f32.const 0.906478822231))
  (f32.const 3.63025265249e+24)
)
(assert_return
  (invoke "f32.div" (f32.const -908946.5625) (f32.const -17034289152.))
  (f32.const 5.33598176844e-05)
)
(assert_return
  (invoke "f32.div"
    (f32.const -2.40924766031e-13)
    (f32.const -8.98408116377e+16)
  )
  (f32.const 2.68168516711e-30)
)
(assert_return
  (invoke "f64.div"
    (f64.const 3.91097304579e+18)
    (f64.const -8.3927307339e-260)
  )
  (f64.const -4.65995296381e+277)
)
(assert_return
  (invoke "f64.div"
    (f64.const 8.37935196673e-40)
    (f64.const -2.1077277802e-157)
  )
  (f64.const -3.97553803932e+117)
)
(assert_return
  (invoke "f64.div"
    (f64.const 4.56114201785e+201)
    (f64.const 1.50057806774e+192)
  )
  (f64.const 3039589952.65)
)
(assert_return
  (invoke "f64.div"
    (f64.const -6.23607240183e+54)
    (f64.const 8.31706325046e+232)
  )
  (f64.const -7.4979259073e-179)
)
(assert_return
  (invoke "f64.div"
    (f64.const -9.75727133047e-263)
    (f64.const -3.56138122435e-195)
  )
  (f64.const 2.73974357582e-68)
)
(assert_return
  (invoke "f64.div" (f64.const 1.04625687245e-17) (f64.const 1.81508927117))
  (f64.const 5.76421716039e-18)
)
(assert_return
  (invoke "f64.div"
    (f64.const 2.20382681066e-31)
    (f64.const -2.85980394394e-13)
  )
  (f64.const -7.70621641853e-19)
)
(assert_return
  (invoke "f64.div" (f64.const 7.59653998844e-13) (f64.const 2.10553588313e-34))
  (f64.const 3.60788911236e+21)
)
(assert_return
  (invoke "f64.div" (f64.const 1.1206961145e+27) (f64.const 1.59713233803e+29))
  (f64.const 0.00701692707496)
)
(assert_return
  (invoke "f64.div" (f64.const 0.00063421425023) (f64.const -6.39195086552e+15))
  (f64.const -9.92207642977e-20)
)
(assert_return
  (invoke "f32.div" (f32.const 1.17549435082e-38) (f32.const 1.17549421069e-38))
  (f32.const 1.00000011921)
)
(assert_return
  (invoke "f32.div" (f32.const 1.17549421069e-38) (f32.const 1.17549435082e-38))
  (f32.const 0.999999880791)
)
(assert_return
  (invoke "f64.div"
    (f64.const 2.22507385851e-308)
    (f64.const 2.22507385851e-308)
  )
  (f64.const 1.)
)
(assert_return
  (invoke "f64.div"
    (f64.const 2.22507385851e-308)
    (f64.const 2.22507385851e-308)
  )
  (f64.const 1.)
)
(assert_return
  (invoke "f32.div" (f32.const 2.38418564891e-07) (f32.const 3.40282346639e+38))
  (f32.const 0.)
)
(assert_return
  (invoke "f32.div" (f32.const 2.38418579102e-07) (f32.const 3.40282346639e+38))
  (f32.const 1.40129846432e-45)
)
(assert_return
  (invoke "f64.div" (f64.const 4.4408920985e-16) (f64.const 1.79769313486e+308))
  (f64.const 0.)
)
(assert_return
  (invoke "f64.div" (f64.const 4.4408920985e-16) (f64.const 1.79769313486e+308))
  (f64.const 4.94065645841e-324)
)
(assert_return
  (invoke "f32.div" (f32.const 1.) (f32.const 2.93873587706e-39))
  (f32.const inf)
)
(assert_return
  (invoke "f32.div" (f32.const 1.) (f32.const 2.93873727835e-39))
  (f32.const 3.40282204662e+38)
)
(assert_return
  (invoke "f64.div" (f64.const 1.) (f64.const 5.56268464627e-309))
  (f64.const inf)
)
(assert_return
  (invoke "f64.div" (f64.const 1.) (f64.const 5.56268464627e-309))
  (f64.const 1.79769313486e+308)
)
(assert_return
  (invoke "f32.div" (f32.const 1.) (f32.const 8.50706018714e+37))
  (f32.const 1.17549421069e-38)
)
(assert_return
  (invoke "f32.div" (f32.const 1.) (f32.const 8.50705917302e+37))
  (f32.const 1.17549435082e-38)
)
(assert_return
  (invoke "f64.div" (f64.const 1.) (f64.const 4.49423283716e+307))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "f64.div" (f64.const 1.) (f64.const 4.49423283716e+307))
  (f64.const 2.22507385851e-308)
)
(assert_return
  (invoke "f32.div" (f32.const 1.) (f32.const 3.))
  (f32.const 0.333333343267)
)
(assert_return
  (invoke "f32.div" (f32.const 3.) (f32.const 9.))
  (f32.const 0.333333343267)
)
(assert_return
  (invoke "f32.div" (f32.const 9.) (f32.const 27.))
  (f32.const 0.333333343267)
)
(assert_return
  (invoke "f64.div" (f64.const 1.) (f64.const 3.))
  (f64.const 0.333333333333)
)
(assert_return
  (invoke "f64.div" (f64.const 3.) (f64.const 9.))
  (f64.const 0.333333333333)
)
(assert_return
  (invoke "f64.div" (f64.const 9.) (f64.const 27.))
  (f64.const 0.333333333333)
)
(assert_return
  (invoke "f32.div" (f32.const 1.00000011921) (f32.const 0.999999940395))
  (f32.const 1.00000023842)
)
(assert_return
  (invoke "f32.div" (f32.const 0.999999940395) (f32.const 1.00000011921))
  (f32.const 0.999999821186)
)
(assert_return
  (invoke "f32.div" (f32.const 1.) (f32.const 0.999999940395))
  (f32.const 1.00000011921)
)
(assert_return
  (invoke "f32.div" (f32.const 1.) (f32.const 1.00000011921))
  (f32.const 0.999999880791)
)
(assert_return (invoke "f64.div" (f64.const 1.) (f64.const 1.)) (f64.const 1.))
(assert_return (invoke "f64.div" (f64.const 1.) (f64.const 1.)) (f64.const 1.))
(assert_return (invoke "f64.div" (f64.const 1.) (f64.const 1.)) (f64.const 1.))
(assert_return (invoke "f64.div" (f64.const 1.) (f64.const 1.)) (f64.const 1.))
(assert_return (invoke "f32.sqrt" (f32.const 171.)) (f32.const 13.0766963959))
(assert_return
  (invoke "f32.sqrt" (f32.const 1.60794996873e-07))
  (f32.const 0.000400992517825)
)
(assert_return (invoke "f64.sqrt" (f64.const 171.)) (f64.const 13.0766968306))
(assert_return
  (invoke "f64.sqrt" (f64.const 1.60795e-07))
  (f64.const 0.000400992518633)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 4.31635758035e-50))
  (f64.const 2.07758455432e-25)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 6.7625330048e+101))
  (f64.const 8.22346216918e+50)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 1.74852966249e+121))
  (f64.const 4.18154237392e+60)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 9.5937209606e-12))
  (f64.const 3.0973732356e-06)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 6.34845289872e-112))
  (f64.const 2.51961364076e-56)
)
(assert_return (invoke "f64.sqrt" (f64.const 1.)) (f64.const 1.))
(assert_return
  (invoke "f32.sqrt" (f32.const 0.129639416933))
  (f32.const 0.360054731369)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 2.34587582271e+30))
  (f32.const 1.53162520042e+15)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 0.0787865743041))
  (f32.const 0.280689448118)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 5.13710260448e-22))
  (f32.const 2.26651770269e-11)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 0.000901671533938))
  (f32.const 0.0300278458744)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 9.59192276083e-279))
  (f64.const 9.79383620489e-140)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 9.35787535216e+218))
  (f64.const 3.05906445701e+109)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 1.47706699783e+116))
  (f64.const 1.21534645177e+58)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 4.880045718e+31))
  (f64.const 6.98573240112e+15)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 7.61897768717e+300))
  (f64.const 2.76024956973e+150)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 154481008.))
  (f32.const 12429.0390625)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 1.04713048251e-34))
  (f32.const 1.02329396885e-17)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 3.79063712899e-05))
  (f32.const 0.00615681521595)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 8.96075347353e-37))
  (f32.const 9.46612568309e-19)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 1.68771198742e-37))
  (f32.const 4.1081772611e-19)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 3.16996264379e+209))
  (f64.const 5.6302421296e+104)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 4.05736692718e-230))
  (f64.const 2.01429067594e-115)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 1.52998616606e-09))
  (f64.const 3.9115037595e-05)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 2.82276692895e-73))
  (f64.const 5.31297179453e-37)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 1.4375957727e+280))
  (f64.const 1.19899782014e+140)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 4.64023422985e+35))
  (f32.const 6.81192670823e+17)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 47536.1328125))
  (f32.const 218.027832031)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 0.812613010406))
  (f32.const 0.901450514793)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 9.54960499196e-27))
  (f32.const 9.77220827045e-14)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 6.8856485336e-29))
  (f32.const 8.29798113767e-15)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 2.3497689175e+222))
  (f64.const 1.53289559902e+111)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 2.92625747434e-115))
  (f64.const 5.40948932372e-58)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 3.77335087484e+290))
  (f64.const 1.94251148641e+145)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 3.54984320239e-14))
  (f64.const 1.88410275792e-07)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 1.37474193362e-148))
  (f64.const 1.17249389492e-74)
)
(assert_return_canonical_nan
  (invoke "f64.sqrt" (f64.const -1.55351526633e-290))
)
(assert_return
  (invoke "f64.sqrt" (f64.const 1.8763296348e+31))
  (f64.const 4.33166207685e+15)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 2.74405777036e-229))
  (f64.const 5.23837548326e-115)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 1.56138599529e-83))
  (f64.const 3.95143770708e-42)
)
(assert_return
  (invoke "f64.sqrt" (f64.const 6.19303768945e+170))
  (f64.const 2.48858146128e+85)
)
(assert_return (invoke "f32.sqrt" (f32.const 1.00000011921)) (f32.const 1.))
(assert_return
  (invoke "f32.sqrt" (f32.const 1.00000023842))
  (f32.const 1.00000011921)
)
(assert_return (invoke "f64.sqrt" (f64.const 1.)) (f64.const 1.))
(assert_return (invoke "f64.sqrt" (f64.const 1.)) (f64.const 1.))
(assert_return
  (invoke "f32.sqrt" (f32.const 0.999999880791))
  (f32.const 0.999999940395)
)
(assert_return
  (invoke "f32.sqrt" (f32.const 0.999999821186))
  (f32.const 0.999999880791)
)
(assert_return (invoke "f64.sqrt" (f64.const 1.)) (f64.const 1.))
(assert_return (invoke "f64.sqrt" (f64.const 1.)) (f64.const 1.))
(assert_return (invoke "f32.abs" (f32.const nan:0xf1e2)) (f32.const nan:0xf1e2))
(assert_return
  (invoke "f32.abs" (f32.const -nan:0xf1e2))
  (f32.const nan:0xf1e2)
)
(assert_return
  (invoke "f64.abs" (f64.const nan:0xf1e27a6b))
  (f64.const nan:0xf1e27a6b)
)
(assert_return
  (invoke "f64.abs" (f64.const -nan:0xf1e27a6b))
  (f64.const nan:0xf1e27a6b)
)
(assert_return
  (invoke "f32.neg" (f32.const nan:0xf1e2))
  (f32.const -nan:0xf1e2)
)
(assert_return
  (invoke "f32.neg" (f32.const -nan:0xf1e2))
  (f32.const nan:0xf1e2)
)
(assert_return
  (invoke "f64.neg" (f64.const nan:0xf1e27a6b))
  (f64.const -nan:0xf1e27a6b)
)
(assert_return
  (invoke "f64.neg" (f64.const -nan:0xf1e27a6b))
  (f64.const nan:0xf1e27a6b)
)
(assert_return
  (invoke "f32.copysign" (f32.const nan:0xf1e2) (f32.const nan:0x400000))
  (f32.const nan:0xf1e2)
)
(assert_return
  (invoke "f32.copysign" (f32.const nan:0xf1e2) (f32.const -nan:0x400000))
  (f32.const -nan:0xf1e2)
)
(assert_return
  (invoke "f32.copysign" (f32.const -nan:0xf1e2) (f32.const nan:0x400000))
  (f32.const nan:0xf1e2)
)
(assert_return
  (invoke "f32.copysign" (f32.const -nan:0xf1e2) (f32.const -nan:0x400000))
  (f32.const -nan:0xf1e2)
)
(assert_return
  (invoke "f64.copysign"
    (f64.const nan:0xf1e27a6b)
    (f64.const nan:0x8000000000000)
  )
  (f64.const nan:0xf1e27a6b)
)
(assert_return
  (invoke "f64.copysign"
    (f64.const nan:0xf1e27a6b)
    (f64.const -nan:0x8000000000000)
  )
  (f64.const -nan:0xf1e27a6b)
)
(assert_return
  (invoke "f64.copysign"
    (f64.const -nan:0xf1e27a6b)
    (f64.const nan:0x8000000000000)
  )
  (f64.const nan:0xf1e27a6b)
)
(assert_return
  (invoke "f64.copysign"
    (f64.const -nan:0xf1e27a6b)
    (f64.const -nan:0x8000000000000)
  )
  (f64.const -nan:0xf1e27a6b)
)
(assert_return (invoke "f32.ceil" (f32.const 0.999999940395)) (f32.const 1.))
(assert_return (invoke "f32.ceil" (f32.const 1.00000011921)) (f32.const 2.))
(assert_return (invoke "f64.ceil" (f64.const 1.)) (f64.const 1.))
(assert_return (invoke "f64.ceil" (f64.const 1.)) (f64.const 2.))
(assert_return (invoke "f32.ceil" (f32.const 8388607.5)) (f32.const 8388608.))
(assert_return (invoke "f32.ceil" (f32.const -8388607.5)) (f32.const -8388607.))
(assert_return
  (invoke "f64.ceil" (f64.const 4.50359962737e+15))
  (f64.const 4.50359962737e+15)
)
(assert_return
  (invoke "f64.ceil" (f64.const -4.50359962737e+15))
  (f64.const -4.50359962737e+15)
)
(assert_return (invoke "f32.ceil" (f32.const 16777215.)) (f32.const 16777215.))
(assert_return
  (invoke "f32.ceil" (f32.const -16777215.))
  (f32.const -16777215.)
)
(assert_return
  (invoke "f64.ceil" (f64.const 9.00719925474e+15))
  (f64.const 9.00719925474e+15)
)
(assert_return
  (invoke "f64.ceil" (f64.const -9.00719925474e+15))
  (f64.const -9.00719925474e+15)
)
(assert_return (invoke "f32.floor" (f32.const -0.999999940395)) (f32.const -1.))
(assert_return (invoke "f32.floor" (f32.const -1.00000011921)) (f32.const -2.))
(assert_return (invoke "f64.floor" (f64.const -1.)) (f64.const -1.))
(assert_return (invoke "f64.floor" (f64.const -1.)) (f64.const -2.))
(assert_return
  (invoke "f32.floor" (f32.const -8388607.5))
  (f32.const -8388608.)
)
(assert_return (invoke "f32.floor" (f32.const 8388607.5)) (f32.const 8388607.))
(assert_return
  (invoke "f64.floor" (f64.const -4.50359962737e+15))
  (f64.const -4.50359962737e+15)
)
(assert_return
  (invoke "f64.floor" (f64.const 4.50359962737e+15))
  (f64.const 4.50359962737e+15)
)
(assert_return (invoke "f32.floor" (f32.const 88607.)) (f32.const 88607.))
(assert_return (invoke "f64.floor" (f64.const 88607.)) (f64.const 88607.))
(assert_return
  (invoke "f32.trunc" (f32.const -8388607.5))
  (f32.const -8388607.)
)
(assert_return (invoke "f32.trunc" (f32.const 8388607.5)) (f32.const 8388607.))
(assert_return
  (invoke "f64.trunc" (f64.const -4.50359962737e+15))
  (f64.const -4.50359962737e+15)
)
(assert_return
  (invoke "f64.trunc" (f64.const 4.50359962737e+15))
  (f64.const 4.50359962737e+15)
)
(assert_return (invoke "f32.nearest" (f32.const 8388609.)) (f32.const 8388609.))
(assert_return (invoke "f32.nearest" (f32.const 8388610.)) (f32.const 8388610.))
(assert_return (invoke "f32.nearest" (f32.const 0.499999970198)) (f32.const 0.))
(assert_return
  (invoke "f32.nearest" (f32.const 2.81474959933e+14))
  (f32.const 2.81474959933e+14)
)
(assert_return
  (invoke "f64.nearest" (f64.const 4.50359962737e+15))
  (f64.const 4.50359962737e+15)
)
(assert_return
  (invoke "f64.nearest" (f64.const 4.50359962737e+15))
  (f64.const 4.50359962737e+15)
)
(assert_return (invoke "f64.nearest" (f64.const 0.5)) (f64.const 0.))
(assert_return
  (invoke "f64.nearest" (f64.const 8.11296384146e+31))
  (f64.const 8.11296384146e+31)
)
(assert_return (invoke "f32.nearest" (f32.const 4.5)) (f32.const 4.))
(assert_return (invoke "f32.nearest" (f32.const -4.5)) (f32.const -4.))
(assert_return (invoke "f32.nearest" (f32.const -3.5)) (f32.const -4.))
(assert_return (invoke "f64.nearest" (f64.const 4.5)) (f64.const 4.))
(assert_return (invoke "f64.nearest" (f64.const -4.5)) (f64.const -4.))
(assert_return (invoke "f64.nearest" (f64.const -3.5)) (f64.const -4.))
(assert_return
  (invoke "f32.nearest" (f32.const -8388607.5))
  (f32.const -8388608.)
)
(assert_return
  (invoke "f32.nearest" (f32.const 8388607.5))
  (f32.const 8388608.)
)
(assert_return
  (invoke "f64.nearest" (f64.const -4.50359962737e+15))
  (f64.const -4.50359962737e+15)
)
(assert_return
  (invoke "f64.nearest" (f64.const 4.50359962737e+15))
  (f64.const 4.50359962737e+15)
)

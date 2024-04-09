; ModuleID = 'cminus'
source_filename = "/home/waang/cowork/tests/func/hidden_functional/07_arr_init_nd.sy"

declare i32  @getint()

declare i8  @getch()

declare i32  @getarray(i32 *)

declare float @getfloat()

declare float @getfarray(float*)

declare void @putint(i32 )

declare void @putfloat(float)

declare void @putch(i8 )

declare void @putf(i8 )

declare void @putarray(i32 )

declare void @putfarray(float)

define i32  @main() {
label_entry:
  %op0 = alloca [15 x i32 ]
  %op1 = alloca [15 x i32 ]
  %op2 = alloca [15 x i32 ]
  %op3 = getelementptr [15 x i32 ], [15 x i32 ]* %op2, i32  0, i32  0
  store i32  1, i32 * %op3
  %op4 = getelementptr [15 x i32 ], [15 x i32 ]* %op2, i32  0, i32  1
  store i32  2, i32 * %op4
  %op5 = getelementptr [15 x i32 ], [15 x i32 ]* %op2, i32  0, i32  2
  store i32  3, i32 * %op5
  %op6 = getelementptr [15 x i32 ], [15 x i32 ]* %op2, i32  0, i32  3
  store i32  4, i32 * %op6
  %op7 = getelementptr [15 x i32 ], [15 x i32 ]* %op2, i32  0, i32  4
  store i32  5, i32 * %op7
  %op8 = getelementptr [15 x i32 ], [15 x i32 ]* %op2, i32  0, i32  5
  store i32  6, i32 * %op8
  %op9 = getelementptr [15 x i32 ], [15 x i32 ]* %op2, i32  0, i32  6
  store i32  7, i32 * %op9
  %op10 = getelementptr [15 x i32 ], [15 x i32 ]* %op2, i32  0, i32  7
  store i32  8, i32 * %op10
  %op11 = getelementptr [15 x i32 ], [15 x i32 ]* %op2, i32  0, i32  8
  store i32  9, i32 * %op11
  %op12 = getelementptr [15 x i32 ], [15 x i32 ]* %op2, i32  0, i32  9
  store i32  10, i32 * %op12
  %op13 = getelementptr [15 x i32 ], [15 x i32 ]* %op2, i32  0, i32  10
  store i32  11, i32 * %op13
  %op14 = getelementptr [15 x i32 ], [15 x i32 ]* %op2, i32  0, i32  11
  store i32  12, i32 * %op14
  %op15 = getelementptr [15 x i32 ], [15 x i32 ]* %op2, i32  0, i32  12
  store i32  13, i32 * %op15
  %op16 = getelementptr [15 x i32 ], [15 x i32 ]* %op2, i32  0, i32  13
  store i32  14, i32 * %op16
  %op17 = getelementptr [15 x i32 ], [15 x i32 ]* %op2, i32  0, i32  14
  store i32  15, i32 * %op17
  %op18 = alloca [15 x i32 ]
  %op19 = getelementptr [15 x i32 ], [15 x i32 ]* %op18, i32  0, i32  0
  store i32  1, i32 * %op19
  %op20 = getelementptr [15 x i32 ], [15 x i32 ]* %op18, i32  0, i32  1
  store i32  2, i32 * %op20
  %op21 = getelementptr [15 x i32 ], [15 x i32 ]* %op18, i32  0, i32  2
  store i32  3, i32 * %op21
  %op22 = getelementptr [15 x i32 ], [15 x i32 ]* %op18, i32  0, i32  3
  store i32  4, i32 * %op22
  %op23 = getelementptr [15 x i32 ], [15 x i32 ]* %op18, i32  0, i32  4
  store i32  5, i32 * %op23
  %op24 = getelementptr [15 x i32 ], [15 x i32 ]* %op18, i32  0, i32  5
  store i32  6, i32 * %op24
  %op25 = getelementptr [15 x i32 ], [15 x i32 ]* %op18, i32  0, i32  6
  store i32  7, i32 * %op25
  %op26 = getelementptr [15 x i32 ], [15 x i32 ]* %op18, i32  0, i32  7
  store i32  8, i32 * %op26
  %op27 = getelementptr [15 x i32 ], [15 x i32 ]* %op18, i32  0, i32  8
  store i32  9, i32 * %op27
  %op28 = getelementptr [15 x i32 ], [15 x i32 ]* %op18, i32  0, i32  9
  store i32  10, i32 * %op28
  %op29 = getelementptr [15 x i32 ], [15 x i32 ]* %op18, i32  0, i32  10
  store i32  11, i32 * %op29
  %op30 = getelementptr [15 x i32 ], [15 x i32 ]* %op18, i32  0, i32  11
  store i32  12, i32 * %op30
  %op31 = getelementptr [15 x i32 ], [15 x i32 ]* %op18, i32  0, i32  12
  store i32  13, i32 * %op31
  %op32 = getelementptr [15 x i32 ], [15 x i32 ]* %op18, i32  0, i32  13
  store i32  14, i32 * %op32
  %op33 = getelementptr [15 x i32 ], [15 x i32 ]* %op18, i32  0, i32  14
  store i32  15, i32 * %op33
  %op34 = alloca [15 x i32 ]
  %op35 = getelementptr [15 x i32 ], [15 x i32 ]* %op34, i32  0, i32  0
  store i32  1, i32 * %op35
  %op36 = getelementptr [15 x i32 ], [15 x i32 ]* %op34, i32  0, i32  1
  store i32  2, i32 * %op36
  %op37 = getelementptr [15 x i32 ], [15 x i32 ]* %op34, i32  0, i32  2
  store i32  3, i32 * %op37
  %op38 = getelementptr [15 x i32 ], [15 x i32 ]* %op34, i32  0, i32  3
  store i32  4, i32 * %op38
  %op39 = getelementptr [15 x i32 ], [15 x i32 ]* %op34, i32  0, i32  4
  store i32  5, i32 * %op39
  %op40 = getelementptr [15 x i32 ], [15 x i32 ]* %op34, i32  0, i32  5
  store i32  6, i32 * %op40
  %op41 = getelementptr [15 x i32 ], [15 x i32 ]* %op34, i32  0, i32  6
  store i32  7, i32 * %op41
  %op42 = getelementptr [15 x i32 ], [15 x i32 ]* %op34, i32  0, i32  7
  store i32  8, i32 * %op42
  %op43 = getelementptr [15 x i32 ], [15 x i32 ]* %op34, i32  0, i32  8
  store i32  9, i32 * %op43
  %op44 = getelementptr [15 x i32 ], [15 x i32 ]* %op34, i32  0, i32  9
  store i32  10, i32 * %op44
  %op45 = getelementptr [15 x i32 ], [15 x i32 ]* %op34, i32  0, i32  10
  store i32  11, i32 * %op45
  %op46 = getelementptr [15 x i32 ], [15 x i32 ]* %op34, i32  0, i32  11
  store i32  12, i32 * %op46
  %op47 = getelementptr [15 x i32 ], [15 x i32 ]* %op34, i32  0, i32  12
  store i32  13, i32 * %op47
  %op48 = getelementptr [15 x i32 ], [15 x i32 ]* %op34, i32  0, i32  13
  store i32  14, i32 * %op48
  %op49 = getelementptr [15 x i32 ], [15 x i32 ]* %op34, i32  0, i32  14
  store i32  15, i32 * %op49
  %op50 = alloca [5 x i32 ]
  %op51 = alloca [15 x i32 ]
  %op52 = getelementptr [15 x i32 ], [15 x i32 ]* %op51, i32  0, i32  0
  store i32  1, i32 * %op52
  %op53 = getelementptr [15 x i32 ], [15 x i32 ]* %op51, i32  0, i32  1
  store i32  2, i32 * %op53
  %op54 = getelementptr [15 x i32 ], [15 x i32 ]* %op51, i32  0, i32  2
  store i32  3, i32 * %op54
  %op55 = getelementptr [15 x i32 ], [15 x i32 ]* %op51, i32  0, i32  3
  store i32  4, i32 * %op55
  %op56 = getelementptr [15 x i32 ], [15 x i32 ]* %op51, i32  0, i32  6
  store i32  7, i32 * %op56
  %op57 = getelementptr [15 x i32 ], [15 x i32 ]* %op51, i32  0, i32  9
  store i32  10, i32 * %op57
  %op58 = getelementptr [15 x i32 ], [15 x i32 ]* %op51, i32  0, i32  10
  store i32  11, i32 * %op58
  %op59 = getelementptr [15 x i32 ], [15 x i32 ]* %op51, i32  0, i32  11
  store i32  12, i32 * %op59
  %op60 = alloca [3 x i32 ]
  %op61 = alloca [24 x i32 ]
  %op62 = getelementptr [24 x i32 ], [24 x i32 ]* %op61, i32  0, i32  0
  store i32  1, i32 * %op62
  %op63 = getelementptr [24 x i32 ], [24 x i32 ]* %op61, i32  0, i32  1
  store i32  2, i32 * %op63
  %op64 = getelementptr [24 x i32 ], [24 x i32 ]* %op61, i32  0, i32  2
  store i32  3, i32 * %op64
  %op65 = getelementptr [24 x i32 ], [24 x i32 ]* %op61, i32  0, i32  3
  store i32  4, i32 * %op65
  %op66 = getelementptr [24 x i32 ], [24 x i32 ]* %op61, i32  0, i32  4
  store i32  5, i32 * %op66
  ret i32  4
}

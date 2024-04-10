; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/func/90_many_locals.sy"

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

define i32  @foo() {
label_entry:
  %op0 = alloca [16 x i32 ]
  %op1 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  0
  store i32  0, i32 * %op1
  %op2 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  1
  store i32  0, i32 * %op2
  %op3 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  2
  store i32  0, i32 * %op3
  %op4 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  3
  store i32  0, i32 * %op4
  %op5 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  4
  store i32  0, i32 * %op5
  %op6 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  5
  store i32  0, i32 * %op6
  %op7 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  6
  store i32  0, i32 * %op7
  %op8 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  7
  store i32  0, i32 * %op8
  %op9 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  8
  store i32  0, i32 * %op9
  %op10 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  9
  store i32  0, i32 * %op10
  %op11 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  10
  store i32  0, i32 * %op11
  %op12 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  11
  store i32  0, i32 * %op12
  %op13 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  12
  store i32  0, i32 * %op13
  %op14 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  13
  store i32  0, i32 * %op14
  %op15 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  14
  store i32  0, i32 * %op15
  %op16 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  15
  store i32  0, i32 * %op16
  %op17 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  0
  store i32  0, i32 * %op17
  %op18 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  1
  store i32  1, i32 * %op18
  %op19 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  2
  store i32  2, i32 * %op19
  %op20 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  3
  store i32  3, i32 * %op20
  %op21 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  4
  store i32  0, i32 * %op21
  %op22 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  5
  store i32  1, i32 * %op22
  %op23 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  6
  store i32  2, i32 * %op23
  %op24 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  7
  store i32  3, i32 * %op24
  %op25 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  8
  store i32  0, i32 * %op25
  %op26 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  9
  store i32  1, i32 * %op26
  %op27 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  10
  store i32  2, i32 * %op27
  %op28 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  11
  store i32  3, i32 * %op28
  %op29 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  12
  store i32  0, i32 * %op29
  %op30 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  13
  store i32  1, i32 * %op30
  %op31 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  14
  store i32  2, i32 * %op31
  %op32 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  15
  store i32  3, i32 * %op32
  %op33 = alloca i32 
  store i32  6, i32 * %op33
  %op34 = alloca i32 
  store i32  4, i32 * %op34
  %op35 = alloca i32 
  store i32  1, i32 * %op35
  %op36 = alloca i32 
  store i32  8, i32 * %op36
  %op37 = alloca i32 
  store i32  9, i32 * %op37
  %op38 = alloca i32 
  store i32  7, i32 * %op38
  %op39 = alloca i32 
  store i32  2, i32 * %op39
  %op40 = alloca i32 
  store i32  4, i32 * %op40
  %op41 = alloca i32 
  store i32  5, i32 * %op41
  %op42 = alloca i32 
  store i32  3, i32 * %op42
  %op43 = alloca i32 
  store i32  0, i32 * %op43
  %op44 = alloca i32 
  store i32  1, i32 * %op44
  %op45 = alloca i32 
  store i32  6, i32 * %op45
  %op46 = alloca i32 
  store i32  5, i32 * %op46
  %op47 = alloca i32 
  store i32  7, i32 * %op47
  %op48 = alloca i32 
  store i32  3, i32 * %op48
  %op49 = alloca i32 
  %op50 = load i32 , i32 * %op48
  %op51 = load i32 , i32 * %op47
  %op52 = add i32  %op50, %op51
  %op53 = load i32 , i32 * %op46
  %op54 = add i32  %op52, %op53
  %op55 = load i32 , i32 * %op45
  %op56 = add i32  %op54, %op55
  %op57 = load i32 , i32 * %op44
  %op58 = add i32  %op56, %op57
  %op59 = load i32 , i32 * %op43
  %op60 = add i32  %op58, %op59
  %op61 = load i32 , i32 * %op42
  %op62 = add i32  %op60, %op61
  %op63 = load i32 , i32 * %op41
  %op64 = add i32  %op62, %op63
  store i32  %op64, i32 * %op49
  %op65 = alloca i32 
  %op66 = load i32 , i32 * %op40
  %op67 = load i32 , i32 * %op39
  %op68 = add i32  %op66, %op67
  %op69 = load i32 , i32 * %op38
  %op70 = add i32  %op68, %op69
  %op71 = load i32 , i32 * %op37
  %op72 = add i32  %op70, %op71
  %op73 = load i32 , i32 * %op36
  %op74 = add i32  %op72, %op73
  %op75 = load i32 , i32 * %op35
  %op76 = add i32  %op74, %op75
  %op77 = load i32 , i32 * %op34
  %op78 = add i32  %op76, %op77
  %op79 = load i32 , i32 * %op33
  %op80 = add i32  %op78, %op79
  store i32  %op80, i32 * %op65
  %op81 = load i32 , i32 * %op49
  %op82 = load i32 , i32 * %op65
  %op83 = add i32  %op81, %op82
  %op84 = load i32 , i32 * %op48
  %op85 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  %op84
  %op86 = load i32 , i32 * %op85
  %op87 = add i32  %op83, %op86
  ret i32  %op87
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  store i32  6, i32 * %op0
  %op1 = alloca i32 
  store i32  4, i32 * %op1
  %op2 = alloca i32 
  store i32  1, i32 * %op2
  %op3 = alloca i32 
  store i32  8, i32 * %op3
  %op4 = alloca i32 
  store i32  9, i32 * %op4
  %op5 = alloca i32 
  store i32  7, i32 * %op5
  %op6 = alloca i32 
  store i32  2, i32 * %op6
  %op7 = alloca i32 
  store i32  4, i32 * %op7
  %op8 = alloca i32 
  store i32  5, i32 * %op8
  %op9 = alloca i32 
  store i32  3, i32 * %op9
  %op10 = alloca i32 
  store i32  0, i32 * %op10
  %op11 = alloca i32 
  store i32  1, i32 * %op11
  %op12 = alloca i32 
  store i32  6, i32 * %op12
  %op13 = alloca i32 
  store i32  5, i32 * %op13
  %op14 = alloca i32 
  store i32  7, i32 * %op14
  %op15 = alloca i32 
  store i32  3, i32 * %op15
  %op16 = alloca i32 
  %op17 = load i32 , i32 * %op15
  %op18 = load i32 , i32 * %op14
  %op19 = add i32  %op17, %op18
  %op20 = load i32 , i32 * %op13
  %op21 = add i32  %op19, %op20
  %op22 = load i32 , i32 * %op12
  %op23 = add i32  %op21, %op22
  %op24 = load i32 , i32 * %op11
  %op25 = add i32  %op23, %op24
  %op26 = load i32 , i32 * %op10
  %op27 = add i32  %op25, %op26
  %op28 = load i32 , i32 * %op9
  %op29 = add i32  %op27, %op28
  %op30 = load i32 , i32 * %op8
  %op31 = add i32  %op29, %op30
  store i32  %op31, i32 * %op16
  %op32 = alloca i32 
  %op33 = load i32 , i32 * %op7
  %op34 = load i32 , i32 * %op6
  %op35 = add i32  %op33, %op34
  %op36 = load i32 , i32 * %op5
  %op37 = add i32  %op35, %op36
  %op38 = load i32 , i32 * %op4
  %op39 = add i32  %op37, %op38
  %op40 = load i32 , i32 * %op3
  %op41 = add i32  %op39, %op40
  %op42 = load i32 , i32 * %op2
  %op43 = add i32  %op41, %op42
  %op44 = load i32 , i32 * %op1
  %op45 = add i32  %op43, %op44
  %op46 = load i32 , i32 * %op0
  %op47 = add i32  %op45, %op46
  store i32  %op47, i32 * %op32
  %op48 = load i32 , i32 * %op16
  %op49 = call i32  @foo()
  %op50 = add i32  %op48, %op49
  store i32  %op50, i32 * %op16
  %op51 = alloca i32 
  store i32  3, i32 * %op51
  %op52 = alloca i32 
  store i32  6, i32 * %op52
  %op53 = alloca i32 
  store i32  0, i32 * %op53
  %op54 = alloca i32 
  store i32  8, i32 * %op54
  %op55 = alloca i32 
  store i32  5, i32 * %op55
  %op56 = alloca i32 
  store i32  2, i32 * %op56
  %op57 = alloca i32 
  store i32  7, i32 * %op57
  %op58 = alloca i32 
  store i32  4, i32 * %op58
  %op59 = load i32 , i32 * %op32
  %op60 = call i32  @foo()
  %op61 = add i32  %op59, %op60
  store i32  %op61, i32 * %op32
  %op62 = load i32 , i32 * %op7
  store i32  %op62, i32 * %op15
  %op63 = load i32 , i32 * %op6
  store i32  %op63, i32 * %op14
  %op64 = load i32 , i32 * %op5
  store i32  %op64, i32 * %op13
  %op65 = load i32 , i32 * %op4
  store i32  %op65, i32 * %op12
  %op66 = load i32 , i32 * %op3
  store i32  %op66, i32 * %op11
  %op67 = load i32 , i32 * %op2
  store i32  %op67, i32 * %op10
  %op68 = load i32 , i32 * %op1
  store i32  %op68, i32 * %op9
  %op69 = load i32 , i32 * %op0
  store i32  %op69, i32 * %op8
  %op70 = alloca i32 
  %op71 = load i32 , i32 * %op58
  %op72 = load i32 , i32 * %op57
  %op73 = add i32  %op71, %op72
  %op74 = load i32 , i32 * %op56
  %op75 = add i32  %op73, %op74
  %op76 = load i32 , i32 * %op55
  %op77 = add i32  %op75, %op76
  %op78 = load i32 , i32 * %op54
  %op79 = add i32  %op77, %op78
  %op80 = load i32 , i32 * %op53
  %op81 = add i32  %op79, %op80
  %op82 = load i32 , i32 * %op52
  %op83 = add i32  %op81, %op82
  %op84 = load i32 , i32 * %op51
  %op85 = add i32  %op83, %op84
  store i32  %op85, i32 * %op70
  %op86 = alloca i32 
  %op87 = load i32 , i32 * %op16
  %op88 = load i32 , i32 * %op32
  %op89 = add i32  %op87, %op88
  %op90 = load i32 , i32 * %op70
  %op91 = add i32  %op89, %op90
  store i32  %op91, i32 * %op86
  %op92 = load i32 , i32 * %op86
  call void @putint(i32  %op92)
  %op93 = trunc i32  10 to i8 
  call void @putch(i8  %op93)
  ret i32  0
}

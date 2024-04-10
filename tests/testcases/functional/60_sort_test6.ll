; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/60_sort_test6.sy"

@n = global i32  zeroinitializer
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

define i32  @counting_sort(i32 * %arg0, i32 * %arg1, i32  %arg2) {
label_entry:
  %op3 = alloca i32 *
  store i32 * %arg0, i32 ** %op3
  %op4 = alloca i32 *
  store i32 * %arg1, i32 ** %op4
  %op5 = alloca i32 
  store i32  %arg2, i32 * %op5
  %op6 = alloca [10 x i32 ]
  %op7 = alloca i32 
  %op8 = alloca i32 
  %op9 = alloca i32 
  store i32  0, i32 * %op9
  store i32  0, i32 * %op7
  store i32  0, i32 * %op8
  br label %label10
label10:                                                ; preds = %label_entry, %label15
  %op11 = load i32 , i32 * %op9
  %op12 = icmp slt i32  %op11, 10
  %op13 = zext i1  %op12 to i32 
  %op14 = icmp ne i32  %op13, 0
  br i1  %op14, label %label15, label %label20
label15:                                                ; preds = %label10
  %op16 = load i32 , i32 * %op9
  %op17 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op16
  store i32  0, i32 * %op17
  %op18 = load i32 , i32 * %op9
  %op19 = add i32  %op18, 1
  store i32  %op19, i32 * %op9
  br label %label10
label20:                                                ; preds = %label10
  br label %label21
label21:                                                ; preds = %label20, %label27
  %op22 = load i32 , i32 * %op7
  %op23 = load i32 , i32 * %op5
  %op24 = icmp slt i32  %op22, %op23
  %op25 = zext i1  %op24 to i32 
  %op26 = icmp ne i32  %op25, 0
  br i1  %op26, label %label27, label %label42
label27:                                                ; preds = %label21
  %op28 = load i32 , i32 * %op7
  %op29 = load i32 *, i32 ** %op3
  %op30 = getelementptr i32 , i32 * %op29, i32  %op28
  %op31 = load i32 , i32 * %op30
  %op32 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op31
  %op33 = load i32 , i32 * %op32
  %op34 = add i32  %op33, 1
  %op35 = load i32 , i32 * %op7
  %op36 = load i32 *, i32 ** %op3
  %op37 = getelementptr i32 , i32 * %op36, i32  %op35
  %op38 = load i32 , i32 * %op37
  %op39 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op38
  store i32  %op34, i32 * %op39
  %op40 = load i32 , i32 * %op7
  %op41 = add i32  %op40, 1
  store i32  %op41, i32 * %op7
  br label %label21
label42:                                                ; preds = %label21
  store i32  1, i32 * %op9
  br label %label43
label43:                                                ; preds = %label42, %label48
  %op44 = load i32 , i32 * %op9
  %op45 = icmp slt i32  %op44, 10
  %op46 = zext i1  %op45 to i32 
  %op47 = icmp ne i32  %op46, 0
  br i1  %op47, label %label48, label %label61
label48:                                                ; preds = %label43
  %op49 = load i32 , i32 * %op9
  %op50 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op49
  %op51 = load i32 , i32 * %op50
  %op52 = load i32 , i32 * %op9
  %op53 = sub i32  %op52, 1
  %op54 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op53
  %op55 = load i32 , i32 * %op54
  %op56 = add i32  %op51, %op55
  %op57 = load i32 , i32 * %op9
  %op58 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op57
  store i32  %op56, i32 * %op58
  %op59 = load i32 , i32 * %op9
  %op60 = add i32  %op59, 1
  store i32  %op60, i32 * %op9
  br label %label43
label61:                                                ; preds = %label43
  %op62 = load i32 , i32 * %op5
  store i32  %op62, i32 * %op8
  br label %label63
label63:                                                ; preds = %label61, %label68
  %op64 = load i32 , i32 * %op8
  %op65 = icmp sgt i32  %op64, 0
  %op66 = zext i1  %op65 to i32 
  %op67 = icmp ne i32  %op66, 0
  br i1  %op67, label %label68, label %label99
label68:                                                ; preds = %label63
  %op69 = load i32 , i32 * %op8
  %op70 = sub i32  %op69, 1
  %op71 = load i32 *, i32 ** %op3
  %op72 = getelementptr i32 , i32 * %op71, i32  %op70
  %op73 = load i32 , i32 * %op72
  %op74 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op73
  %op75 = load i32 , i32 * %op74
  %op76 = sub i32  %op75, 1
  %op77 = load i32 , i32 * %op8
  %op78 = sub i32  %op77, 1
  %op79 = load i32 *, i32 ** %op3
  %op80 = getelementptr i32 , i32 * %op79, i32  %op78
  %op81 = load i32 , i32 * %op80
  %op82 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op81
  store i32  %op76, i32 * %op82
  %op83 = load i32 , i32 * %op8
  %op84 = sub i32  %op83, 1
  %op85 = load i32 *, i32 ** %op3
  %op86 = getelementptr i32 , i32 * %op85, i32  %op84
  %op87 = load i32 , i32 * %op86
  %op88 = load i32 , i32 * %op8
  %op89 = sub i32  %op88, 1
  %op90 = load i32 *, i32 ** %op3
  %op91 = getelementptr i32 , i32 * %op90, i32  %op89
  %op92 = load i32 , i32 * %op91
  %op93 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op92
  %op94 = load i32 , i32 * %op93
  %op95 = load i32 *, i32 ** %op4
  %op96 = getelementptr i32 , i32 * %op95, i32  %op94
  store i32  %op87, i32 * %op96
  %op97 = load i32 , i32 * %op8
  %op98 = sub i32  %op97, 1
  store i32  %op98, i32 * %op8
  br label %label63
label99:                                                ; preds = %label63
  ret i32  0
}
define i32  @main() {
label_entry:
  store i32  10, i32 * @n
  %op0 = alloca [10 x i32 ]
  %op1 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  0
  store i32  4, i32 * %op1
  %op2 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  1
  store i32  3, i32 * %op2
  %op3 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  2
  store i32  9, i32 * %op3
  %op4 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  3
  store i32  2, i32 * %op4
  %op5 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  4
  store i32  0, i32 * %op5
  %op6 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  5
  store i32  1, i32 * %op6
  %op7 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  6
  store i32  6, i32 * %op7
  %op8 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  7
  store i32  5, i32 * %op8
  %op9 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  8
  store i32  7, i32 * %op9
  %op10 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  9
  store i32  8, i32 * %op10
  %op11 = alloca i32 
  store i32  0, i32 * %op11
  %op12 = alloca [10 x i32 ]
  %op13 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  0
  %op14 = getelementptr [10 x i32 ], [10 x i32 ]* %op12, i32  0, i32  0
  %op15 = load i32 , i32 * @n
  %op16 = call i32  @counting_sort(i32 * %op13, i32 * %op14, i32  %op15)
  store i32  %op16, i32 * %op11
  br label %label17
label17:                                                ; preds = %label_entry, %label23
  %op18 = load i32 , i32 * %op11
  %op19 = load i32 , i32 * @n
  %op20 = icmp slt i32  %op18, %op19
  %op21 = zext i1  %op20 to i32 
  %op22 = icmp ne i32  %op21, 0
  br i1  %op22, label %label23, label %label33
label23:                                                ; preds = %label17
  %op24 = alloca i32 
  %op25 = load i32 , i32 * %op11
  %op26 = getelementptr [10 x i32 ], [10 x i32 ]* %op12, i32  0, i32  %op25
  %op27 = load i32 , i32 * %op26
  store i32  %op27, i32 * %op24
  %op28 = load i32 , i32 * %op24
  call void @putint(i32  %op28)
  store i32  10, i32 * %op24
  %op29 = load i32 , i32 * %op24
  %op30 = trunc i32  %op29 to i8 
  call void @putch(i8  %op30)
  %op31 = load i32 , i32 * %op11
  %op32 = add i32  %op31, 1
  store i32  %op32, i32 * %op11
  br label %label17
label33:                                                ; preds = %label17
  ret i32  0
}

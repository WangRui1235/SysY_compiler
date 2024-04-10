; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/74_kmp.sy"

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

define void @get_next(i32 * %arg0, i32 * %arg1) {
label_entry:
  %op2 = alloca i32 *
  store i32 * %arg0, i32 ** %op2
  %op3 = alloca i32 *
  store i32 * %arg1, i32 ** %op3
  %op4 = mul i32  1, -1
  %op5 = load i32 *, i32 ** %op3
  %op6 = getelementptr i32 , i32 * %op5, i32  0
  store i32  %op4, i32 * %op6
  %op7 = alloca i32 
  %op8 = mul i32  1, -1
  store i32  %op8, i32 * %op7
  %op9 = alloca i32 
  store i32  0, i32 * %op9
  br label %label10
label10:                                                ; preds = %label_entry, %label37
  %op11 = load i32 , i32 * %op9
  %op12 = load i32 *, i32 ** %op2
  %op13 = getelementptr i32 , i32 * %op12, i32  %op11
  %op14 = load i32 , i32 * %op13
  %op15 = icmp ne i32  %op14, 0
  br i1  %op15, label %label16, label %label22
label16:                                                ; preds = %label10
  %op17 = load i32 , i32 * %op7
  %op18 = mul i32  1, -1
  %op19 = icmp eq i32  %op17, %op18
  %op20 = zext i1  %op19 to i32 
  %op21 = icmp ne i32  %op20, 0
  br i1  %op21, label %label23, label %label38
label22:                                                ; preds = %label10
  ret void
label23:                                                ; preds = %label16, %label38
  %op24 = load i32 , i32 * %op7
  %op25 = add i32  %op24, 1
  store i32  %op25, i32 * %op7
  %op26 = load i32 , i32 * %op9
  %op27 = add i32  %op26, 1
  store i32  %op27, i32 * %op9
  %op28 = load i32 , i32 * %op7
  %op29 = load i32 , i32 * %op9
  %op30 = load i32 *, i32 ** %op3
  %op31 = getelementptr i32 , i32 * %op30, i32  %op29
  store i32  %op28, i32 * %op31
  br label %label37
label32:                                                ; preds = %label38
  %op33 = load i32 , i32 * %op7
  %op34 = load i32 *, i32 ** %op3
  %op35 = getelementptr i32 , i32 * %op34, i32  %op33
  %op36 = load i32 , i32 * %op35
  store i32  %op36, i32 * %op7
  br label %label37
label37:                                                ; preds = %label23, %label32
  br label %label10
label38:                                                ; preds = %label16
  %op39 = load i32 , i32 * %op9
  %op40 = load i32 *, i32 ** %op2
  %op41 = getelementptr i32 , i32 * %op40, i32  %op39
  %op42 = load i32 , i32 * %op41
  %op43 = load i32 , i32 * %op7
  %op44 = load i32 *, i32 ** %op2
  %op45 = getelementptr i32 , i32 * %op44, i32  %op43
  %op46 = load i32 , i32 * %op45
  %op47 = icmp eq i32  %op42, %op46
  %op48 = zext i1  %op47 to i32 
  %op49 = icmp ne i32  %op48, 0
  br i1  %op49, label %label23, label %label32
}
define i32  @KMP(i32 * %arg0, i32 * %arg1) {
label_entry:
  %op2 = alloca i32 *
  store i32 * %arg0, i32 ** %op2
  %op3 = alloca i32 *
  store i32 * %arg1, i32 ** %op3
  %op4 = alloca [4096 x i32 ]
  %op5 = load i32 *, i32 ** %op2
  %op6 = getelementptr [4096 x i32 ], [4096 x i32 ]* %op4, i32  0, i32  0
  call void @get_next(i32 * %op5, i32 * %op6)
  %op7 = alloca i32 
  store i32  0, i32 * %op7
  %op8 = alloca i32 
  store i32  0, i32 * %op8
  br label %label9
label9:                                                ; preds = %label_entry, %label48
  %op10 = load i32 , i32 * %op7
  %op11 = load i32 *, i32 ** %op3
  %op12 = getelementptr i32 , i32 * %op11, i32  %op10
  %op13 = load i32 , i32 * %op12
  %op14 = icmp ne i32  %op13, 0
  br i1  %op14, label %label15, label %label27
label15:                                                ; preds = %label9
  %op16 = load i32 , i32 * %op8
  %op17 = load i32 *, i32 ** %op2
  %op18 = getelementptr i32 , i32 * %op17, i32  %op16
  %op19 = load i32 , i32 * %op18
  %op20 = load i32 , i32 * %op7
  %op21 = load i32 *, i32 ** %op3
  %op22 = getelementptr i32 , i32 * %op21, i32  %op20
  %op23 = load i32 , i32 * %op22
  %op24 = icmp eq i32  %op19, %op23
  %op25 = zext i1  %op24 to i32 
  %op26 = icmp ne i32  %op25, 0
  br i1  %op26, label %label29, label %label39
label27:                                                ; preds = %label9
  %op28 = mul i32  1, -1
  ret i32  %op28
label29:                                                ; preds = %label15
  %op30 = load i32 , i32 * %op8
  %op31 = add i32  %op30, 1
  store i32  %op31, i32 * %op8
  %op32 = load i32 , i32 * %op7
  %op33 = add i32  %op32, 1
  store i32  %op33, i32 * %op7
  %op34 = load i32 , i32 * %op8
  %op35 = load i32 *, i32 ** %op2
  %op36 = getelementptr i32 , i32 * %op35, i32  %op34
  %op37 = load i32 , i32 * %op36
  %op38 = icmp eq i32  %op37, 0
  br i1  %op38, label %label49, label %label51
label39:                                                ; preds = %label15
  %op40 = load i32 , i32 * %op8
  %op41 = getelementptr [4096 x i32 ], [4096 x i32 ]* %op4, i32  0, i32  %op40
  %op42 = load i32 , i32 * %op41
  store i32  %op42, i32 * %op8
  %op43 = load i32 , i32 * %op8
  %op44 = mul i32  1, -1
  %op45 = icmp eq i32  %op43, %op44
  %op46 = zext i1  %op45 to i32 
  %op47 = icmp ne i32  %op46, 0
  br i1  %op47, label %label52, label %label57
label48:                                                ; preds = %label51, %label57
  br label %label9
label49:                                                ; preds = %label29
  %op50 = load i32 , i32 * %op7
  ret i32  %op50
label51:                                                ; preds = %label29
  br label %label48
label52:                                                ; preds = %label39
  %op53 = load i32 , i32 * %op8
  %op54 = add i32  %op53, 1
  store i32  %op54, i32 * %op8
  %op55 = load i32 , i32 * %op7
  %op56 = add i32  %op55, 1
  store i32  %op56, i32 * %op7
  br label %label57
label57:                                                ; preds = %label39, %label52
  br label %label48
}
define i32  @read_str(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = alloca i32 
  store i32  0, i32 * %op2
  br label %label3
label3:                                                ; preds = %label_entry, %label24
  %op4 = icmp ne i32  1, 0
  br i1  %op4, label %label5, label %label18
label5:                                                ; preds = %label3
  %op6 = call i8  @getch()
  %op7 = load i32 , i32 * %op2
  %op8 = load i32 *, i32 ** %op1
  %op9 = getelementptr i32 , i32 * %op8, i32  %op7
  %op10 = zext i8  %op6 to i32 
  store i32  %op10, i32 * %op9
  %op11 = load i32 , i32 * %op2
  %op12 = load i32 *, i32 ** %op1
  %op13 = getelementptr i32 , i32 * %op12, i32  %op11
  %op14 = load i32 , i32 * %op13
  %op15 = icmp eq i32  %op14, 10
  %op16 = zext i1  %op15 to i32 
  %op17 = icmp ne i32  %op16, 0
  br i1  %op17, label %label23, label %label24
label18:                                                ; preds = %label3, %label23
  %op19 = load i32 , i32 * %op2
  %op20 = load i32 *, i32 ** %op1
  %op21 = getelementptr i32 , i32 * %op20, i32  %op19
  store i32  0, i32 * %op21
  %op22 = load i32 , i32 * %op2
  ret i32  %op22
label23:                                                ; preds = %label5
  br label %label18
label24:                                                ; preds = %label5
  %op25 = load i32 , i32 * %op2
  %op26 = add i32  %op25, 1
  store i32  %op26, i32 * %op2
  br label %label3
}
define i32  @main() {
label_entry:
  %op0 = alloca [4096 x i32 ]
  %op1 = alloca [4096 x i32 ]
  %op2 = getelementptr [4096 x i32 ], [4096 x i32 ]* %op1, i32  0, i32  0
  %op3 = call i32  @read_str(i32 * %op2)
  %op4 = getelementptr [4096 x i32 ], [4096 x i32 ]* %op0, i32  0, i32  0
  %op5 = call i32  @read_str(i32 * %op4)
  %op6 = getelementptr [4096 x i32 ], [4096 x i32 ]* %op1, i32  0, i32  0
  %op7 = getelementptr [4096 x i32 ], [4096 x i32 ]* %op0, i32  0, i32  0
  %op8 = call i32  @KMP(i32 * %op6, i32 * %op7)
  call void @putint(i32  %op8)
  %op9 = trunc i32  10 to i8 
  call void @putch(i8  %op9)
  ret i32  0
}

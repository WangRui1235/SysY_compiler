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
  %op4 = load i32 *, i32 ** %op3
  %op5 = getelementptr i32 , i32 * %op4, i32  0
  store i32  -1, i32 * %op5
  %op6 = alloca i32 
  store i32  -1, i32 * %op6
  %op7 = alloca i32 
  store i32  0, i32 * %op7
  br label %label8
label8:                                                ; preds = %label_entry, %label34
  %op9 = load i32 , i32 * %op7
  %op10 = load i32 *, i32 ** %op2
  %op11 = getelementptr i32 , i32 * %op10, i32  %op9
  %op12 = load i32 , i32 * %op11
  %op13 = icmp ne i32  %op12, 0
  br i1  %op13, label %label14, label %label19
label14:                                                ; preds = %label8
  %op15 = load i32 , i32 * %op6
  %op16 = icmp eq i32  %op15, -1
  %op17 = zext i1  %op16 to i32 
  %op18 = icmp ne i32  %op17, 0
  br i1  %op18, label %label20, label %label35
label19:                                                ; preds = %label8
  ret void
label20:                                                ; preds = %label14, %label35
  %op21 = load i32 , i32 * %op6
  %op22 = add i32  %op21, 1
  store i32  %op22, i32 * %op6
  %op23 = load i32 , i32 * %op7
  %op24 = add i32  %op23, 1
  store i32  %op24, i32 * %op7
  %op25 = load i32 , i32 * %op6
  %op26 = load i32 , i32 * %op7
  %op27 = load i32 *, i32 ** %op3
  %op28 = getelementptr i32 , i32 * %op27, i32  %op26
  store i32  %op25, i32 * %op28
  br label %label34
label29:                                                ; preds = %label35
  %op30 = load i32 , i32 * %op6
  %op31 = load i32 *, i32 ** %op3
  %op32 = getelementptr i32 , i32 * %op31, i32  %op30
  %op33 = load i32 , i32 * %op32
  store i32  %op33, i32 * %op6
  br label %label34
label34:                                                ; preds = %label20, %label29
  br label %label8
label35:                                                ; preds = %label14
  %op36 = load i32 , i32 * %op7
  %op37 = load i32 *, i32 ** %op2
  %op38 = getelementptr i32 , i32 * %op37, i32  %op36
  %op39 = load i32 , i32 * %op38
  %op40 = load i32 , i32 * %op6
  %op41 = load i32 *, i32 ** %op2
  %op42 = getelementptr i32 , i32 * %op41, i32  %op40
  %op43 = load i32 , i32 * %op42
  %op44 = icmp eq i32  %op39, %op43
  %op45 = zext i1  %op44 to i32 
  %op46 = icmp ne i32  %op45, 0
  br i1  %op46, label %label20, label %label29
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
label9:                                                ; preds = %label_entry, %label46
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
  br i1  %op26, label %label28, label %label38
label27:                                                ; preds = %label9
  ret i32  -1
label28:                                                ; preds = %label15
  %op29 = load i32 , i32 * %op8
  %op30 = add i32  %op29, 1
  store i32  %op30, i32 * %op8
  %op31 = load i32 , i32 * %op7
  %op32 = add i32  %op31, 1
  store i32  %op32, i32 * %op7
  %op33 = load i32 , i32 * %op8
  %op34 = load i32 *, i32 ** %op2
  %op35 = getelementptr i32 , i32 * %op34, i32  %op33
  %op36 = load i32 , i32 * %op35
  %op37 = icmp eq i32  %op36, 0
  br i1  %op37, label %label47, label %label49
label38:                                                ; preds = %label15
  %op39 = load i32 , i32 * %op8
  %op40 = getelementptr [4096 x i32 ], [4096 x i32 ]* %op4, i32  0, i32  %op39
  %op41 = load i32 , i32 * %op40
  store i32  %op41, i32 * %op8
  %op42 = load i32 , i32 * %op8
  %op43 = icmp eq i32  %op42, -1
  %op44 = zext i1  %op43 to i32 
  %op45 = icmp ne i32  %op44, 0
  br i1  %op45, label %label50, label %label55
label46:                                                ; preds = %label49, %label55
  br label %label9
label47:                                                ; preds = %label28
  %op48 = load i32 , i32 * %op7
  ret i32  %op48
label49:                                                ; preds = %label28
  br label %label46
label50:                                                ; preds = %label38
  %op51 = load i32 , i32 * %op8
  %op52 = add i32  %op51, 1
  store i32  %op52, i32 * %op8
  %op53 = load i32 , i32 * %op7
  %op54 = add i32  %op53, 1
  store i32  %op54, i32 * %op7
  br label %label55
label55:                                                ; preds = %label38, %label50
  br label %label46
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

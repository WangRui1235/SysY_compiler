; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/59_sort_test5.sy"

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

define i32  @swap(i32 * %arg0, i32  %arg1, i32  %arg2) {
label_entry:
  %op3 = alloca i32 *
  store i32 * %arg0, i32 ** %op3
  %op4 = alloca i32 
  store i32  %arg1, i32 * %op4
  %op5 = alloca i32 
  store i32  %arg2, i32 * %op5
  %op6 = alloca i32 
  %op7 = load i32 , i32 * %op4
  %op8 = load i32 *, i32 ** %op3
  %op9 = getelementptr i32 , i32 * %op8, i32  %op7
  %op10 = load i32 , i32 * %op9
  store i32  %op10, i32 * %op6
  %op11 = load i32 , i32 * %op5
  %op12 = load i32 *, i32 ** %op3
  %op13 = getelementptr i32 , i32 * %op12, i32  %op11
  %op14 = load i32 , i32 * %op13
  %op15 = load i32 , i32 * %op4
  %op16 = load i32 *, i32 ** %op3
  %op17 = getelementptr i32 , i32 * %op16, i32  %op15
  store i32  %op14, i32 * %op17
  %op18 = load i32 , i32 * %op6
  %op19 = load i32 , i32 * %op5
  %op20 = load i32 *, i32 ** %op3
  %op21 = getelementptr i32 , i32 * %op20, i32  %op19
  store i32  %op18, i32 * %op21
  ret i32  0
}
define i32  @heap_ajust(i32 * %arg0, i32  %arg1, i32  %arg2) {
label_entry:
  %op3 = alloca i32 *
  store i32 * %arg0, i32 ** %op3
  %op4 = alloca i32 
  store i32  %arg1, i32 * %op4
  %op5 = alloca i32 
  store i32  %arg2, i32 * %op5
  %op6 = alloca i32 
  %op7 = load i32 , i32 * %op4
  store i32  %op7, i32 * %op6
  %op8 = alloca i32 
  %op9 = load i32 , i32 * %op6
  %op10 = mul i32  %op9, 2
  %op11 = add i32  %op10, 1
  store i32  %op11, i32 * %op8
  br label %label12
label12:                                                ; preds = %label_entry, %label64
  %op13 = load i32 , i32 * %op8
  %op14 = load i32 , i32 * %op5
  %op15 = add i32  %op14, 1
  %op16 = icmp slt i32  %op13, %op15
  %op17 = zext i1  %op16 to i32 
  %op18 = icmp ne i32  %op17, 0
  br i1  %op18, label %label19, label %label25
label19:                                                ; preds = %label12
  %op20 = load i32 , i32 * %op8
  %op21 = load i32 , i32 * %op5
  %op22 = icmp slt i32  %op20, %op21
  %op23 = zext i1  %op22 to i32 
  %op24 = icmp ne i32  %op23, 0
  br i1  %op24, label %label41, label %label29
label25:                                                ; preds = %label12
  ret i32  0
label26:                                                ; preds = %label41
  %op27 = load i32 , i32 * %op8
  %op28 = add i32  %op27, 1
  store i32  %op28, i32 * %op8
  br label %label29
label29:                                                ; preds = %label19, %label41, %label26
  %op30 = load i32 , i32 * %op6
  %op31 = load i32 *, i32 ** %op3
  %op32 = getelementptr i32 , i32 * %op31, i32  %op30
  %op33 = load i32 , i32 * %op32
  %op34 = load i32 , i32 * %op8
  %op35 = load i32 *, i32 ** %op3
  %op36 = getelementptr i32 , i32 * %op35, i32  %op34
  %op37 = load i32 , i32 * %op36
  %op38 = icmp sgt i32  %op33, %op37
  %op39 = zext i1  %op38 to i32 
  %op40 = icmp ne i32  %op39, 0
  br i1  %op40, label %label54, label %label55
label41:                                                ; preds = %label19
  %op42 = load i32 , i32 * %op8
  %op43 = load i32 *, i32 ** %op3
  %op44 = getelementptr i32 , i32 * %op43, i32  %op42
  %op45 = load i32 , i32 * %op44
  %op46 = load i32 , i32 * %op8
  %op47 = add i32  %op46, 1
  %op48 = load i32 *, i32 ** %op3
  %op49 = getelementptr i32 , i32 * %op48, i32  %op47
  %op50 = load i32 , i32 * %op49
  %op51 = icmp slt i32  %op45, %op50
  %op52 = zext i1  %op51 to i32 
  %op53 = icmp ne i32  %op52, 0
  br i1  %op53, label %label26, label %label29
label54:                                                ; preds = %label29
  ret i32  0
label55:                                                ; preds = %label29
  %op56 = load i32 *, i32 ** %op3
  %op57 = load i32 , i32 * %op6
  %op58 = load i32 , i32 * %op8
  %op59 = call i32  @swap(i32 * %op56, i32  %op57, i32  %op58)
  store i32  %op59, i32 * %op6
  %op60 = load i32 , i32 * %op8
  store i32  %op60, i32 * %op6
  %op61 = load i32 , i32 * %op6
  %op62 = mul i32  %op61, 2
  %op63 = add i32  %op62, 1
  store i32  %op63, i32 * %op8
  br label %label64
label64:                                                ; preds = %label55
  br label %label12
}
define i32  @heap_sort(i32 * %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 *
  store i32 * %arg0, i32 ** %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = alloca i32 
  %op5 = alloca i32 
  %op6 = load i32 , i32 * %op3
  %op7 = sdiv i32  %op6, 2
  %op8 = sub i32  %op7, 1
  store i32  %op8, i32 * %op4
  br label %label9
label9:                                                ; preds = %label_entry, %label14
  %op10 = load i32 , i32 * %op4
  %op11 = icmp sgt i32  %op10, -1
  %op12 = zext i1  %op11 to i32 
  %op13 = icmp ne i32  %op12, 0
  br i1  %op13, label %label14, label %label23
label14:                                                ; preds = %label9
  %op15 = load i32 , i32 * %op3
  %op16 = sub i32  %op15, 1
  store i32  %op16, i32 * %op5
  %op17 = load i32 *, i32 ** %op2
  %op18 = load i32 , i32 * %op4
  %op19 = load i32 , i32 * %op5
  %op20 = call i32  @heap_ajust(i32 * %op17, i32  %op18, i32  %op19)
  store i32  %op20, i32 * %op5
  %op21 = load i32 , i32 * %op4
  %op22 = sub i32  %op21, 1
  store i32  %op22, i32 * %op4
  br label %label9
label23:                                                ; preds = %label9
  %op24 = load i32 , i32 * %op3
  %op25 = sub i32  %op24, 1
  store i32  %op25, i32 * %op4
  br label %label26
label26:                                                ; preds = %label23, %label31
  %op27 = load i32 , i32 * %op4
  %op28 = icmp sgt i32  %op27, 0
  %op29 = zext i1  %op28 to i32 
  %op30 = icmp ne i32  %op29, 0
  br i1  %op30, label %label31, label %label45
label31:                                                ; preds = %label26
  %op32 = alloca i32 
  store i32  0, i32 * %op32
  %op33 = load i32 *, i32 ** %op2
  %op34 = load i32 , i32 * %op32
  %op35 = load i32 , i32 * %op4
  %op36 = call i32  @swap(i32 * %op33, i32  %op34, i32  %op35)
  store i32  %op36, i32 * %op5
  %op37 = load i32 , i32 * %op4
  %op38 = sub i32  %op37, 1
  store i32  %op38, i32 * %op5
  %op39 = load i32 *, i32 ** %op2
  %op40 = load i32 , i32 * %op32
  %op41 = load i32 , i32 * %op5
  %op42 = call i32  @heap_ajust(i32 * %op39, i32  %op40, i32  %op41)
  store i32  %op42, i32 * %op5
  %op43 = load i32 , i32 * %op4
  %op44 = sub i32  %op43, 1
  store i32  %op44, i32 * %op4
  br label %label26
label45:                                                ; preds = %label26
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
  %op12 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  0
  %op13 = load i32 , i32 * @n
  %op14 = call i32  @heap_sort(i32 * %op12, i32  %op13)
  store i32  %op14, i32 * %op11
  br label %label15
label15:                                                ; preds = %label_entry, %label21
  %op16 = load i32 , i32 * %op11
  %op17 = load i32 , i32 * @n
  %op18 = icmp slt i32  %op16, %op17
  %op19 = zext i1  %op18 to i32 
  %op20 = icmp ne i32  %op19, 0
  br i1  %op20, label %label21, label %label31
label21:                                                ; preds = %label15
  %op22 = alloca i32 
  %op23 = load i32 , i32 * %op11
  %op24 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  %op23
  %op25 = load i32 , i32 * %op24
  store i32  %op25, i32 * %op22
  %op26 = load i32 , i32 * %op22
  call void @putint(i32  %op26)
  store i32  10, i32 * %op22
  %op27 = load i32 , i32 * %op22
  %op28 = trunc i32  %op27 to i8 
  call void @putch(i8  %op28)
  %op29 = load i32 , i32 * %op11
  %op30 = add i32  %op29, 1
  store i32  %op30, i32 * %op11
  br label %label15
label31:                                                ; preds = %label15
  ret i32  0
}

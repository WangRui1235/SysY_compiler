; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/58_sort_test4.sy"

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

define i32  @select_sort(i32 * %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 *
  store i32 * %arg0, i32 ** %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = alloca i32 
  %op5 = alloca i32 
  %op6 = alloca i32 
  store i32  0, i32 * %op4
  br label %label7
label7:                                                ; preds = %label_entry, %label65
  %op8 = load i32 , i32 * %op4
  %op9 = load i32 , i32 * %op3
  %op10 = sub i32  %op9, 1
  %op11 = icmp slt i32  %op8, %op10
  %op12 = zext i1  %op11 to i32 
  %op13 = icmp ne i32  %op12, 0
  br i1  %op13, label %label14, label %label18
label14:                                                ; preds = %label7
  %op15 = load i32 , i32 * %op4
  store i32  %op15, i32 * %op6
  %op16 = load i32 , i32 * %op4
  %op17 = add i32  %op16, 1
  store i32  %op17, i32 * %op5
  br label %label19
label18:                                                ; preds = %label7
  ret i32  0
label19:                                                ; preds = %label14, %label45
  %op20 = load i32 , i32 * %op5
  %op21 = load i32 , i32 * %op3
  %op22 = icmp slt i32  %op20, %op21
  %op23 = zext i1  %op22 to i32 
  %op24 = icmp ne i32  %op23, 0
  br i1  %op24, label %label25, label %label37
label25:                                                ; preds = %label19
  %op26 = load i32 , i32 * %op6
  %op27 = load i32 *, i32 ** %op2
  %op28 = getelementptr i32 , i32 * %op27, i32  %op26
  %op29 = load i32 , i32 * %op28
  %op30 = load i32 , i32 * %op5
  %op31 = load i32 *, i32 ** %op2
  %op32 = getelementptr i32 , i32 * %op31, i32  %op30
  %op33 = load i32 , i32 * %op32
  %op34 = icmp sgt i32  %op29, %op33
  %op35 = zext i1  %op34 to i32 
  %op36 = icmp ne i32  %op35, 0
  br i1  %op36, label %label43, label %label45
label37:                                                ; preds = %label19
  %op38 = load i32 , i32 * %op6
  %op39 = load i32 , i32 * %op4
  %op40 = icmp ne i32  %op38, %op39
  %op41 = zext i1  %op40 to i32 
  %op42 = icmp ne i32  %op41, 0
  br i1  %op42, label %label48, label %label65
label43:                                                ; preds = %label25
  %op44 = load i32 , i32 * %op5
  store i32  %op44, i32 * %op6
  br label %label45
label45:                                                ; preds = %label25, %label43
  %op46 = load i32 , i32 * %op5
  %op47 = add i32  %op46, 1
  store i32  %op47, i32 * %op5
  br label %label19
label48:                                                ; preds = %label37
  %op49 = alloca i32 
  %op50 = load i32 , i32 * %op6
  %op51 = load i32 *, i32 ** %op2
  %op52 = getelementptr i32 , i32 * %op51, i32  %op50
  %op53 = load i32 , i32 * %op52
  store i32  %op53, i32 * %op49
  %op54 = load i32 , i32 * %op4
  %op55 = load i32 *, i32 ** %op2
  %op56 = getelementptr i32 , i32 * %op55, i32  %op54
  %op57 = load i32 , i32 * %op56
  %op58 = load i32 , i32 * %op6
  %op59 = load i32 *, i32 ** %op2
  %op60 = getelementptr i32 , i32 * %op59, i32  %op58
  store i32  %op57, i32 * %op60
  %op61 = load i32 , i32 * %op49
  %op62 = load i32 , i32 * %op4
  %op63 = load i32 *, i32 ** %op2
  %op64 = getelementptr i32 , i32 * %op63, i32  %op62
  store i32  %op61, i32 * %op64
  br label %label65
label65:                                                ; preds = %label37, %label48
  %op66 = load i32 , i32 * %op4
  %op67 = add i32  %op66, 1
  store i32  %op67, i32 * %op4
  br label %label7
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
  %op14 = call i32  @select_sort(i32 * %op12, i32  %op13)
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

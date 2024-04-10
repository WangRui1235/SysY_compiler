; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/55_sort_test1.sy"

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

define i32  @bubblesort(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = alloca i32 
  %op3 = alloca i32 
  store i32  0, i32 * %op2
  br label %label4
label4:                                                ; preds = %label_entry, %label35
  %op5 = load i32 , i32 * %op2
  %op6 = load i32 , i32 * @n
  %op7 = sub i32  %op6, 1
  %op8 = icmp slt i32  %op5, %op7
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label12
label11:                                                ; preds = %label4
  store i32  0, i32 * %op3
  br label %label13
label12:                                                ; preds = %label4
  ret i32  0
label13:                                                ; preds = %label11, %label57
  %op14 = load i32 , i32 * %op3
  %op15 = load i32 , i32 * @n
  %op16 = load i32 , i32 * %op2
  %op17 = sub i32  %op15, %op16
  %op18 = sub i32  %op17, 1
  %op19 = icmp slt i32  %op14, %op18
  %op20 = zext i1  %op19 to i32 
  %op21 = icmp ne i32  %op20, 0
  br i1  %op21, label %label22, label %label35
label22:                                                ; preds = %label13
  %op23 = load i32 , i32 * %op3
  %op24 = load i32 *, i32 ** %op1
  %op25 = getelementptr i32 , i32 * %op24, i32  %op23
  %op26 = load i32 , i32 * %op25
  %op27 = load i32 , i32 * %op3
  %op28 = add i32  %op27, 1
  %op29 = load i32 *, i32 ** %op1
  %op30 = getelementptr i32 , i32 * %op29, i32  %op28
  %op31 = load i32 , i32 * %op30
  %op32 = icmp sgt i32  %op26, %op31
  %op33 = zext i1  %op32 to i32 
  %op34 = icmp ne i32  %op33, 0
  br i1  %op34, label %label38, label %label57
label35:                                                ; preds = %label13
  %op36 = load i32 , i32 * %op2
  %op37 = add i32  %op36, 1
  store i32  %op37, i32 * %op2
  br label %label4
label38:                                                ; preds = %label22
  %op39 = alloca i32 
  %op40 = load i32 , i32 * %op3
  %op41 = add i32  %op40, 1
  %op42 = load i32 *, i32 ** %op1
  %op43 = getelementptr i32 , i32 * %op42, i32  %op41
  %op44 = load i32 , i32 * %op43
  store i32  %op44, i32 * %op39
  %op45 = load i32 , i32 * %op3
  %op46 = load i32 *, i32 ** %op1
  %op47 = getelementptr i32 , i32 * %op46, i32  %op45
  %op48 = load i32 , i32 * %op47
  %op49 = load i32 , i32 * %op3
  %op50 = add i32  %op49, 1
  %op51 = load i32 *, i32 ** %op1
  %op52 = getelementptr i32 , i32 * %op51, i32  %op50
  store i32  %op48, i32 * %op52
  %op53 = load i32 , i32 * %op39
  %op54 = load i32 , i32 * %op3
  %op55 = load i32 *, i32 ** %op1
  %op56 = getelementptr i32 , i32 * %op55, i32  %op54
  store i32  %op53, i32 * %op56
  br label %label57
label57:                                                ; preds = %label22, %label38
  %op58 = load i32 , i32 * %op3
  %op59 = add i32  %op58, 1
  store i32  %op59, i32 * %op3
  br label %label13
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
  %op12 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  0
  %op13 = call i32  @bubblesort(i32 * %op12)
  store i32  %op13, i32 * %op11
  br label %label14
label14:                                                ; preds = %label_entry, %label20
  %op15 = load i32 , i32 * %op11
  %op16 = load i32 , i32 * @n
  %op17 = icmp slt i32  %op15, %op16
  %op18 = zext i1  %op17 to i32 
  %op19 = icmp ne i32  %op18, 0
  br i1  %op19, label %label20, label %label30
label20:                                                ; preds = %label14
  %op21 = alloca i32 
  %op22 = load i32 , i32 * %op11
  %op23 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  %op22
  %op24 = load i32 , i32 * %op23
  store i32  %op24, i32 * %op21
  %op25 = load i32 , i32 * %op21
  call void @putint(i32  %op25)
  store i32  10, i32 * %op21
  %op26 = load i32 , i32 * %op21
  %op27 = trunc i32  %op26 to i8 
  call void @putch(i8  %op27)
  %op28 = load i32 , i32 * %op11
  %op29 = add i32  %op28, 1
  store i32  %op29, i32 * %op11
  br label %label14
label30:                                                ; preds = %label14
  ret i32  0
}

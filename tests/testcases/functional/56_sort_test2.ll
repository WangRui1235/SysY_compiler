; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/56_sort_test2.sy"

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

define i32  @insertsort(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = alloca i32 
  store i32  1, i32 * %op2
  br label %label3
label3:                                                ; preds = %label_entry, %label35
  %op4 = load i32 , i32 * %op2
  %op5 = load i32 , i32 * @n
  %op6 = icmp slt i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label18
label9:                                                ; preds = %label3
  %op10 = alloca i32 
  %op11 = load i32 , i32 * %op2
  %op12 = load i32 *, i32 ** %op1
  %op13 = getelementptr i32 , i32 * %op12, i32  %op11
  %op14 = load i32 , i32 * %op13
  store i32  %op14, i32 * %op10
  %op15 = alloca i32 
  %op16 = load i32 , i32 * %op2
  %op17 = sub i32  %op16, 1
  store i32  %op17, i32 * %op15
  br label %label19
label18:                                                ; preds = %label3
  ret i32  0
label19:                                                ; preds = %label9, %label24
  %op20 = load i32 , i32 * %op15
  %op21 = icmp sgt i32  %op20, -1
  %op22 = zext i1  %op21 to i32 
  %op23 = icmp ne i32  %op22, 0
  br i1  %op23, label %label43, label %label35
label24:                                                ; preds = %label43
  %op25 = load i32 , i32 * %op15
  %op26 = load i32 *, i32 ** %op1
  %op27 = getelementptr i32 , i32 * %op26, i32  %op25
  %op28 = load i32 , i32 * %op27
  %op29 = load i32 , i32 * %op15
  %op30 = add i32  %op29, 1
  %op31 = load i32 *, i32 ** %op1
  %op32 = getelementptr i32 , i32 * %op31, i32  %op30
  store i32  %op28, i32 * %op32
  %op33 = load i32 , i32 * %op15
  %op34 = sub i32  %op33, 1
  store i32  %op34, i32 * %op15
  br label %label19
label35:                                                ; preds = %label19, %label43
  %op36 = load i32 , i32 * %op10
  %op37 = load i32 , i32 * %op15
  %op38 = add i32  %op37, 1
  %op39 = load i32 *, i32 ** %op1
  %op40 = getelementptr i32 , i32 * %op39, i32  %op38
  store i32  %op36, i32 * %op40
  %op41 = load i32 , i32 * %op2
  %op42 = add i32  %op41, 1
  store i32  %op42, i32 * %op2
  br label %label3
label43:                                                ; preds = %label19
  %op44 = load i32 , i32 * %op10
  %op45 = load i32 , i32 * %op15
  %op46 = load i32 *, i32 ** %op1
  %op47 = getelementptr i32 , i32 * %op46, i32  %op45
  %op48 = load i32 , i32 * %op47
  %op49 = icmp slt i32  %op44, %op48
  %op50 = zext i1  %op49 to i32 
  %op51 = icmp ne i32  %op50, 0
  br i1  %op51, label %label24, label %label35
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
  %op13 = call i32  @insertsort(i32 * %op12)
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

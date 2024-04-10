; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/76_n_queens.sy"

@ans = global [50 x i32 ] zeroinitializer
@sum = global i32  0
@n = global i32  zeroinitializer
@row = global [50 x i32 ] zeroinitializer
@line1 = global [50 x i32 ] zeroinitializer
@line2 = global [100 x i32 ] zeroinitializer
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

define void @printans() {
label_entry:
  %op0 = load i32 , i32 * @sum
  %op1 = add i32  %op0, 1
  store i32  %op1, i32 * @sum
  %op2 = alloca i32 
  store i32  1, i32 * %op2
  br label %label3
label3:                                                ; preds = %label_entry, %label23
  %op4 = load i32 , i32 * %op2
  %op5 = load i32 , i32 * @n
  %op6 = icmp sle i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label18
label9:                                                ; preds = %label3
  %op10 = load i32 , i32 * %op2
  %op11 = getelementptr [50 x i32 ], [50 x i32 ]* @ans, i32  0, i32  %op10
  %op12 = load i32 , i32 * %op11
  call void @putint(i32  %op12)
  %op13 = load i32 , i32 * %op2
  %op14 = load i32 , i32 * @n
  %op15 = icmp eq i32  %op13, %op14
  %op16 = zext i1  %op15 to i32 
  %op17 = icmp ne i32  %op16, 0
  br i1  %op17, label %label19, label %label21
label18:                                                ; preds = %label3
  ret void
label19:                                                ; preds = %label9
  %op20 = trunc i32  10 to i8 
  call void @putch(i8  %op20)
  ret void
label21:                                                ; preds = %label9
  %op22 = trunc i32  32 to i8 
  call void @putch(i8  %op22)
  br label %label23
label23:                                                ; preds = %label21
  %op24 = load i32 , i32 * %op2
  %op25 = add i32  %op24, 1
  store i32  %op25, i32 * %op2
  br label %label3
}
define void @f(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = alloca i32 
  store i32  1, i32 * %op2
  br label %label3
label3:                                                ; preds = %label_entry, %label26
  %op4 = load i32 , i32 * %op2
  %op5 = load i32 , i32 * @n
  %op6 = icmp sle i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label16
label9:                                                ; preds = %label3
  %op10 = load i32 , i32 * %op2
  %op11 = getelementptr [50 x i32 ], [50 x i32 ]* @row, i32  0, i32  %op10
  %op12 = load i32 , i32 * %op11
  %op13 = icmp ne i32  %op12, 1
  %op14 = zext i1  %op13 to i32 
  %op15 = icmp ne i32  %op14, 0
  br i1  %op15, label %label38, label %label26
label16:                                                ; preds = %label3
  ret void
label17:                                                ; preds = %label29
  %op18 = load i32 , i32 * %op2
  %op19 = load i32 , i32 * %op1
  %op20 = getelementptr [50 x i32 ], [50 x i32 ]* @ans, i32  0, i32  %op19
  store i32  %op18, i32 * %op20
  %op21 = load i32 , i32 * %op1
  %op22 = load i32 , i32 * @n
  %op23 = icmp eq i32  %op21, %op22
  %op24 = zext i1  %op23 to i32 
  %op25 = icmp ne i32  %op24, 0
  br i1  %op25, label %label47, label %label48
label26:                                                ; preds = %label9, %label38, %label29, %label48
  %op27 = load i32 , i32 * %op2
  %op28 = add i32  %op27, 1
  store i32  %op28, i32 * %op2
  br label %label3
label29:                                                ; preds = %label38
  %op30 = load i32 , i32 * @n
  %op31 = load i32 , i32 * %op1
  %op32 = add i32  %op30, %op31
  %op33 = load i32 , i32 * %op2
  %op34 = sub i32  %op32, %op33
  %op35 = getelementptr [100 x i32 ], [100 x i32 ]* @line2, i32  0, i32  %op34
  %op36 = load i32 , i32 * %op35
  %op37 = icmp eq i32  %op36, 0
  br i1  %op37, label %label17, label %label26
label38:                                                ; preds = %label9
  %op39 = load i32 , i32 * %op1
  %op40 = load i32 , i32 * %op2
  %op41 = add i32  %op39, %op40
  %op42 = getelementptr [50 x i32 ], [50 x i32 ]* @line1, i32  0, i32  %op41
  %op43 = load i32 , i32 * %op42
  %op44 = icmp eq i32  %op43, 0
  %op45 = zext i1  %op44 to i32 
  %op46 = icmp ne i32  %op45, 0
  br i1  %op46, label %label29, label %label26
label47:                                                ; preds = %label17
  call void @printans()
  br label %label48
label48:                                                ; preds = %label17, %label47
  %op49 = load i32 , i32 * %op2
  %op50 = getelementptr [50 x i32 ], [50 x i32 ]* @row, i32  0, i32  %op49
  store i32  1, i32 * %op50
  %op51 = load i32 , i32 * %op1
  %op52 = load i32 , i32 * %op2
  %op53 = add i32  %op51, %op52
  %op54 = getelementptr [50 x i32 ], [50 x i32 ]* @line1, i32  0, i32  %op53
  store i32  1, i32 * %op54
  %op55 = load i32 , i32 * @n
  %op56 = load i32 , i32 * %op1
  %op57 = add i32  %op55, %op56
  %op58 = load i32 , i32 * %op2
  %op59 = sub i32  %op57, %op58
  %op60 = getelementptr [100 x i32 ], [100 x i32 ]* @line2, i32  0, i32  %op59
  store i32  1, i32 * %op60
  %op61 = load i32 , i32 * %op1
  %op62 = add i32  %op61, 1
  call void @f(i32  %op62)
  %op63 = load i32 , i32 * %op2
  %op64 = getelementptr [50 x i32 ], [50 x i32 ]* @row, i32  0, i32  %op63
  store i32  0, i32 * %op64
  %op65 = load i32 , i32 * %op1
  %op66 = load i32 , i32 * %op2
  %op67 = add i32  %op65, %op66
  %op68 = getelementptr [50 x i32 ], [50 x i32 ]* @line1, i32  0, i32  %op67
  store i32  0, i32 * %op68
  %op69 = load i32 , i32 * @n
  %op70 = load i32 , i32 * %op1
  %op71 = add i32  %op69, %op70
  %op72 = load i32 , i32 * %op2
  %op73 = sub i32  %op71, %op72
  %op74 = getelementptr [100 x i32 ], [100 x i32 ]* @line2, i32  0, i32  %op73
  store i32  0, i32 * %op74
  br label %label26
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  %op1 = call i32  @getint()
  store i32  %op1, i32 * %op0
  br label %label2
label2:                                                ; preds = %label_entry, %label7
  %op3 = load i32 , i32 * %op0
  %op4 = icmp sgt i32  %op3, 0
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label11
label7:                                                ; preds = %label2
  %op8 = call i32  @getint()
  store i32  %op8, i32 * @n
  call void @f(i32  1)
  %op9 = load i32 , i32 * %op0
  %op10 = sub i32  %op9, 1
  store i32  %op10, i32 * %op0
  br label %label2
label11:                                                ; preds = %label2
  %op12 = load i32 , i32 * @sum
  ret i32  %op12
}

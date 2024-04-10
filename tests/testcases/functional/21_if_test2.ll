; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/21_if_test2.sy"

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

define i32  @ifElseIf() {
label_entry:
  %op0 = alloca i32 
  store i32  5, i32 * %op0
  %op1 = alloca i32 
  store i32  10, i32 * %op1
  %op2 = load i32 , i32 * %op0
  %op3 = icmp eq i32  %op2, 6
  %op4 = zext i1  %op3 to i32 
  %op5 = icmp ne i32  %op4, 0
  br i1  %op5, label %label6, label %label15
label6:                                                ; preds = %label_entry, %label15
  %op7 = load i32 , i32 * %op0
  ret i32  %op7
label8:                                                ; preds = %label15
  %op9 = load i32 , i32 * %op1
  %op10 = icmp eq i32  %op9, 10
  %op11 = zext i1  %op10 to i32 
  %op12 = icmp ne i32  %op11, 0
  br i1  %op12, label %label27, label %label21
label13:                                                ; preds = %label26
  %op14 = load i32 , i32 * %op0
  ret i32  %op14
label15:                                                ; preds = %label_entry
  %op16 = load i32 , i32 * %op1
  %op17 = icmp eq i32  %op16, 11
  %op18 = zext i1  %op17 to i32 
  %op19 = icmp ne i32  %op18, 0
  br i1  %op19, label %label6, label %label8
label20:                                                ; preds = %label27
  store i32  25, i32 * %op0
  br label %label26
label21:                                                ; preds = %label8, %label27
  %op22 = load i32 , i32 * %op1
  %op23 = icmp eq i32  %op22, 10
  %op24 = zext i1  %op23 to i32 
  %op25 = icmp ne i32  %op24, 0
  br i1  %op25, label %label39, label %label35
label26:                                                ; preds = %label20, %label38
  br label %label13
label27:                                                ; preds = %label8
  %op28 = load i32 , i32 * %op0
  %op29 = icmp eq i32  %op28, 1
  %op30 = zext i1  %op29 to i32 
  %op31 = icmp ne i32  %op30, 0
  br i1  %op31, label %label20, label %label21
label32:                                                ; preds = %label39
  %op33 = load i32 , i32 * %op0
  %op34 = add i32  %op33, 15
  store i32  %op34, i32 * %op0
  br label %label38
label35:                                                ; preds = %label21, %label39
  %op36 = load i32 , i32 * %op0
  %op37 = sub i32  0, %op36
  store i32  %op37, i32 * %op0
  br label %label38
label38:                                                ; preds = %label32, %label35
  br label %label26
label39:                                                ; preds = %label21
  %op40 = load i32 , i32 * %op0
  %op41 = icmp eq i32  %op40, -5
  %op42 = zext i1  %op41 to i32 
  %op43 = icmp ne i32  %op42, 0
  br i1  %op43, label %label32, label %label35
}
define i32  @main() {
label_entry:
  %op0 = call i32  @ifElseIf()
  call void @putint(i32  %op0)
  ret i32  0
}

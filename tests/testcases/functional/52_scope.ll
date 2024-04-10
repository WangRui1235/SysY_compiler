; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/52_scope.sy"

@a = global i32  7
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

define i32  @func() {
label_entry:
  %op0 = alloca i32 
  %op1 = load i32 , i32 * @a
  store i32  %op1, i32 * %op0
  %op2 = alloca i32 
  store i32  1, i32 * %op2
  %op3 = load i32 , i32 * %op2
  %op4 = load i32 , i32 * %op0
  %op5 = icmp eq i32  %op3, %op4
  %op6 = zext i1  %op5 to i32 
  %op7 = icmp ne i32  %op6, 0
  br i1  %op7, label %label8, label %label11
label8:                                                ; preds = %label_entry
  %op9 = load i32 , i32 * %op2
  %op10 = add i32  %op9, 1
  store i32  %op10, i32 * %op2
  ret i32  1
label11:                                                ; preds = %label_entry
  ret i32  0
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  store i32  0, i32 * %op0
  %op1 = alloca i32 
  store i32  0, i32 * %op1
  br label %label2
label2:                                                ; preds = %label_entry, %label20
  %op3 = load i32 , i32 * %op1
  %op4 = icmp slt i32  %op3, 100
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label12
label7:                                                ; preds = %label2
  %op8 = call i32  @func()
  %op9 = icmp eq i32  %op8, 1
  %op10 = zext i1  %op9 to i32 
  %op11 = icmp ne i32  %op10, 0
  br i1  %op11, label %label17, label %label20
label12:                                                ; preds = %label2
  %op13 = load i32 , i32 * %op0
  %op14 = icmp slt i32  %op13, 100
  %op15 = zext i1  %op14 to i32 
  %op16 = icmp ne i32  %op15, 0
  br i1  %op16, label %label23, label %label24
label17:                                                ; preds = %label7
  %op18 = load i32 , i32 * %op0
  %op19 = add i32  %op18, 1
  store i32  %op19, i32 * %op0
  br label %label20
label20:                                                ; preds = %label7, %label17
  %op21 = load i32 , i32 * %op1
  %op22 = add i32  %op21, 1
  store i32  %op22, i32 * %op1
  br label %label2
label23:                                                ; preds = %label12
  call void @putint(i32  1)
  br label %label25
label24:                                                ; preds = %label12
  call void @putint(i32  0)
  br label %label25
label25:                                                ; preds = %label23, %label24
  ret i32  0
}

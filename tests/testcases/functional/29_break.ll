; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/29_break.sy"

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

define i32  @main() {
label_entry:
  %op0 = alloca i32 
  store i32  0, i32 * %op0
  %op1 = alloca i32 
  store i32  0, i32 * %op1
  br label %label2
label2:                                                ; preds = %label_entry, %label15
  %op3 = load i32 , i32 * %op0
  %op4 = icmp slt i32  %op3, 100
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label12
label7:                                                ; preds = %label2
  %op8 = load i32 , i32 * %op0
  %op9 = icmp eq i32  %op8, 50
  %op10 = zext i1  %op9 to i32 
  %op11 = icmp ne i32  %op10, 0
  br i1  %op11, label %label14, label %label15
label12:                                                ; preds = %label2, %label14
  %op13 = load i32 , i32 * %op1
  ret i32  %op13
label14:                                                ; preds = %label7
  br label %label12
label15:                                                ; preds = %label7
  %op16 = load i32 , i32 * %op1
  %op17 = load i32 , i32 * %op0
  %op18 = add i32  %op16, %op17
  store i32  %op18, i32 * %op1
  %op19 = load i32 , i32 * %op0
  %op20 = add i32  %op19, 1
  store i32  %op20, i32 * %op0
  br label %label2
}

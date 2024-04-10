; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/24_if_test5.sy"

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

define i32  @if_if_Else() {
label_entry:
  %op0 = alloca i32 
  store i32  5, i32 * %op0
  %op1 = alloca i32 
  store i32  10, i32 * %op1
  %op2 = load i32 , i32 * %op0
  %op3 = icmp eq i32  %op2, 5
  %op4 = zext i1  %op3 to i32 
  %op5 = icmp ne i32  %op4, 0
  br i1  %op5, label %label6, label %label11
label6:                                                ; preds = %label_entry
  %op7 = load i32 , i32 * %op1
  %op8 = icmp eq i32  %op7, 10
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label16, label %label17
label11:                                                ; preds = %label_entry
  %op12 = load i32 , i32 * %op0
  %op13 = add i32  %op12, 15
  store i32  %op13, i32 * %op0
  br label %label14
label14:                                                ; preds = %label17, %label11
  %op15 = load i32 , i32 * %op0
  ret i32  %op15
label16:                                                ; preds = %label6
  store i32  25, i32 * %op0
  br label %label17
label17:                                                ; preds = %label6, %label16
  br label %label14
}
define i32  @main() {
label_entry:
  %op0 = call i32  @if_if_Else()
  ret i32  %op0
}

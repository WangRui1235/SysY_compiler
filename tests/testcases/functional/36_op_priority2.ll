; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/36_op_priority2.sy"

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
  %op1 = alloca i32 
  %op2 = alloca i32 
  %op3 = alloca i32 
  store i32  10, i32 * %op3
  store i32  4, i32 * %op2
  store i32  2, i32 * %op1
  store i32  2, i32 * %op0
  %op4 = load i32 , i32 * %op1
  %op5 = load i32 , i32 * %op3
  %op6 = add i32  %op4, %op5
  %op7 = load i32 , i32 * %op2
  %op8 = load i32 , i32 * %op0
  %op9 = sub i32  %op7, %op8
  %op10 = mul i32  %op6, %op9
  ret i32  %op10
}

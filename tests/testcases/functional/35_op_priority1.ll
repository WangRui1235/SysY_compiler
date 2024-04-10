; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/35_op_priority1.sy"

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
  %op6 = load i32 , i32 * %op2
  %op7 = mul i32  %op5, %op6
  %op8 = add i32  %op4, %op7
  %op9 = load i32 , i32 * %op0
  %op10 = sub i32  %op8, %op9
  ret i32  %op10
}

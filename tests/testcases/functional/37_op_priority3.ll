; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/37_op_priority3.sy"

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
  store i32  10, i32 * %op1
  store i32  30, i32 * %op0
  %op2 = load i32 , i32 * %op1
  %op3 = mul i32  5, -1
  %op4 = sub i32  %op2, %op3
  %op5 = load i32 , i32 * %op0
  %op6 = add i32  %op4, %op5
  %op7 = mul i32  5, -1
  %op8 = add i32  %op6, %op7
  ret i32  %op8
}

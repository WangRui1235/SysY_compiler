; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/02_var_defn3.sy"

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
  store i32  1, i32 * %op2
  store i32  2, i32 * %op1
  store i32  3, i32 * %op0
  %op3 = load i32 , i32 * %op1
  %op4 = load i32 , i32 * %op0
  %op5 = add i32  %op3, %op4
  ret i32  %op5
}

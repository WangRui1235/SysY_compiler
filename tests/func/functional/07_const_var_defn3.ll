; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/func/functional/07_const_var_defn3.sy"

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
  store i32  10, i32 * %op0
  %op1 = alloca i32 
  store i32  5, i32 * %op1
  %op2 = load i32 , i32 * %op1
  ret i32  %op2
}

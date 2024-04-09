; ModuleID = 'cminus'
source_filename = "/home/waang/cowork/tests/func/hidden_functional/05_param_name.sy"

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

define i32  @f(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  %op3 = mul i32  %op2, 2
  ret i32  %op3
}
define i32  @main() {
label_entry:
  %op0 = call i32  @f(i32  10)
  ret i32  %op0
}

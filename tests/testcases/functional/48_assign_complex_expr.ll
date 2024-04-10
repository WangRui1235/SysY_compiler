; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/48_assign_complex_expr.sy"

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
  %op4 = alloca i32 
  store i32  5, i32 * %op0
  store i32  5, i32 * %op1
  store i32  1, i32 * %op2
  store i32  -2, i32 * %op3
  %op5 = load i32 , i32 * %op3
  %op6 = mul i32  %op5, 1
  %op7 = sdiv i32  %op6, 2
  %op8 = load i32 , i32 * %op0
  %op9 = load i32 , i32 * %op1
  %op10 = sub i32  %op8, %op9
  %op11 = add i32  %op7, %op10
  %op12 = load i32 , i32 * %op2
  %op13 = add i32  %op12, 3
  %op14 = sub i32  0, %op13
  %op15 = srem i32  %op14, 2
  %op16 = sub i32  %op11, %op15
  store i32  %op16, i32 * %op4
  %op17 = load i32 , i32 * %op4
  call void @putint(i32  %op17)
  %op18 = load i32 , i32 * %op3
  %op19 = srem i32  %op18, 2
  %op20 = add i32  %op19, 67
  %op21 = load i32 , i32 * %op0
  %op22 = load i32 , i32 * %op1
  %op23 = sub i32  %op21, %op22
  %op24 = sub i32  0, %op23
  %op25 = add i32  %op20, %op24
  %op26 = load i32 , i32 * %op2
  %op27 = add i32  %op26, 2
  %op28 = srem i32  %op27, 2
  %op29 = sub i32  0, %op28
  %op30 = sub i32  %op25, %op29
  store i32  %op30, i32 * %op4
  %op31 = load i32 , i32 * %op4
  %op32 = add i32  %op31, 3
  store i32  %op32, i32 * %op4
  %op33 = load i32 , i32 * %op4
  call void @putint(i32  %op33)
  ret i32  0
}

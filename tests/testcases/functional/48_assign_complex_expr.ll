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
  %op5 = mul i32  2, -1
  store i32  %op5, i32 * %op3
  %op6 = load i32 , i32 * %op3
  %op7 = mul i32  %op6, 1
  %op8 = sdiv i32  %op7, 2
  %op9 = load i32 , i32 * %op0
  %op10 = load i32 , i32 * %op1
  %op11 = sub i32  %op9, %op10
  %op12 = add i32  %op8, %op11
  %op13 = load i32 , i32 * %op2
  %op14 = add i32  %op13, 3
  %op15 = mul i32  %op14, -1
  %op16 = srem i32  %op15, 2
  %op17 = sub i32  %op12, %op16
  store i32  %op17, i32 * %op4
  %op18 = load i32 , i32 * %op4
  call void @putint(i32  %op18)
  %op19 = load i32 , i32 * %op3
  %op20 = srem i32  %op19, 2
  %op21 = add i32  %op20, 67
  %op22 = load i32 , i32 * %op0
  %op23 = load i32 , i32 * %op1
  %op24 = sub i32  %op22, %op23
  %op25 = mul i32  %op24, -1
  %op26 = add i32  %op21, %op25
  %op27 = load i32 , i32 * %op2
  %op28 = add i32  %op27, 2
  %op29 = srem i32  %op28, 2
  %op30 = mul i32  %op29, -1
  %op31 = sub i32  %op26, %op30
  store i32  %op31, i32 * %op4
  %op32 = load i32 , i32 * %op4
  %op33 = add i32  %op32, 3
  store i32  %op33, i32 * %op4
  %op34 = load i32 , i32 * %op4
  call void @putint(i32  %op34)
  ret i32  0
}

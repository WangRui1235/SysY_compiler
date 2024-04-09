; ModuleID = 'cminus'
source_filename = "/home/waang/cowork/tests/func/hidden_functional/02_ret_in_block.sy"

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
  store i32  893, i32 * %op0
  %op1 = alloca i32 
  store i32  716, i32 * %op1
  %op2 = alloca i32 
  store i32  837, i32 * %op2
  %op3 = load i32 , i32 * %op2
  %op4 = add i32  %op3, 128
  store i32  %op4, i32 * %op2
  %op5 = load i32 , i32 * %op1
  %op6 = load i32 , i32 * %op2
  %op7 = add i32  %op5, %op6
  store i32  %op7, i32 * %op1
  %op8 = alloca i32 
  store i32  241, i32 * %op8
  %op9 = load i32 , i32 * %op2
  %op10 = load i32 , i32 * %op8
  %op11 = add i32  %op9, %op10
  %op12 = sub i32  %op11, 412
  store i32  %op12, i32 * %op2
  %op13 = alloca i32 
  store i32  771, i32 * %op13
  %op14 = load i32 , i32 * %op8
  %op15 = load i32 , i32 * %op13
  %op16 = add i32  %op14, %op15
  %op17 = sub i32  %op16, 18
  store i32  %op17, i32 * %op8
  %op18 = load i32 , i32 * %op8
  %op19 = add i32  %op18, 66
  store i32  %op19, i32 * %op13
  %op20 = load i32 , i32 * %op8
  %op21 = load i32 , i32 * %op2
  %op22 = add i32  %op20, %op21
  %op23 = sub i32  %op22, 33
  store i32  %op23, i32 * %op8
  %op24 = load i32 , i32 * %op8
  %op25 = sub i32  %op24, 55
  store i32  %op25, i32 * %op2
  %op26 = load i32 , i32 * %op2
  %op27 = load i32 , i32 * %op8
  %op28 = add i32  %op26, %op27
  %op29 = srem i32  %op28, 21
  ret i32  %op29
}

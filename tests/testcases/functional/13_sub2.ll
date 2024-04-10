; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/13_sub2.sy"

@a = global i32  10
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
  store i32  2, i32 * %op0
  %op1 = load i32 , i32 * %op0
  %op2 = load i32 , i32 * @a
  %op3 = sub i32  %op1, %op2
  ret i32  %op3
}

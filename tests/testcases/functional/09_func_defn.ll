; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/09_func_defn.sy"

@a = global i32  zeroinitializer
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

define i32  @func(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  %op3 = sub i32  %op2, 1
  store i32  %op3, i32 * %op1
  %op4 = load i32 , i32 * %op1
  ret i32  %op4
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  store i32  10, i32 * @a
  %op1 = load i32 , i32 * @a
  %op2 = call i32  @func(i32  %op1)
  store i32  %op2, i32 * %op0
  %op3 = load i32 , i32 * %op0
  ret i32  %op3
}

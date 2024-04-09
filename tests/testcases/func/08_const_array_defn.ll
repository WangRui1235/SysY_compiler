; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/func/08_const_array_defn.sy"

@a = global [5 x i32 ] [i32  0, i32  1, i32  2, i32  3, i32  4]
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
  %op0 = getelementptr [5 x i32 ], [5 x i32 ]* @a, i32  0, i32  4
  %op1 = load i32 , i32 * %op0
  ret i32  %op1
}

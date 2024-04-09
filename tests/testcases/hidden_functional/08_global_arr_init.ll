; ModuleID = 'cminus'
source_filename = "/home/waang/cowork/tests/func/hidden_functional/08_global_arr_init.sy"

@a0 = global [3 x i32 ] zeroinitializer
@b0 = global [4 x i32 ]  [i32 0, i32 1, i32 0, i32 0]
@c0 = global [7 x i32 ]  [i32 2, i32 8, i32 6, i32 3, i32 9, i32 1, i32 5]
@d0 = global [11 x i32 ] zeroinitializer
@e0 = global [2 x i32 ]  [i32 22, i32 33]
@f0 = global [6 x i32 ] zeroinitializer
@g0 = global [9 x i32 ]  [i32 85, i32 0, i32 1, i32 29, i32 0, i32 0, i32 0, i32 0, i32 0]
@a = global [15 x i32 ] zeroinitializer
@b = global [15 x i32 ] zeroinitializer
@c = global [15 x i32 ]  [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15]
@d = global [15 x i32 ]  [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15]
@e = global [15 x i32 ]  [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15]
@f = global [5 x i32 ] zeroinitializer
@g = global [15 x i32 ]  [i32 1, i32 2, i32 3, i32 4, i32 0, i32 0, i32 7, i32 0, i32 0, i32 10, i32 11, i32 12, i32 0, i32 0, i32 0]
@h = global [3 x i32 ] zeroinitializer
@i = global [24 x i32 ]  [i32 1, i32 2, i32 3, i32 4, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]
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
  ret i32  5
}

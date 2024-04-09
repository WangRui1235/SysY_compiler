; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/hidden_functional/08_global_arr_init.sy"

@a0 = global [3 x i32 ] [i32  zeroinitializer, i32  zeroinitializer, i32  zeroinitializer]
@b0 = global [4 x i32 ] [i32  0, i32  1, i32  zeroinitializer, i32  zeroinitializer]
@c0 = global [7 x i32 ] [i32  2, i32  8, i32  6, i32  3, i32  9, i32  1, i32  5]
@d0 = global [11 x i32 ] zeroinitializer
@e0 = global [2 x i32 ] [i32  22, i32  33]
@f0 = global [6 x i32 ] zeroinitializer
@g0 = global [9 x i32 ] [i32  85, i32  0, i32  1, i32  29, i32  zeroinitializer, i32  zeroinitializer, i32  zeroinitializer, i32  zeroinitializer, i32  zeroinitializer]
@a = global [5 x [3 x i32 ]] zeroinitializer
@b = global [5 x [3 x i32 ]] [[3 x i32 ] [i32  zeroinitializer, i32  zeroinitializer, i32  zeroinitializer], [3 x i32 ] [i32  zeroinitializer, i32  zeroinitializer, i32  zeroinitializer], [3 x i32 ] [i32  zeroinitializer, i32  zeroinitializer, i32  zeroinitializer], [3 x i32 ] [i32  zeroinitializer, i32  zeroinitializer, i32  zeroinitializer], [3 x i32 ] [i32  zeroinitializer, i32  zeroinitializer, i32  zeroinitializer]]
@c = global [5 x [3 x i32 ]] [[3 x i32 ] [i32  1, i32  2, i32  3], [3 x i32 ] [i32  4, i32  5, i32  6], [3 x i32 ] [i32  7, i32  8, i32  9], [3 x i32 ] [i32  10, i32  11, i32  12], [3 x i32 ] [i32  13, i32  14, i32  15]]
@d = global [5 x [3 x i32 ]] [[3 x i32 ] [i32  1, i32  2, i32  3], [3 x i32 ] [i32  4, i32  5, i32  6], [3 x i32 ] [i32  7, i32  8, i32  9], [3 x i32 ] [i32  10, i32  11, i32  12], [3 x i32 ] [i32  13, i32  14, i32  15]]
@e = global [5 x [3 x i32 ]] [[3 x i32 ] [i32  1, i32  2, i32  3], [3 x i32 ] [i32  4, i32  5, i32  6], [3 x i32 ] [i32  7, i32  8, i32  9], [3 x i32 ] [i32  10, i32  11, i32  12], [3 x i32 ] [i32  13, i32  14, i32  15]]
@f = global [5 x i32 ] zeroinitializer
@g = global [5 x [3 x i32 ]] [[3 x i32 ] [i32  1, i32  2, i32  3], [3 x i32 ] [i32  4, i32  zeroinitializer, i32  zeroinitializer], [3 x i32 ] [i32  7, i32  zeroinitializer, i32  zeroinitializer], [3 x i32 ] [i32  10, i32  11, i32  12], [3 x i32 ] [i32  zeroinitializer, i32  zeroinitializer, i32  zeroinitializer]]
@h = global [3 x i32 ] zeroinitializer
@i = global [2 x [3 x [4 x i32 ]]] [[3 x [4 x i32 ]] [[4 x i32 ] [i32  1, i32  2, i32  3, i32  4], [4 x i32 ] [i32  5, i32  zeroinitializer, i32  zeroinitializer, i32  zeroinitializer], [4 x i32 ] [i32  zeroinitializer, i32  zeroinitializer, i32  zeroinitializer, i32  zeroinitializer]], [3 x [4 x i32 ]] [[4 x i32 ] [i32  zeroinitializer, i32  zeroinitializer, i32  zeroinitializer, i32  zeroinitializer], [4 x i32 ] [i32  zeroinitializer, i32  zeroinitializer, i32  zeroinitializer, i32  zeroinitializer], [4 x i32 ] [i32  zeroinitializer, i32  zeroinitializer, i32  zeroinitializer, i32  zeroinitializer]]]
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

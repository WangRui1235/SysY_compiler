; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/43_logi_assign.sy"

@a = global i32  zeroinitializer
@b = global i32  zeroinitializer
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
  %op0 = call i32  @getint()
  store i32  %op0, i32 * @a
  %op1 = call i32  @getint()
  store i32  %op1, i32 * @b
  %op2 = alloca i32 
  %op3 = load i32 , i32 * @a
  %op4 = load i32 , i32 * @b
  %op5 = icmp eq i32  %op3, %op4
  %op6 = zext i1  %op5 to i32 
  %op7 = icmp ne i32  %op6, 0
  br i1  %op7, label %label12, label %label9
label8:                                                ; preds = %label12
  store i32  1, i32 * %op2
  br label %label10
label9:                                                ; preds = %label_entry, %label12
  store i32  0, i32 * %op2
  br label %label10
label10:                                                ; preds = %label8, %label9
  %op11 = load i32 , i32 * %op2
  ret i32  %op11
label12:                                                ; preds = %label_entry
  %op13 = load i32 , i32 * @a
  %op14 = icmp ne i32  %op13, 3
  %op15 = zext i1  %op14 to i32 
  %op16 = icmp ne i32  %op15, 0
  br i1  %op16, label %label8, label %label9
}

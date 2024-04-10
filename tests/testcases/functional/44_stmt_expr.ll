; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/44_stmt_expr.sy"

@k = global i32  zeroinitializer
@n = global i32  10
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
  store i32  0, i32 * %op0
  store i32  1, i32 * @k
  br label %label1
label1:                                                ; preds = %label_entry, %label8
  %op2 = load i32 , i32 * %op0
  %op3 = load i32 , i32 * @n
  %op4 = sub i32  %op3, 1
  %op5 = icmp sle i32  %op2, %op4
  %op6 = zext i1  %op5 to i32 
  %op7 = icmp ne i32  %op6, 0
  br i1  %op7, label %label8, label %label16
label8:                                                ; preds = %label1
  %op9 = load i32 , i32 * %op0
  %op10 = add i32  %op9, 1
  store i32  %op10, i32 * %op0
  %op11 = load i32 , i32 * @k
  %op12 = add i32  %op11, 1
  %op13 = load i32 , i32 * @k
  %op14 = load i32 , i32 * @k
  %op15 = add i32  %op13, %op14
  store i32  %op15, i32 * @k
  br label %label1
label16:                                                ; preds = %label1
  %op17 = load i32 , i32 * @k
  call void @putint(i32  %op17)
  %op18 = load i32 , i32 * @k
  ret i32  %op18
}

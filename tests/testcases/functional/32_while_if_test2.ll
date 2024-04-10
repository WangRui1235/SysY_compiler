; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/32_while_if_test2.sy"

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

define i32  @ifWhile() {
label_entry:
  %op0 = alloca i32 
  store i32  0, i32 * %op0
  %op1 = alloca i32 
  store i32  3, i32 * %op1
  %op2 = load i32 , i32 * %op0
  %op3 = icmp eq i32  %op2, 5
  %op4 = zext i1  %op3 to i32 
  %op5 = icmp ne i32  %op4, 0
  br i1  %op5, label %label6, label %label7
label6:                                                ; preds = %label_entry
  br label %label10
label7:                                                ; preds = %label_entry
  br label %label21
label8:                                                ; preds = %label18, %label31
  %op9 = load i32 , i32 * %op1
  ret i32  %op9
label10:                                                ; preds = %label6, %label15
  %op11 = load i32 , i32 * %op1
  %op12 = icmp eq i32  %op11, 2
  %op13 = zext i1  %op12 to i32 
  %op14 = icmp ne i32  %op13, 0
  br i1  %op14, label %label15, label %label18
label15:                                                ; preds = %label10
  %op16 = load i32 , i32 * %op1
  %op17 = add i32  %op16, 2
  store i32  %op17, i32 * %op1
  br label %label10
label18:                                                ; preds = %label10
  %op19 = load i32 , i32 * %op1
  %op20 = add i32  %op19, 25
  store i32  %op20, i32 * %op1
  br label %label8
label21:                                                ; preds = %label7, %label26
  %op22 = load i32 , i32 * %op0
  %op23 = icmp slt i32  %op22, 5
  %op24 = zext i1  %op23 to i32 
  %op25 = icmp ne i32  %op24, 0
  br i1  %op25, label %label26, label %label31
label26:                                                ; preds = %label21
  %op27 = load i32 , i32 * %op1
  %op28 = mul i32  %op27, 2
  store i32  %op28, i32 * %op1
  %op29 = load i32 , i32 * %op0
  %op30 = add i32  %op29, 1
  store i32  %op30, i32 * %op0
  br label %label21
label31:                                                ; preds = %label21
  br label %label8
}
define i32  @main() {
label_entry:
  %op0 = call i32  @ifWhile()
  ret i32  %op0
}

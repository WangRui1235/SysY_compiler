; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/func/functional/40_unary_op.sy"

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
  store i32  10, i32 * %op0
  %op1 = load i32 , i32 * %op0
  %op2 = icmp eq i32  %op1, 0
  %op3 = zext i1  %op2 to i32 
  %op4 = icmp eq i32  %op3, 0
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp eq i32  %op5, 0
  %op7 = zext i1  %op6 to i32 
  %op8 = mul i32  %op7, -1
  %op9 = icmp ne i32  %op8, 0
  br i1  %op9, label %label10, label %label14
label10:                                                ; preds = %label_entry
  %op11 = mul i32  1, -1
  %op12 = mul i32  %op11, -1
  %op13 = mul i32  %op12, -1
  store i32  %op13, i32 * %op0
  br label %label15
label14:                                                ; preds = %label_entry
  store i32  0, i32 * %op0
  br label %label15
label15:                                                ; preds = %label10, %label14
  %op16 = load i32 , i32 * %op0
  ret i32  %op16
}

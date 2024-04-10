; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/41_unary_op2.sy"

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
  %op1 = alloca i32 
  store i32  56, i32 * %op1
  store i32  4, i32 * %op0
  %op2 = load i32 , i32 * %op1
  %op3 = mul i32  4, -1
  %op4 = sub i32  %op2, %op3
  %op5 = load i32 , i32 * %op0
  %op6 = add i32  %op4, %op5
  store i32  %op6, i32 * %op1
  %op7 = load i32 , i32 * %op1
  %op8 = icmp eq i32  %op7, 0
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp eq i32  %op9, 0
  %op11 = zext i1  %op10 to i32 
  %op12 = icmp eq i32  %op11, 0
  %op13 = zext i1  %op12 to i32 
  %op14 = mul i32  %op13, -1
  %op15 = icmp ne i32  %op14, 0
  br i1  %op15, label %label16, label %label20
label16:                                                ; preds = %label_entry
  %op17 = mul i32  1, -1
  %op18 = mul i32  %op17, -1
  %op19 = mul i32  %op18, -1
  store i32  %op19, i32 * %op1
  br label %label23
label20:                                                ; preds = %label_entry
  %op21 = load i32 , i32 * %op0
  %op22 = add i32  0, %op21
  store i32  %op22, i32 * %op1
  br label %label23
label23:                                                ; preds = %label16, %label20
  %op24 = load i32 , i32 * %op1
  call void @putint(i32  %op24)
  ret i32  0
}

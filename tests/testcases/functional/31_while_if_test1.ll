; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/31_while_if_test1.sy"

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

define i32  @whileIf() {
label_entry:
  %op0 = alloca i32 
  store i32  0, i32 * %op0
  %op1 = alloca i32 
  store i32  0, i32 * %op1
  br label %label2
label2:                                                ; preds = %label_entry, %label20
  %op3 = load i32 , i32 * %op0
  %op4 = icmp slt i32  %op3, 100
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label12
label7:                                                ; preds = %label2
  %op8 = load i32 , i32 * %op0
  %op9 = icmp eq i32  %op8, 5
  %op10 = zext i1  %op9 to i32 
  %op11 = icmp ne i32  %op10, 0
  br i1  %op11, label %label14, label %label15
label12:                                                ; preds = %label2
  %op13 = load i32 , i32 * %op1
  ret i32  %op13
label14:                                                ; preds = %label7
  store i32  25, i32 * %op1
  br label %label20
label15:                                                ; preds = %label7
  %op16 = load i32 , i32 * %op0
  %op17 = icmp eq i32  %op16, 10
  %op18 = zext i1  %op17 to i32 
  %op19 = icmp ne i32  %op18, 0
  br i1  %op19, label %label23, label %label24
label20:                                                ; preds = %label14, %label27
  %op21 = load i32 , i32 * %op0
  %op22 = add i32  %op21, 1
  store i32  %op22, i32 * %op0
  br label %label2
label23:                                                ; preds = %label15
  store i32  42, i32 * %op1
  br label %label27
label24:                                                ; preds = %label15
  %op25 = load i32 , i32 * %op0
  %op26 = mul i32  %op25, 2
  store i32  %op26, i32 * %op1
  br label %label27
label27:                                                ; preds = %label23, %label24
  br label %label20
}
define i32  @main() {
label_entry:
  %op0 = call i32  @whileIf()
  ret i32  %op0
}

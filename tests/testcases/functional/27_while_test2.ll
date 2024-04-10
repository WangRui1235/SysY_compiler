; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/27_while_test2.sy"

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

define i32  @FourWhile() {
label_entry:
  %op0 = alloca i32 
  store i32  5, i32 * %op0
  %op1 = alloca i32 
  %op2 = alloca i32 
  store i32  6, i32 * %op1
  store i32  7, i32 * %op2
  %op3 = alloca i32 
  store i32  10, i32 * %op3
  br label %label4
label4:                                                ; preds = %label_entry, %label28
  %op5 = load i32 , i32 * %op0
  %op6 = icmp slt i32  %op5, 20
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label12
label9:                                                ; preds = %label4
  %op10 = load i32 , i32 * %op0
  %op11 = add i32  %op10, 3
  store i32  %op11, i32 * %op0
  br label %label20
label12:                                                ; preds = %label4
  %op13 = load i32 , i32 * %op0
  %op14 = load i32 , i32 * %op1
  %op15 = load i32 , i32 * %op3
  %op16 = add i32  %op14, %op15
  %op17 = add i32  %op13, %op16
  %op18 = load i32 , i32 * %op2
  %op19 = add i32  %op17, %op18
  ret i32  %op19
label20:                                                ; preds = %label9, %label39
  %op21 = load i32 , i32 * %op1
  %op22 = icmp slt i32  %op21, 10
  %op23 = zext i1  %op22 to i32 
  %op24 = icmp ne i32  %op23, 0
  br i1  %op24, label %label25, label %label28
label25:                                                ; preds = %label20
  %op26 = load i32 , i32 * %op1
  %op27 = add i32  %op26, 1
  store i32  %op27, i32 * %op1
  br label %label31
label28:                                                ; preds = %label20
  %op29 = load i32 , i32 * %op1
  %op30 = sub i32  %op29, 2
  store i32  %op30, i32 * %op1
  br label %label4
label31:                                                ; preds = %label25, %label50
  %op32 = load i32 , i32 * %op2
  %op33 = icmp eq i32  %op32, 7
  %op34 = zext i1  %op33 to i32 
  %op35 = icmp ne i32  %op34, 0
  br i1  %op35, label %label36, label %label39
label36:                                                ; preds = %label31
  %op37 = load i32 , i32 * %op2
  %op38 = sub i32  %op37, 1
  store i32  %op38, i32 * %op2
  br label %label42
label39:                                                ; preds = %label31
  %op40 = load i32 , i32 * %op2
  %op41 = add i32  %op40, 1
  store i32  %op41, i32 * %op2
  br label %label20
label42:                                                ; preds = %label36, %label47
  %op43 = load i32 , i32 * %op3
  %op44 = icmp slt i32  %op43, 20
  %op45 = zext i1  %op44 to i32 
  %op46 = icmp ne i32  %op45, 0
  br i1  %op46, label %label47, label %label50
label47:                                                ; preds = %label42
  %op48 = load i32 , i32 * %op3
  %op49 = add i32  %op48, 3
  store i32  %op49, i32 * %op3
  br label %label42
label50:                                                ; preds = %label42
  %op51 = load i32 , i32 * %op3
  %op52 = sub i32  %op51, 1
  store i32  %op52, i32 * %op3
  br label %label31
}
define i32  @main() {
label_entry:
  %op0 = call i32  @FourWhile()
  ret i32  %op0
}

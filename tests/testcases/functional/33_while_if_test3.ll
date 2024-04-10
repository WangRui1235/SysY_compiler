; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/33_while_if_test3.sy"

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

define i32  @deepWhileBr(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = alloca i32 
  %op5 = load i32 , i32 * %op2
  %op6 = load i32 , i32 * %op3
  %op7 = add i32  %op5, %op6
  store i32  %op7, i32 * %op4
  br label %label8
label8:                                                ; preds = %label_entry, %label29
  %op9 = load i32 , i32 * %op4
  %op10 = icmp slt i32  %op9, 75
  %op11 = zext i1  %op10 to i32 
  %op12 = icmp ne i32  %op11, 0
  br i1  %op12, label %label13, label %label19
label13:                                                ; preds = %label8
  %op14 = alloca i32 
  store i32  42, i32 * %op14
  %op15 = load i32 , i32 * %op4
  %op16 = icmp slt i32  %op15, 100
  %op17 = zext i1  %op16 to i32 
  %op18 = icmp ne i32  %op17, 0
  br i1  %op18, label %label21, label %label29
label19:                                                ; preds = %label8
  %op20 = load i32 , i32 * %op4
  ret i32  %op20
label21:                                                ; preds = %label13
  %op22 = load i32 , i32 * %op4
  %op23 = load i32 , i32 * %op14
  %op24 = add i32  %op22, %op23
  store i32  %op24, i32 * %op4
  %op25 = load i32 , i32 * %op4
  %op26 = icmp sgt i32  %op25, 99
  %op27 = zext i1  %op26 to i32 
  %op28 = icmp ne i32  %op27, 0
  br i1  %op28, label %label30, label %label37
label29:                                                ; preds = %label13, %label37
  br label %label8
label30:                                                ; preds = %label21
  %op31 = alloca i32 
  %op32 = load i32 , i32 * %op14
  %op33 = mul i32  %op32, 2
  store i32  %op33, i32 * %op31
  %op34 = icmp eq i32  1, 1
  %op35 = zext i1  %op34 to i32 
  %op36 = icmp ne i32  %op35, 0
  br i1  %op36, label %label38, label %label41
label37:                                                ; preds = %label21, %label41
  br label %label29
label38:                                                ; preds = %label30
  %op39 = load i32 , i32 * %op31
  %op40 = mul i32  %op39, 2
  store i32  %op40, i32 * %op4
  br label %label41
label41:                                                ; preds = %label30, %label38
  br label %label37
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  store i32  2, i32 * %op0
  %op1 = load i32 , i32 * %op0
  %op2 = load i32 , i32 * %op0
  %op3 = call i32  @deepWhileBr(i32  %op1, i32  %op2)
  ret i32  %op3
}

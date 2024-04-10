; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/49_if_complex_expr.sy"

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
  %op2 = alloca i32 
  %op3 = alloca i32 
  %op4 = alloca i32 
  store i32  5, i32 * %op0
  store i32  5, i32 * %op1
  store i32  1, i32 * %op2
  %op5 = mul i32  2, -1
  store i32  %op5, i32 * %op3
  store i32  2, i32 * %op4
  %op6 = load i32 , i32 * %op3
  %op7 = mul i32  %op6, 1
  %op8 = sdiv i32  %op7, 2
  %op9 = icmp slt i32  %op8, 0
  %op10 = zext i1  %op9 to i32 
  %op11 = icmp ne i32  %op10, 0
  br i1  %op11, label %label12, label %label21
label12:                                                ; preds = %label_entry, %label28
  %op13 = load i32 , i32 * %op4
  call void @putint(i32  %op13)
  br label %label14
label14:                                                ; preds = %label21, %label28, %label12
  %op15 = load i32 , i32 * %op3
  %op16 = srem i32  %op15, 2
  %op17 = add i32  %op16, 67
  %op18 = icmp slt i32  %op17, 0
  %op19 = zext i1  %op18 to i32 
  %op20 = icmp ne i32  %op19, 0
  br i1  %op20, label %label35, label %label38
label21:                                                ; preds = %label_entry
  %op22 = load i32 , i32 * %op0
  %op23 = load i32 , i32 * %op1
  %op24 = sub i32  %op22, %op23
  %op25 = icmp ne i32  %op24, 0
  %op26 = zext i1  %op25 to i32 
  %op27 = icmp ne i32  %op26, 0
  br i1  %op27, label %label28, label %label14
label28:                                                ; preds = %label21
  %op29 = load i32 , i32 * %op2
  %op30 = add i32  %op29, 3
  %op31 = srem i32  %op30, 2
  %op32 = icmp ne i32  %op31, 0
  %op33 = zext i1  %op32 to i32 
  %op34 = icmp ne i32  %op33, 0
  br i1  %op34, label %label12, label %label14
label35:                                                ; preds = %label14, %label45
  store i32  4, i32 * %op4
  %op36 = load i32 , i32 * %op4
  call void @putint(i32  %op36)
  br label %label37
label37:                                                ; preds = %label38, %label45, %label35
  ret i32  0
label38:                                                ; preds = %label14
  %op39 = load i32 , i32 * %op0
  %op40 = load i32 , i32 * %op1
  %op41 = sub i32  %op39, %op40
  %op42 = icmp ne i32  %op41, 0
  %op43 = zext i1  %op42 to i32 
  %op44 = icmp ne i32  %op43, 0
  br i1  %op44, label %label45, label %label37
label45:                                                ; preds = %label38
  %op46 = load i32 , i32 * %op2
  %op47 = add i32  %op46, 2
  %op48 = srem i32  %op47, 2
  %op49 = icmp ne i32  %op48, 0
  %op50 = zext i1  %op49 to i32 
  %op51 = icmp ne i32  %op50, 0
  br i1  %op51, label %label35, label %label37
}

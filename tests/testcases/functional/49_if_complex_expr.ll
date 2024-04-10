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
  store i32  -2, i32 * %op3
  store i32  2, i32 * %op4
  %op5 = load i32 , i32 * %op3
  %op6 = mul i32  %op5, 1
  %op7 = sdiv i32  %op6, 2
  %op8 = icmp slt i32  %op7, 0
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label20
label11:                                                ; preds = %label_entry, %label27
  %op12 = load i32 , i32 * %op4
  call void @putint(i32  %op12)
  br label %label13
label13:                                                ; preds = %label20, %label27, %label11
  %op14 = load i32 , i32 * %op3
  %op15 = srem i32  %op14, 2
  %op16 = add i32  %op15, 67
  %op17 = icmp slt i32  %op16, 0
  %op18 = zext i1  %op17 to i32 
  %op19 = icmp ne i32  %op18, 0
  br i1  %op19, label %label34, label %label37
label20:                                                ; preds = %label_entry
  %op21 = load i32 , i32 * %op0
  %op22 = load i32 , i32 * %op1
  %op23 = sub i32  %op21, %op22
  %op24 = icmp ne i32  %op23, 0
  %op25 = zext i1  %op24 to i32 
  %op26 = icmp ne i32  %op25, 0
  br i1  %op26, label %label27, label %label13
label27:                                                ; preds = %label20
  %op28 = load i32 , i32 * %op2
  %op29 = add i32  %op28, 3
  %op30 = srem i32  %op29, 2
  %op31 = icmp ne i32  %op30, 0
  %op32 = zext i1  %op31 to i32 
  %op33 = icmp ne i32  %op32, 0
  br i1  %op33, label %label11, label %label13
label34:                                                ; preds = %label13, %label44
  store i32  4, i32 * %op4
  %op35 = load i32 , i32 * %op4
  call void @putint(i32  %op35)
  br label %label36
label36:                                                ; preds = %label37, %label44, %label34
  ret i32  0
label37:                                                ; preds = %label13
  %op38 = load i32 , i32 * %op0
  %op39 = load i32 , i32 * %op1
  %op40 = sub i32  %op38, %op39
  %op41 = icmp ne i32  %op40, 0
  %op42 = zext i1  %op41 to i32 
  %op43 = icmp ne i32  %op42, 0
  br i1  %op43, label %label44, label %label36
label44:                                                ; preds = %label37
  %op45 = load i32 , i32 * %op2
  %op46 = add i32  %op45, 2
  %op47 = srem i32  %op46, 2
  %op48 = icmp ne i32  %op47, 0
  %op49 = zext i1  %op48 to i32 
  %op50 = icmp ne i32  %op49, 0
  br i1  %op50, label %label34, label %label36
}

; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/73_int_io.sy"

@ascii_0 = global i32  48
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

define i32  @my_getint() {
label_entry:
  %op0 = alloca i32 
  %op1 = alloca i32 
  store i32  0, i32 * %op1
  br label %label2
label2:                                                ; preds = %label_entry, %label15
  %op3 = icmp ne i32  1, 0
  br i1  %op3, label %label4, label %label13
label4:                                                ; preds = %label2
  %op5 = call i8  @getch()
  %op6 = load i32 , i32 * @ascii_0
  %op7 = zext i8  %op5 to i32 
  %op8 = sub i32  %op7, %op6
  store i32  %op8, i32 * %op0
  %op9 = load i32 , i32 * %op0
  %op10 = icmp slt i32  %op9, 0
  %op11 = zext i1  %op10 to i32 
  %op12 = icmp ne i32  %op11, 0
  br i1  %op12, label %label15, label %label17
label13:                                                ; preds = %label2, %label16
  %op14 = load i32 , i32 * %op0
  store i32  %op14, i32 * %op1
  br label %label22
label15:                                                ; preds = %label4, %label17
  br label %label2
label16:                                                ; preds = %label17
  br label %label13
label17:                                                ; preds = %label4
  %op18 = load i32 , i32 * %op0
  %op19 = icmp sgt i32  %op18, 9
  %op20 = zext i1  %op19 to i32 
  %op21 = icmp ne i32  %op20, 0
  br i1  %op21, label %label15, label %label16
label22:                                                ; preds = %label13, %label41
  %op23 = icmp ne i32  1, 0
  br i1  %op23, label %label24, label %label33
label24:                                                ; preds = %label22
  %op25 = call i8  @getch()
  %op26 = load i32 , i32 * @ascii_0
  %op27 = zext i8  %op25 to i32 
  %op28 = sub i32  %op27, %op26
  store i32  %op28, i32 * %op0
  %op29 = load i32 , i32 * %op0
  %op30 = icmp sge i32  %op29, 0
  %op31 = zext i1  %op30 to i32 
  %op32 = icmp ne i32  %op31, 0
  br i1  %op32, label %label42, label %label40
label33:                                                ; preds = %label22, %label40
  %op34 = load i32 , i32 * %op1
  ret i32  %op34
label35:                                                ; preds = %label42
  %op36 = load i32 , i32 * %op1
  %op37 = mul i32  %op36, 10
  %op38 = load i32 , i32 * %op0
  %op39 = add i32  %op37, %op38
  store i32  %op39, i32 * %op1
  br label %label41
label40:                                                ; preds = %label24, %label42
  br label %label33
label41:                                                ; preds = %label35
  br label %label22
label42:                                                ; preds = %label24
  %op43 = load i32 , i32 * %op0
  %op44 = icmp sle i32  %op43, 9
  %op45 = zext i1  %op44 to i32 
  %op46 = icmp ne i32  %op45, 0
  br i1  %op46, label %label35, label %label40
}
define void @my_putint(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = alloca i32 
  store i32  0, i32 * %op2
  %op3 = alloca [16 x i32 ]
  br label %label4
label4:                                                ; preds = %label_entry, %label9
  %op5 = load i32 , i32 * %op1
  %op6 = icmp sgt i32  %op5, 0
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label20
label9:                                                ; preds = %label4
  %op10 = load i32 , i32 * %op1
  %op11 = srem i32  %op10, 10
  %op12 = load i32 , i32 * @ascii_0
  %op13 = add i32  %op11, %op12
  %op14 = load i32 , i32 * %op2
  %op15 = getelementptr [16 x i32 ], [16 x i32 ]* %op3, i32  0, i32  %op14
  store i32  %op13, i32 * %op15
  %op16 = load i32 , i32 * %op1
  %op17 = sdiv i32  %op16, 10
  store i32  %op17, i32 * %op1
  %op18 = load i32 , i32 * %op2
  %op19 = add i32  %op18, 1
  store i32  %op19, i32 * %op2
  br label %label4
label20:                                                ; preds = %label4
  br label %label21
label21:                                                ; preds = %label20, %label26
  %op22 = load i32 , i32 * %op2
  %op23 = icmp sgt i32  %op22, 0
  %op24 = zext i1  %op23 to i32 
  %op25 = icmp ne i32  %op24, 0
  br i1  %op25, label %label26, label %label33
label26:                                                ; preds = %label21
  %op27 = load i32 , i32 * %op2
  %op28 = sub i32  %op27, 1
  store i32  %op28, i32 * %op2
  %op29 = load i32 , i32 * %op2
  %op30 = getelementptr [16 x i32 ], [16 x i32 ]* %op3, i32  0, i32  %op29
  %op31 = load i32 , i32 * %op30
  %op32 = trunc i32  %op31 to i8 
  call void @putch(i8  %op32)
  br label %label21
label33:                                                ; preds = %label21
  ret void
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  %op1 = call i32  @my_getint()
  store i32  %op1, i32 * %op0
  br label %label2
label2:                                                ; preds = %label_entry, %label7
  %op3 = load i32 , i32 * %op0
  %op4 = icmp sgt i32  %op3, 0
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label14
label7:                                                ; preds = %label2
  %op8 = alloca i32 
  %op9 = call i32  @my_getint()
  store i32  %op9, i32 * %op8
  %op10 = load i32 , i32 * %op8
  call void @my_putint(i32  %op10)
  %op11 = trunc i32  10 to i8 
  call void @putch(i8  %op11)
  %op12 = load i32 , i32 * %op0
  %op13 = sub i32  %op12, 1
  store i32  %op13, i32 * %op0
  br label %label2
label14:                                                ; preds = %label2
  ret i32  0
}

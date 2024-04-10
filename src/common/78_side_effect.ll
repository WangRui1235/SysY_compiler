; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/78_side_effect.sy"

@a = global i32  -1
@b = global i32  1
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

define i32  @inc_a() {
label_entry:
  %op0 = alloca i32 
  %op1 = load i32 , i32 * @a
  store i32  %op1, i32 * %op0
  %op2 = load i32 , i32 * %op0
  %op3 = add i32  %op2, 1
  store i32  %op3, i32 * %op0
  %op4 = load i32 , i32 * %op0
  store i32  %op4, i32 * @a
  %op5 = load i32 , i32 * @a
  ret i32  %op5
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  store i32  5, i32 * %op0
  br label %label1
label1:                                                ; preds = %label_entry, %label38
  %op2 = load i32 , i32 * %op0
  %op3 = icmp sge i32  %op2, 0
  %op4 = zext i1  %op3 to i32 
  %op5 = icmp ne i32  %op4, 0
  br i1  %op5, label %label6, label %label9
label6:                                                ; preds = %label1
  %op7 = call i32  @inc_a()
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label28, label %label20
label9:                                                ; preds = %label1
  %op10 = load i32 , i32 * @a
  call void @putint(i32  %op10)
  %op11 = trunc i32  32 to i8 
  call void @putch(i8  %op11)
  %op12 = load i32 , i32 * @b
  call void @putint(i32  %op12)
  %op13 = trunc i32  10 to i8 
  call void @putch(i8  %op13)
  %op14 = load i32 , i32 * @a
  ret i32  %op14
label15:                                                ; preds = %label25
  %op16 = load i32 , i32 * @a
  call void @putint(i32  %op16)
  %op17 = trunc i32  32 to i8 
  call void @putch(i8  %op17)
  %op18 = load i32 , i32 * @b
  call void @putint(i32  %op18)
  %op19 = trunc i32  10 to i8 
  call void @putch(i8  %op19)
  br label %label20
label20:                                                ; preds = %label6, %label28, %label25, %label15
  %op21 = call i32  @inc_a()
  %op22 = icmp slt i32  %op21, 14
  %op23 = zext i1  %op22 to i32 
  %op24 = icmp ne i32  %op23, 0
  br i1  %op24, label %label31, label %label41
label25:                                                ; preds = %label28
  %op26 = call i32  @inc_a()
  %op27 = icmp ne i32  %op26, 0
  br i1  %op27, label %label15, label %label20
label28:                                                ; preds = %label6
  %op29 = call i32  @inc_a()
  %op30 = icmp ne i32  %op29, 0
  br i1  %op30, label %label25, label %label20
label31:                                                ; preds = %label20, %label44
  %op32 = load i32 , i32 * @a
  call void @putint(i32  %op32)
  %op33 = trunc i32  10 to i8 
  call void @putch(i8  %op33)
  %op34 = load i32 , i32 * @b
  %op35 = mul i32  %op34, 2
  store i32  %op35, i32 * @b
  br label %label38
label36:                                                ; preds = %label41, %label44
  %op37 = call i32  @inc_a()
  br label %label38
label38:                                                ; preds = %label31, %label36
  %op39 = load i32 , i32 * %op0
  %op40 = sub i32  %op39, 1
  store i32  %op40, i32 * %op0
  br label %label1
label41:                                                ; preds = %label20
  %op42 = call i32  @inc_a()
  %op43 = icmp ne i32  %op42, 0
  br i1  %op43, label %label44, label %label36
label44:                                                ; preds = %label41
  %op45 = call i32  @inc_a()
  %op46 = call i32  @inc_a()
  %op47 = sub i32  %op45, %op46
  %op48 = add i32  %op47, 1
  %op49 = icmp ne i32  %op48, 0
  br i1  %op49, label %label31, label %label36
}

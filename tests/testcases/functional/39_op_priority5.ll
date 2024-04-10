; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/39_op_priority5.sy"

@a = global i32  1
@b = global i32  0
@c = global i32  1
@d = global i32  2
@e = global i32  4
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
  store i32  0, i32 * %op0
  %op1 = load i32 , i32 * @a
  %op2 = load i32 , i32 * @b
  %op3 = mul i32  %op1, %op2
  %op4 = load i32 , i32 * @c
  %op5 = sdiv i32  %op3, %op4
  %op6 = load i32 , i32 * @e
  %op7 = load i32 , i32 * @d
  %op8 = add i32  %op6, %op7
  %op9 = icmp eq i32  %op5, %op8
  %op10 = zext i1  %op9 to i32 
  %op11 = icmp ne i32  %op10, 0
  br i1  %op11, label %label30, label %label16
label12:                                                ; preds = %label30, %label16
  store i32  1, i32 * %op0
  br label %label13
label13:                                                ; preds = %label16, %label12
  %op14 = load i32 , i32 * %op0
  call void @putint(i32  %op14)
  %op15 = load i32 , i32 * %op0
  ret i32  %op15
label16:                                                ; preds = %label_entry, %label30
  %op17 = load i32 , i32 * @a
  %op18 = load i32 , i32 * @b
  %op19 = load i32 , i32 * @c
  %op20 = mul i32  %op18, %op19
  %op21 = sub i32  %op17, %op20
  %op22 = load i32 , i32 * @d
  %op23 = load i32 , i32 * @a
  %op24 = load i32 , i32 * @c
  %op25 = sdiv i32  %op23, %op24
  %op26 = sub i32  %op22, %op25
  %op27 = icmp eq i32  %op21, %op26
  %op28 = zext i1  %op27 to i32 
  %op29 = icmp ne i32  %op28, 0
  br i1  %op29, label %label12, label %label13
label30:                                                ; preds = %label_entry
  %op31 = load i32 , i32 * @a
  %op32 = load i32 , i32 * @a
  %op33 = load i32 , i32 * @b
  %op34 = add i32  %op32, %op33
  %op35 = mul i32  %op31, %op34
  %op36 = load i32 , i32 * @c
  %op37 = add i32  %op35, %op36
  %op38 = load i32 , i32 * @d
  %op39 = load i32 , i32 * @e
  %op40 = add i32  %op38, %op39
  %op41 = icmp sle i32  %op37, %op40
  %op42 = zext i1  %op41 to i32 
  %op43 = icmp ne i32  %op42, 0
  br i1  %op43, label %label12, label %label16
}

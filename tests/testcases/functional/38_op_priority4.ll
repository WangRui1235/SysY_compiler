; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/38_op_priority4.sy"

@a = global i32  zeroinitializer
@b = global i32  zeroinitializer
@c = global i32  zeroinitializer
@d = global i32  zeroinitializer
@e = global i32  zeroinitializer
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
  %op0 = call i32  @getint()
  store i32  %op0, i32 * @a
  %op1 = call i32  @getint()
  store i32  %op1, i32 * @b
  %op2 = call i32  @getint()
  store i32  %op2, i32 * @c
  %op3 = call i32  @getint()
  store i32  %op3, i32 * @d
  %op4 = call i32  @getint()
  store i32  %op4, i32 * @e
  %op5 = alloca i32 
  store i32  0, i32 * %op5
  %op6 = load i32 , i32 * @a
  %op7 = load i32 , i32 * @b
  %op8 = load i32 , i32 * @c
  %op9 = mul i32  %op7, %op8
  %op10 = sub i32  %op6, %op9
  %op11 = load i32 , i32 * @d
  %op12 = load i32 , i32 * @a
  %op13 = load i32 , i32 * @c
  %op14 = sdiv i32  %op12, %op13
  %op15 = sub i32  %op11, %op14
  %op16 = icmp ne i32  %op10, %op15
  %op17 = zext i1  %op16 to i32 
  %op18 = icmp ne i32  %op17, 0
  br i1  %op18, label %label19, label %label34
label19:                                                ; preds = %label_entry, %label34, %label22
  store i32  1, i32 * %op5
  br label %label20
label20:                                                ; preds = %label22, %label19
  %op21 = load i32 , i32 * %op5
  ret i32  %op21
label22:                                                ; preds = %label34
  %op23 = load i32 , i32 * @a
  %op24 = load i32 , i32 * @b
  %op25 = add i32  %op23, %op24
  %op26 = load i32 , i32 * @c
  %op27 = add i32  %op25, %op26
  %op28 = load i32 , i32 * @d
  %op29 = load i32 , i32 * @e
  %op30 = add i32  %op28, %op29
  %op31 = icmp eq i32  %op27, %op30
  %op32 = zext i1  %op31 to i32 
  %op33 = icmp ne i32  %op32, 0
  br i1  %op33, label %label19, label %label20
label34:                                                ; preds = %label_entry
  %op35 = load i32 , i32 * @a
  %op36 = load i32 , i32 * @b
  %op37 = mul i32  %op35, %op36
  %op38 = load i32 , i32 * @c
  %op39 = sdiv i32  %op37, %op38
  %op40 = load i32 , i32 * @e
  %op41 = load i32 , i32 * @d
  %op42 = add i32  %op40, %op41
  %op43 = icmp eq i32  %op39, %op42
  %op44 = zext i1  %op43 to i32 
  %op45 = icmp ne i32  %op44, 0
  br i1  %op45, label %label19, label %label22
}

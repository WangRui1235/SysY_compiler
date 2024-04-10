; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/53_scope2.sy"

@k = global i32  zeroinitializer
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
  store i32  3389, i32 * @k
  %op0 = load i32 , i32 * @k
  %op1 = icmp slt i32  %op0, 10000
  %op2 = zext i1  %op1 to i32 
  %op3 = icmp ne i32  %op2, 0
  br i1  %op3, label %label4, label %label8
label4:                                                ; preds = %label_entry
  %op5 = load i32 , i32 * @k
  %op6 = add i32  %op5, 1
  store i32  %op6, i32 * @k
  %op7 = alloca i32 
  store i32  112, i32 * %op7
  br label %label10
label8:                                                ; preds = %label_entry, %label22
  %op9 = load i32 , i32 * @k
  ret i32  %op9
label10:                                                ; preds = %label4, %label36
  %op11 = load i32 , i32 * %op7
  %op12 = icmp sgt i32  %op11, 10
  %op13 = zext i1  %op12 to i32 
  %op14 = icmp ne i32  %op13, 0
  br i1  %op14, label %label15, label %label22
label15:                                                ; preds = %label10
  %op16 = load i32 , i32 * %op7
  %op17 = sub i32  %op16, 88
  store i32  %op17, i32 * %op7
  %op18 = load i32 , i32 * %op7
  %op19 = icmp slt i32  %op18, 1000
  %op20 = zext i1  %op19 to i32 
  %op21 = icmp ne i32  %op20, 0
  br i1  %op21, label %label24, label %label36
label22:                                                ; preds = %label10
  %op23 = load i32 , i32 * %op7
  call void @putint(i32  %op23)
  br label %label8
label24:                                                ; preds = %label15
  %op25 = alloca i32 
  store i32  9, i32 * %op25
  %op26 = alloca i32 
  store i32  11, i32 * %op26
  store i32  10, i32 * %op25
  %op27 = load i32 , i32 * %op7
  %op28 = load i32 , i32 * %op25
  %op29 = sub i32  %op27, %op28
  store i32  %op29, i32 * %op7
  %op30 = alloca i32 
  store i32  11, i32 * %op30
  %op31 = load i32 , i32 * %op7
  %op32 = load i32 , i32 * %op30
  %op33 = add i32  %op31, %op32
  %op34 = load i32 , i32 * %op26
  %op35 = add i32  %op33, %op34
  store i32  %op35, i32 * %op7
  br label %label36
label36:                                                ; preds = %label15, %label24
  br label %label10
}

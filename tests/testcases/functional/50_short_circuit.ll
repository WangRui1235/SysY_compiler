; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/50_short_circuit.sy"

@g = global i32  0
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

define i32  @func(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * @g
  %op3 = load i32 , i32 * %op1
  %op4 = add i32  %op2, %op3
  store i32  %op4, i32 * @g
  %op5 = load i32 , i32 * @g
  call void @putint(i32  %op5)
  %op6 = load i32 , i32 * @g
  ret i32  %op6
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  %op1 = call i32  @getint()
  store i32  %op1, i32 * %op0
  %op2 = load i32 , i32 * %op0
  %op3 = icmp sgt i32  %op2, 10
  %op4 = zext i1  %op3 to i32 
  %op5 = icmp ne i32  %op4, 0
  br i1  %op5, label %label14, label %label7
label6:                                                ; preds = %label14
  store i32  1, i32 * %op0
  br label %label8
label7:                                                ; preds = %label_entry, %label14
  store i32  0, i32 * %op0
  br label %label8
label8:                                                ; preds = %label6, %label7
  %op9 = call i32  @getint()
  store i32  %op9, i32 * %op0
  %op10 = load i32 , i32 * %op0
  %op11 = icmp sgt i32  %op10, 11
  %op12 = zext i1  %op11 to i32 
  %op13 = icmp ne i32  %op12, 0
  br i1  %op13, label %label26, label %label19
label14:                                                ; preds = %label_entry
  %op15 = load i32 , i32 * %op0
  %op16 = call i32  @func(i32  %op15)
  %op17 = icmp ne i32  %op16, 0
  br i1  %op17, label %label6, label %label7
label18:                                                ; preds = %label26
  store i32  1, i32 * %op0
  br label %label20
label19:                                                ; preds = %label8, %label26
  store i32  0, i32 * %op0
  br label %label20
label20:                                                ; preds = %label18, %label19
  %op21 = call i32  @getint()
  store i32  %op21, i32 * %op0
  %op22 = load i32 , i32 * %op0
  %op23 = icmp sle i32  %op22, 99
  %op24 = zext i1  %op23 to i32 
  %op25 = icmp ne i32  %op24, 0
  br i1  %op25, label %label30, label %label38
label26:                                                ; preds = %label8
  %op27 = load i32 , i32 * %op0
  %op28 = call i32  @func(i32  %op27)
  %op29 = icmp ne i32  %op28, 0
  br i1  %op29, label %label18, label %label19
label30:                                                ; preds = %label20, %label38
  store i32  1, i32 * %op0
  br label %label32
label31:                                                ; preds = %label38
  store i32  0, i32 * %op0
  br label %label32
label32:                                                ; preds = %label30, %label31
  %op33 = call i32  @getint()
  store i32  %op33, i32 * %op0
  %op34 = load i32 , i32 * %op0
  %op35 = icmp sle i32  %op34, 100
  %op36 = zext i1  %op35 to i32 
  %op37 = icmp ne i32  %op36, 0
  br i1  %op37, label %label42, label %label47
label38:                                                ; preds = %label20
  %op39 = load i32 , i32 * %op0
  %op40 = call i32  @func(i32  %op39)
  %op41 = icmp ne i32  %op40, 0
  br i1  %op41, label %label30, label %label31
label42:                                                ; preds = %label32, %label47
  store i32  1, i32 * %op0
  br label %label44
label43:                                                ; preds = %label47
  store i32  0, i32 * %op0
  br label %label44
label44:                                                ; preds = %label42, %label43
  %op45 = call i32  @func(i32  99)
  %op46 = icmp eq i32  %op45, 0
  br i1  %op46, label %label54, label %label52
label47:                                                ; preds = %label32
  %op48 = load i32 , i32 * %op0
  %op49 = call i32  @func(i32  %op48)
  %op50 = icmp ne i32  %op49, 0
  br i1  %op50, label %label42, label %label43
label51:                                                ; preds = %label54
  store i32  1, i32 * %op0
  br label %label53
label52:                                                ; preds = %label44, %label54
  store i32  0, i32 * %op0
  br label %label53
label53:                                                ; preds = %label51, %label52
  ret i32  0
label54:                                                ; preds = %label44
  %op55 = call i32  @func(i32  100)
  %op56 = icmp ne i32  %op55, 0
  br i1  %op56, label %label51, label %label52
}

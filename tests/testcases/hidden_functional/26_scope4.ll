; ModuleID = 'cminus'
source_filename = "/home/waang/cowork/tests/func/hidden_functional/26_scope4.sy"

@a = global i32  zeroinitializer
@sum = global i32  zeroinitializer
@count = global i32  0
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

define i32  @getA() {
label_entry:
  %op0 = load i32 , i32 * @count
  %op1 = add i32  %op0, 1
  store i32  %op1, i32 * @count
  %op2 = load i32 , i32 * @count
  ret i32  %op2
}
define void @f1(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * @sum
  %op3 = load i32 , i32 * %op1
  %op4 = add i32  %op2, %op3
  store i32  %op4, i32 * @sum
  %op5 = call i32  @getA()
  store i32  %op5, i32 * %op1
  %op6 = load i32 , i32 * @sum
  %op7 = load i32 , i32 * %op1
  %op8 = add i32  %op6, %op7
  store i32  %op8, i32 * @sum
  %op9 = icmp ne i32  1, 0
  br i1  %op9, label %label10, label %label16
label10:                                                ; preds = %label_entry
  %op11 = call i32  @getA()
  %op12 = alloca i32 
  store i32  %op11, i32 * %op12
  %op13 = load i32 , i32 * @sum
  %op14 = load i32 , i32 * %op12
  %op15 = add i32  %op13, %op14
  store i32  %op15, i32 * @sum
  br label %label16
label16:                                                ; preds = %label_entry, %label10
  %op17 = load i32 , i32 * @sum
  %op18 = load i32 , i32 * %op1
  %op19 = add i32  %op17, %op18
  store i32  %op19, i32 * @sum
  %op20 = load i32 , i32 * @sum
  %op21 = load i32 , i32 * %op1
  %op22 = add i32  %op20, %op21
  store i32  %op22, i32 * @sum
  ret void
}
define void @f2() {
label_entry:
  %op0 = load i32 , i32 * @sum
  %op1 = load i32 , i32 * @a
  %op2 = add i32  %op0, %op1
  store i32  %op2, i32 * @sum
  %op3 = call i32  @getA()
  %op4 = alloca i32 
  store i32  %op3, i32 * %op4
  %op5 = load i32 , i32 * @sum
  %op6 = load i32 , i32 * @a
  %op7 = add i32  %op5, %op6
  store i32  %op7, i32 * @sum
  ret void
}
define void @f3() {
label_entry:
  %op0 = call i32  @getA()
  %op1 = alloca i32 
  store i32  %op0, i32 * %op1
  %op2 = load i32 , i32 * @sum
  %op3 = load i32 , i32 * %op1
  %op4 = add i32  %op2, %op3
  store i32  %op4, i32 * @sum
  %op5 = call i32  @getA()
  store i32  %op5, i32 * %op1
  %op6 = load i32 , i32 * @sum
  %op7 = load i32 , i32 * %op1
  %op8 = add i32  %op6, %op7
  store i32  %op8, i32 * @sum
  %op9 = call i32  @getA()
  %op10 = alloca i32 
  store i32  %op9, i32 * %op10
  %op11 = load i32 , i32 * @sum
  %op12 = load i32 , i32 * %op1
  %op13 = add i32  %op11, %op12
  store i32  %op13, i32 * @sum
  ret void
}
define i32  @main() {
label_entry:
  store i32  0, i32 * @sum
  %op0 = call i32  @getA()
  store i32  %op0, i32 * @a
  %op1 = load i32 , i32 * @sum
  %op2 = load i32 , i32 * @a
  %op3 = add i32  %op1, %op2
  store i32  %op3, i32 * @sum
  %op4 = call i32  @getA()
  %op5 = alloca i32 
  store i32  %op4, i32 * %op5
  %op6 = load i32 , i32 * %op5
  call void @f1(i32  %op6)
  call void @f2()
  call void @f3()
  %op7 = load i32 , i32 * %op5
  call void @f1(i32  %op7)
  call void @f2()
  call void @f3()
  %op8 = call i32  @getA()
  %op9 = alloca i32 
  store i32  %op8, i32 * %op9
  %op10 = load i32 , i32 * %op5
  call void @f1(i32  %op10)
  call void @f2()
  call void @f3()
  %op11 = call i32  @getA()
  %op12 = alloca i32 
  store i32  %op11, i32 * %op12
  %op13 = call i32  @getA()
  %op14 = alloca i32 
  store i32  %op13, i32 * %op14
  %op15 = load i32 , i32 * %op14
  call void @f1(i32  %op15)
  call void @f2()
  call void @f3()
  %op16 = call i32  @getA()
  %op17 = alloca i32 
  store i32  %op16, i32 * %op17
  %op18 = load i32 , i32 * %op17
  call void @f1(i32  %op18)
  call void @f2()
  call void @f3()
  %op19 = call i32  @getA()
  store i32  %op19, i32 * %op17
  %op20 = load i32 , i32 * %op17
  call void @f1(i32  %op20)
  call void @f2()
  call void @f3()
  %op21 = load i32 , i32 * %op5
  call void @f1(i32  %op21)
  call void @f2()
  call void @f3()
  br label %label22
label22:                                                ; preds = %label_entry
  %op23 = icmp ne i32  1, 0
  br i1  %op23, label %label24, label %label25
label24:                                                ; preds = %label22
  br label %label27
label25:                                                ; preds = %label22, %label31
  %op26 = load i32 , i32 * @sum
  call void @putint(i32  %op26)
  ret i32  0
label27:                                                ; preds = %label24
  %op28 = icmp ne i32  1, 0
  br i1  %op28, label %label29, label %label31
label29:                                                ; preds = %label27
  %op30 = alloca i32 
  store i32  0, i32 * %op30
  br label %label32
label31:                                                ; preds = %label27, %label38
  br label %label25
label32:                                                ; preds = %label29, %label60
  %op33 = load i32 , i32 * %op30
  %op34 = icmp slt i32  %op33, 3
  %op35 = zext i1  %op34 to i32 
  %op36 = icmp ne i32  %op35, 0
  br i1  %op36, label %label37, label %label38
label37:                                                ; preds = %label32
  br label %label39
label38:                                                ; preds = %label32
  br label %label31
label39:                                                ; preds = %label37, %label50
  %op40 = icmp ne i32  1, 0
  br i1  %op40, label %label41, label %label43
label41:                                                ; preds = %label39
  %op42 = icmp ne i32  1, 0
  br i1  %op42, label %label48, label %label50
label43:                                                ; preds = %label39, %label48
  %op44 = load i32 , i32 * %op30
  %op45 = icmp eq i32  %op44, 1
  %op46 = zext i1  %op45 to i32 
  %op47 = icmp ne i32  %op46, 0
  br i1  %op47, label %label52, label %label58
label48:                                                ; preds = %label41
  %op49 = load i32 , i32 * %op5
  call void @f1(i32  %op49)
  call void @f2()
  call void @f3()
  br label %label43
label50:                                                ; preds = %label41
  %op51 = call i32  @getA()
  store i32  %op51, i32 * %op5
  br label %label39
label52:                                                ; preds = %label43
  %op53 = call i32  @getA()
  %op54 = alloca i32 
  store i32  %op53, i32 * %op54
  %op55 = load i32 , i32 * %op54
  call void @f1(i32  %op55)
  call void @f2()
  call void @f3()
  %op56 = load i32 , i32 * %op30
  %op57 = add i32  %op56, 1
  store i32  %op57, i32 * %op30
  br label %label60
label58:                                                ; preds = %label43
  %op59 = load i32 , i32 * %op5
  call void @f1(i32  %op59)
  call void @f2()
  call void @f3()
  br label %label60
label60:                                                ; preds = %label52, %label58
  %op61 = call i32  @getA()
  store i32  %op61, i32 * %op5
  %op62 = load i32 , i32 * %op30
  %op63 = add i32  %op62, 1
  store i32  %op63, i32 * %op30
  br label %label32
}

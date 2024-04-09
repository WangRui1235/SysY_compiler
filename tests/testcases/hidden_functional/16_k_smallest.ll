; ModuleID = 'cminus'
source_filename = "/home/waang/cowork/tests/func/hidden_functional/16_k_smallest.sy"

@maxN = constant i32  1000
@space = constant i32  32
@array = global [1000 x i32 ] zeroinitializer
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

define void @swap(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op2
  %op5 = load i32 , i32 * %op2
  %op6 = getelementptr [1000 x i32 ], [1000 x i32 ]* @array, i32  0, i32  %op4
  %op7 = load i32 , i32 * %op6
  %op8 = alloca i32 
  store i32  %op7, i32 * %op8
  %op9 = load i32 , i32 * %op3
  %op10 = load i32 , i32 * %op3
  %op11 = getelementptr [1000 x i32 ], [1000 x i32 ]* @array, i32  0, i32  %op9
  %op12 = load i32 , i32 * %op11
  %op13 = load i32 , i32 * %op2
  %op14 = load i32 , i32 * %op2
  %op15 = getelementptr [1000 x i32 ], [1000 x i32 ]* @array, i32  0, i32  %op13
  store i32  %op12, i32 * %op15
  %op16 = load i32 , i32 * %op8
  %op17 = load i32 , i32 * %op3
  %op18 = load i32 , i32 * %op3
  %op19 = getelementptr [1000 x i32 ], [1000 x i32 ]* @array, i32  0, i32  %op17
  store i32  %op16, i32 * %op19
  ret void
}
define i32  @findPivot(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op3
  %op5 = load i32 , i32 * %op3
  %op6 = getelementptr [1000 x i32 ], [1000 x i32 ]* @array, i32  0, i32  %op4
  %op7 = load i32 , i32 * %op6
  %op8 = alloca i32 
  store i32  %op7, i32 * %op8
  %op9 = load i32 , i32 * %op2
  %op10 = alloca i32 
  store i32  %op9, i32 * %op10
  %op11 = load i32 , i32 * %op2
  %op12 = alloca i32 
  store i32  %op11, i32 * %op12
  br label %label13
label13:                                                ; preds = %label_entry, %label37
  %op14 = load i32 , i32 * %op12
  %op15 = load i32 , i32 * %op3
  %op16 = icmp slt i32  %op14, %op15
  %op17 = zext i1  %op16 to i32 
  %op18 = icmp ne i32  %op17, 0
  br i1  %op18, label %label19, label %label28
label19:                                                ; preds = %label13
  %op20 = load i32 , i32 * %op12
  %op21 = load i32 , i32 * %op12
  %op22 = getelementptr [1000 x i32 ], [1000 x i32 ]* @array, i32  0, i32  %op20
  %op23 = load i32 , i32 * %op22
  %op24 = load i32 , i32 * %op8
  %op25 = icmp sle i32  %op23, %op24
  %op26 = zext i1  %op25 to i32 
  %op27 = icmp ne i32  %op26, 0
  br i1  %op27, label %label32, label %label37
label28:                                                ; preds = %label13
  %op29 = load i32 , i32 * %op10
  %op30 = load i32 , i32 * %op3
  call void @swap(i32  %op29, i32  %op30)
  %op31 = load i32 , i32 * %op10
  ret i32  %op31
label32:                                                ; preds = %label19
  %op33 = load i32 , i32 * %op12
  %op34 = load i32 , i32 * %op10
  call void @swap(i32  %op33, i32  %op34)
  %op35 = load i32 , i32 * %op10
  %op36 = add i32  %op35, 1
  store i32  %op36, i32 * %op10
  br label %label37
label37:                                                ; preds = %label19, %label32
  %op38 = load i32 , i32 * %op12
  %op39 = add i32  %op38, 1
  store i32  %op39, i32 * %op12
  br label %label13
}
define void @findSmallest(i32  %arg0, i32  %arg1, i32  %arg2, i32  %arg3) {
label_entry:
  %op4 = alloca i32 
  store i32  %arg0, i32 * %op4
  %op5 = alloca i32 
  store i32  %arg1, i32 * %op5
  %op6 = alloca i32 
  store i32  %arg2, i32 * %op6
  %op7 = alloca i32 
  store i32  %arg3, i32 * %op7
  %op8 = load i32 , i32 * %op4
  %op9 = load i32 , i32 * %op5
  %op10 = icmp eq i32  %op8, %op9
  %op11 = zext i1  %op10 to i32 
  %op12 = icmp ne i32  %op11, 0
  br i1  %op12, label %label13, label %label14
label13:                                                ; preds = %label_entry
  ret void
label14:                                                ; preds = %label_entry
  %op15 = load i32 , i32 * %op4
  %op16 = load i32 , i32 * %op5
  %op17 = call i32  @findPivot(i32  %op15, i32  %op16)
  %op18 = alloca i32 
  store i32  %op17, i32 * %op18
  %op19 = load i32 , i32 * %op6
  %op20 = load i32 , i32 * %op18
  %op21 = icmp eq i32  %op19, %op20
  %op22 = zext i1  %op21 to i32 
  %op23 = icmp ne i32  %op22, 0
  br i1  %op23, label %label25, label %label27
label24:                                                ; preds = %label33
  ret void
label25:                                                ; preds = %label14
  %op26 = alloca i32 
  store i32  0, i32 * %op26
  br label %label34
label27:                                                ; preds = %label14
  %op28 = load i32 , i32 * %op6
  %op29 = load i32 , i32 * %op18
  %op30 = icmp slt i32  %op28, %op29
  %op31 = zext i1  %op30 to i32 
  %op32 = icmp ne i32  %op31, 0
  br i1  %op32, label %label50, label %label56
label33:                                                ; preds = %label49, %label62
  br label %label24
label34:                                                ; preds = %label25, %label40
  %op35 = load i32 , i32 * %op26
  %op36 = load i32 , i32 * %op18
  %op37 = icmp slt i32  %op35, %op36
  %op38 = zext i1  %op37 to i32 
  %op39 = icmp ne i32  %op38, 0
  br i1  %op39, label %label40, label %label49
label40:                                                ; preds = %label34
  %op41 = load i32 , i32 * %op26
  %op42 = load i32 , i32 * %op26
  %op43 = getelementptr [1000 x i32 ], [1000 x i32 ]* @array, i32  0, i32  %op41
  %op44 = load i32 , i32 * %op43
  call void @putint(i32  %op44)
  %op45 = load i32 , i32 * @space
  %op46 = trunc i32  %op45 to i8 
  call void @putch(i8  %op46)
  %op47 = load i32 , i32 * %op26
  %op48 = add i32  %op47, 1
  store i32  %op48, i32 * %op26
  br label %label34
label49:                                                ; preds = %label34
  br label %label33
label50:                                                ; preds = %label27
  %op51 = load i32 , i32 * %op4
  %op52 = load i32 , i32 * %op18
  %op53 = sub i32  %op52, 1
  %op54 = load i32 , i32 * %op6
  %op55 = load i32 , i32 * %op7
  call void @findSmallest(i32  %op51, i32  %op53, i32  %op54, i32  %op55)
  br label %label62
label56:                                                ; preds = %label27
  %op57 = load i32 , i32 * %op18
  %op58 = add i32  %op57, 1
  %op59 = load i32 , i32 * %op5
  %op60 = load i32 , i32 * %op6
  %op61 = load i32 , i32 * %op7
  call void @findSmallest(i32  %op58, i32  %op59, i32  %op60, i32  %op61)
  br label %label62
label62:                                                ; preds = %label50, %label56
  br label %label33
}
define i32  @main() {
label_entry:
  %op0 = call i32  @getint()
  %op1 = alloca i32 
  store i32  %op0, i32 * %op1
  %op2 = call i32  @getint()
  %op3 = alloca i32 
  store i32  %op2, i32 * %op3
  %op4 = alloca i32 
  store i32  0, i32 * %op4
  br label %label5
label5:                                                ; preds = %label_entry, %label11
  %op6 = load i32 , i32 * %op4
  %op7 = load i32 , i32 * %op1
  %op8 = icmp slt i32  %op6, %op7
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label18
label11:                                                ; preds = %label5
  %op12 = call i32  @getint()
  %op13 = load i32 , i32 * %op4
  %op14 = load i32 , i32 * %op4
  %op15 = getelementptr [1000 x i32 ], [1000 x i32 ]* @array, i32  0, i32  %op13
  store i32  %op12, i32 * %op15
  %op16 = load i32 , i32 * %op4
  %op17 = add i32  %op16, 1
  store i32  %op17, i32 * %op4
  br label %label5
label18:                                                ; preds = %label5
  %op19 = alloca i32 
  store i32  0, i32 * %op19
  %op20 = load i32 , i32 * %op1
  %op21 = sub i32  %op20, 1
  %op22 = alloca i32 
  store i32  %op21, i32 * %op22
  %op23 = load i32 , i32 * %op19
  %op24 = load i32 , i32 * %op22
  %op25 = load i32 , i32 * %op3
  %op26 = load i32 , i32 * %op1
  call void @findSmallest(i32  %op23, i32  %op24, i32  %op25, i32  %op26)
  ret i32  0
}

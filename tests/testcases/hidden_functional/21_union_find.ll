; ModuleID = 'cminus'
source_filename = "/home/waang/cowork/tests/func/hidden_functional/21_union_find.sy"

@maxN = constant i32  1005
@parent = global [1005 x i32 ] zeroinitializer
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

define i32  @find(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  %op3 = load i32 , i32 * %op1
  %op4 = getelementptr [1005 x i32 ], [1005 x i32 ]* @parent, i32  0, i32  %op2
  %op5 = load i32 , i32 * %op4
  %op6 = load i32 , i32 * %op1
  %op7 = icmp eq i32  %op5, %op6
  %op8 = zext i1  %op7 to i32 
  %op9 = icmp ne i32  %op8, 0
  br i1  %op9, label %label10, label %label12
label10:                                                ; preds = %label_entry
  %op11 = load i32 , i32 * %op1
  ret i32  %op11
label12:                                                ; preds = %label_entry
  %op13 = load i32 , i32 * %op1
  %op14 = load i32 , i32 * %op1
  %op15 = getelementptr [1005 x i32 ], [1005 x i32 ]* @parent, i32  0, i32  %op13
  %op16 = load i32 , i32 * %op15
  %op17 = call i32  @find(i32  %op16)
  %op18 = load i32 , i32 * %op1
  %op19 = load i32 , i32 * %op1
  %op20 = getelementptr [1005 x i32 ], [1005 x i32 ]* @parent, i32  0, i32  %op18
  store i32  %op17, i32 * %op20
  %op21 = load i32 , i32 * %op1
  %op22 = load i32 , i32 * %op1
  %op23 = getelementptr [1005 x i32 ], [1005 x i32 ]* @parent, i32  0, i32  %op21
  %op24 = load i32 , i32 * %op23
  ret i32  %op24
}
define void @merge(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = alloca i32 
  %op5 = alloca i32 
  %op6 = load i32 , i32 * %op2
  %op7 = call i32  @find(i32  %op6)
  store i32  %op7, i32 * %op4
  %op8 = load i32 , i32 * %op3
  %op9 = call i32  @find(i32  %op8)
  store i32  %op9, i32 * %op5
  %op10 = load i32 , i32 * %op4
  %op11 = load i32 , i32 * %op5
  %op12 = icmp ne i32  %op10, %op11
  %op13 = zext i1  %op12 to i32 
  %op14 = icmp ne i32  %op13, 0
  br i1  %op14, label %label15, label %label20
label15:                                                ; preds = %label_entry
  %op16 = load i32 , i32 * %op4
  %op17 = load i32 , i32 * %op5
  %op18 = load i32 , i32 * %op5
  %op19 = getelementptr [1005 x i32 ], [1005 x i32 ]* @parent, i32  0, i32  %op17
  store i32  %op16, i32 * %op19
  br label %label20
label20:                                                ; preds = %label_entry, %label15
  ret void
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
  %op5 = alloca i32 
  %op6 = alloca i32 
  store i32  0, i32 * %op4
  br label %label7
label7:                                                ; preds = %label_entry, %label13
  %op8 = load i32 , i32 * %op4
  %op9 = load i32 , i32 * %op1
  %op10 = icmp slt i32  %op8, %op9
  %op11 = zext i1  %op10 to i32 
  %op12 = icmp ne i32  %op11, 0
  br i1  %op12, label %label13, label %label20
label13:                                                ; preds = %label7
  %op14 = load i32 , i32 * %op4
  %op15 = load i32 , i32 * %op4
  %op16 = load i32 , i32 * %op4
  %op17 = getelementptr [1005 x i32 ], [1005 x i32 ]* @parent, i32  0, i32  %op15
  store i32  %op14, i32 * %op17
  %op18 = load i32 , i32 * %op4
  %op19 = add i32  %op18, 1
  store i32  %op19, i32 * %op4
  br label %label7
label20:                                                ; preds = %label7
  store i32  0, i32 * %op4
  br label %label21
label21:                                                ; preds = %label20, %label27
  %op22 = load i32 , i32 * %op4
  %op23 = load i32 , i32 * %op3
  %op24 = icmp slt i32  %op22, %op23
  %op25 = zext i1  %op24 to i32 
  %op26 = icmp ne i32  %op25, 0
  br i1  %op26, label %label27, label %label34
label27:                                                ; preds = %label21
  %op28 = call i32  @getint()
  store i32  %op28, i32 * %op5
  %op29 = call i32  @getint()
  store i32  %op29, i32 * %op6
  %op30 = load i32 , i32 * %op5
  %op31 = load i32 , i32 * %op6
  call void @merge(i32  %op30, i32  %op31)
  %op32 = load i32 , i32 * %op4
  %op33 = add i32  %op32, 1
  store i32  %op33, i32 * %op4
  br label %label21
label34:                                                ; preds = %label21
  %op35 = alloca i32 
  store i32  0, i32 * %op35
  store i32  0, i32 * %op4
  br label %label36
label36:                                                ; preds = %label34, %label56
  %op37 = load i32 , i32 * %op4
  %op38 = load i32 , i32 * %op1
  %op39 = icmp slt i32  %op37, %op38
  %op40 = zext i1  %op39 to i32 
  %op41 = icmp ne i32  %op40, 0
  br i1  %op41, label %label42, label %label51
label42:                                                ; preds = %label36
  %op43 = load i32 , i32 * %op4
  %op44 = load i32 , i32 * %op4
  %op45 = getelementptr [1005 x i32 ], [1005 x i32 ]* @parent, i32  0, i32  %op43
  %op46 = load i32 , i32 * %op45
  %op47 = load i32 , i32 * %op4
  %op48 = icmp eq i32  %op46, %op47
  %op49 = zext i1  %op48 to i32 
  %op50 = icmp ne i32  %op49, 0
  br i1  %op50, label %label53, label %label56
label51:                                                ; preds = %label36
  %op52 = load i32 , i32 * %op35
  call void @putint(i32  %op52)
  ret i32  0
label53:                                                ; preds = %label42
  %op54 = load i32 , i32 * %op35
  %op55 = add i32  %op54, 1
  store i32  %op55, i32 * %op35
  br label %label56
label56:                                                ; preds = %label42, %label53
  %op57 = load i32 , i32 * %op4
  %op58 = add i32  %op57, 1
  store i32  %op58, i32 * %op4
  br label %label36
}

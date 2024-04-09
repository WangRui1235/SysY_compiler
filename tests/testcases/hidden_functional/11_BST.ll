; ModuleID = 'cminus'
source_filename = "/home/waang/cowork/tests/func/hidden_functional/11_BST.sy"

@space = constant i32  32
@LF = constant i32  10
@maxNode = constant i32  10000
@value = global [10000 x i32 ] zeroinitializer
@left_child = global [10000 x i32 ] zeroinitializer
@right_child = global [10000 x i32 ] zeroinitializer
@now = global i32  zeroinitializer
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

define i32  @search(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op2
  %op5 = mul i32  1, -1
  %op6 = icmp eq i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label20
label9:                                                ; preds = %label_entry, %label20
  %op10 = load i32 , i32 * %op2
  ret i32  %op10
label11:                                                ; preds = %label20
  %op12 = load i32 , i32 * %op3
  %op13 = load i32 , i32 * %op2
  %op14 = load i32 , i32 * %op2
  %op15 = getelementptr [10000 x i32 ], [10000 x i32 ]* @value, i32  0, i32  %op13
  %op16 = load i32 , i32 * %op15
  %op17 = icmp sgt i32  %op12, %op16
  %op18 = zext i1  %op17 to i32 
  %op19 = icmp ne i32  %op18, 0
  br i1  %op19, label %label29, label %label36
label20:                                                ; preds = %label_entry
  %op21 = load i32 , i32 * %op2
  %op22 = load i32 , i32 * %op2
  %op23 = getelementptr [10000 x i32 ], [10000 x i32 ]* @value, i32  0, i32  %op21
  %op24 = load i32 , i32 * %op23
  %op25 = load i32 , i32 * %op3
  %op26 = icmp eq i32  %op24, %op25
  %op27 = zext i1  %op26 to i32 
  %op28 = icmp ne i32  %op27, 0
  br i1  %op28, label %label9, label %label11
label29:                                                ; preds = %label11
  %op30 = load i32 , i32 * %op2
  %op31 = load i32 , i32 * %op2
  %op32 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op30
  %op33 = load i32 , i32 * %op32
  %op34 = load i32 , i32 * %op3
  %op35 = call i32  @search(i32  %op33, i32  %op34)
  ret i32  %op35
label36:                                                ; preds = %label11
  %op37 = load i32 , i32 * %op2
  %op38 = load i32 , i32 * %op2
  %op39 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op37
  %op40 = load i32 , i32 * %op39
  %op41 = load i32 , i32 * %op3
  %op42 = call i32  @search(i32  %op40, i32  %op41)
  ret i32  %op42
}
define i32  @find_minimum(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  %op3 = mul i32  1, -1
  %op4 = icmp eq i32  %op2, %op3
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label9
label7:                                                ; preds = %label_entry
  %op8 = mul i32  1, -1
  ret i32  %op8
label9:                                                ; preds = %label_entry
  %op10 = load i32 , i32 * %op1
  %op11 = load i32 , i32 * %op1
  %op12 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op10
  %op13 = load i32 , i32 * %op12
  %op14 = mul i32  1, -1
  %op15 = icmp ne i32  %op13, %op14
  %op16 = zext i1  %op15 to i32 
  %op17 = icmp ne i32  %op16, 0
  br i1  %op17, label %label20, label %label26
label18:                                                ; preds = %label26
  %op19 = load i32 , i32 * %op1
  ret i32  %op19
label20:                                                ; preds = %label9
  %op21 = load i32 , i32 * %op1
  %op22 = load i32 , i32 * %op1
  %op23 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op21
  %op24 = load i32 , i32 * %op23
  %op25 = call i32  @find_minimum(i32  %op24)
  ret i32  %op25
label26:                                                ; preds = %label9
  br label %label18
}
define i32  @new_node(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  %op3 = load i32 , i32 * @now
  %op4 = load i32 , i32 * @now
  %op5 = getelementptr [10000 x i32 ], [10000 x i32 ]* @value, i32  0, i32  %op3
  store i32  %op2, i32 * %op5
  %op6 = mul i32  1, -1
  %op7 = load i32 , i32 * @now
  %op8 = load i32 , i32 * @now
  %op9 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op7
  store i32  %op6, i32 * %op9
  %op10 = mul i32  1, -1
  %op11 = load i32 , i32 * @now
  %op12 = load i32 , i32 * @now
  %op13 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op11
  store i32  %op10, i32 * %op13
  %op14 = load i32 , i32 * @now
  %op15 = add i32  %op14, 1
  store i32  %op15, i32 * @now
  %op16 = load i32 , i32 * @now
  %op17 = sub i32  %op16, 1
  ret i32  %op17
}
define i32  @insert(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op2
  %op5 = mul i32  1, -1
  %op6 = icmp eq i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label12
label9:                                                ; preds = %label_entry
  %op10 = load i32 , i32 * %op3
  %op11 = call i32  @new_node(i32  %op10)
  ret i32  %op11
label12:                                                ; preds = %label_entry
  %op13 = load i32 , i32 * %op3
  %op14 = load i32 , i32 * %op2
  %op15 = load i32 , i32 * %op2
  %op16 = getelementptr [10000 x i32 ], [10000 x i32 ]* @value, i32  0, i32  %op14
  %op17 = load i32 , i32 * %op16
  %op18 = icmp sgt i32  %op13, %op17
  %op19 = zext i1  %op18 to i32 
  %op20 = icmp ne i32  %op19, 0
  br i1  %op20, label %label23, label %label33
label21:                                                ; preds = %label43
  %op22 = load i32 , i32 * %op2
  ret i32  %op22
label23:                                                ; preds = %label12
  %op24 = load i32 , i32 * %op2
  %op25 = load i32 , i32 * %op2
  %op26 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op24
  %op27 = load i32 , i32 * %op26
  %op28 = load i32 , i32 * %op3
  %op29 = call i32  @insert(i32  %op27, i32  %op28)
  %op30 = load i32 , i32 * %op2
  %op31 = load i32 , i32 * %op2
  %op32 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op30
  store i32  %op29, i32 * %op32
  br label %label43
label33:                                                ; preds = %label12
  %op34 = load i32 , i32 * %op2
  %op35 = load i32 , i32 * %op2
  %op36 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op34
  %op37 = load i32 , i32 * %op36
  %op38 = load i32 , i32 * %op3
  %op39 = call i32  @insert(i32  %op37, i32  %op38)
  %op40 = load i32 , i32 * %op2
  %op41 = load i32 , i32 * %op2
  %op42 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op40
  store i32  %op39, i32 * %op42
  br label %label43
label43:                                                ; preds = %label23, %label33
  br label %label21
}
define i32  @delete(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op2
  %op5 = mul i32  1, -1
  %op6 = icmp eq i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label11
label9:                                                ; preds = %label_entry
  %op10 = mul i32  1, -1
  ret i32  %op10
label11:                                                ; preds = %label_entry
  %op12 = load i32 , i32 * %op3
  %op13 = load i32 , i32 * %op2
  %op14 = load i32 , i32 * %op2
  %op15 = getelementptr [10000 x i32 ], [10000 x i32 ]* @value, i32  0, i32  %op13
  %op16 = load i32 , i32 * %op15
  %op17 = icmp sgt i32  %op12, %op16
  %op18 = zext i1  %op17 to i32 
  %op19 = icmp ne i32  %op18, 0
  br i1  %op19, label %label20, label %label30
label20:                                                ; preds = %label11
  %op21 = load i32 , i32 * %op2
  %op22 = load i32 , i32 * %op2
  %op23 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op21
  %op24 = load i32 , i32 * %op23
  %op25 = load i32 , i32 * %op3
  %op26 = call i32  @delete(i32  %op24, i32  %op25)
  %op27 = load i32 , i32 * %op2
  %op28 = load i32 , i32 * %op2
  %op29 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op27
  store i32  %op26, i32 * %op29
  br label %label39
label30:                                                ; preds = %label11
  %op31 = load i32 , i32 * %op3
  %op32 = load i32 , i32 * %op2
  %op33 = load i32 , i32 * %op2
  %op34 = getelementptr [10000 x i32 ], [10000 x i32 ]* @value, i32  0, i32  %op32
  %op35 = load i32 , i32 * %op34
  %op36 = icmp slt i32  %op31, %op35
  %op37 = zext i1  %op36 to i32 
  %op38 = icmp ne i32  %op37, 0
  br i1  %op38, label %label41, label %label51
label39:                                                ; preds = %label20, %label60
  %op40 = load i32 , i32 * %op2
  ret i32  %op40
label41:                                                ; preds = %label30
  %op42 = load i32 , i32 * %op2
  %op43 = load i32 , i32 * %op2
  %op44 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op42
  %op45 = load i32 , i32 * %op44
  %op46 = load i32 , i32 * %op3
  %op47 = call i32  @delete(i32  %op45, i32  %op46)
  %op48 = load i32 , i32 * %op2
  %op49 = load i32 , i32 * %op2
  %op50 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op48
  store i32  %op47, i32 * %op50
  br label %label60
label51:                                                ; preds = %label30
  %op52 = load i32 , i32 * %op2
  %op53 = load i32 , i32 * %op2
  %op54 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op52
  %op55 = load i32 , i32 * %op54
  %op56 = mul i32  1, -1
  %op57 = icmp eq i32  %op55, %op56
  %op58 = zext i1  %op57 to i32 
  %op59 = icmp ne i32  %op58, 0
  br i1  %op59, label %label73, label %label63
label60:                                                ; preds = %label41, %label72
  br label %label39
label61:                                                ; preds = %label73
  %op62 = mul i32  1, -1
  ret i32  %op62
label63:                                                ; preds = %label51, %label73
  %op64 = load i32 , i32 * %op2
  %op65 = load i32 , i32 * %op2
  %op66 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op64
  %op67 = load i32 , i32 * %op66
  %op68 = mul i32  1, -1
  %op69 = icmp eq i32  %op67, %op68
  %op70 = zext i1  %op69 to i32 
  %op71 = icmp ne i32  %op70, 0
  br i1  %op71, label %label82, label %label118
label72:                                                ; preds = %label117
  br label %label60
label73:                                                ; preds = %label51
  %op74 = load i32 , i32 * %op2
  %op75 = load i32 , i32 * %op2
  %op76 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op74
  %op77 = load i32 , i32 * %op76
  %op78 = mul i32  1, -1
  %op79 = icmp eq i32  %op77, %op78
  %op80 = zext i1  %op79 to i32 
  %op81 = icmp ne i32  %op80, 0
  br i1  %op81, label %label61, label %label63
label82:                                                ; preds = %label63, %label118
  %op83 = load i32 , i32 * %op2
  %op84 = load i32 , i32 * %op2
  %op85 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op83
  %op86 = load i32 , i32 * %op85
  %op87 = mul i32  1, -1
  %op88 = icmp eq i32  %op86, %op87
  %op89 = zext i1  %op88 to i32 
  %op90 = icmp ne i32  %op89, 0
  br i1  %op90, label %label127, label %label132
label91:                                                ; preds = %label118
  %op92 = load i32 , i32 * %op2
  %op93 = load i32 , i32 * %op2
  %op94 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op92
  %op95 = load i32 , i32 * %op94
  %op96 = call i32  @find_minimum(i32  %op95)
  %op97 = alloca i32 
  store i32  %op96, i32 * %op97
  %op98 = load i32 , i32 * %op97
  %op99 = load i32 , i32 * %op97
  %op100 = getelementptr [10000 x i32 ], [10000 x i32 ]* @value, i32  0, i32  %op98
  %op101 = load i32 , i32 * %op100
  %op102 = load i32 , i32 * %op2
  %op103 = load i32 , i32 * %op2
  %op104 = getelementptr [10000 x i32 ], [10000 x i32 ]* @value, i32  0, i32  %op102
  store i32  %op101, i32 * %op104
  %op105 = load i32 , i32 * %op2
  %op106 = load i32 , i32 * %op2
  %op107 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op105
  %op108 = load i32 , i32 * %op107
  %op109 = load i32 , i32 * %op97
  %op110 = load i32 , i32 * %op97
  %op111 = getelementptr [10000 x i32 ], [10000 x i32 ]* @value, i32  0, i32  %op109
  %op112 = load i32 , i32 * %op111
  %op113 = call i32  @delete(i32  %op108, i32  %op112)
  %op114 = load i32 , i32 * %op2
  %op115 = load i32 , i32 * %op2
  %op116 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op114
  store i32  %op113, i32 * %op116
  br label %label117
label117:                                                ; preds = %label91
  br label %label72
label118:                                                ; preds = %label63
  %op119 = load i32 , i32 * %op2
  %op120 = load i32 , i32 * %op2
  %op121 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op119
  %op122 = load i32 , i32 * %op121
  %op123 = mul i32  1, -1
  %op124 = icmp eq i32  %op122, %op123
  %op125 = zext i1  %op124 to i32 
  %op126 = icmp ne i32  %op125, 0
  br i1  %op126, label %label82, label %label91
label127:                                                ; preds = %label82
  %op128 = load i32 , i32 * %op2
  %op129 = load i32 , i32 * %op2
  %op130 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op128
  %op131 = load i32 , i32 * %op130
  ret i32  %op131
label132:                                                ; preds = %label82
  %op133 = load i32 , i32 * %op2
  %op134 = load i32 , i32 * %op2
  %op135 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op133
  %op136 = load i32 , i32 * %op135
  ret i32  %op136
}
define void @inorder(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  %op3 = mul i32  1, -1
  %op4 = icmp ne i32  %op2, %op3
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label22
label7:                                                ; preds = %label_entry
  %op8 = load i32 , i32 * %op1
  %op9 = load i32 , i32 * %op1
  %op10 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op8
  %op11 = load i32 , i32 * %op10
  call void @inorder(i32  %op11)
  %op12 = load i32 , i32 * %op1
  %op13 = load i32 , i32 * %op1
  %op14 = getelementptr [10000 x i32 ], [10000 x i32 ]* @value, i32  0, i32  %op12
  %op15 = load i32 , i32 * %op14
  call void @putint(i32  %op15)
  %op16 = load i32 , i32 * @space
  %op17 = trunc i32  %op16 to i8 
  call void @putch(i8  %op17)
  %op18 = load i32 , i32 * %op1
  %op19 = load i32 , i32 * %op1
  %op20 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op18
  %op21 = load i32 , i32 * %op20
  call void @inorder(i32  %op21)
  br label %label22
label22:                                                ; preds = %label_entry, %label7
  ret void
}
define i32  @main() {
label_entry:
  store i32  0, i32 * @now
  %op0 = call i32  @getint()
  %op1 = alloca i32 
  store i32  %op0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  %op3 = icmp eq i32  %op2, 0
  br i1  %op3, label %label4, label %label5
label4:                                                ; preds = %label_entry
  ret i32  0
label5:                                                ; preds = %label_entry
  %op6 = call i32  @getint()
  %op7 = call i32  @new_node(i32  %op6)
  %op8 = alloca i32 
  store i32  %op7, i32 * %op8
  %op9 = alloca i32 
  store i32  1, i32 * %op9
  br label %label10
label10:                                                ; preds = %label5, %label16
  %op11 = load i32 , i32 * %op9
  %op12 = load i32 , i32 * %op1
  %op13 = icmp slt i32  %op11, %op12
  %op14 = zext i1  %op13 to i32 
  %op15 = icmp ne i32  %op14, 0
  br i1  %op15, label %label16, label %label22
label16:                                                ; preds = %label10
  %op17 = load i32 , i32 * %op8
  %op18 = call i32  @getint()
  %op19 = call i32  @insert(i32  %op17, i32  %op18)
  %op20 = load i32 , i32 * %op9
  %op21 = add i32  %op20, 1
  store i32  %op21, i32 * %op9
  br label %label10
label22:                                                ; preds = %label10
  %op23 = load i32 , i32 * %op8
  call void @inorder(i32  %op23)
  %op24 = load i32 , i32 * @LF
  %op25 = trunc i32  %op24 to i8 
  call void @putch(i8  %op25)
  %op26 = call i32  @getint()
  store i32  %op26, i32 * %op1
  store i32  0, i32 * %op9
  br label %label27
label27:                                                ; preds = %label22, %label33
  %op28 = load i32 , i32 * %op9
  %op29 = load i32 , i32 * %op1
  %op30 = icmp slt i32  %op28, %op29
  %op31 = zext i1  %op30 to i32 
  %op32 = icmp ne i32  %op31, 0
  br i1  %op32, label %label33, label %label39
label33:                                                ; preds = %label27
  %op34 = load i32 , i32 * %op8
  %op35 = call i32  @getint()
  %op36 = call i32  @delete(i32  %op34, i32  %op35)
  store i32  %op36, i32 * %op8
  %op37 = load i32 , i32 * %op9
  %op38 = add i32  %op37, 1
  store i32  %op38, i32 * %op9
  br label %label27
label39:                                                ; preds = %label27
  %op40 = load i32 , i32 * %op8
  call void @inorder(i32  %op40)
  %op41 = load i32 , i32 * @LF
  %op42 = trunc i32  %op41 to i8 
  call void @putch(i8  %op42)
  ret i32  0
}

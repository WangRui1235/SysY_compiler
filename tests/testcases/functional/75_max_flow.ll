; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/75_max_flow.sy"

@INF = global i32  1879048192
@size = global [10 x i32 ] zeroinitializer
@to = global [10 x [10 x i32 ]] zeroinitializer
@cap = global [10 x [10 x i32 ]] zeroinitializer
@rev = global [10 x [10 x i32 ]] zeroinitializer
@used = global [10 x i32 ] zeroinitializer
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

define void @my_memset(i32 * %arg0, i32  %arg1, i32  %arg2) {
label_entry:
  %op3 = alloca i32 *
  store i32 * %arg0, i32 ** %op3
  %op4 = alloca i32 
  store i32  %arg1, i32 * %op4
  %op5 = alloca i32 
  store i32  %arg2, i32 * %op5
  %op6 = alloca i32 
  store i32  0, i32 * %op6
  br label %label7
label7:                                                ; preds = %label_entry, %label13
  %op8 = load i32 , i32 * %op6
  %op9 = load i32 , i32 * %op5
  %op10 = icmp slt i32  %op8, %op9
  %op11 = zext i1  %op10 to i32 
  %op12 = icmp ne i32  %op11, 0
  br i1  %op12, label %label13, label %label20
label13:                                                ; preds = %label7
  %op14 = load i32 , i32 * %op4
  %op15 = load i32 , i32 * %op6
  %op16 = load i32 *, i32 ** %op3
  %op17 = getelementptr i32 , i32 * %op16, i32  %op15
  store i32  %op14, i32 * %op17
  %op18 = load i32 , i32 * %op6
  %op19 = add i32  %op18, 1
  store i32  %op19, i32 * %op6
  br label %label7
label20:                                                ; preds = %label7
  ret void
}
define void @add_node(i32  %arg0, i32  %arg1, i32  %arg2) {
label_entry:
  %op3 = alloca i32 
  store i32  %arg0, i32 * %op3
  %op4 = alloca i32 
  store i32  %arg1, i32 * %op4
  %op5 = alloca i32 
  store i32  %arg2, i32 * %op5
  %op6 = load i32 , i32 * %op4
  %op7 = load i32 , i32 * %op3
  %op8 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @to, i32  0, i32  %op7
  %op9 = load i32 , i32 * %op3
  %op10 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op9
  %op11 = load i32 , i32 * %op10
  %op12 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  %op11
  store i32  %op6, i32 * %op12
  %op13 = load i32 , i32 * %op5
  %op14 = load i32 , i32 * %op3
  %op15 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %op14
  %op16 = load i32 , i32 * %op3
  %op17 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op16
  %op18 = load i32 , i32 * %op17
  %op19 = getelementptr [10 x i32 ], [10 x i32 ]* %op15, i32  0, i32  %op18
  store i32  %op13, i32 * %op19
  %op20 = load i32 , i32 * %op4
  %op21 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op20
  %op22 = load i32 , i32 * %op21
  %op23 = load i32 , i32 * %op3
  %op24 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @rev, i32  0, i32  %op23
  %op25 = load i32 , i32 * %op3
  %op26 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op25
  %op27 = load i32 , i32 * %op26
  %op28 = getelementptr [10 x i32 ], [10 x i32 ]* %op24, i32  0, i32  %op27
  store i32  %op22, i32 * %op28
  %op29 = load i32 , i32 * %op3
  %op30 = load i32 , i32 * %op4
  %op31 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @to, i32  0, i32  %op30
  %op32 = load i32 , i32 * %op4
  %op33 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op32
  %op34 = load i32 , i32 * %op33
  %op35 = getelementptr [10 x i32 ], [10 x i32 ]* %op31, i32  0, i32  %op34
  store i32  %op29, i32 * %op35
  %op36 = load i32 , i32 * %op4
  %op37 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %op36
  %op38 = load i32 , i32 * %op4
  %op39 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op38
  %op40 = load i32 , i32 * %op39
  %op41 = getelementptr [10 x i32 ], [10 x i32 ]* %op37, i32  0, i32  %op40
  store i32  0, i32 * %op41
  %op42 = load i32 , i32 * %op3
  %op43 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op42
  %op44 = load i32 , i32 * %op43
  %op45 = load i32 , i32 * %op4
  %op46 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @rev, i32  0, i32  %op45
  %op47 = load i32 , i32 * %op4
  %op48 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op47
  %op49 = load i32 , i32 * %op48
  %op50 = getelementptr [10 x i32 ], [10 x i32 ]* %op46, i32  0, i32  %op49
  store i32  %op44, i32 * %op50
  %op51 = load i32 , i32 * %op3
  %op52 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op51
  %op53 = load i32 , i32 * %op52
  %op54 = add i32  %op53, 1
  %op55 = load i32 , i32 * %op3
  %op56 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op55
  store i32  %op54, i32 * %op56
  %op57 = load i32 , i32 * %op4
  %op58 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op57
  %op59 = load i32 , i32 * %op58
  %op60 = add i32  %op59, 1
  %op61 = load i32 , i32 * %op4
  %op62 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op61
  store i32  %op60, i32 * %op62
  ret void
}
define i32  @dfs(i32  %arg0, i32  %arg1, i32  %arg2) {
label_entry:
  %op3 = alloca i32 
  store i32  %arg0, i32 * %op3
  %op4 = alloca i32 
  store i32  %arg1, i32 * %op4
  %op5 = alloca i32 
  store i32  %arg2, i32 * %op5
  %op6 = load i32 , i32 * %op3
  %op7 = load i32 , i32 * %op4
  %op8 = icmp eq i32  %op6, %op7
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label13
label11:                                                ; preds = %label_entry
  %op12 = load i32 , i32 * %op5
  ret i32  %op12
label13:                                                ; preds = %label_entry
  %op14 = load i32 , i32 * %op3
  %op15 = getelementptr [10 x i32 ], [10 x i32 ]* @used, i32  0, i32  %op14
  store i32  1, i32 * %op15
  %op16 = alloca i32 
  store i32  0, i32 * %op16
  br label %label17
label17:                                                ; preds = %label13, %label35, %label47, %label123
  %op18 = load i32 , i32 * %op16
  %op19 = load i32 , i32 * %op3
  %op20 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op19
  %op21 = load i32 , i32 * %op20
  %op22 = icmp slt i32  %op18, %op21
  %op23 = zext i1  %op22 to i32 
  %op24 = icmp ne i32  %op23, 0
  br i1  %op24, label %label25, label %label34
label25:                                                ; preds = %label17
  %op26 = load i32 , i32 * %op3
  %op27 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @to, i32  0, i32  %op26
  %op28 = load i32 , i32 * %op16
  %op29 = getelementptr [10 x i32 ], [10 x i32 ]* %op27, i32  0, i32  %op28
  %op30 = load i32 , i32 * %op29
  %op31 = getelementptr [10 x i32 ], [10 x i32 ]* @used, i32  0, i32  %op30
  %op32 = load i32 , i32 * %op31
  %op33 = icmp ne i32  %op32, 0
  br i1  %op33, label %label35, label %label38
label34:                                                ; preds = %label17
  ret i32  0
label35:                                                ; preds = %label25
  %op36 = load i32 , i32 * %op16
  %op37 = add i32  %op36, 1
  store i32  %op37, i32 * %op16
  br label %label17
label38:                                                ; preds = %label25
  %op39 = load i32 , i32 * %op3
  %op40 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %op39
  %op41 = load i32 , i32 * %op16
  %op42 = getelementptr [10 x i32 ], [10 x i32 ]* %op40, i32  0, i32  %op41
  %op43 = load i32 , i32 * %op42
  %op44 = icmp sle i32  %op43, 0
  %op45 = zext i1  %op44 to i32 
  %op46 = icmp ne i32  %op45, 0
  br i1  %op46, label %label47, label %label50
label47:                                                ; preds = %label38
  %op48 = load i32 , i32 * %op16
  %op49 = add i32  %op48, 1
  store i32  %op49, i32 * %op16
  br label %label17
label50:                                                ; preds = %label38
  %op51 = alloca i32 
  %op52 = load i32 , i32 * %op5
  %op53 = load i32 , i32 * %op3
  %op54 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %op53
  %op55 = load i32 , i32 * %op16
  %op56 = getelementptr [10 x i32 ], [10 x i32 ]* %op54, i32  0, i32  %op55
  %op57 = load i32 , i32 * %op56
  %op58 = icmp slt i32  %op52, %op57
  %op59 = zext i1  %op58 to i32 
  %op60 = icmp ne i32  %op59, 0
  br i1  %op60, label %label61, label %label63
label61:                                                ; preds = %label50
  %op62 = load i32 , i32 * %op5
  store i32  %op62, i32 * %op51
  br label %label69
label63:                                                ; preds = %label50
  %op64 = load i32 , i32 * %op3
  %op65 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %op64
  %op66 = load i32 , i32 * %op16
  %op67 = getelementptr [10 x i32 ], [10 x i32 ]* %op65, i32  0, i32  %op66
  %op68 = load i32 , i32 * %op67
  store i32  %op68, i32 * %op51
  br label %label69
label69:                                                ; preds = %label61, %label63
  %op70 = alloca i32 
  %op71 = load i32 , i32 * %op3
  %op72 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @to, i32  0, i32  %op71
  %op73 = load i32 , i32 * %op16
  %op74 = getelementptr [10 x i32 ], [10 x i32 ]* %op72, i32  0, i32  %op73
  %op75 = load i32 , i32 * %op74
  %op76 = load i32 , i32 * %op4
  %op77 = load i32 , i32 * %op51
  %op78 = call i32  @dfs(i32  %op75, i32  %op76, i32  %op77)
  store i32  %op78, i32 * %op70
  %op79 = load i32 , i32 * %op70
  %op80 = icmp sgt i32  %op79, 0
  %op81 = zext i1  %op80 to i32 
  %op82 = icmp ne i32  %op81, 0
  br i1  %op82, label %label83, label %label123
label83:                                                ; preds = %label69
  %op84 = load i32 , i32 * %op3
  %op85 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %op84
  %op86 = load i32 , i32 * %op16
  %op87 = getelementptr [10 x i32 ], [10 x i32 ]* %op85, i32  0, i32  %op86
  %op88 = load i32 , i32 * %op87
  %op89 = load i32 , i32 * %op70
  %op90 = sub i32  %op88, %op89
  %op91 = load i32 , i32 * %op3
  %op92 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %op91
  %op93 = load i32 , i32 * %op16
  %op94 = getelementptr [10 x i32 ], [10 x i32 ]* %op92, i32  0, i32  %op93
  store i32  %op90, i32 * %op94
  %op95 = load i32 , i32 * %op3
  %op96 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @to, i32  0, i32  %op95
  %op97 = load i32 , i32 * %op16
  %op98 = getelementptr [10 x i32 ], [10 x i32 ]* %op96, i32  0, i32  %op97
  %op99 = load i32 , i32 * %op98
  %op100 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %op99
  %op101 = load i32 , i32 * %op3
  %op102 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @rev, i32  0, i32  %op101
  %op103 = load i32 , i32 * %op16
  %op104 = getelementptr [10 x i32 ], [10 x i32 ]* %op102, i32  0, i32  %op103
  %op105 = load i32 , i32 * %op104
  %op106 = getelementptr [10 x i32 ], [10 x i32 ]* %op100, i32  0, i32  %op105
  %op107 = load i32 , i32 * %op106
  %op108 = load i32 , i32 * %op70
  %op109 = add i32  %op107, %op108
  %op110 = load i32 , i32 * %op3
  %op111 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @to, i32  0, i32  %op110
  %op112 = load i32 , i32 * %op16
  %op113 = getelementptr [10 x i32 ], [10 x i32 ]* %op111, i32  0, i32  %op112
  %op114 = load i32 , i32 * %op113
  %op115 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %op114
  %op116 = load i32 , i32 * %op3
  %op117 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @rev, i32  0, i32  %op116
  %op118 = load i32 , i32 * %op16
  %op119 = getelementptr [10 x i32 ], [10 x i32 ]* %op117, i32  0, i32  %op118
  %op120 = load i32 , i32 * %op119
  %op121 = getelementptr [10 x i32 ], [10 x i32 ]* %op115, i32  0, i32  %op120
  store i32  %op109, i32 * %op121
  %op122 = load i32 , i32 * %op70
  ret i32  %op122
label123:                                                ; preds = %label69
  %op124 = load i32 , i32 * %op16
  %op125 = add i32  %op124, 1
  store i32  %op125, i32 * %op16
  br label %label17
}
define i32  @max_flow(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = alloca i32 
  store i32  0, i32 * %op4
  br label %label5
label5:                                                ; preds = %label_entry, %label21
  %op6 = icmp ne i32  1, 0
  br i1  %op6, label %label7, label %label18
label7:                                                ; preds = %label5
  %op8 = getelementptr [10 x i32 ], [10 x i32 ]* @used, i32  0, i32  0
  call void @my_memset(i32 * %op8, i32  0, i32  10)
  %op9 = alloca i32 
  %op10 = load i32 , i32 * %op2
  %op11 = load i32 , i32 * %op3
  %op12 = load i32 , i32 * @INF
  %op13 = call i32  @dfs(i32  %op10, i32  %op11, i32  %op12)
  store i32  %op13, i32 * %op9
  %op14 = load i32 , i32 * %op9
  %op15 = icmp eq i32  %op14, 0
  %op16 = zext i1  %op15 to i32 
  %op17 = icmp ne i32  %op16, 0
  br i1  %op17, label %label19, label %label21
label18:                                                ; preds = %label5
  ret i32  0
label19:                                                ; preds = %label7
  %op20 = load i32 , i32 * %op4
  ret i32  %op20
label21:                                                ; preds = %label7
  %op22 = load i32 , i32 * %op4
  %op23 = load i32 , i32 * %op9
  %op24 = add i32  %op22, %op23
  store i32  %op24, i32 * %op4
  br label %label5
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  %op1 = alloca i32 
  %op2 = call i32  @getint()
  store i32  %op2, i32 * %op1
  %op3 = call i32  @getint()
  store i32  %op3, i32 * %op0
  %op4 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  0
  call void @my_memset(i32 * %op4, i32  0, i32  10)
  br label %label5
label5:                                                ; preds = %label_entry, %label10
  %op6 = load i32 , i32 * %op0
  %op7 = icmp sgt i32  %op6, 0
  %op8 = zext i1  %op7 to i32 
  %op9 = icmp ne i32  %op8, 0
  br i1  %op9, label %label10, label %label22
label10:                                                ; preds = %label5
  %op11 = alloca i32 
  %op12 = alloca i32 
  %op13 = call i32  @getint()
  store i32  %op13, i32 * %op12
  %op14 = call i32  @getint()
  store i32  %op14, i32 * %op11
  %op15 = alloca i32 
  %op16 = call i32  @getint()
  store i32  %op16, i32 * %op15
  %op17 = load i32 , i32 * %op12
  %op18 = load i32 , i32 * %op11
  %op19 = load i32 , i32 * %op15
  call void @add_node(i32  %op17, i32  %op18, i32  %op19)
  %op20 = load i32 , i32 * %op0
  %op21 = sub i32  %op20, 1
  store i32  %op21, i32 * %op0
  br label %label5
label22:                                                ; preds = %label5
  %op23 = load i32 , i32 * %op1
  %op24 = call i32  @max_flow(i32  1, i32  %op23)
  call void @putint(i32  %op24)
  %op25 = trunc i32  10 to i8 
  call void @putch(i8  %op25)
  ret i32  0
}

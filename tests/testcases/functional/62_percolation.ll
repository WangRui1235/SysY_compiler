; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/62_percolation.sy"

@array = global [110 x i32 ] zeroinitializer
@n = global i32  zeroinitializer
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

define void @init(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = alloca i32 
  store i32  1, i32 * %op2
  br label %label3
label3:                                                ; preds = %label_entry, %label12
  %op4 = load i32 , i32 * %op2
  %op5 = load i32 , i32 * %op1
  %op6 = load i32 , i32 * %op1
  %op7 = mul i32  %op5, %op6
  %op8 = add i32  %op7, 1
  %op9 = icmp sle i32  %op4, %op8
  %op10 = zext i1  %op9 to i32 
  %op11 = icmp ne i32  %op10, 0
  br i1  %op11, label %label12, label %label17
label12:                                                ; preds = %label3
  %op13 = load i32 , i32 * %op2
  %op14 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op13
  store i32  -1, i32 * %op14
  %op15 = load i32 , i32 * %op2
  %op16 = add i32  %op15, 1
  store i32  %op16, i32 * %op2
  br label %label3
label17:                                                ; preds = %label3
  ret void
}
define i32  @findfa(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  %op3 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op2
  %op4 = load i32 , i32 * %op3
  %op5 = load i32 , i32 * %op1
  %op6 = icmp eq i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label11
label9:                                                ; preds = %label_entry
  %op10 = load i32 , i32 * %op1
  ret i32  %op10
label11:                                                ; preds = %label_entry
  %op12 = load i32 , i32 * %op1
  %op13 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op12
  %op14 = load i32 , i32 * %op13
  %op15 = call i32  @findfa(i32  %op14)
  %op16 = load i32 , i32 * %op1
  %op17 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op16
  store i32  %op15, i32 * %op17
  %op18 = load i32 , i32 * %op1
  %op19 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op18
  %op20 = load i32 , i32 * %op19
  ret i32  %op20
}
define void @mmerge(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = alloca i32 
  %op5 = load i32 , i32 * %op2
  %op6 = call i32  @findfa(i32  %op5)
  store i32  %op6, i32 * %op4
  %op7 = alloca i32 
  %op8 = load i32 , i32 * %op3
  %op9 = call i32  @findfa(i32  %op8)
  store i32  %op9, i32 * %op7
  %op10 = load i32 , i32 * %op4
  %op11 = load i32 , i32 * %op7
  %op12 = icmp ne i32  %op10, %op11
  %op13 = zext i1  %op12 to i32 
  %op14 = icmp ne i32  %op13, 0
  br i1  %op14, label %label15, label %label19
label15:                                                ; preds = %label_entry
  %op16 = load i32 , i32 * %op7
  %op17 = load i32 , i32 * %op4
  %op18 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op17
  store i32  %op16, i32 * %op18
  br label %label19
label19:                                                ; preds = %label_entry, %label15
  ret void
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  %op1 = alloca i32 
  %op2 = alloca i32 
  %op3 = alloca i32 
  store i32  1, i32 * %op1
  br label %label4
label4:                                                ; preds = %label_entry, %label169
  %op5 = load i32 , i32 * %op1
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label18
label7:                                                ; preds = %label4
  %op8 = load i32 , i32 * %op1
  %op9 = sub i32  %op8, 1
  store i32  %op9, i32 * %op1
  store i32  4, i32 * @n
  store i32  10, i32 * %op0
  %op10 = alloca i32 
  store i32  0, i32 * %op10
  %op11 = alloca i32 
  store i32  0, i32 * %op11
  %op12 = load i32 , i32 * @n
  call void @init(i32  %op12)
  %op13 = alloca i32 
  %op14 = load i32 , i32 * @n
  %op15 = load i32 , i32 * @n
  %op16 = mul i32  %op14, %op15
  %op17 = add i32  %op16, 1
  store i32  %op17, i32 * %op13
  br label %label19
label18:                                                ; preds = %label4
  ret i32  0
label19:                                                ; preds = %label7, %label48
  %op20 = load i32 , i32 * %op10
  %op21 = load i32 , i32 * %op0
  %op22 = icmp slt i32  %op20, %op21
  %op23 = zext i1  %op22 to i32 
  %op24 = icmp ne i32  %op23, 0
  br i1  %op24, label %label25, label %label30
label25:                                                ; preds = %label19
  %op26 = call i32  @getint()
  store i32  %op26, i32 * %op3
  %op27 = call i32  @getint()
  store i32  %op27, i32 * %op2
  %op28 = load i32 , i32 * %op11
  %op29 = icmp eq i32  %op28, 0
  br i1  %op29, label %label33, label %label48
label30:                                                ; preds = %label19
  %op31 = load i32 , i32 * %op11
  %op32 = icmp eq i32  %op31, 0
  br i1  %op32, label %label167, label %label169
label33:                                                ; preds = %label25
  %op34 = alloca i32 
  %op35 = load i32 , i32 * @n
  %op36 = load i32 , i32 * %op3
  %op37 = sub i32  %op36, 1
  %op38 = mul i32  %op35, %op37
  %op39 = load i32 , i32 * %op2
  %op40 = add i32  %op38, %op39
  store i32  %op40, i32 * %op34
  %op41 = load i32 , i32 * %op34
  %op42 = load i32 , i32 * %op34
  %op43 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op42
  store i32  %op41, i32 * %op43
  %op44 = load i32 , i32 * %op3
  %op45 = icmp eq i32  %op44, 1
  %op46 = zext i1  %op45 to i32 
  %op47 = icmp ne i32  %op46, 0
  br i1  %op47, label %label51, label %label54
label48:                                                ; preds = %label25, %label152
  %op49 = load i32 , i32 * %op10
  %op50 = add i32  %op49, 1
  store i32  %op50, i32 * %op10
  br label %label19
label51:                                                ; preds = %label33
  %op52 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  0
  store i32  0, i32 * %op52
  %op53 = load i32 , i32 * %op34
  call void @mmerge(i32  %op53, i32  0)
  br label %label54
label54:                                                ; preds = %label33, %label51
  %op55 = load i32 , i32 * %op3
  %op56 = load i32 , i32 * @n
  %op57 = icmp eq i32  %op55, %op56
  %op58 = zext i1  %op57 to i32 
  %op59 = icmp ne i32  %op58, 0
  br i1  %op59, label %label60, label %label66
label60:                                                ; preds = %label54
  %op61 = load i32 , i32 * %op13
  %op62 = load i32 , i32 * %op13
  %op63 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op62
  store i32  %op61, i32 * %op63
  %op64 = load i32 , i32 * %op34
  %op65 = load i32 , i32 * %op13
  call void @mmerge(i32  %op64, i32  %op65)
  br label %label66
label66:                                                ; preds = %label54, %label60
  %op67 = load i32 , i32 * %op2
  %op68 = load i32 , i32 * @n
  %op69 = icmp slt i32  %op67, %op68
  %op70 = zext i1  %op69 to i32 
  %op71 = icmp ne i32  %op70, 0
  br i1  %op71, label %label81, label %label76
label72:                                                ; preds = %label81
  %op73 = load i32 , i32 * %op34
  %op74 = load i32 , i32 * %op34
  %op75 = add i32  %op74, 1
  call void @mmerge(i32  %op73, i32  %op75)
  br label %label76
label76:                                                ; preds = %label66, %label81, %label72
  %op77 = load i32 , i32 * %op2
  %op78 = icmp sgt i32  %op77, 1
  %op79 = zext i1  %op78 to i32 
  %op80 = icmp ne i32  %op79, 0
  br i1  %op80, label %label99, label %label93
label81:                                                ; preds = %label66
  %op82 = load i32 , i32 * %op34
  %op83 = add i32  %op82, 1
  %op84 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op83
  %op85 = load i32 , i32 * %op84
  %op86 = icmp ne i32  %op85, -1
  %op87 = zext i1  %op86 to i32 
  %op88 = icmp ne i32  %op87, 0
  br i1  %op88, label %label72, label %label76
label89:                                                ; preds = %label99
  %op90 = load i32 , i32 * %op34
  %op91 = load i32 , i32 * %op34
  %op92 = sub i32  %op91, 1
  call void @mmerge(i32  %op90, i32  %op92)
  br label %label93
label93:                                                ; preds = %label76, %label99, %label89
  %op94 = load i32 , i32 * %op3
  %op95 = load i32 , i32 * @n
  %op96 = icmp slt i32  %op94, %op95
  %op97 = zext i1  %op96 to i32 
  %op98 = icmp ne i32  %op97, 0
  br i1  %op98, label %label117, label %label112
label99:                                                ; preds = %label76
  %op100 = load i32 , i32 * %op34
  %op101 = sub i32  %op100, 1
  %op102 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op101
  %op103 = load i32 , i32 * %op102
  %op104 = icmp ne i32  %op103, -1
  %op105 = zext i1  %op104 to i32 
  %op106 = icmp ne i32  %op105, 0
  br i1  %op106, label %label89, label %label93
label107:                                                ; preds = %label117
  %op108 = load i32 , i32 * %op34
  %op109 = load i32 , i32 * %op34
  %op110 = load i32 , i32 * @n
  %op111 = add i32  %op109, %op110
  call void @mmerge(i32  %op108, i32  %op111)
  br label %label112
label112:                                                ; preds = %label93, %label117, %label107
  %op113 = load i32 , i32 * %op3
  %op114 = icmp sgt i32  %op113, 1
  %op115 = zext i1  %op114 to i32 
  %op116 = icmp ne i32  %op115, 0
  br i1  %op116, label %label137, label %label131
label117:                                                ; preds = %label93
  %op118 = load i32 , i32 * %op34
  %op119 = load i32 , i32 * @n
  %op120 = add i32  %op118, %op119
  %op121 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op120
  %op122 = load i32 , i32 * %op121
  %op123 = icmp ne i32  %op122, -1
  %op124 = zext i1  %op123 to i32 
  %op125 = icmp ne i32  %op124, 0
  br i1  %op125, label %label107, label %label112
label126:                                                ; preds = %label137
  %op127 = load i32 , i32 * %op34
  %op128 = load i32 , i32 * %op34
  %op129 = load i32 , i32 * @n
  %op130 = sub i32  %op128, %op129
  call void @mmerge(i32  %op127, i32  %op130)
  br label %label131
label131:                                                ; preds = %label112, %label137, %label126
  %op132 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  0
  %op133 = load i32 , i32 * %op132
  %op134 = icmp ne i32  %op133, -1
  %op135 = zext i1  %op134 to i32 
  %op136 = icmp ne i32  %op135, 0
  br i1  %op136, label %label160, label %label152
label137:                                                ; preds = %label112
  %op138 = load i32 , i32 * %op34
  %op139 = load i32 , i32 * @n
  %op140 = sub i32  %op138, %op139
  %op141 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op140
  %op142 = load i32 , i32 * %op141
  %op143 = icmp ne i32  %op142, -1
  %op144 = zext i1  %op143 to i32 
  %op145 = icmp ne i32  %op144, 0
  br i1  %op145, label %label126, label %label131
label146:                                                ; preds = %label153
  store i32  1, i32 * %op11
  %op147 = alloca i32 
  %op148 = load i32 , i32 * %op10
  %op149 = add i32  %op148, 1
  store i32  %op149, i32 * %op147
  %op150 = load i32 , i32 * %op147
  call void @putint(i32  %op150)
  %op151 = trunc i32  10 to i8 
  call void @putch(i8  %op151)
  br label %label152
label152:                                                ; preds = %label131, %label160, %label153, %label146
  br label %label48
label153:                                                ; preds = %label160
  %op154 = call i32  @findfa(i32  0)
  %op155 = load i32 , i32 * %op13
  %op156 = call i32  @findfa(i32  %op155)
  %op157 = icmp eq i32  %op154, %op156
  %op158 = zext i1  %op157 to i32 
  %op159 = icmp ne i32  %op158, 0
  br i1  %op159, label %label146, label %label152
label160:                                                ; preds = %label131
  %op161 = load i32 , i32 * %op13
  %op162 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op161
  %op163 = load i32 , i32 * %op162
  %op164 = icmp ne i32  %op163, -1
  %op165 = zext i1  %op164 to i32 
  %op166 = icmp ne i32  %op165, 0
  br i1  %op166, label %label153, label %label152
label167:                                                ; preds = %label30
  call void @putint(i32  -1)
  %op168 = trunc i32  10 to i8 
  call void @putch(i8  %op168)
  br label %label169
label169:                                                ; preds = %label30, %label167
  br label %label4
}

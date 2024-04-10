; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/65_color.sy"

@maxn = global i32  18
@mod = global i32  1000000007
@dp = global [0 x [0 x [0 x [0 x [0 x [7 x i32 ]]]]]] zeroinitializer
@list = global [200 x i32 ] zeroinitializer
@cns = global [20 x i32 ] zeroinitializer
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

define i32  @equal(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op2
  %op5 = load i32 , i32 * %op3
  %op6 = icmp eq i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label10
label9:                                                ; preds = %label_entry
  ret i32  1
label10:                                                ; preds = %label_entry
  ret i32  0
}
define i32  @dfs(i32  %arg0, i32  %arg1, i32  %arg2, i32  %arg3, i32  %arg4, i32  %arg5) {
label_entry:
  %op6 = alloca i32 
  store i32  %arg0, i32 * %op6
  %op7 = alloca i32 
  store i32  %arg1, i32 * %op7
  %op8 = alloca i32 
  store i32  %arg2, i32 * %op8
  %op9 = alloca i32 
  store i32  %arg3, i32 * %op9
  %op10 = alloca i32 
  store i32  %arg4, i32 * %op10
  %op11 = alloca i32 
  store i32  %arg5, i32 * %op11
  %op12 = load i32 , i32 * %op6
  %op13 = getelementptr [0 x [0 x [0 x [0 x [0 x [7 x i32 ]]]]]], [0 x [0 x [0 x [0 x [0 x [7 x i32 ]]]]]]* @dp, i32  0, i32  %op12
  %op14 = load i32 , i32 * %op7
  %op15 = getelementptr [0 x [0 x [0 x [0 x [7 x i32 ]]]]], [0 x [0 x [0 x [0 x [7 x i32 ]]]]]* %op13, i32  0, i32  %op14
  %op16 = load i32 , i32 * %op8
  %op17 = getelementptr [0 x [0 x [0 x [7 x i32 ]]]], [0 x [0 x [0 x [7 x i32 ]]]]* %op15, i32  0, i32  %op16
  %op18 = load i32 , i32 * %op9
  %op19 = getelementptr [0 x [0 x [7 x i32 ]]], [0 x [0 x [7 x i32 ]]]* %op17, i32  0, i32  %op18
  %op20 = load i32 , i32 * %op10
  %op21 = getelementptr [0 x [7 x i32 ]], [0 x [7 x i32 ]]* %op19, i32  0, i32  %op20
  %op22 = load i32 , i32 * %op11
  %op23 = getelementptr [7 x i32 ], [7 x i32 ]* %op21, i32  0, i32  %op22
  %op24 = load i32 , i32 * %op23
  %op25 = icmp ne i32  %op24, -1
  %op26 = zext i1  %op25 to i32 
  %op27 = icmp ne i32  %op26, 0
  br i1  %op27, label %label28, label %label42
label28:                                                ; preds = %label_entry
  %op29 = load i32 , i32 * %op6
  %op30 = getelementptr [0 x [0 x [0 x [0 x [0 x [7 x i32 ]]]]]], [0 x [0 x [0 x [0 x [0 x [7 x i32 ]]]]]]* @dp, i32  0, i32  %op29
  %op31 = load i32 , i32 * %op7
  %op32 = getelementptr [0 x [0 x [0 x [0 x [7 x i32 ]]]]], [0 x [0 x [0 x [0 x [7 x i32 ]]]]]* %op30, i32  0, i32  %op31
  %op33 = load i32 , i32 * %op8
  %op34 = getelementptr [0 x [0 x [0 x [7 x i32 ]]]], [0 x [0 x [0 x [7 x i32 ]]]]* %op32, i32  0, i32  %op33
  %op35 = load i32 , i32 * %op9
  %op36 = getelementptr [0 x [0 x [7 x i32 ]]], [0 x [0 x [7 x i32 ]]]* %op34, i32  0, i32  %op35
  %op37 = load i32 , i32 * %op10
  %op38 = getelementptr [0 x [7 x i32 ]], [0 x [7 x i32 ]]* %op36, i32  0, i32  %op37
  %op39 = load i32 , i32 * %op11
  %op40 = getelementptr [7 x i32 ], [7 x i32 ]* %op38, i32  0, i32  %op39
  %op41 = load i32 , i32 * %op40
  ret i32  %op41
label42:                                                ; preds = %label_entry
  %op43 = load i32 , i32 * %op6
  %op44 = load i32 , i32 * %op7
  %op45 = add i32  %op43, %op44
  %op46 = load i32 , i32 * %op8
  %op47 = add i32  %op45, %op46
  %op48 = load i32 , i32 * %op9
  %op49 = add i32  %op47, %op48
  %op50 = load i32 , i32 * %op10
  %op51 = add i32  %op49, %op50
  %op52 = icmp eq i32  %op51, 0
  %op53 = zext i1  %op52 to i32 
  %op54 = icmp ne i32  %op53, 0
  br i1  %op54, label %label55, label %label56
label55:                                                ; preds = %label42
  ret i32  1
label56:                                                ; preds = %label42
  %op57 = alloca i32 
  store i32  0, i32 * %op57
  %op58 = load i32 , i32 * %op6
  %op59 = icmp ne i32  %op58, 0
  br i1  %op59, label %label60, label %label77
label60:                                                ; preds = %label56
  %op61 = load i32 , i32 * %op57
  %op62 = load i32 , i32 * %op6
  %op63 = load i32 , i32 * %op11
  %op64 = call i32  @equal(i32  %op63, i32  2)
  %op65 = sub i32  %op62, %op64
  %op66 = load i32 , i32 * %op6
  %op67 = sub i32  %op66, 1
  %op68 = load i32 , i32 * %op7
  %op69 = load i32 , i32 * %op8
  %op70 = load i32 , i32 * %op9
  %op71 = load i32 , i32 * %op10
  %op72 = call i32  @dfs(i32  %op67, i32  %op68, i32  %op69, i32  %op70, i32  %op71, i32  1)
  %op73 = mul i32  %op65, %op72
  %op74 = add i32  %op61, %op73
  %op75 = load i32 , i32 * @mod
  %op76 = srem i32  %op74, %op75
  store i32  %op76, i32 * %op57
  br label %label77
label77:                                                ; preds = %label56, %label60
  %op78 = load i32 , i32 * %op7
  %op79 = icmp ne i32  %op78, 0
  br i1  %op79, label %label80, label %label98
label80:                                                ; preds = %label77
  %op81 = load i32 , i32 * %op57
  %op82 = load i32 , i32 * %op7
  %op83 = load i32 , i32 * %op11
  %op84 = call i32  @equal(i32  %op83, i32  3)
  %op85 = sub i32  %op82, %op84
  %op86 = load i32 , i32 * %op6
  %op87 = add i32  %op86, 1
  %op88 = load i32 , i32 * %op7
  %op89 = sub i32  %op88, 1
  %op90 = load i32 , i32 * %op8
  %op91 = load i32 , i32 * %op9
  %op92 = load i32 , i32 * %op10
  %op93 = call i32  @dfs(i32  %op87, i32  %op89, i32  %op90, i32  %op91, i32  %op92, i32  2)
  %op94 = mul i32  %op85, %op93
  %op95 = add i32  %op81, %op94
  %op96 = load i32 , i32 * @mod
  %op97 = srem i32  %op95, %op96
  store i32  %op97, i32 * %op57
  br label %label98
label98:                                                ; preds = %label77, %label80
  %op99 = load i32 , i32 * %op8
  %op100 = icmp ne i32  %op99, 0
  br i1  %op100, label %label101, label %label119
label101:                                                ; preds = %label98
  %op102 = load i32 , i32 * %op57
  %op103 = load i32 , i32 * %op8
  %op104 = load i32 , i32 * %op11
  %op105 = call i32  @equal(i32  %op104, i32  4)
  %op106 = sub i32  %op103, %op105
  %op107 = load i32 , i32 * %op6
  %op108 = load i32 , i32 * %op7
  %op109 = add i32  %op108, 1
  %op110 = load i32 , i32 * %op8
  %op111 = sub i32  %op110, 1
  %op112 = load i32 , i32 * %op9
  %op113 = load i32 , i32 * %op10
  %op114 = call i32  @dfs(i32  %op107, i32  %op109, i32  %op111, i32  %op112, i32  %op113, i32  3)
  %op115 = mul i32  %op106, %op114
  %op116 = add i32  %op102, %op115
  %op117 = load i32 , i32 * @mod
  %op118 = srem i32  %op116, %op117
  store i32  %op118, i32 * %op57
  br label %label119
label119:                                                ; preds = %label98, %label101
  %op120 = load i32 , i32 * %op9
  %op121 = icmp ne i32  %op120, 0
  br i1  %op121, label %label122, label %label140
label122:                                                ; preds = %label119
  %op123 = load i32 , i32 * %op57
  %op124 = load i32 , i32 * %op9
  %op125 = load i32 , i32 * %op11
  %op126 = call i32  @equal(i32  %op125, i32  5)
  %op127 = sub i32  %op124, %op126
  %op128 = load i32 , i32 * %op6
  %op129 = load i32 , i32 * %op7
  %op130 = load i32 , i32 * %op8
  %op131 = add i32  %op130, 1
  %op132 = load i32 , i32 * %op9
  %op133 = sub i32  %op132, 1
  %op134 = load i32 , i32 * %op10
  %op135 = call i32  @dfs(i32  %op128, i32  %op129, i32  %op131, i32  %op133, i32  %op134, i32  4)
  %op136 = mul i32  %op127, %op135
  %op137 = add i32  %op123, %op136
  %op138 = load i32 , i32 * @mod
  %op139 = srem i32  %op137, %op138
  store i32  %op139, i32 * %op57
  br label %label140
label140:                                                ; preds = %label119, %label122
  %op141 = load i32 , i32 * %op10
  %op142 = icmp ne i32  %op141, 0
  br i1  %op142, label %label143, label %label158
label143:                                                ; preds = %label140
  %op144 = load i32 , i32 * %op57
  %op145 = load i32 , i32 * %op10
  %op146 = load i32 , i32 * %op6
  %op147 = load i32 , i32 * %op7
  %op148 = load i32 , i32 * %op8
  %op149 = load i32 , i32 * %op9
  %op150 = add i32  %op149, 1
  %op151 = load i32 , i32 * %op10
  %op152 = sub i32  %op151, 1
  %op153 = call i32  @dfs(i32  %op146, i32  %op147, i32  %op148, i32  %op150, i32  %op152, i32  5)
  %op154 = mul i32  %op145, %op153
  %op155 = add i32  %op144, %op154
  %op156 = load i32 , i32 * @mod
  %op157 = srem i32  %op155, %op156
  store i32  %op157, i32 * %op57
  br label %label158
label158:                                                ; preds = %label140, %label143
  %op159 = load i32 , i32 * %op57
  %op160 = load i32 , i32 * @mod
  %op161 = srem i32  %op159, %op160
  %op162 = load i32 , i32 * %op6
  %op163 = getelementptr [0 x [0 x [0 x [0 x [0 x [7 x i32 ]]]]]], [0 x [0 x [0 x [0 x [0 x [7 x i32 ]]]]]]* @dp, i32  0, i32  %op162
  %op164 = load i32 , i32 * %op7
  %op165 = getelementptr [0 x [0 x [0 x [0 x [7 x i32 ]]]]], [0 x [0 x [0 x [0 x [7 x i32 ]]]]]* %op163, i32  0, i32  %op164
  %op166 = load i32 , i32 * %op8
  %op167 = getelementptr [0 x [0 x [0 x [7 x i32 ]]]], [0 x [0 x [0 x [7 x i32 ]]]]* %op165, i32  0, i32  %op166
  %op168 = load i32 , i32 * %op9
  %op169 = getelementptr [0 x [0 x [7 x i32 ]]], [0 x [0 x [7 x i32 ]]]* %op167, i32  0, i32  %op168
  %op170 = load i32 , i32 * %op10
  %op171 = getelementptr [0 x [7 x i32 ]], [0 x [7 x i32 ]]* %op169, i32  0, i32  %op170
  %op172 = load i32 , i32 * %op11
  %op173 = getelementptr [7 x i32 ], [7 x i32 ]* %op171, i32  0, i32  %op172
  store i32  %op161, i32 * %op173
  %op174 = load i32 , i32 * %op6
  %op175 = getelementptr [0 x [0 x [0 x [0 x [0 x [7 x i32 ]]]]]], [0 x [0 x [0 x [0 x [0 x [7 x i32 ]]]]]]* @dp, i32  0, i32  %op174
  %op176 = load i32 , i32 * %op7
  %op177 = getelementptr [0 x [0 x [0 x [0 x [7 x i32 ]]]]], [0 x [0 x [0 x [0 x [7 x i32 ]]]]]* %op175, i32  0, i32  %op176
  %op178 = load i32 , i32 * %op8
  %op179 = getelementptr [0 x [0 x [0 x [7 x i32 ]]]], [0 x [0 x [0 x [7 x i32 ]]]]* %op177, i32  0, i32  %op178
  %op180 = load i32 , i32 * %op9
  %op181 = getelementptr [0 x [0 x [7 x i32 ]]], [0 x [0 x [7 x i32 ]]]* %op179, i32  0, i32  %op180
  %op182 = load i32 , i32 * %op10
  %op183 = getelementptr [0 x [7 x i32 ]], [0 x [7 x i32 ]]* %op181, i32  0, i32  %op182
  %op184 = load i32 , i32 * %op11
  %op185 = getelementptr [7 x i32 ], [7 x i32 ]* %op183, i32  0, i32  %op184
  %op186 = load i32 , i32 * %op185
  ret i32  %op186
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  %op1 = call i32  @getint()
  store i32  %op1, i32 * %op0
  %op2 = alloca i32 
  store i32  0, i32 * %op2
  br label %label3
label3:                                                ; preds = %label_entry, %label20
  %op4 = load i32 , i32 * %op2
  %op5 = load i32 , i32 * @maxn
  %op6 = icmp slt i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label11
label9:                                                ; preds = %label3
  %op10 = alloca i32 
  store i32  0, i32 * %op10
  br label %label12
label11:                                                ; preds = %label3
  store i32  0, i32 * %op2
  br label %label79
label12:                                                ; preds = %label9, %label31
  %op13 = load i32 , i32 * %op10
  %op14 = load i32 , i32 * @maxn
  %op15 = icmp slt i32  %op13, %op14
  %op16 = zext i1  %op15 to i32 
  %op17 = icmp ne i32  %op16, 0
  br i1  %op17, label %label18, label %label20
label18:                                                ; preds = %label12
  %op19 = alloca i32 
  store i32  0, i32 * %op19
  br label %label23
label20:                                                ; preds = %label12
  %op21 = load i32 , i32 * %op2
  %op22 = add i32  %op21, 1
  store i32  %op22, i32 * %op2
  br label %label3
label23:                                                ; preds = %label18, %label42
  %op24 = load i32 , i32 * %op19
  %op25 = load i32 , i32 * @maxn
  %op26 = icmp slt i32  %op24, %op25
  %op27 = zext i1  %op26 to i32 
  %op28 = icmp ne i32  %op27, 0
  br i1  %op28, label %label29, label %label31
label29:                                                ; preds = %label23
  %op30 = alloca i32 
  store i32  0, i32 * %op30
  br label %label34
label31:                                                ; preds = %label23
  %op32 = load i32 , i32 * %op10
  %op33 = add i32  %op32, 1
  store i32  %op33, i32 * %op10
  br label %label12
label34:                                                ; preds = %label29, %label53
  %op35 = load i32 , i32 * %op30
  %op36 = load i32 , i32 * @maxn
  %op37 = icmp slt i32  %op35, %op36
  %op38 = zext i1  %op37 to i32 
  %op39 = icmp ne i32  %op38, 0
  br i1  %op39, label %label40, label %label42
label40:                                                ; preds = %label34
  %op41 = alloca i32 
  store i32  0, i32 * %op41
  br label %label45
label42:                                                ; preds = %label34
  %op43 = load i32 , i32 * %op19
  %op44 = add i32  %op43, 1
  store i32  %op44, i32 * %op19
  br label %label23
label45:                                                ; preds = %label40, %label76
  %op46 = load i32 , i32 * %op41
  %op47 = load i32 , i32 * @maxn
  %op48 = icmp slt i32  %op46, %op47
  %op49 = zext i1  %op48 to i32 
  %op50 = icmp ne i32  %op49, 0
  br i1  %op50, label %label51, label %label53
label51:                                                ; preds = %label45
  %op52 = alloca i32 
  store i32  0, i32 * %op52
  br label %label56
label53:                                                ; preds = %label45
  %op54 = load i32 , i32 * %op30
  %op55 = add i32  %op54, 1
  store i32  %op55, i32 * %op30
  br label %label34
label56:                                                ; preds = %label51, %label61
  %op57 = load i32 , i32 * %op52
  %op58 = icmp slt i32  %op57, 7
  %op59 = zext i1  %op58 to i32 
  %op60 = icmp ne i32  %op59, 0
  br i1  %op60, label %label61, label %label76
label61:                                                ; preds = %label56
  %op62 = load i32 , i32 * %op2
  %op63 = getelementptr [0 x [0 x [0 x [0 x [0 x [7 x i32 ]]]]]], [0 x [0 x [0 x [0 x [0 x [7 x i32 ]]]]]]* @dp, i32  0, i32  %op62
  %op64 = load i32 , i32 * %op10
  %op65 = getelementptr [0 x [0 x [0 x [0 x [7 x i32 ]]]]], [0 x [0 x [0 x [0 x [7 x i32 ]]]]]* %op63, i32  0, i32  %op64
  %op66 = load i32 , i32 * %op19
  %op67 = getelementptr [0 x [0 x [0 x [7 x i32 ]]]], [0 x [0 x [0 x [7 x i32 ]]]]* %op65, i32  0, i32  %op66
  %op68 = load i32 , i32 * %op30
  %op69 = getelementptr [0 x [0 x [7 x i32 ]]], [0 x [0 x [7 x i32 ]]]* %op67, i32  0, i32  %op68
  %op70 = load i32 , i32 * %op41
  %op71 = getelementptr [0 x [7 x i32 ]], [0 x [7 x i32 ]]* %op69, i32  0, i32  %op70
  %op72 = load i32 , i32 * %op52
  %op73 = getelementptr [7 x i32 ], [7 x i32 ]* %op71, i32  0, i32  %op72
  store i32  -1, i32 * %op73
  %op74 = load i32 , i32 * %op52
  %op75 = add i32  %op74, 1
  store i32  %op75, i32 * %op52
  br label %label56
label76:                                                ; preds = %label56
  %op77 = load i32 , i32 * %op41
  %op78 = add i32  %op77, 1
  store i32  %op78, i32 * %op41
  br label %label45
label79:                                                ; preds = %label11, %label85
  %op80 = load i32 , i32 * %op2
  %op81 = load i32 , i32 * %op0
  %op82 = icmp slt i32  %op80, %op81
  %op83 = zext i1  %op82 to i32 
  %op84 = icmp ne i32  %op83, 0
  br i1  %op84, label %label85, label %label101
label85:                                                ; preds = %label79
  %op86 = call i32  @getint()
  %op87 = load i32 , i32 * %op2
  %op88 = getelementptr [200 x i32 ], [200 x i32 ]* @list, i32  0, i32  %op87
  store i32  %op86, i32 * %op88
  %op89 = load i32 , i32 * %op2
  %op90 = getelementptr [200 x i32 ], [200 x i32 ]* @list, i32  0, i32  %op89
  %op91 = load i32 , i32 * %op90
  %op92 = getelementptr [20 x i32 ], [20 x i32 ]* @cns, i32  0, i32  %op91
  %op93 = load i32 , i32 * %op92
  %op94 = add i32  %op93, 1
  %op95 = load i32 , i32 * %op2
  %op96 = getelementptr [200 x i32 ], [200 x i32 ]* @list, i32  0, i32  %op95
  %op97 = load i32 , i32 * %op96
  %op98 = getelementptr [20 x i32 ], [20 x i32 ]* @cns, i32  0, i32  %op97
  store i32  %op94, i32 * %op98
  %op99 = load i32 , i32 * %op2
  %op100 = add i32  %op99, 1
  store i32  %op100, i32 * %op2
  br label %label79
label101:                                                ; preds = %label79
  %op102 = alloca i32 
  %op103 = getelementptr [20 x i32 ], [20 x i32 ]* @cns, i32  0, i32  1
  %op104 = load i32 , i32 * %op103
  %op105 = getelementptr [20 x i32 ], [20 x i32 ]* @cns, i32  0, i32  2
  %op106 = load i32 , i32 * %op105
  %op107 = getelementptr [20 x i32 ], [20 x i32 ]* @cns, i32  0, i32  3
  %op108 = load i32 , i32 * %op107
  %op109 = getelementptr [20 x i32 ], [20 x i32 ]* @cns, i32  0, i32  4
  %op110 = load i32 , i32 * %op109
  %op111 = getelementptr [20 x i32 ], [20 x i32 ]* @cns, i32  0, i32  5
  %op112 = load i32 , i32 * %op111
  %op113 = call i32  @dfs(i32  %op104, i32  %op106, i32  %op108, i32  %op110, i32  %op112, i32  0)
  store i32  %op113, i32 * %op102
  %op114 = load i32 , i32 * %op102
  call void @putint(i32  %op114)
  %op115 = load i32 , i32 * %op102
  ret i32  %op115
}

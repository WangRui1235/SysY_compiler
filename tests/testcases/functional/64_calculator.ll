; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/64_calculator.sy"

@ints = global [10000 x i32 ] zeroinitializer
@intt = global i32  zeroinitializer
@chas = global [10000 x i32 ] zeroinitializer
@chat = global i32  zeroinitializer
@i = global i32  0
@ii = global i32  1
@c = global i32  zeroinitializer
@get = global [10000 x i32 ] zeroinitializer
@get2 = global [10000 x i32 ] zeroinitializer
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

define i32  @isdigit(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  %op3 = icmp sge i32  %op2, 48
  %op4 = zext i1  %op3 to i32 
  %op5 = icmp ne i32  %op4, 0
  br i1  %op5, label %label8, label %label7
label6:                                                ; preds = %label8
  ret i32  1
label7:                                                ; preds = %label_entry, %label8
  ret i32  0
label8:                                                ; preds = %label_entry
  %op9 = load i32 , i32 * %op1
  %op10 = icmp sle i32  %op9, 57
  %op11 = zext i1  %op10 to i32 
  %op12 = icmp ne i32  %op11, 0
  br i1  %op12, label %label6, label %label7
}
define i32  @power(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = alloca i32 
  store i32  1, i32 * %op4
  br label %label5
label5:                                                ; preds = %label_entry, %label10
  %op6 = load i32 , i32 * %op3
  %op7 = icmp ne i32  %op6, 0
  %op8 = zext i1  %op7 to i32 
  %op9 = icmp ne i32  %op8, 0
  br i1  %op9, label %label10, label %label16
label10:                                                ; preds = %label5
  %op11 = load i32 , i32 * %op4
  %op12 = load i32 , i32 * %op2
  %op13 = mul i32  %op11, %op12
  store i32  %op13, i32 * %op4
  %op14 = load i32 , i32 * %op3
  %op15 = sub i32  %op14, 1
  store i32  %op15, i32 * %op3
  br label %label5
label16:                                                ; preds = %label5
  %op17 = load i32 , i32 * %op4
  ret i32  %op17
}
define i32  @getstr(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = alloca i32 
  %op3 = call i8  @getch()
  %op4 = zext i8  %op3 to i32 
  store i32  %op4, i32 * %op2
  %op5 = alloca i32 
  store i32  0, i32 * %op5
  br label %label6
label6:                                                ; preds = %label_entry, %label11
  %op7 = load i32 , i32 * %op2
  %op8 = icmp ne i32  %op7, 13
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label22, label %label20
label11:                                                ; preds = %label22
  %op12 = load i32 , i32 * %op2
  %op13 = load i32 , i32 * %op5
  %op14 = load i32 *, i32 ** %op1
  %op15 = getelementptr i32 , i32 * %op14, i32  %op13
  store i32  %op12, i32 * %op15
  %op16 = load i32 , i32 * %op5
  %op17 = add i32  %op16, 1
  store i32  %op17, i32 * %op5
  %op18 = call i8  @getch()
  %op19 = zext i8  %op18 to i32 
  store i32  %op19, i32 * %op2
  br label %label6
label20:                                                ; preds = %label6, %label22
  %op21 = load i32 , i32 * %op5
  ret i32  %op21
label22:                                                ; preds = %label6
  %op23 = load i32 , i32 * %op2
  %op24 = icmp ne i32  %op23, 10
  %op25 = zext i1  %op24 to i32 
  %op26 = icmp ne i32  %op25, 0
  br i1  %op26, label %label11, label %label20
}
define void @intpush(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * @intt
  %op3 = add i32  %op2, 1
  store i32  %op3, i32 * @intt
  %op4 = load i32 , i32 * %op1
  %op5 = load i32 , i32 * @intt
  %op6 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op5
  store i32  %op4, i32 * %op6
  ret void
}
define void @chapush(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * @chat
  %op3 = add i32  %op2, 1
  store i32  %op3, i32 * @chat
  %op4 = load i32 , i32 * %op1
  %op5 = load i32 , i32 * @chat
  %op6 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op5
  store i32  %op4, i32 * %op6
  ret void
}
define i32  @intpop() {
label_entry:
  %op0 = load i32 , i32 * @intt
  %op1 = sub i32  %op0, 1
  store i32  %op1, i32 * @intt
  %op2 = load i32 , i32 * @intt
  %op3 = add i32  %op2, 1
  %op4 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op3
  %op5 = load i32 , i32 * %op4
  ret i32  %op5
}
define i32  @chapop() {
label_entry:
  %op0 = load i32 , i32 * @chat
  %op1 = sub i32  %op0, 1
  store i32  %op1, i32 * @chat
  %op2 = load i32 , i32 * @chat
  %op3 = add i32  %op2, 1
  %op4 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op3
  %op5 = load i32 , i32 * %op4
  ret i32  %op5
}
define void @intadd(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * @intt
  %op3 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op2
  %op4 = load i32 , i32 * %op3
  %op5 = mul i32  %op4, 10
  %op6 = load i32 , i32 * @intt
  %op7 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op6
  store i32  %op5, i32 * %op7
  %op8 = load i32 , i32 * @intt
  %op9 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op8
  %op10 = load i32 , i32 * %op9
  %op11 = load i32 , i32 * %op1
  %op12 = add i32  %op10, %op11
  %op13 = load i32 , i32 * @intt
  %op14 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op13
  store i32  %op12, i32 * %op14
  ret void
}
define i32  @find() {
label_entry:
  %op0 = call i32  @chapop()
  store i32  %op0, i32 * @c
  %op1 = load i32 , i32 * @ii
  %op2 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op1
  store i32  32, i32 * %op2
  %op3 = load i32 , i32 * @c
  %op4 = load i32 , i32 * @ii
  %op5 = add i32  %op4, 1
  %op6 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op5
  store i32  %op3, i32 * %op6
  %op7 = load i32 , i32 * @ii
  %op8 = add i32  %op7, 2
  store i32  %op8, i32 * @ii
  %op9 = load i32 , i32 * @chat
  %op10 = icmp eq i32  %op9, 0
  %op11 = zext i1  %op10 to i32 
  %op12 = icmp ne i32  %op11, 0
  br i1  %op12, label %label13, label %label14
label13:                                                ; preds = %label_entry
  ret i32  0
label14:                                                ; preds = %label_entry
  ret i32  1
}
define i32  @main() {
label_entry:
  store i32  0, i32 * @intt
  store i32  0, i32 * @chat
  %op0 = alloca i32 
  %op1 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  0
  %op2 = call i32  @getstr(i32 * %op1)
  store i32  %op2, i32 * %op0
  br label %label3
label3:                                                ; preds = %label_entry, %label33
  %op4 = load i32 , i32 * @i
  %op5 = load i32 , i32 * %op0
  %op6 = icmp slt i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label17
label9:                                                ; preds = %label3
  %op10 = load i32 , i32 * @i
  %op11 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op10
  %op12 = load i32 , i32 * %op11
  %op13 = call i32  @isdigit(i32  %op12)
  %op14 = icmp eq i32  %op13, 1
  %op15 = zext i1  %op14 to i32 
  %op16 = icmp ne i32  %op15, 0
  br i1  %op16, label %label18, label %label26
label17:                                                ; preds = %label3
  br label %label323
label18:                                                ; preds = %label9
  %op19 = load i32 , i32 * @i
  %op20 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op19
  %op21 = load i32 , i32 * %op20
  %op22 = load i32 , i32 * @ii
  %op23 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op22
  store i32  %op21, i32 * %op23
  %op24 = load i32 , i32 * @ii
  %op25 = add i32  %op24, 1
  store i32  %op25, i32 * @ii
  br label %label33
label26:                                                ; preds = %label9
  %op27 = load i32 , i32 * @i
  %op28 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op27
  %op29 = load i32 , i32 * %op28
  %op30 = icmp eq i32  %op29, 40
  %op31 = zext i1  %op30 to i32 
  %op32 = icmp ne i32  %op31, 0
  br i1  %op32, label %label36, label %label37
label33:                                                ; preds = %label18, %label282
  %op34 = load i32 , i32 * @i
  %op35 = add i32  %op34, 1
  store i32  %op35, i32 * @i
  br label %label3
label36:                                                ; preds = %label26
  call void @chapush(i32  40)
  br label %label37
label37:                                                ; preds = %label26, %label36
  %op38 = load i32 , i32 * @i
  %op39 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op38
  %op40 = load i32 , i32 * %op39
  %op41 = icmp eq i32  %op40, 94
  %op42 = zext i1  %op41 to i32 
  %op43 = icmp ne i32  %op42, 0
  br i1  %op43, label %label44, label %label45
label44:                                                ; preds = %label37
  call void @chapush(i32  94)
  br label %label45
label45:                                                ; preds = %label37, %label44
  %op46 = load i32 , i32 * @i
  %op47 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op46
  %op48 = load i32 , i32 * %op47
  %op49 = icmp eq i32  %op48, 41
  %op50 = zext i1  %op49 to i32 
  %op51 = icmp ne i32  %op50, 0
  br i1  %op51, label %label52, label %label54
label52:                                                ; preds = %label45
  %op53 = call i32  @chapop()
  store i32  %op53, i32 * @c
  br label %label61
label54:                                                ; preds = %label45, %label76
  %op55 = load i32 , i32 * @i
  %op56 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op55
  %op57 = load i32 , i32 * %op56
  %op58 = icmp eq i32  %op57, 43
  %op59 = zext i1  %op58 to i32 
  %op60 = icmp ne i32  %op59, 0
  br i1  %op60, label %label77, label %label78
label61:                                                ; preds = %label52, %label66
  %op62 = load i32 , i32 * @c
  %op63 = icmp ne i32  %op62, 40
  %op64 = zext i1  %op63 to i32 
  %op65 = icmp ne i32  %op64, 0
  br i1  %op65, label %label66, label %label76
label66:                                                ; preds = %label61
  %op67 = load i32 , i32 * @ii
  %op68 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op67
  store i32  32, i32 * %op68
  %op69 = load i32 , i32 * @c
  %op70 = load i32 , i32 * @ii
  %op71 = add i32  %op70, 1
  %op72 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op71
  store i32  %op69, i32 * %op72
  %op73 = load i32 , i32 * @ii
  %op74 = add i32  %op73, 2
  store i32  %op74, i32 * @ii
  %op75 = call i32  @chapop()
  store i32  %op75, i32 * @c
  br label %label61
label76:                                                ; preds = %label61
  br label %label54
label77:                                                ; preds = %label54
  br label %label85
label78:                                                ; preds = %label54, %label97
  %op79 = load i32 , i32 * @i
  %op80 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op79
  %op81 = load i32 , i32 * %op80
  %op82 = icmp eq i32  %op81, 45
  %op83 = zext i1  %op82 to i32 
  %op84 = icmp ne i32  %op83, 0
  br i1  %op84, label %label135, label %label136
label85:                                                ; preds = %label77, %label134
  %op86 = load i32 , i32 * @chat
  %op87 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op86
  %op88 = load i32 , i32 * %op87
  %op89 = icmp eq i32  %op88, 43
  %op90 = zext i1  %op89 to i32 
  %op91 = icmp ne i32  %op90, 0
  br i1  %op91, label %label92, label %label126
label92:                                                ; preds = %label85, %label126, %label119, %label112, %label105, %label98
  %op93 = call i32  @find()
  %op94 = icmp eq i32  %op93, 0
  %op95 = zext i1  %op94 to i32 
  %op96 = icmp ne i32  %op95, 0
  br i1  %op96, label %label133, label %label134
label97:                                                ; preds = %label98, %label133
  call void @chapush(i32  43)
  br label %label78
label98:                                                ; preds = %label105
  %op99 = load i32 , i32 * @chat
  %op100 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op99
  %op101 = load i32 , i32 * %op100
  %op102 = icmp eq i32  %op101, 94
  %op103 = zext i1  %op102 to i32 
  %op104 = icmp ne i32  %op103, 0
  br i1  %op104, label %label92, label %label97
label105:                                                ; preds = %label112
  %op106 = load i32 , i32 * @chat
  %op107 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op106
  %op108 = load i32 , i32 * %op107
  %op109 = icmp eq i32  %op108, 37
  %op110 = zext i1  %op109 to i32 
  %op111 = icmp ne i32  %op110, 0
  br i1  %op111, label %label92, label %label98
label112:                                                ; preds = %label119
  %op113 = load i32 , i32 * @chat
  %op114 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op113
  %op115 = load i32 , i32 * %op114
  %op116 = icmp eq i32  %op115, 47
  %op117 = zext i1  %op116 to i32 
  %op118 = icmp ne i32  %op117, 0
  br i1  %op118, label %label92, label %label105
label119:                                                ; preds = %label126
  %op120 = load i32 , i32 * @chat
  %op121 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op120
  %op122 = load i32 , i32 * %op121
  %op123 = icmp eq i32  %op122, 42
  %op124 = zext i1  %op123 to i32 
  %op125 = icmp ne i32  %op124, 0
  br i1  %op125, label %label92, label %label112
label126:                                                ; preds = %label85
  %op127 = load i32 , i32 * @chat
  %op128 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op127
  %op129 = load i32 , i32 * %op128
  %op130 = icmp eq i32  %op129, 45
  %op131 = zext i1  %op130 to i32 
  %op132 = icmp ne i32  %op131, 0
  br i1  %op132, label %label92, label %label119
label133:                                                ; preds = %label92
  br label %label97
label134:                                                ; preds = %label92
  br label %label85
label135:                                                ; preds = %label78
  br label %label143
label136:                                                ; preds = %label78, %label155
  %op137 = load i32 , i32 * @i
  %op138 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op137
  %op139 = load i32 , i32 * %op138
  %op140 = icmp eq i32  %op139, 42
  %op141 = zext i1  %op140 to i32 
  %op142 = icmp ne i32  %op141, 0
  br i1  %op142, label %label193, label %label194
label143:                                                ; preds = %label135, %label192
  %op144 = load i32 , i32 * @chat
  %op145 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op144
  %op146 = load i32 , i32 * %op145
  %op147 = icmp eq i32  %op146, 43
  %op148 = zext i1  %op147 to i32 
  %op149 = icmp ne i32  %op148, 0
  br i1  %op149, label %label150, label %label184
label150:                                                ; preds = %label143, %label184, %label177, %label170, %label163, %label156
  %op151 = call i32  @find()
  %op152 = icmp eq i32  %op151, 0
  %op153 = zext i1  %op152 to i32 
  %op154 = icmp ne i32  %op153, 0
  br i1  %op154, label %label191, label %label192
label155:                                                ; preds = %label156, %label191
  call void @chapush(i32  45)
  br label %label136
label156:                                                ; preds = %label163
  %op157 = load i32 , i32 * @chat
  %op158 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op157
  %op159 = load i32 , i32 * %op158
  %op160 = icmp eq i32  %op159, 94
  %op161 = zext i1  %op160 to i32 
  %op162 = icmp ne i32  %op161, 0
  br i1  %op162, label %label150, label %label155
label163:                                                ; preds = %label170
  %op164 = load i32 , i32 * @chat
  %op165 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op164
  %op166 = load i32 , i32 * %op165
  %op167 = icmp eq i32  %op166, 37
  %op168 = zext i1  %op167 to i32 
  %op169 = icmp ne i32  %op168, 0
  br i1  %op169, label %label150, label %label156
label170:                                                ; preds = %label177
  %op171 = load i32 , i32 * @chat
  %op172 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op171
  %op173 = load i32 , i32 * %op172
  %op174 = icmp eq i32  %op173, 47
  %op175 = zext i1  %op174 to i32 
  %op176 = icmp ne i32  %op175, 0
  br i1  %op176, label %label150, label %label163
label177:                                                ; preds = %label184
  %op178 = load i32 , i32 * @chat
  %op179 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op178
  %op180 = load i32 , i32 * %op179
  %op181 = icmp eq i32  %op180, 42
  %op182 = zext i1  %op181 to i32 
  %op183 = icmp ne i32  %op182, 0
  br i1  %op183, label %label150, label %label170
label184:                                                ; preds = %label143
  %op185 = load i32 , i32 * @chat
  %op186 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op185
  %op187 = load i32 , i32 * %op186
  %op188 = icmp eq i32  %op187, 45
  %op189 = zext i1  %op188 to i32 
  %op190 = icmp ne i32  %op189, 0
  br i1  %op190, label %label150, label %label177
label191:                                                ; preds = %label150
  br label %label155
label192:                                                ; preds = %label150
  br label %label143
label193:                                                ; preds = %label136
  br label %label201
label194:                                                ; preds = %label136, %label213
  %op195 = load i32 , i32 * @i
  %op196 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op195
  %op197 = load i32 , i32 * %op196
  %op198 = icmp eq i32  %op197, 47
  %op199 = zext i1  %op198 to i32 
  %op200 = icmp ne i32  %op199, 0
  br i1  %op200, label %label237, label %label238
label201:                                                ; preds = %label193, %label236
  %op202 = load i32 , i32 * @chat
  %op203 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op202
  %op204 = load i32 , i32 * %op203
  %op205 = icmp eq i32  %op204, 42
  %op206 = zext i1  %op205 to i32 
  %op207 = icmp ne i32  %op206, 0
  br i1  %op207, label %label208, label %label228
label208:                                                ; preds = %label201, %label228, %label221, %label214
  %op209 = call i32  @find()
  %op210 = icmp eq i32  %op209, 0
  %op211 = zext i1  %op210 to i32 
  %op212 = icmp ne i32  %op211, 0
  br i1  %op212, label %label235, label %label236
label213:                                                ; preds = %label214, %label235
  call void @chapush(i32  42)
  br label %label194
label214:                                                ; preds = %label221
  %op215 = load i32 , i32 * @chat
  %op216 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op215
  %op217 = load i32 , i32 * %op216
  %op218 = icmp eq i32  %op217, 94
  %op219 = zext i1  %op218 to i32 
  %op220 = icmp ne i32  %op219, 0
  br i1  %op220, label %label208, label %label213
label221:                                                ; preds = %label228
  %op222 = load i32 , i32 * @chat
  %op223 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op222
  %op224 = load i32 , i32 * %op223
  %op225 = icmp eq i32  %op224, 37
  %op226 = zext i1  %op225 to i32 
  %op227 = icmp ne i32  %op226, 0
  br i1  %op227, label %label208, label %label214
label228:                                                ; preds = %label201
  %op229 = load i32 , i32 * @chat
  %op230 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op229
  %op231 = load i32 , i32 * %op230
  %op232 = icmp eq i32  %op231, 47
  %op233 = zext i1  %op232 to i32 
  %op234 = icmp ne i32  %op233, 0
  br i1  %op234, label %label208, label %label221
label235:                                                ; preds = %label208
  br label %label213
label236:                                                ; preds = %label208
  br label %label201
label237:                                                ; preds = %label194
  br label %label245
label238:                                                ; preds = %label194, %label257
  %op239 = load i32 , i32 * @i
  %op240 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op239
  %op241 = load i32 , i32 * %op240
  %op242 = icmp eq i32  %op241, 37
  %op243 = zext i1  %op242 to i32 
  %op244 = icmp ne i32  %op243, 0
  br i1  %op244, label %label281, label %label282
label245:                                                ; preds = %label237, %label280
  %op246 = load i32 , i32 * @chat
  %op247 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op246
  %op248 = load i32 , i32 * %op247
  %op249 = icmp eq i32  %op248, 42
  %op250 = zext i1  %op249 to i32 
  %op251 = icmp ne i32  %op250, 0
  br i1  %op251, label %label252, label %label272
label252:                                                ; preds = %label245, %label272, %label265, %label258
  %op253 = call i32  @find()
  %op254 = icmp eq i32  %op253, 0
  %op255 = zext i1  %op254 to i32 
  %op256 = icmp ne i32  %op255, 0
  br i1  %op256, label %label279, label %label280
label257:                                                ; preds = %label258, %label279
  call void @chapush(i32  47)
  br label %label238
label258:                                                ; preds = %label265
  %op259 = load i32 , i32 * @chat
  %op260 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op259
  %op261 = load i32 , i32 * %op260
  %op262 = icmp eq i32  %op261, 94
  %op263 = zext i1  %op262 to i32 
  %op264 = icmp ne i32  %op263, 0
  br i1  %op264, label %label252, label %label257
label265:                                                ; preds = %label272
  %op266 = load i32 , i32 * @chat
  %op267 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op266
  %op268 = load i32 , i32 * %op267
  %op269 = icmp eq i32  %op268, 37
  %op270 = zext i1  %op269 to i32 
  %op271 = icmp ne i32  %op270, 0
  br i1  %op271, label %label252, label %label258
label272:                                                ; preds = %label245
  %op273 = load i32 , i32 * @chat
  %op274 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op273
  %op275 = load i32 , i32 * %op274
  %op276 = icmp eq i32  %op275, 47
  %op277 = zext i1  %op276 to i32 
  %op278 = icmp ne i32  %op277, 0
  br i1  %op278, label %label252, label %label265
label279:                                                ; preds = %label252
  br label %label257
label280:                                                ; preds = %label252
  br label %label245
label281:                                                ; preds = %label238
  br label %label287
label282:                                                ; preds = %label238, %label299
  %op283 = load i32 , i32 * @ii
  %op284 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op283
  store i32  32, i32 * %op284
  %op285 = load i32 , i32 * @ii
  %op286 = add i32  %op285, 1
  store i32  %op286, i32 * @ii
  br label %label33
label287:                                                ; preds = %label281, %label322
  %op288 = load i32 , i32 * @chat
  %op289 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op288
  %op290 = load i32 , i32 * %op289
  %op291 = icmp eq i32  %op290, 42
  %op292 = zext i1  %op291 to i32 
  %op293 = icmp ne i32  %op292, 0
  br i1  %op293, label %label294, label %label314
label294:                                                ; preds = %label287, %label314, %label307, %label300
  %op295 = call i32  @find()
  %op296 = icmp eq i32  %op295, 0
  %op297 = zext i1  %op296 to i32 
  %op298 = icmp ne i32  %op297, 0
  br i1  %op298, label %label321, label %label322
label299:                                                ; preds = %label300, %label321
  call void @chapush(i32  37)
  br label %label282
label300:                                                ; preds = %label307
  %op301 = load i32 , i32 * @chat
  %op302 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op301
  %op303 = load i32 , i32 * %op302
  %op304 = icmp eq i32  %op303, 94
  %op305 = zext i1  %op304 to i32 
  %op306 = icmp ne i32  %op305, 0
  br i1  %op306, label %label294, label %label299
label307:                                                ; preds = %label314
  %op308 = load i32 , i32 * @chat
  %op309 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op308
  %op310 = load i32 , i32 * %op309
  %op311 = icmp eq i32  %op310, 37
  %op312 = zext i1  %op311 to i32 
  %op313 = icmp ne i32  %op312, 0
  br i1  %op313, label %label294, label %label300
label314:                                                ; preds = %label287
  %op315 = load i32 , i32 * @chat
  %op316 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op315
  %op317 = load i32 , i32 * %op316
  %op318 = icmp eq i32  %op317, 47
  %op319 = zext i1  %op318 to i32 
  %op320 = icmp ne i32  %op319, 0
  br i1  %op320, label %label294, label %label307
label321:                                                ; preds = %label294
  br label %label299
label322:                                                ; preds = %label294
  br label %label287
label323:                                                ; preds = %label17, %label328
  %op324 = load i32 , i32 * @chat
  %op325 = icmp sgt i32  %op324, 0
  %op326 = zext i1  %op325 to i32 
  %op327 = icmp ne i32  %op326, 0
  br i1  %op327, label %label328, label %label339
label328:                                                ; preds = %label323
  %op329 = alloca i32 
  %op330 = call i32  @chapop()
  store i32  %op330, i32 * %op329
  %op331 = load i32 , i32 * @ii
  %op332 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op331
  store i32  32, i32 * %op332
  %op333 = load i32 , i32 * %op329
  %op334 = load i32 , i32 * @ii
  %op335 = add i32  %op334, 1
  %op336 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op335
  store i32  %op333, i32 * %op336
  %op337 = load i32 , i32 * @ii
  %op338 = add i32  %op337, 2
  store i32  %op338, i32 * @ii
  br label %label323
label339:                                                ; preds = %label323
  %op340 = load i32 , i32 * @ii
  %op341 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op340
  store i32  64, i32 * %op341
  store i32  1, i32 * @i
  br label %label342
label342:                                                ; preds = %label339, %label378
  %op343 = load i32 , i32 * @i
  %op344 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op343
  %op345 = load i32 , i32 * %op344
  %op346 = icmp ne i32  %op345, 64
  %op347 = zext i1  %op346 to i32 
  %op348 = icmp ne i32  %op347, 0
  br i1  %op348, label %label349, label %label356
label349:                                                ; preds = %label342
  %op350 = load i32 , i32 * @i
  %op351 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op350
  %op352 = load i32 , i32 * %op351
  %op353 = icmp eq i32  %op352, 43
  %op354 = zext i1  %op353 to i32 
  %op355 = icmp ne i32  %op354, 0
  br i1  %op355, label %label359, label %label409
label356:                                                ; preds = %label342
  %op357 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  1
  %op358 = load i32 , i32 * %op357
  call void @putint(i32  %op358)
  ret i32  0
label359:                                                ; preds = %label349, %label409, %label402, %label395, %label388, %label381
  %op360 = alloca i32 
  %op361 = call i32  @intpop()
  store i32  %op361, i32 * %op360
  %op362 = alloca i32 
  %op363 = call i32  @intpop()
  store i32  %op363, i32 * %op362
  %op364 = alloca i32 
  %op365 = load i32 , i32 * @i
  %op366 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op365
  %op367 = load i32 , i32 * %op366
  %op368 = icmp eq i32  %op367, 43
  %op369 = zext i1  %op368 to i32 
  %op370 = icmp ne i32  %op369, 0
  br i1  %op370, label %label416, label %label420
label371:                                                ; preds = %label381
  %op372 = load i32 , i32 * @i
  %op373 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op372
  %op374 = load i32 , i32 * %op373
  %op375 = icmp ne i32  %op374, 32
  %op376 = zext i1  %op375 to i32 
  %op377 = icmp ne i32  %op376, 0
  br i1  %op377, label %label477, label %label482
label378:                                                ; preds = %label475, %label482
  %op379 = load i32 , i32 * @i
  %op380 = add i32  %op379, 1
  store i32  %op380, i32 * @i
  br label %label342
label381:                                                ; preds = %label388
  %op382 = load i32 , i32 * @i
  %op383 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op382
  %op384 = load i32 , i32 * %op383
  %op385 = icmp eq i32  %op384, 94
  %op386 = zext i1  %op385 to i32 
  %op387 = icmp ne i32  %op386, 0
  br i1  %op387, label %label359, label %label371
label388:                                                ; preds = %label395
  %op389 = load i32 , i32 * @i
  %op390 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op389
  %op391 = load i32 , i32 * %op390
  %op392 = icmp eq i32  %op391, 37
  %op393 = zext i1  %op392 to i32 
  %op394 = icmp ne i32  %op393, 0
  br i1  %op394, label %label359, label %label381
label395:                                                ; preds = %label402
  %op396 = load i32 , i32 * @i
  %op397 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op396
  %op398 = load i32 , i32 * %op397
  %op399 = icmp eq i32  %op398, 47
  %op400 = zext i1  %op399 to i32 
  %op401 = icmp ne i32  %op400, 0
  br i1  %op401, label %label359, label %label388
label402:                                                ; preds = %label409
  %op403 = load i32 , i32 * @i
  %op404 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op403
  %op405 = load i32 , i32 * %op404
  %op406 = icmp eq i32  %op405, 42
  %op407 = zext i1  %op406 to i32 
  %op408 = icmp ne i32  %op407, 0
  br i1  %op408, label %label359, label %label395
label409:                                                ; preds = %label349
  %op410 = load i32 , i32 * @i
  %op411 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op410
  %op412 = load i32 , i32 * %op411
  %op413 = icmp eq i32  %op412, 45
  %op414 = zext i1  %op413 to i32 
  %op415 = icmp ne i32  %op414, 0
  br i1  %op415, label %label359, label %label402
label416:                                                ; preds = %label359
  %op417 = load i32 , i32 * %op360
  %op418 = load i32 , i32 * %op362
  %op419 = add i32  %op417, %op418
  store i32  %op419, i32 * %op364
  br label %label420
label420:                                                ; preds = %label359, %label416
  %op421 = load i32 , i32 * @i
  %op422 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op421
  %op423 = load i32 , i32 * %op422
  %op424 = icmp eq i32  %op423, 45
  %op425 = zext i1  %op424 to i32 
  %op426 = icmp ne i32  %op425, 0
  br i1  %op426, label %label427, label %label431
label427:                                                ; preds = %label420
  %op428 = load i32 , i32 * %op362
  %op429 = load i32 , i32 * %op360
  %op430 = sub i32  %op428, %op429
  store i32  %op430, i32 * %op364
  br label %label431
label431:                                                ; preds = %label420, %label427
  %op432 = load i32 , i32 * @i
  %op433 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op432
  %op434 = load i32 , i32 * %op433
  %op435 = icmp eq i32  %op434, 42
  %op436 = zext i1  %op435 to i32 
  %op437 = icmp ne i32  %op436, 0
  br i1  %op437, label %label438, label %label442
label438:                                                ; preds = %label431
  %op439 = load i32 , i32 * %op360
  %op440 = load i32 , i32 * %op362
  %op441 = mul i32  %op439, %op440
  store i32  %op441, i32 * %op364
  br label %label442
label442:                                                ; preds = %label431, %label438
  %op443 = load i32 , i32 * @i
  %op444 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op443
  %op445 = load i32 , i32 * %op444
  %op446 = icmp eq i32  %op445, 47
  %op447 = zext i1  %op446 to i32 
  %op448 = icmp ne i32  %op447, 0
  br i1  %op448, label %label449, label %label453
label449:                                                ; preds = %label442
  %op450 = load i32 , i32 * %op362
  %op451 = load i32 , i32 * %op360
  %op452 = sdiv i32  %op450, %op451
  store i32  %op452, i32 * %op364
  br label %label453
label453:                                                ; preds = %label442, %label449
  %op454 = load i32 , i32 * @i
  %op455 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op454
  %op456 = load i32 , i32 * %op455
  %op457 = icmp eq i32  %op456, 37
  %op458 = zext i1  %op457 to i32 
  %op459 = icmp ne i32  %op458, 0
  br i1  %op459, label %label460, label %label464
label460:                                                ; preds = %label453
  %op461 = load i32 , i32 * %op362
  %op462 = load i32 , i32 * %op360
  %op463 = srem i32  %op461, %op462
  store i32  %op463, i32 * %op364
  br label %label464
label464:                                                ; preds = %label453, %label460
  %op465 = load i32 , i32 * @i
  %op466 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op465
  %op467 = load i32 , i32 * %op466
  %op468 = icmp eq i32  %op467, 94
  %op469 = zext i1  %op468 to i32 
  %op470 = icmp ne i32  %op469, 0
  br i1  %op470, label %label471, label %label475
label471:                                                ; preds = %label464
  %op472 = load i32 , i32 * %op362
  %op473 = load i32 , i32 * %op360
  %op474 = call i32  @power(i32  %op472, i32  %op473)
  store i32  %op474, i32 * %op364
  br label %label475
label475:                                                ; preds = %label464, %label471
  %op476 = load i32 , i32 * %op364
  call void @intpush(i32  %op476)
  br label %label378
label477:                                                ; preds = %label371
  %op478 = load i32 , i32 * @i
  %op479 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op478
  %op480 = load i32 , i32 * %op479
  %op481 = sub i32  %op480, 48
  call void @intpush(i32  %op481)
  store i32  1, i32 * @ii
  br label %label483
label482:                                                ; preds = %label371, %label501
  br label %label378
label483:                                                ; preds = %label477, %label492
  %op484 = load i32 , i32 * @i
  %op485 = load i32 , i32 * @ii
  %op486 = add i32  %op484, %op485
  %op487 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op486
  %op488 = load i32 , i32 * %op487
  %op489 = icmp ne i32  %op488, 32
  %op490 = zext i1  %op489 to i32 
  %op491 = icmp ne i32  %op490, 0
  br i1  %op491, label %label492, label %label501
label492:                                                ; preds = %label483
  %op493 = load i32 , i32 * @i
  %op494 = load i32 , i32 * @ii
  %op495 = add i32  %op493, %op494
  %op496 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op495
  %op497 = load i32 , i32 * %op496
  %op498 = sub i32  %op497, 48
  call void @intadd(i32  %op498)
  %op499 = load i32 , i32 * @ii
  %op500 = add i32  %op499, 1
  store i32  %op500, i32 * @ii
  br label %label483
label501:                                                ; preds = %label483
  %op502 = load i32 , i32 * @i
  %op503 = load i32 , i32 * @ii
  %op504 = add i32  %op502, %op503
  %op505 = sub i32  %op504, 1
  store i32  %op505, i32 * @i
  br label %label482
}

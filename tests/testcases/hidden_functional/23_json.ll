; ModuleID = 'cminus'
source_filename = "/home/waang/cowork/tests/func/hidden_functional/23_json.sy"

@pos = global i32  0
@buffer = global [50000000 x i32 ] zeroinitializer
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

define i32  @is_number(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  %op3 = icmp sge i32  %op2, 48
  %op4 = zext i1  %op3 to i32 
  %op5 = icmp ne i32  %op4, 0
  br i1  %op5, label %label6, label %label11
label6:                                                ; preds = %label_entry
  %op7 = load i32 , i32 * %op1
  %op8 = icmp sle i32  %op7, 57
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label12, label %label13
label11:                                                ; preds = %label_entry
  ret i32  0
label12:                                                ; preds = %label6
  ret i32  1
label13:                                                ; preds = %label6
  ret i32  0
}
define void @skip_space(i32 * %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 *
  store i32 * %arg0, i32 ** %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  br label %label4
label4:                                                ; preds = %label_entry, %label35
  %op5 = icmp ne i32  1, 0
  br i1  %op5, label %label6, label %label12
label6:                                                ; preds = %label4
  %op7 = load i32 , i32 * @pos
  %op8 = load i32 , i32 * %op3
  %op9 = icmp sge i32  %op7, %op8
  %op10 = zext i1  %op9 to i32 
  %op11 = icmp ne i32  %op10, 0
  br i1  %op11, label %label13, label %label14
label12:                                                ; preds = %label4, %label13, %label65
  ret void
label13:                                                ; preds = %label6
  br label %label12
label14:                                                ; preds = %label6
  %op15 = load i32 , i32 * @pos
  %op16 = load i32 , i32 * @pos
  %op17 = load i32 *, i32 ** %op2
  %op18 = getelementptr i32 , i32 * %op17, i32  %op15
  %op19 = load i32 , i32 * %op18
  %op20 = icmp eq i32  %op19, 32
  %op21 = zext i1  %op20 to i32 
  %op22 = icmp ne i32  %op21, 0
  br i1  %op22, label %label23, label %label26
label23:                                                ; preds = %label14
  %op24 = load i32 , i32 * @pos
  %op25 = add i32  %op24, 1
  store i32  %op25, i32 * @pos
  br label %label35
label26:                                                ; preds = %label14
  %op27 = load i32 , i32 * @pos
  %op28 = load i32 , i32 * @pos
  %op29 = load i32 *, i32 ** %op2
  %op30 = getelementptr i32 , i32 * %op29, i32  %op27
  %op31 = load i32 , i32 * %op30
  %op32 = icmp eq i32  %op31, 9
  %op33 = zext i1  %op32 to i32 
  %op34 = icmp ne i32  %op33, 0
  br i1  %op34, label %label36, label %label39
label35:                                                ; preds = %label23, %label48
  br label %label4
label36:                                                ; preds = %label26
  %op37 = load i32 , i32 * @pos
  %op38 = add i32  %op37, 1
  store i32  %op38, i32 * @pos
  br label %label48
label39:                                                ; preds = %label26
  %op40 = load i32 , i32 * @pos
  %op41 = load i32 , i32 * @pos
  %op42 = load i32 *, i32 ** %op2
  %op43 = getelementptr i32 , i32 * %op42, i32  %op40
  %op44 = load i32 , i32 * %op43
  %op45 = icmp eq i32  %op44, 10
  %op46 = zext i1  %op45 to i32 
  %op47 = icmp ne i32  %op46, 0
  br i1  %op47, label %label49, label %label52
label48:                                                ; preds = %label36, %label61
  br label %label35
label49:                                                ; preds = %label39
  %op50 = load i32 , i32 * @pos
  %op51 = add i32  %op50, 1
  store i32  %op51, i32 * @pos
  br label %label61
label52:                                                ; preds = %label39
  %op53 = load i32 , i32 * @pos
  %op54 = load i32 , i32 * @pos
  %op55 = load i32 *, i32 ** %op2
  %op56 = getelementptr i32 , i32 * %op55, i32  %op53
  %op57 = load i32 , i32 * %op56
  %op58 = icmp eq i32  %op57, 13
  %op59 = zext i1  %op58 to i32 
  %op60 = icmp ne i32  %op59, 0
  br i1  %op60, label %label62, label %label65
label61:                                                ; preds = %label49, %label66
  br label %label48
label62:                                                ; preds = %label52
  %op63 = load i32 , i32 * @pos
  %op64 = add i32  %op63, 1
  store i32  %op64, i32 * @pos
  br label %label66
label65:                                                ; preds = %label52
  br label %label12
label66:                                                ; preds = %label62
  br label %label61
}
define i32  @detect_item(i32  %arg0, i32 * %arg1, i32  %arg2) {
label_entry:
  %op3 = alloca i32 
  store i32  %arg0, i32 * %op3
  %op4 = alloca i32 *
  store i32 * %arg1, i32 ** %op4
  %op5 = alloca i32 
  store i32  %arg2, i32 * %op5
  %op6 = load i32 , i32 * @pos
  %op7 = load i32 , i32 * %op5
  %op8 = icmp sge i32  %op6, %op7
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label12
label11:                                                ; preds = %label_entry
  ret i32  0
label12:                                                ; preds = %label_entry
  %op13 = load i32 *, i32 ** %op4
  %op14 = load i32 , i32 * %op5
  call void @skip_space(i32 * %op13, i32  %op14)
  %op15 = load i32 , i32 * %op3
  %op16 = icmp eq i32  %op15, 0
  %op17 = zext i1  %op16 to i32 
  %op18 = icmp ne i32  %op17, 0
  br i1  %op18, label %label19, label %label28
label19:                                                ; preds = %label12
  %op20 = load i32 , i32 * @pos
  %op21 = load i32 , i32 * @pos
  %op22 = load i32 *, i32 ** %op4
  %op23 = getelementptr i32 , i32 * %op22, i32  %op20
  %op24 = load i32 , i32 * %op23
  %op25 = icmp eq i32  %op24, 123
  %op26 = zext i1  %op25 to i32 
  %op27 = icmp ne i32  %op26, 0
  br i1  %op27, label %label34, label %label38
label28:                                                ; preds = %label12
  %op29 = load i32 , i32 * %op3
  %op30 = icmp eq i32  %op29, 1
  %op31 = zext i1  %op30 to i32 
  %op32 = icmp ne i32  %op31, 0
  br i1  %op32, label %label144, label %label153
label33:                                                ; preds = %label158
  ret i32  1
label34:                                                ; preds = %label19
  %op35 = load i32 *, i32 ** %op4
  %op36 = load i32 , i32 * %op5
  %op37 = call i32  @detect_item(i32  4, i32 * %op35, i32  %op36)
  ret i32  %op37
label38:                                                ; preds = %label19
  %op39 = load i32 , i32 * @pos
  %op40 = load i32 , i32 * @pos
  %op41 = load i32 *, i32 ** %op4
  %op42 = getelementptr i32 , i32 * %op41, i32  %op39
  %op43 = load i32 , i32 * %op42
  %op44 = icmp eq i32  %op43, 91
  %op45 = zext i1  %op44 to i32 
  %op46 = icmp ne i32  %op45, 0
  br i1  %op46, label %label47, label %label51
label47:                                                ; preds = %label38
  %op48 = load i32 *, i32 ** %op4
  %op49 = load i32 , i32 * %op5
  %op50 = call i32  @detect_item(i32  3, i32 * %op48, i32  %op49)
  ret i32  %op50
label51:                                                ; preds = %label38
  %op52 = load i32 , i32 * @pos
  %op53 = load i32 , i32 * @pos
  %op54 = load i32 *, i32 ** %op4
  %op55 = getelementptr i32 , i32 * %op54, i32  %op52
  %op56 = load i32 , i32 * %op55
  %op57 = icmp eq i32  %op56, 34
  %op58 = zext i1  %op57 to i32 
  %op59 = icmp ne i32  %op58, 0
  br i1  %op59, label %label60, label %label64
label60:                                                ; preds = %label51
  %op61 = load i32 *, i32 ** %op4
  %op62 = load i32 , i32 * %op5
  %op63 = call i32  @detect_item(i32  2, i32 * %op61, i32  %op62)
  ret i32  %op63
label64:                                                ; preds = %label51
  %op65 = load i32 , i32 * @pos
  %op66 = load i32 , i32 * @pos
  %op67 = load i32 *, i32 ** %op4
  %op68 = getelementptr i32 , i32 * %op67, i32  %op65
  %op69 = load i32 , i32 * %op68
  %op70 = call i32  @is_number(i32  %op69)
  %op71 = icmp eq i32  %op70, 1
  %op72 = zext i1  %op71 to i32 
  %op73 = icmp ne i32  %op72, 0
  br i1  %op73, label %label74, label %label78
label74:                                                ; preds = %label64
  %op75 = load i32 *, i32 ** %op4
  %op76 = load i32 , i32 * %op5
  %op77 = call i32  @detect_item(i32  1, i32 * %op75, i32  %op76)
  ret i32  %op77
label78:                                                ; preds = %label64
  %op79 = load i32 , i32 * @pos
  %op80 = load i32 , i32 * @pos
  %op81 = load i32 *, i32 ** %op4
  %op82 = getelementptr i32 , i32 * %op81, i32  %op79
  %op83 = load i32 , i32 * %op82
  %op84 = icmp eq i32  %op83, 43
  %op85 = zext i1  %op84 to i32 
  %op86 = icmp ne i32  %op85, 0
  br i1  %op86, label %label87, label %label91
label87:                                                ; preds = %label78
  %op88 = load i32 *, i32 ** %op4
  %op89 = load i32 , i32 * %op5
  %op90 = call i32  @detect_item(i32  1, i32 * %op88, i32  %op89)
  ret i32  %op90
label91:                                                ; preds = %label78
  %op92 = load i32 , i32 * @pos
  %op93 = load i32 , i32 * @pos
  %op94 = load i32 *, i32 ** %op4
  %op95 = getelementptr i32 , i32 * %op94, i32  %op92
  %op96 = load i32 , i32 * %op95
  %op97 = icmp eq i32  %op96, 45
  %op98 = zext i1  %op97 to i32 
  %op99 = icmp ne i32  %op98, 0
  br i1  %op99, label %label100, label %label104
label100:                                                ; preds = %label91
  %op101 = load i32 *, i32 ** %op4
  %op102 = load i32 , i32 * %op5
  %op103 = call i32  @detect_item(i32  1, i32 * %op101, i32  %op102)
  ret i32  %op103
label104:                                                ; preds = %label91
  %op105 = load i32 , i32 * @pos
  %op106 = load i32 , i32 * @pos
  %op107 = load i32 *, i32 ** %op4
  %op108 = getelementptr i32 , i32 * %op107, i32  %op105
  %op109 = load i32 , i32 * %op108
  %op110 = icmp eq i32  %op109, 116
  %op111 = zext i1  %op110 to i32 
  %op112 = icmp ne i32  %op111, 0
  br i1  %op112, label %label113, label %label117
label113:                                                ; preds = %label104
  %op114 = load i32 *, i32 ** %op4
  %op115 = load i32 , i32 * %op5
  %op116 = call i32  @detect_item(i32  5, i32 * %op114, i32  %op115)
  ret i32  %op116
label117:                                                ; preds = %label104
  %op118 = load i32 , i32 * @pos
  %op119 = load i32 , i32 * @pos
  %op120 = load i32 *, i32 ** %op4
  %op121 = getelementptr i32 , i32 * %op120, i32  %op118
  %op122 = load i32 , i32 * %op121
  %op123 = icmp eq i32  %op122, 102
  %op124 = zext i1  %op123 to i32 
  %op125 = icmp ne i32  %op124, 0
  br i1  %op125, label %label126, label %label130
label126:                                                ; preds = %label117
  %op127 = load i32 *, i32 ** %op4
  %op128 = load i32 , i32 * %op5
  %op129 = call i32  @detect_item(i32  6, i32 * %op127, i32  %op128)
  ret i32  %op129
label130:                                                ; preds = %label117
  %op131 = load i32 , i32 * @pos
  %op132 = load i32 , i32 * @pos
  %op133 = load i32 *, i32 ** %op4
  %op134 = getelementptr i32 , i32 * %op133, i32  %op131
  %op135 = load i32 , i32 * %op134
  %op136 = icmp eq i32  %op135, 110
  %op137 = zext i1  %op136 to i32 
  %op138 = icmp ne i32  %op137, 0
  br i1  %op138, label %label139, label %label143
label139:                                                ; preds = %label130
  %op140 = load i32 *, i32 ** %op4
  %op141 = load i32 , i32 * %op5
  %op142 = call i32  @detect_item(i32  7, i32 * %op140, i32  %op141)
  ret i32  %op142
label143:                                                ; preds = %label130
  ret i32  0
label144:                                                ; preds = %label28
  %op145 = load i32 , i32 * @pos
  %op146 = load i32 , i32 * @pos
  %op147 = load i32 *, i32 ** %op4
  %op148 = getelementptr i32 , i32 * %op147, i32  %op145
  %op149 = load i32 , i32 * %op148
  %op150 = icmp eq i32  %op149, 43
  %op151 = zext i1  %op150 to i32 
  %op152 = icmp ne i32  %op151, 0
  br i1  %op152, label %label159, label %label162
label153:                                                ; preds = %label28
  %op154 = load i32 , i32 * %op3
  %op155 = icmp eq i32  %op154, 2
  %op156 = zext i1  %op155 to i32 
  %op157 = icmp ne i32  %op156, 0
  br i1  %op157, label %label334, label %label337
label158:                                                ; preds = %label270, %label342
  br label %label33
label159:                                                ; preds = %label144
  %op160 = load i32 , i32 * @pos
  %op161 = add i32  %op160, 1
  store i32  %op161, i32 * @pos
  br label %label171
label162:                                                ; preds = %label144
  %op163 = load i32 , i32 * @pos
  %op164 = load i32 , i32 * @pos
  %op165 = load i32 *, i32 ** %op4
  %op166 = getelementptr i32 , i32 * %op165, i32  %op163
  %op167 = load i32 , i32 * %op166
  %op168 = icmp eq i32  %op167, 45
  %op169 = zext i1  %op168 to i32 
  %op170 = icmp ne i32  %op169, 0
  br i1  %op170, label %label177, label %label180
label171:                                                ; preds = %label159, %label180
  %op172 = load i32 , i32 * @pos
  %op173 = load i32 , i32 * %op5
  %op174 = icmp sge i32  %op172, %op173
  %op175 = zext i1  %op174 to i32 
  %op176 = icmp ne i32  %op175, 0
  br i1  %op176, label %label181, label %label182
label177:                                                ; preds = %label162
  %op178 = load i32 , i32 * @pos
  %op179 = add i32  %op178, 1
  store i32  %op179, i32 * @pos
  br label %label180
label180:                                                ; preds = %label162, %label177
  br label %label171
label181:                                                ; preds = %label171
  ret i32  0
label182:                                                ; preds = %label171
  %op183 = load i32 , i32 * @pos
  %op184 = load i32 , i32 * @pos
  %op185 = load i32 *, i32 ** %op4
  %op186 = getelementptr i32 , i32 * %op185, i32  %op183
  %op187 = load i32 , i32 * %op186
  %op188 = call i32  @is_number(i32  %op187)
  %op189 = icmp eq i32  %op188, 0
  %op190 = zext i1  %op189 to i32 
  %op191 = icmp ne i32  %op190, 0
  br i1  %op191, label %label193, label %label194
label192:                                                ; preds = %label194
  br label %label195
label193:                                                ; preds = %label182
  ret i32  0
label194:                                                ; preds = %label182
  br label %label192
label195:                                                ; preds = %label192, %label218
  %op196 = load i32 , i32 * @pos
  %op197 = load i32 , i32 * %op5
  %op198 = icmp slt i32  %op196, %op197
  %op199 = zext i1  %op198 to i32 
  %op200 = icmp ne i32  %op199, 0
  br i1  %op200, label %label201, label %label211
label201:                                                ; preds = %label195
  %op202 = load i32 , i32 * @pos
  %op203 = load i32 , i32 * @pos
  %op204 = load i32 *, i32 ** %op4
  %op205 = getelementptr i32 , i32 * %op204, i32  %op202
  %op206 = load i32 , i32 * %op205
  %op207 = call i32  @is_number(i32  %op206)
  %op208 = icmp ne i32  %op207, 1
  %op209 = zext i1  %op208 to i32 
  %op210 = icmp ne i32  %op209, 0
  br i1  %op210, label %label217, label %label218
label211:                                                ; preds = %label195, %label217
  %op212 = load i32 , i32 * @pos
  %op213 = load i32 , i32 * %op5
  %op214 = icmp slt i32  %op212, %op213
  %op215 = zext i1  %op214 to i32 
  %op216 = icmp ne i32  %op215, 0
  br i1  %op216, label %label221, label %label230
label217:                                                ; preds = %label201
  br label %label211
label218:                                                ; preds = %label201
  %op219 = load i32 , i32 * @pos
  %op220 = add i32  %op219, 1
  store i32  %op220, i32 * @pos
  br label %label195
label221:                                                ; preds = %label211
  %op222 = load i32 , i32 * @pos
  %op223 = load i32 , i32 * @pos
  %op224 = load i32 *, i32 ** %op4
  %op225 = getelementptr i32 , i32 * %op224, i32  %op222
  %op226 = load i32 , i32 * %op225
  %op227 = icmp eq i32  %op226, 46
  %op228 = zext i1  %op227 to i32 
  %op229 = icmp ne i32  %op228, 0
  br i1  %op229, label %label236, label %label239
label230:                                                ; preds = %label211, %label239
  %op231 = load i32 , i32 * @pos
  %op232 = load i32 , i32 * %op5
  %op233 = icmp slt i32  %op231, %op232
  %op234 = zext i1  %op233 to i32 
  %op235 = icmp ne i32  %op234, 0
  br i1  %op235, label %label261, label %label270
label236:                                                ; preds = %label221
  %op237 = load i32 , i32 * @pos
  %op238 = add i32  %op237, 1
  store i32  %op238, i32 * @pos
  br label %label240
label239:                                                ; preds = %label221, %label256
  br label %label230
label240:                                                ; preds = %label236, %label258
  %op241 = load i32 , i32 * @pos
  %op242 = load i32 , i32 * %op5
  %op243 = icmp slt i32  %op241, %op242
  %op244 = zext i1  %op243 to i32 
  %op245 = icmp ne i32  %op244, 0
  br i1  %op245, label %label246, label %label256
label246:                                                ; preds = %label240
  %op247 = load i32 , i32 * @pos
  %op248 = load i32 , i32 * @pos
  %op249 = load i32 *, i32 ** %op4
  %op250 = getelementptr i32 , i32 * %op249, i32  %op247
  %op251 = load i32 , i32 * %op250
  %op252 = call i32  @is_number(i32  %op251)
  %op253 = icmp ne i32  %op252, 1
  %op254 = zext i1  %op253 to i32 
  %op255 = icmp ne i32  %op254, 0
  br i1  %op255, label %label257, label %label258
label256:                                                ; preds = %label240, %label257
  br label %label239
label257:                                                ; preds = %label246
  br label %label256
label258:                                                ; preds = %label246
  %op259 = load i32 , i32 * @pos
  %op260 = add i32  %op259, 1
  store i32  %op260, i32 * @pos
  br label %label240
label261:                                                ; preds = %label230
  %op262 = load i32 , i32 * @pos
  %op263 = load i32 , i32 * @pos
  %op264 = load i32 *, i32 ** %op4
  %op265 = getelementptr i32 , i32 * %op264, i32  %op262
  %op266 = load i32 , i32 * %op265
  %op267 = icmp eq i32  %op266, 101
  %op268 = zext i1  %op267 to i32 
  %op269 = icmp ne i32  %op268, 0
  br i1  %op269, label %label271, label %label279
label270:                                                ; preds = %label230, %label279
  br label %label158
label271:                                                ; preds = %label261
  %op272 = load i32 , i32 * @pos
  %op273 = add i32  %op272, 1
  store i32  %op273, i32 * @pos
  %op274 = load i32 , i32 * @pos
  %op275 = load i32 , i32 * %op5
  %op276 = icmp slt i32  %op274, %op275
  %op277 = zext i1  %op276 to i32 
  %op278 = icmp ne i32  %op277, 0
  br i1  %op278, label %label280, label %label289
label279:                                                ; preds = %label261, %label329
  br label %label270
label280:                                                ; preds = %label271
  %op281 = load i32 , i32 * @pos
  %op282 = load i32 , i32 * @pos
  %op283 = load i32 *, i32 ** %op4
  %op284 = getelementptr i32 , i32 * %op283, i32  %op281
  %op285 = load i32 , i32 * %op284
  %op286 = icmp eq i32  %op285, 43
  %op287 = zext i1  %op286 to i32 
  %op288 = icmp ne i32  %op287, 0
  br i1  %op288, label %label295, label %label298
label289:                                                ; preds = %label271, %label298
  %op290 = load i32 , i32 * @pos
  %op291 = load i32 , i32 * %op5
  %op292 = icmp slt i32  %op290, %op291
  %op293 = zext i1  %op292 to i32 
  %op294 = icmp ne i32  %op293, 0
  br i1  %op294, label %label299, label %label308
label295:                                                ; preds = %label280
  %op296 = load i32 , i32 * @pos
  %op297 = add i32  %op296, 1
  store i32  %op297, i32 * @pos
  br label %label298
label298:                                                ; preds = %label280, %label295
  br label %label289
label299:                                                ; preds = %label289
  %op300 = load i32 , i32 * @pos
  %op301 = load i32 , i32 * @pos
  %op302 = load i32 *, i32 ** %op4
  %op303 = getelementptr i32 , i32 * %op302, i32  %op300
  %op304 = load i32 , i32 * %op303
  %op305 = icmp eq i32  %op304, 45
  %op306 = zext i1  %op305 to i32 
  %op307 = icmp ne i32  %op306, 0
  br i1  %op307, label %label309, label %label312
label308:                                                ; preds = %label289, %label312
  br label %label313
label309:                                                ; preds = %label299
  %op310 = load i32 , i32 * @pos
  %op311 = add i32  %op310, 1
  store i32  %op311, i32 * @pos
  br label %label312
label312:                                                ; preds = %label299, %label309
  br label %label308
label313:                                                ; preds = %label308, %label331
  %op314 = load i32 , i32 * @pos
  %op315 = load i32 , i32 * %op5
  %op316 = icmp slt i32  %op314, %op315
  %op317 = zext i1  %op316 to i32 
  %op318 = icmp ne i32  %op317, 0
  br i1  %op318, label %label319, label %label329
label319:                                                ; preds = %label313
  %op320 = load i32 , i32 * @pos
  %op321 = load i32 , i32 * @pos
  %op322 = load i32 *, i32 ** %op4
  %op323 = getelementptr i32 , i32 * %op322, i32  %op320
  %op324 = load i32 , i32 * %op323
  %op325 = call i32  @is_number(i32  %op324)
  %op326 = icmp ne i32  %op325, 1
  %op327 = zext i1  %op326 to i32 
  %op328 = icmp ne i32  %op327, 0
  br i1  %op328, label %label330, label %label331
label329:                                                ; preds = %label313, %label330
  br label %label279
label330:                                                ; preds = %label319
  br label %label329
label331:                                                ; preds = %label319
  %op332 = load i32 , i32 * @pos
  %op333 = add i32  %op332, 1
  store i32  %op333, i32 * @pos
  br label %label313
label334:                                                ; preds = %label153
  %op335 = load i32 , i32 * @pos
  %op336 = add i32  %op335, 1
  store i32  %op336, i32 * @pos
  br label %label343
label337:                                                ; preds = %label153
  %op338 = load i32 , i32 * %op3
  %op339 = icmp eq i32  %op338, 3
  %op340 = zext i1  %op339 to i32 
  %op341 = icmp ne i32  %op340, 0
  br i1  %op341, label %label396, label %label406
label342:                                                ; preds = %label391, %label411
  br label %label158
label343:                                                ; preds = %label334, %label380
  %op344 = load i32 , i32 * @pos
  %op345 = load i32 , i32 * %op5
  %op346 = icmp slt i32  %op344, %op345
  %op347 = zext i1  %op346 to i32 
  %op348 = icmp ne i32  %op347, 0
  br i1  %op348, label %label349, label %label358
label349:                                                ; preds = %label343
  %op350 = load i32 , i32 * @pos
  %op351 = load i32 , i32 * @pos
  %op352 = load i32 *, i32 ** %op4
  %op353 = getelementptr i32 , i32 * %op352, i32  %op350
  %op354 = load i32 , i32 * %op353
  %op355 = icmp eq i32  %op354, 34
  %op356 = zext i1  %op355 to i32 
  %op357 = icmp ne i32  %op356, 0
  br i1  %op357, label %label364, label %label365
label358:                                                ; preds = %label343, %label364
  %op359 = load i32 , i32 * @pos
  %op360 = load i32 , i32 * %op5
  %op361 = icmp sge i32  %op359, %op360
  %op362 = zext i1  %op361 to i32 
  %op363 = icmp ne i32  %op362, 0
  br i1  %op363, label %label381, label %label382
label364:                                                ; preds = %label349
  br label %label358
label365:                                                ; preds = %label349
  %op366 = load i32 , i32 * @pos
  %op367 = load i32 , i32 * @pos
  %op368 = load i32 *, i32 ** %op4
  %op369 = getelementptr i32 , i32 * %op368, i32  %op366
  %op370 = load i32 , i32 * %op369
  %op371 = icmp eq i32  %op370, 92
  %op372 = zext i1  %op371 to i32 
  %op373 = icmp ne i32  %op372, 0
  br i1  %op373, label %label374, label %label377
label374:                                                ; preds = %label365
  %op375 = load i32 , i32 * @pos
  %op376 = add i32  %op375, 2
  store i32  %op376, i32 * @pos
  br label %label380
label377:                                                ; preds = %label365
  %op378 = load i32 , i32 * @pos
  %op379 = add i32  %op378, 1
  store i32  %op379, i32 * @pos
  br label %label380
label380:                                                ; preds = %label374, %label377
  br label %label343
label381:                                                ; preds = %label358
  ret i32  0
label382:                                                ; preds = %label358
  %op383 = load i32 , i32 * @pos
  %op384 = load i32 , i32 * @pos
  %op385 = load i32 *, i32 ** %op4
  %op386 = getelementptr i32 , i32 * %op385, i32  %op383
  %op387 = load i32 , i32 * %op386
  %op388 = icmp ne i32  %op387, 34
  %op389 = zext i1  %op388 to i32 
  %op390 = icmp ne i32  %op389, 0
  br i1  %op390, label %label394, label %label395
label391:                                                ; preds = %label395
  %op392 = load i32 , i32 * @pos
  %op393 = add i32  %op392, 1
  store i32  %op393, i32 * @pos
  br label %label342
label394:                                                ; preds = %label382
  ret i32  0
label395:                                                ; preds = %label382
  br label %label391
label396:                                                ; preds = %label337
  %op397 = load i32 , i32 * @pos
  %op398 = add i32  %op397, 1
  store i32  %op398, i32 * @pos
  %op399 = load i32 *, i32 ** %op4
  %op400 = load i32 , i32 * %op5
  call void @skip_space(i32 * %op399, i32  %op400)
  %op401 = load i32 , i32 * @pos
  %op402 = load i32 , i32 * %op5
  %op403 = icmp slt i32  %op401, %op402
  %op404 = zext i1  %op403 to i32 
  %op405 = icmp ne i32  %op404, 0
  br i1  %op405, label %label412, label %label421
label406:                                                ; preds = %label337
  %op407 = load i32 , i32 * %op3
  %op408 = icmp eq i32  %op407, 4
  %op409 = zext i1  %op408 to i32 
  %op410 = icmp ne i32  %op409, 0
  br i1  %op410, label %label482, label %label492
label411:                                                ; preds = %label479, %label497
  br label %label342
label412:                                                ; preds = %label396
  %op413 = load i32 , i32 * @pos
  %op414 = load i32 , i32 * @pos
  %op415 = load i32 *, i32 ** %op4
  %op416 = getelementptr i32 , i32 * %op415, i32  %op413
  %op417 = load i32 , i32 * %op416
  %op418 = icmp eq i32  %op417, 93
  %op419 = zext i1  %op418 to i32 
  %op420 = icmp ne i32  %op419, 0
  br i1  %op420, label %label428, label %label431
label421:                                                ; preds = %label396, %label431
  %op422 = load i32 *, i32 ** %op4
  %op423 = load i32 , i32 * %op5
  %op424 = call i32  @detect_item(i32  0, i32 * %op422, i32  %op423)
  %op425 = icmp eq i32  %op424, 0
  %op426 = zext i1  %op425 to i32 
  %op427 = icmp ne i32  %op426, 0
  br i1  %op427, label %label432, label %label433
label428:                                                ; preds = %label412
  %op429 = load i32 , i32 * @pos
  %op430 = add i32  %op429, 1
  store i32  %op430, i32 * @pos
  ret i32  1
label431:                                                ; preds = %label412
  br label %label421
label432:                                                ; preds = %label421
  ret i32  0
label433:                                                ; preds = %label421
  %op434 = load i32 *, i32 ** %op4
  %op435 = load i32 , i32 * %op5
  call void @skip_space(i32 * %op434, i32  %op435)
  br label %label436
label436:                                                ; preds = %label433, %label465
  %op437 = load i32 , i32 * @pos
  %op438 = load i32 , i32 * @pos
  %op439 = load i32 *, i32 ** %op4
  %op440 = getelementptr i32 , i32 * %op439, i32  %op437
  %op441 = load i32 , i32 * %op440
  %op442 = icmp eq i32  %op441, 44
  %op443 = zext i1  %op442 to i32 
  %op444 = icmp ne i32  %op443, 0
  br i1  %op444, label %label445, label %label456
label445:                                                ; preds = %label436
  %op446 = load i32 , i32 * @pos
  %op447 = add i32  %op446, 1
  store i32  %op447, i32 * @pos
  %op448 = load i32 *, i32 ** %op4
  %op449 = load i32 , i32 * %op5
  call void @skip_space(i32 * %op448, i32  %op449)
  %op450 = load i32 *, i32 ** %op4
  %op451 = load i32 , i32 * %op5
  %op452 = call i32  @detect_item(i32  0, i32 * %op450, i32  %op451)
  %op453 = icmp eq i32  %op452, 0
  %op454 = zext i1  %op453 to i32 
  %op455 = icmp ne i32  %op454, 0
  br i1  %op455, label %label464, label %label465
label456:                                                ; preds = %label436
  %op457 = load i32 *, i32 ** %op4
  %op458 = load i32 , i32 * %op5
  call void @skip_space(i32 * %op457, i32  %op458)
  %op459 = load i32 , i32 * @pos
  %op460 = load i32 , i32 * %op5
  %op461 = icmp sge i32  %op459, %op460
  %op462 = zext i1  %op461 to i32 
  %op463 = icmp ne i32  %op462, 0
  br i1  %op463, label %label468, label %label469
label464:                                                ; preds = %label445
  ret i32  0
label465:                                                ; preds = %label445
  %op466 = load i32 *, i32 ** %op4
  %op467 = load i32 , i32 * %op5
  call void @skip_space(i32 * %op466, i32  %op467)
  br label %label436
label468:                                                ; preds = %label456
  ret i32  0
label469:                                                ; preds = %label456
  %op470 = load i32 , i32 * @pos
  %op471 = load i32 , i32 * @pos
  %op472 = load i32 *, i32 ** %op4
  %op473 = getelementptr i32 , i32 * %op472, i32  %op470
  %op474 = load i32 , i32 * %op473
  %op475 = icmp ne i32  %op474, 93
  %op476 = zext i1  %op475 to i32 
  %op477 = icmp ne i32  %op476, 0
  br i1  %op477, label %label478, label %label479
label478:                                                ; preds = %label469
  ret i32  0
label479:                                                ; preds = %label469
  %op480 = load i32 , i32 * @pos
  %op481 = add i32  %op480, 1
  store i32  %op481, i32 * @pos
  br label %label411
label482:                                                ; preds = %label406
  %op483 = load i32 , i32 * @pos
  %op484 = add i32  %op483, 1
  store i32  %op484, i32 * @pos
  %op485 = load i32 *, i32 ** %op4
  %op486 = load i32 , i32 * %op5
  call void @skip_space(i32 * %op485, i32  %op486)
  %op487 = load i32 , i32 * @pos
  %op488 = load i32 , i32 * %op5
  %op489 = icmp slt i32  %op487, %op488
  %op490 = zext i1  %op489 to i32 
  %op491 = icmp ne i32  %op490, 0
  br i1  %op491, label %label498, label %label507
label492:                                                ; preds = %label406
  %op493 = load i32 , i32 * %op3
  %op494 = icmp eq i32  %op493, 5
  %op495 = zext i1  %op494 to i32 
  %op496 = icmp ne i32  %op495, 0
  br i1  %op496, label %label631, label %label643
label497:                                                ; preds = %label626, %label648
  br label %label411
label498:                                                ; preds = %label482
  %op499 = load i32 , i32 * @pos
  %op500 = load i32 , i32 * @pos
  %op501 = load i32 *, i32 ** %op4
  %op502 = getelementptr i32 , i32 * %op501, i32  %op499
  %op503 = load i32 , i32 * %op502
  %op504 = icmp eq i32  %op503, 125
  %op505 = zext i1  %op504 to i32 
  %op506 = icmp ne i32  %op505, 0
  br i1  %op506, label %label514, label %label517
label507:                                                ; preds = %label482, %label517
  %op508 = load i32 *, i32 ** %op4
  %op509 = load i32 , i32 * %op5
  %op510 = call i32  @detect_item(i32  2, i32 * %op508, i32  %op509)
  %op511 = icmp eq i32  %op510, 0
  %op512 = zext i1  %op511 to i32 
  %op513 = icmp ne i32  %op512, 0
  br i1  %op513, label %label518, label %label519
label514:                                                ; preds = %label498
  %op515 = load i32 , i32 * @pos
  %op516 = add i32  %op515, 1
  store i32  %op516, i32 * @pos
  ret i32  1
label517:                                                ; preds = %label498
  br label %label507
label518:                                                ; preds = %label507
  ret i32  0
label519:                                                ; preds = %label507
  %op520 = load i32 *, i32 ** %op4
  %op521 = load i32 , i32 * %op5
  call void @skip_space(i32 * %op520, i32  %op521)
  %op522 = load i32 , i32 * @pos
  %op523 = load i32 , i32 * %op5
  %op524 = icmp sge i32  %op522, %op523
  %op525 = zext i1  %op524 to i32 
  %op526 = icmp ne i32  %op525, 0
  br i1  %op526, label %label527, label %label528
label527:                                                ; preds = %label519
  ret i32  0
label528:                                                ; preds = %label519
  %op529 = load i32 , i32 * @pos
  %op530 = load i32 , i32 * @pos
  %op531 = load i32 *, i32 ** %op4
  %op532 = getelementptr i32 , i32 * %op531, i32  %op529
  %op533 = load i32 , i32 * %op532
  %op534 = icmp ne i32  %op533, 58
  %op535 = zext i1  %op534 to i32 
  %op536 = icmp ne i32  %op535, 0
  br i1  %op536, label %label537, label %label538
label537:                                                ; preds = %label528
  ret i32  0
label538:                                                ; preds = %label528
  %op539 = load i32 , i32 * @pos
  %op540 = add i32  %op539, 1
  store i32  %op540, i32 * @pos
  %op541 = load i32 *, i32 ** %op4
  %op542 = load i32 , i32 * %op5
  call void @skip_space(i32 * %op541, i32  %op542)
  %op543 = load i32 *, i32 ** %op4
  %op544 = load i32 , i32 * %op5
  %op545 = call i32  @detect_item(i32  0, i32 * %op543, i32  %op544)
  %op546 = icmp eq i32  %op545, 0
  %op547 = zext i1  %op546 to i32 
  %op548 = icmp ne i32  %op547, 0
  br i1  %op548, label %label549, label %label550
label549:                                                ; preds = %label538
  ret i32  0
label550:                                                ; preds = %label538
  %op551 = load i32 *, i32 ** %op4
  %op552 = load i32 , i32 * %op5
  call void @skip_space(i32 * %op551, i32  %op552)
  br label %label553
label553:                                                ; preds = %label550, %label613
  %op554 = load i32 , i32 * @pos
  %op555 = load i32 , i32 * @pos
  %op556 = load i32 *, i32 ** %op4
  %op557 = getelementptr i32 , i32 * %op556, i32  %op554
  %op558 = load i32 , i32 * %op557
  %op559 = icmp eq i32  %op558, 44
  %op560 = zext i1  %op559 to i32 
  %op561 = icmp ne i32  %op560, 0
  br i1  %op561, label %label562, label %label573
label562:                                                ; preds = %label553
  %op563 = load i32 , i32 * @pos
  %op564 = add i32  %op563, 1
  store i32  %op564, i32 * @pos
  %op565 = load i32 *, i32 ** %op4
  %op566 = load i32 , i32 * %op5
  call void @skip_space(i32 * %op565, i32  %op566)
  %op567 = load i32 *, i32 ** %op4
  %op568 = load i32 , i32 * %op5
  %op569 = call i32  @detect_item(i32  2, i32 * %op567, i32  %op568)
  %op570 = icmp eq i32  %op569, 0
  %op571 = zext i1  %op570 to i32 
  %op572 = icmp ne i32  %op571, 0
  br i1  %op572, label %label581, label %label582
label573:                                                ; preds = %label553
  %op574 = load i32 *, i32 ** %op4
  %op575 = load i32 , i32 * %op5
  call void @skip_space(i32 * %op574, i32  %op575)
  %op576 = load i32 , i32 * @pos
  %op577 = load i32 , i32 * %op5
  %op578 = icmp sge i32  %op576, %op577
  %op579 = zext i1  %op578 to i32 
  %op580 = icmp ne i32  %op579, 0
  br i1  %op580, label %label616, label %label617
label581:                                                ; preds = %label562
  ret i32  0
label582:                                                ; preds = %label562
  %op583 = load i32 *, i32 ** %op4
  %op584 = load i32 , i32 * %op5
  call void @skip_space(i32 * %op583, i32  %op584)
  %op585 = load i32 , i32 * @pos
  %op586 = load i32 , i32 * %op5
  %op587 = icmp sge i32  %op585, %op586
  %op588 = zext i1  %op587 to i32 
  %op589 = icmp ne i32  %op588, 0
  br i1  %op589, label %label590, label %label591
label590:                                                ; preds = %label582
  ret i32  0
label591:                                                ; preds = %label582
  %op592 = load i32 , i32 * @pos
  %op593 = load i32 , i32 * @pos
  %op594 = load i32 *, i32 ** %op4
  %op595 = getelementptr i32 , i32 * %op594, i32  %op592
  %op596 = load i32 , i32 * %op595
  %op597 = icmp ne i32  %op596, 58
  %op598 = zext i1  %op597 to i32 
  %op599 = icmp ne i32  %op598, 0
  br i1  %op599, label %label600, label %label601
label600:                                                ; preds = %label591
  ret i32  0
label601:                                                ; preds = %label591
  %op602 = load i32 , i32 * @pos
  %op603 = add i32  %op602, 1
  store i32  %op603, i32 * @pos
  %op604 = load i32 *, i32 ** %op4
  %op605 = load i32 , i32 * %op5
  call void @skip_space(i32 * %op604, i32  %op605)
  %op606 = load i32 *, i32 ** %op4
  %op607 = load i32 , i32 * %op5
  %op608 = call i32  @detect_item(i32  0, i32 * %op606, i32  %op607)
  %op609 = icmp eq i32  %op608, 0
  %op610 = zext i1  %op609 to i32 
  %op611 = icmp ne i32  %op610, 0
  br i1  %op611, label %label612, label %label613
label612:                                                ; preds = %label601
  ret i32  0
label613:                                                ; preds = %label601
  %op614 = load i32 *, i32 ** %op4
  %op615 = load i32 , i32 * %op5
  call void @skip_space(i32 * %op614, i32  %op615)
  br label %label553
label616:                                                ; preds = %label573
  ret i32  0
label617:                                                ; preds = %label573
  %op618 = load i32 , i32 * @pos
  %op619 = load i32 , i32 * @pos
  %op620 = load i32 *, i32 ** %op4
  %op621 = getelementptr i32 , i32 * %op620, i32  %op618
  %op622 = load i32 , i32 * %op621
  %op623 = icmp ne i32  %op622, 125
  %op624 = zext i1  %op623 to i32 
  %op625 = icmp ne i32  %op624, 0
  br i1  %op625, label %label629, label %label630
label626:                                                ; preds = %label630
  %op627 = load i32 , i32 * @pos
  %op628 = add i32  %op627, 1
  store i32  %op628, i32 * @pos
  br label %label497
label629:                                                ; preds = %label617
  ret i32  0
label630:                                                ; preds = %label617
  br label %label626
label631:                                                ; preds = %label492
  %op632 = alloca [4 x i32 ]
  %op633 = getelementptr [4 x i32 ], [4 x i32 ]* %op632, i32  0, i32  0
  store i32  116, i32 * %op633
  %op634 = getelementptr [4 x i32 ], [4 x i32 ]* %op632, i32  0, i32  1
  store i32  114, i32 * %op634
  %op635 = getelementptr [4 x i32 ], [4 x i32 ]* %op632, i32  0, i32  2
  store i32  117, i32 * %op635
  %op636 = getelementptr [4 x i32 ], [4 x i32 ]* %op632, i32  0, i32  3
  store i32  101, i32 * %op636
  %op637 = load i32 , i32 * @pos
  %op638 = add i32  %op637, 3
  %op639 = load i32 , i32 * %op5
  %op640 = icmp sge i32  %op638, %op639
  %op641 = zext i1  %op640 to i32 
  %op642 = icmp ne i32  %op641, 0
  br i1  %op642, label %label649, label %label650
label643:                                                ; preds = %label492
  %op644 = load i32 , i32 * %op3
  %op645 = icmp eq i32  %op644, 6
  %op646 = zext i1  %op645 to i32 
  %op647 = icmp ne i32  %op646, 0
  br i1  %op647, label %label711, label %label724
label648:                                                ; preds = %label661, %label729
  br label %label497
label649:                                                ; preds = %label631
  ret i32  0
label650:                                                ; preds = %label631
  %op651 = load i32 , i32 * @pos
  %op652 = load i32 , i32 * @pos
  %op653 = load i32 *, i32 ** %op4
  %op654 = getelementptr i32 , i32 * %op653, i32  %op651
  %op655 = load i32 , i32 * %op654
  %op656 = getelementptr [4 x i32 ], [4 x i32 ]* %op632, i32  0, i32  0
  %op657 = load i32 , i32 * %op656
  %op658 = icmp ne i32  %op655, %op657
  %op659 = zext i1  %op658 to i32 
  %op660 = icmp ne i32  %op659, 0
  br i1  %op660, label %label664, label %label665
label661:                                                ; preds = %label678
  %op662 = load i32 , i32 * @pos
  %op663 = add i32  %op662, 4
  store i32  %op663, i32 * @pos
  br label %label648
label664:                                                ; preds = %label650
  ret i32  0
label665:                                                ; preds = %label650
  %op666 = load i32 , i32 * @pos
  %op667 = add i32  %op666, 1
  %op668 = load i32 , i32 * @pos
  %op669 = add i32  %op668, 1
  %op670 = load i32 *, i32 ** %op4
  %op671 = getelementptr i32 , i32 * %op670, i32  %op667
  %op672 = load i32 , i32 * %op671
  %op673 = getelementptr [4 x i32 ], [4 x i32 ]* %op632, i32  0, i32  1
  %op674 = load i32 , i32 * %op673
  %op675 = icmp ne i32  %op672, %op674
  %op676 = zext i1  %op675 to i32 
  %op677 = icmp ne i32  %op676, 0
  br i1  %op677, label %label679, label %label680
label678:                                                ; preds = %label693
  br label %label661
label679:                                                ; preds = %label665
  ret i32  0
label680:                                                ; preds = %label665
  %op681 = load i32 , i32 * @pos
  %op682 = add i32  %op681, 2
  %op683 = load i32 , i32 * @pos
  %op684 = add i32  %op683, 2
  %op685 = load i32 *, i32 ** %op4
  %op686 = getelementptr i32 , i32 * %op685, i32  %op682
  %op687 = load i32 , i32 * %op686
  %op688 = getelementptr [4 x i32 ], [4 x i32 ]* %op632, i32  0, i32  2
  %op689 = load i32 , i32 * %op688
  %op690 = icmp ne i32  %op687, %op689
  %op691 = zext i1  %op690 to i32 
  %op692 = icmp ne i32  %op691, 0
  br i1  %op692, label %label694, label %label695
label693:                                                ; preds = %label708
  br label %label678
label694:                                                ; preds = %label680
  ret i32  0
label695:                                                ; preds = %label680
  %op696 = load i32 , i32 * @pos
  %op697 = add i32  %op696, 3
  %op698 = load i32 , i32 * @pos
  %op699 = add i32  %op698, 3
  %op700 = load i32 *, i32 ** %op4
  %op701 = getelementptr i32 , i32 * %op700, i32  %op697
  %op702 = load i32 , i32 * %op701
  %op703 = getelementptr [4 x i32 ], [4 x i32 ]* %op632, i32  0, i32  3
  %op704 = load i32 , i32 * %op703
  %op705 = icmp ne i32  %op702, %op704
  %op706 = zext i1  %op705 to i32 
  %op707 = icmp ne i32  %op706, 0
  br i1  %op707, label %label709, label %label710
label708:                                                ; preds = %label710
  br label %label693
label709:                                                ; preds = %label695
  ret i32  0
label710:                                                ; preds = %label695
  br label %label708
label711:                                                ; preds = %label643
  %op712 = alloca [5 x i32 ]
  %op713 = getelementptr [5 x i32 ], [5 x i32 ]* %op712, i32  0, i32  0
  store i32  102, i32 * %op713
  %op714 = getelementptr [5 x i32 ], [5 x i32 ]* %op712, i32  0, i32  1
  store i32  97, i32 * %op714
  %op715 = getelementptr [5 x i32 ], [5 x i32 ]* %op712, i32  0, i32  2
  store i32  108, i32 * %op715
  %op716 = getelementptr [5 x i32 ], [5 x i32 ]* %op712, i32  0, i32  3
  store i32  115, i32 * %op716
  %op717 = getelementptr [5 x i32 ], [5 x i32 ]* %op712, i32  0, i32  4
  store i32  101, i32 * %op717
  %op718 = load i32 , i32 * @pos
  %op719 = add i32  %op718, 4
  %op720 = load i32 , i32 * %op5
  %op721 = icmp sge i32  %op719, %op720
  %op722 = zext i1  %op721 to i32 
  %op723 = icmp ne i32  %op722, 0
  br i1  %op723, label %label730, label %label731
label724:                                                ; preds = %label643
  %op725 = load i32 , i32 * %op3
  %op726 = icmp eq i32  %op725, 7
  %op727 = zext i1  %op726 to i32 
  %op728 = icmp ne i32  %op727, 0
  br i1  %op728, label %label807, label %label819
label729:                                                ; preds = %label742, %label820
  br label %label648
label730:                                                ; preds = %label711
  ret i32  0
label731:                                                ; preds = %label711
  %op732 = load i32 , i32 * @pos
  %op733 = load i32 , i32 * @pos
  %op734 = load i32 *, i32 ** %op4
  %op735 = getelementptr i32 , i32 * %op734, i32  %op732
  %op736 = load i32 , i32 * %op735
  %op737 = getelementptr [5 x i32 ], [5 x i32 ]* %op712, i32  0, i32  0
  %op738 = load i32 , i32 * %op737
  %op739 = icmp ne i32  %op736, %op738
  %op740 = zext i1  %op739 to i32 
  %op741 = icmp ne i32  %op740, 0
  br i1  %op741, label %label745, label %label746
label742:                                                ; preds = %label759
  %op743 = load i32 , i32 * @pos
  %op744 = add i32  %op743, 5
  store i32  %op744, i32 * @pos
  br label %label729
label745:                                                ; preds = %label731
  ret i32  0
label746:                                                ; preds = %label731
  %op747 = load i32 , i32 * @pos
  %op748 = add i32  %op747, 1
  %op749 = load i32 , i32 * @pos
  %op750 = add i32  %op749, 1
  %op751 = load i32 *, i32 ** %op4
  %op752 = getelementptr i32 , i32 * %op751, i32  %op748
  %op753 = load i32 , i32 * %op752
  %op754 = getelementptr [5 x i32 ], [5 x i32 ]* %op712, i32  0, i32  1
  %op755 = load i32 , i32 * %op754
  %op756 = icmp ne i32  %op753, %op755
  %op757 = zext i1  %op756 to i32 
  %op758 = icmp ne i32  %op757, 0
  br i1  %op758, label %label760, label %label761
label759:                                                ; preds = %label774
  br label %label742
label760:                                                ; preds = %label746
  ret i32  0
label761:                                                ; preds = %label746
  %op762 = load i32 , i32 * @pos
  %op763 = add i32  %op762, 2
  %op764 = load i32 , i32 * @pos
  %op765 = add i32  %op764, 2
  %op766 = load i32 *, i32 ** %op4
  %op767 = getelementptr i32 , i32 * %op766, i32  %op763
  %op768 = load i32 , i32 * %op767
  %op769 = getelementptr [5 x i32 ], [5 x i32 ]* %op712, i32  0, i32  2
  %op770 = load i32 , i32 * %op769
  %op771 = icmp ne i32  %op768, %op770
  %op772 = zext i1  %op771 to i32 
  %op773 = icmp ne i32  %op772, 0
  br i1  %op773, label %label775, label %label776
label774:                                                ; preds = %label789
  br label %label759
label775:                                                ; preds = %label761
  ret i32  0
label776:                                                ; preds = %label761
  %op777 = load i32 , i32 * @pos
  %op778 = add i32  %op777, 3
  %op779 = load i32 , i32 * @pos
  %op780 = add i32  %op779, 3
  %op781 = load i32 *, i32 ** %op4
  %op782 = getelementptr i32 , i32 * %op781, i32  %op778
  %op783 = load i32 , i32 * %op782
  %op784 = getelementptr [5 x i32 ], [5 x i32 ]* %op712, i32  0, i32  3
  %op785 = load i32 , i32 * %op784
  %op786 = icmp ne i32  %op783, %op785
  %op787 = zext i1  %op786 to i32 
  %op788 = icmp ne i32  %op787, 0
  br i1  %op788, label %label790, label %label791
label789:                                                ; preds = %label804
  br label %label774
label790:                                                ; preds = %label776
  ret i32  0
label791:                                                ; preds = %label776
  %op792 = load i32 , i32 * @pos
  %op793 = add i32  %op792, 4
  %op794 = load i32 , i32 * @pos
  %op795 = add i32  %op794, 4
  %op796 = load i32 *, i32 ** %op4
  %op797 = getelementptr i32 , i32 * %op796, i32  %op793
  %op798 = load i32 , i32 * %op797
  %op799 = getelementptr [5 x i32 ], [5 x i32 ]* %op712, i32  0, i32  4
  %op800 = load i32 , i32 * %op799
  %op801 = icmp ne i32  %op798, %op800
  %op802 = zext i1  %op801 to i32 
  %op803 = icmp ne i32  %op802, 0
  br i1  %op803, label %label805, label %label806
label804:                                                ; preds = %label806
  br label %label789
label805:                                                ; preds = %label791
  ret i32  0
label806:                                                ; preds = %label791
  br label %label804
label807:                                                ; preds = %label724
  %op808 = alloca [4 x i32 ]
  %op809 = getelementptr [4 x i32 ], [4 x i32 ]* %op808, i32  0, i32  0
  store i32  110, i32 * %op809
  %op810 = getelementptr [4 x i32 ], [4 x i32 ]* %op808, i32  0, i32  1
  store i32  117, i32 * %op810
  %op811 = getelementptr [4 x i32 ], [4 x i32 ]* %op808, i32  0, i32  2
  store i32  108, i32 * %op811
  %op812 = getelementptr [4 x i32 ], [4 x i32 ]* %op808, i32  0, i32  3
  store i32  108, i32 * %op812
  %op813 = load i32 , i32 * @pos
  %op814 = add i32  %op813, 3
  %op815 = load i32 , i32 * %op5
  %op816 = icmp sge i32  %op814, %op815
  %op817 = zext i1  %op816 to i32 
  %op818 = icmp ne i32  %op817, 0
  br i1  %op818, label %label821, label %label822
label819:                                                ; preds = %label724
  ret i32  0
label820:                                                ; preds = %label833
  br label %label729
label821:                                                ; preds = %label807
  ret i32  0
label822:                                                ; preds = %label807
  %op823 = load i32 , i32 * @pos
  %op824 = load i32 , i32 * @pos
  %op825 = load i32 *, i32 ** %op4
  %op826 = getelementptr i32 , i32 * %op825, i32  %op823
  %op827 = load i32 , i32 * %op826
  %op828 = getelementptr [4 x i32 ], [4 x i32 ]* %op808, i32  0, i32  0
  %op829 = load i32 , i32 * %op828
  %op830 = icmp ne i32  %op827, %op829
  %op831 = zext i1  %op830 to i32 
  %op832 = icmp ne i32  %op831, 0
  br i1  %op832, label %label836, label %label837
label833:                                                ; preds = %label850
  %op834 = load i32 , i32 * @pos
  %op835 = add i32  %op834, 4
  store i32  %op835, i32 * @pos
  br label %label820
label836:                                                ; preds = %label822
  ret i32  0
label837:                                                ; preds = %label822
  %op838 = load i32 , i32 * @pos
  %op839 = add i32  %op838, 1
  %op840 = load i32 , i32 * @pos
  %op841 = add i32  %op840, 1
  %op842 = load i32 *, i32 ** %op4
  %op843 = getelementptr i32 , i32 * %op842, i32  %op839
  %op844 = load i32 , i32 * %op843
  %op845 = getelementptr [4 x i32 ], [4 x i32 ]* %op808, i32  0, i32  1
  %op846 = load i32 , i32 * %op845
  %op847 = icmp ne i32  %op844, %op846
  %op848 = zext i1  %op847 to i32 
  %op849 = icmp ne i32  %op848, 0
  br i1  %op849, label %label851, label %label852
label850:                                                ; preds = %label865
  br label %label833
label851:                                                ; preds = %label837
  ret i32  0
label852:                                                ; preds = %label837
  %op853 = load i32 , i32 * @pos
  %op854 = add i32  %op853, 2
  %op855 = load i32 , i32 * @pos
  %op856 = add i32  %op855, 2
  %op857 = load i32 *, i32 ** %op4
  %op858 = getelementptr i32 , i32 * %op857, i32  %op854
  %op859 = load i32 , i32 * %op858
  %op860 = getelementptr [4 x i32 ], [4 x i32 ]* %op808, i32  0, i32  2
  %op861 = load i32 , i32 * %op860
  %op862 = icmp ne i32  %op859, %op861
  %op863 = zext i1  %op862 to i32 
  %op864 = icmp ne i32  %op863, 0
  br i1  %op864, label %label866, label %label867
label865:                                                ; preds = %label880
  br label %label850
label866:                                                ; preds = %label852
  ret i32  0
label867:                                                ; preds = %label852
  %op868 = load i32 , i32 * @pos
  %op869 = add i32  %op868, 3
  %op870 = load i32 , i32 * @pos
  %op871 = add i32  %op870, 3
  %op872 = load i32 *, i32 ** %op4
  %op873 = getelementptr i32 , i32 * %op872, i32  %op869
  %op874 = load i32 , i32 * %op873
  %op875 = getelementptr [4 x i32 ], [4 x i32 ]* %op808, i32  0, i32  3
  %op876 = load i32 , i32 * %op875
  %op877 = icmp ne i32  %op874, %op876
  %op878 = zext i1  %op877 to i32 
  %op879 = icmp ne i32  %op878, 0
  br i1  %op879, label %label881, label %label882
label880:                                                ; preds = %label882
  br label %label865
label881:                                                ; preds = %label867
  ret i32  0
label882:                                                ; preds = %label867
  br label %label880
}
define i32  @main() {
label_entry:
  %op0 = call i8  @getch()
  %op1 = alloca i8 
  store i8  %op0, i8 * %op1
  %op2 = alloca i32 
  store i32  0, i32 * %op2
  br label %label3
label3:                                                ; preds = %label_entry, %label9
  %op4 = load i8 , i8 * %op1
  %op5 = zext i8  %op4 to i32 
  %op6 = icmp ne i32  %op5, 35
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label18
label9:                                                ; preds = %label3
  %op10 = load i8 , i8 * %op1
  %op11 = load i32 , i32 * %op2
  %op12 = load i32 , i32 * %op2
  %op13 = getelementptr [50000000 x i32 ], [50000000 x i32 ]* @buffer, i32  0, i32  %op11
  %op14 = zext i8  %op10 to i32 
  store i32  %op14, i32 * %op13
  %op15 = load i32 , i32 * %op2
  %op16 = add i32  %op15, 1
  store i32  %op16, i32 * %op2
  %op17 = call i8  @getch()
  store i8  %op17, i8 * %op1
  br label %label3
label18:                                                ; preds = %label3
  %op19 = getelementptr [50000000 x i32 ], [50000000 x i32 ]* @buffer, i32  0, i32  0
  %op20 = load i32 , i32 * %op2
  call void @skip_space(i32 * %op19, i32  %op20)
  %op21 = getelementptr [50000000 x i32 ], [50000000 x i32 ]* @buffer, i32  0, i32  0
  %op22 = load i32 , i32 * %op2
  %op23 = call i32  @detect_item(i32  0, i32 * %op21, i32  %op22)
  %op24 = alloca i32 
  store i32  %op23, i32 * %op24
  %op25 = getelementptr [50000000 x i32 ], [50000000 x i32 ]* @buffer, i32  0, i32  0
  %op26 = load i32 , i32 * %op2
  call void @skip_space(i32 * %op25, i32  %op26)
  %op27 = load i32 , i32 * %op24
  %op28 = icmp ne i32  %op27, 0
  %op29 = zext i1  %op28 to i32 
  %op30 = icmp ne i32  %op29, 0
  br i1  %op30, label %label31, label %label35
label31:                                                ; preds = %label18
  %op32 = trunc i32  111 to i8 
  call void @putch(i8  %op32)
  %op33 = trunc i32  107 to i8 
  call void @putch(i8  %op33)
  %op34 = trunc i32  10 to i8 
  call void @putch(i8  %op34)
  ret i32  0
label35:                                                ; preds = %label18
  %op36 = trunc i32  110 to i8 
  call void @putch(i8  %op36)
  %op37 = trunc i32  111 to i8 
  call void @putch(i8  %op37)
  %op38 = trunc i32  116 to i8 
  call void @putch(i8  %op38)
  %op39 = trunc i32  32 to i8 
  call void @putch(i8  %op39)
  %op40 = trunc i32  111 to i8 
  call void @putch(i8  %op40)
  %op41 = trunc i32  107 to i8 
  call void @putch(i8  %op41)
  %op42 = trunc i32  10 to i8 
  call void @putch(i8  %op42)
  ret i32  1
}

; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/func/functional/60_sort_test6.sy"

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

define i32  @counting_sort(i32 * %arg0, i32 * %arg1, i32  %arg2) {
label_entry:
  %op3 = alloca i32 *
  store i32 * %arg0, i32 ** %op3
  %op4 = alloca i32 *
  store i32 * %arg1, i32 ** %op4
  %op5 = alloca i32 
  store i32  %arg2, i32 * %op5
  %op6 = alloca [10 x i32 ]
  %op7 = alloca i32 
  %op8 = alloca i32 
  %op9 = alloca i32 
  store i32  0, i32 * %op9
  store i32  0, i32 * %op7
  store i32  0, i32 * %op8
  br label %label10
label10:                                                ; preds = %label_entry, %label15
  %op11 = load i32 , i32 * %op9
  %op12 = icmp slt i32  %op11, 10
  %op13 = zext i1  %op12 to i32 
  %op14 = icmp ne i32  %op13, 0
  br i1  %op14, label %label15, label %label21
label15:                                                ; preds = %label10
  %op16 = load i32 , i32 * %op9
  %op17 = load i32 , i32 * %op9
  %op18 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op16
  store i32  0, i32 * %op18
  %op19 = load i32 , i32 * %op9
  %op20 = add i32  %op19, 1
  store i32  %op20, i32 * %op9
  br label %label10
label21:                                                ; preds = %label10
  br label %label22
label22:                                                ; preds = %label21, %label28
  %op23 = load i32 , i32 * %op7
  %op24 = load i32 , i32 * %op5
  %op25 = icmp slt i32  %op23, %op24
  %op26 = zext i1  %op25 to i32 
  %op27 = icmp ne i32  %op26, 0
  br i1  %op27, label %label28, label %label55
label28:                                                ; preds = %label22
  %op29 = load i32 , i32 * %op7
  %op30 = load i32 , i32 * %op7
  %op31 = load i32 *, i32 ** %op3
  %op32 = getelementptr i32 , i32 * %op31, i32  %op29
  %op33 = load i32 , i32 * %op32
  %op34 = load i32 , i32 * %op7
  %op35 = load i32 , i32 * %op7
  %op36 = load i32 *, i32 ** %op3
  %op37 = getelementptr i32 , i32 * %op36, i32  %op34
  %op38 = load i32 , i32 * %op37
  %op39 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op33
  %op40 = load i32 , i32 * %op39
  %op41 = add i32  %op40, 1
  %op42 = load i32 , i32 * %op7
  %op43 = load i32 , i32 * %op7
  %op44 = load i32 *, i32 ** %op3
  %op45 = getelementptr i32 , i32 * %op44, i32  %op42
  %op46 = load i32 , i32 * %op45
  %op47 = load i32 , i32 * %op7
  %op48 = load i32 , i32 * %op7
  %op49 = load i32 *, i32 ** %op3
  %op50 = getelementptr i32 , i32 * %op49, i32  %op47
  %op51 = load i32 , i32 * %op50
  %op52 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op46
  store i32  %op41, i32 * %op52
  %op53 = load i32 , i32 * %op7
  %op54 = add i32  %op53, 1
  store i32  %op54, i32 * %op7
  br label %label22
label55:                                                ; preds = %label22
  store i32  1, i32 * %op9
  br label %label56
label56:                                                ; preds = %label55, %label61
  %op57 = load i32 , i32 * %op9
  %op58 = icmp slt i32  %op57, 10
  %op59 = zext i1  %op58 to i32 
  %op60 = icmp ne i32  %op59, 0
  br i1  %op60, label %label61, label %label78
label61:                                                ; preds = %label56
  %op62 = load i32 , i32 * %op9
  %op63 = load i32 , i32 * %op9
  %op64 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op62
  %op65 = load i32 , i32 * %op64
  %op66 = load i32 , i32 * %op9
  %op67 = sub i32  %op66, 1
  %op68 = load i32 , i32 * %op9
  %op69 = sub i32  %op68, 1
  %op70 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op67
  %op71 = load i32 , i32 * %op70
  %op72 = add i32  %op65, %op71
  %op73 = load i32 , i32 * %op9
  %op74 = load i32 , i32 * %op9
  %op75 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op73
  store i32  %op72, i32 * %op75
  %op76 = load i32 , i32 * %op9
  %op77 = add i32  %op76, 1
  store i32  %op77, i32 * %op9
  br label %label56
label78:                                                ; preds = %label56
  %op79 = load i32 , i32 * %op5
  store i32  %op79, i32 * %op8
  br label %label80
label80:                                                ; preds = %label78, %label85
  %op81 = load i32 , i32 * %op8
  %op82 = icmp sgt i32  %op81, 0
  %op83 = zext i1  %op82 to i32 
  %op84 = icmp ne i32  %op83, 0
  br i1  %op84, label %label85, label %label161
label85:                                                ; preds = %label80
  %op86 = load i32 , i32 * %op8
  %op87 = sub i32  %op86, 1
  %op88 = load i32 , i32 * %op8
  %op89 = sub i32  %op88, 1
  %op90 = load i32 *, i32 ** %op3
  %op91 = getelementptr i32 , i32 * %op90, i32  %op87
  %op92 = load i32 , i32 * %op91
  %op93 = load i32 , i32 * %op8
  %op94 = sub i32  %op93, 1
  %op95 = load i32 , i32 * %op8
  %op96 = sub i32  %op95, 1
  %op97 = load i32 *, i32 ** %op3
  %op98 = getelementptr i32 , i32 * %op97, i32  %op94
  %op99 = load i32 , i32 * %op98
  %op100 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op92
  %op101 = load i32 , i32 * %op100
  %op102 = sub i32  %op101, 1
  %op103 = load i32 , i32 * %op8
  %op104 = sub i32  %op103, 1
  %op105 = load i32 , i32 * %op8
  %op106 = sub i32  %op105, 1
  %op107 = load i32 *, i32 ** %op3
  %op108 = getelementptr i32 , i32 * %op107, i32  %op104
  %op109 = load i32 , i32 * %op108
  %op110 = load i32 , i32 * %op8
  %op111 = sub i32  %op110, 1
  %op112 = load i32 , i32 * %op8
  %op113 = sub i32  %op112, 1
  %op114 = load i32 *, i32 ** %op3
  %op115 = getelementptr i32 , i32 * %op114, i32  %op111
  %op116 = load i32 , i32 * %op115
  %op117 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op109
  store i32  %op102, i32 * %op117
  %op118 = load i32 , i32 * %op8
  %op119 = sub i32  %op118, 1
  %op120 = load i32 , i32 * %op8
  %op121 = sub i32  %op120, 1
  %op122 = load i32 *, i32 ** %op3
  %op123 = getelementptr i32 , i32 * %op122, i32  %op119
  %op124 = load i32 , i32 * %op123
  %op125 = load i32 , i32 * %op8
  %op126 = sub i32  %op125, 1
  %op127 = load i32 , i32 * %op8
  %op128 = sub i32  %op127, 1
  %op129 = load i32 *, i32 ** %op3
  %op130 = getelementptr i32 , i32 * %op129, i32  %op126
  %op131 = load i32 , i32 * %op130
  %op132 = load i32 , i32 * %op8
  %op133 = sub i32  %op132, 1
  %op134 = load i32 , i32 * %op8
  %op135 = sub i32  %op134, 1
  %op136 = load i32 *, i32 ** %op3
  %op137 = getelementptr i32 , i32 * %op136, i32  %op133
  %op138 = load i32 , i32 * %op137
  %op139 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op131
  %op140 = load i32 , i32 * %op139
  %op141 = load i32 , i32 * %op8
  %op142 = sub i32  %op141, 1
  %op143 = load i32 , i32 * %op8
  %op144 = sub i32  %op143, 1
  %op145 = load i32 *, i32 ** %op3
  %op146 = getelementptr i32 , i32 * %op145, i32  %op142
  %op147 = load i32 , i32 * %op146
  %op148 = load i32 , i32 * %op8
  %op149 = sub i32  %op148, 1
  %op150 = load i32 , i32 * %op8
  %op151 = sub i32  %op150, 1
  %op152 = load i32 *, i32 ** %op3
  %op153 = getelementptr i32 , i32 * %op152, i32  %op149
  %op154 = load i32 , i32 * %op153
  %op155 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op147
  %op156 = load i32 , i32 * %op155
  %op157 = load i32 *, i32 ** %op4
  %op158 = getelementptr i32 , i32 * %op157, i32  %op140
  store i32  %op124, i32 * %op158
  %op159 = load i32 , i32 * %op8
  %op160 = sub i32  %op159, 1
  store i32  %op160, i32 * %op8
  br label %label80
label161:                                                ; preds = %label80
  ret i32  0
}
define i32  @main() {
label_entry:
  store i32  10, i32 * @n
  %op0 = alloca [10 x i32 ]
  %op1 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  0
  store i32  4, i32 * %op1
  %op2 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  1
  store i32  3, i32 * %op2
  %op3 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  2
  store i32  9, i32 * %op3
  %op4 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  3
  store i32  2, i32 * %op4
  %op5 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  4
  store i32  0, i32 * %op5
  %op6 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  5
  store i32  1, i32 * %op6
  %op7 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  6
  store i32  6, i32 * %op7
  %op8 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  7
  store i32  5, i32 * %op8
  %op9 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  8
  store i32  7, i32 * %op9
  %op10 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  9
  store i32  8, i32 * %op10
  %op11 = alloca i32 
  store i32  0, i32 * %op11
  %op12 = alloca [10 x i32 ]
  %op13 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  0
  %op14 = getelementptr [10 x i32 ], [10 x i32 ]* %op12, i32  0, i32  0
  %op15 = load i32 , i32 * @n
  %op16 = call i32  @counting_sort(i32 * %op13, i32 * %op14, i32  %op15)
  store i32  %op16, i32 * %op11
  br label %label17
label17:                                                ; preds = %label_entry, %label23
  %op18 = load i32 , i32 * %op11
  %op19 = load i32 , i32 * @n
  %op20 = icmp slt i32  %op18, %op19
  %op21 = zext i1  %op20 to i32 
  %op22 = icmp ne i32  %op21, 0
  br i1  %op22, label %label23, label %label34
label23:                                                ; preds = %label17
  %op24 = alloca i32 
  %op25 = load i32 , i32 * %op11
  %op26 = load i32 , i32 * %op11
  %op27 = getelementptr [10 x i32 ], [10 x i32 ]* %op12, i32  0, i32  %op25
  %op28 = load i32 , i32 * %op27
  store i32  %op28, i32 * %op24
  %op29 = load i32 , i32 * %op24
  call void @putint(i32  %op29)
  store i32  10, i32 * %op24
  %op30 = load i32 , i32 * %op24
  %op31 = trunc i32  %op30 to i8 
  call void @putch(i8  %op31)
  %op32 = load i32 , i32 * %op11
  %op33 = add i32  %op32, 1
  store i32  %op33, i32 * %op11
  br label %label17
label34:                                                ; preds = %label17
  ret i32  0
}

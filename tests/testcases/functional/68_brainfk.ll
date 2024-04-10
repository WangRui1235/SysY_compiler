; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/68_brainfk.sy"

@TAPE_LEN = global i32  65536
@BUFFER_LEN = global i32  32768
@tape = global [0 x i32 ] zeroinitializer
@program = global [0 x i32 ] zeroinitializer
@ptr = global i32  0
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

define void @read_program() {
label_entry:
  %op0 = alloca i32 
  %op1 = call i32  @getint()
  store i32  %op1, i32 * %op0
  %op2 = alloca i32 
  store i32  0, i32 * %op2
  br label %label3
label3:                                                ; preds = %label_entry, %label9
  %op4 = load i32 , i32 * %op2
  %op5 = load i32 , i32 * %op0
  %op6 = icmp slt i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label16
label9:                                                ; preds = %label3
  %op10 = call i8  @getch()
  %op11 = load i32 , i32 * %op2
  %op12 = getelementptr [0 x i32 ], [0 x i32 ]* @program, i32  0, i32  %op11
  %op13 = zext i8  %op10 to i32 
  store i32  %op13, i32 * %op12
  %op14 = load i32 , i32 * %op2
  %op15 = add i32  %op14, 1
  store i32  %op15, i32 * %op2
  br label %label3
label16:                                                ; preds = %label3
  %op17 = load i32 , i32 * %op2
  %op18 = getelementptr [0 x i32 ], [0 x i32 ]* @program, i32  0, i32  %op17
  store i32  0, i32 * %op18
  ret void
}
define void @interpret(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = alloca i32 
  store i32  0, i32 * %op2
  %op3 = alloca i32 
  %op4 = alloca i32 
  br label %label5
label5:                                                ; preds = %label_entry, %label29
  %op6 = load i32 , i32 * %op2
  %op7 = load i32 *, i32 ** %op1
  %op8 = getelementptr i32 , i32 * %op7, i32  %op6
  %op9 = load i32 , i32 * %op8
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label20
label11:                                                ; preds = %label5
  %op12 = load i32 , i32 * %op2
  %op13 = load i32 *, i32 ** %op1
  %op14 = getelementptr i32 , i32 * %op13, i32  %op12
  %op15 = load i32 , i32 * %op14
  store i32  %op15, i32 * %op4
  %op16 = load i32 , i32 * %op4
  %op17 = icmp eq i32  %op16, 62
  %op18 = zext i1  %op17 to i32 
  %op19 = icmp ne i32  %op18, 0
  br i1  %op19, label %label21, label %label24
label20:                                                ; preds = %label5
  ret void
label21:                                                ; preds = %label11
  %op22 = load i32 , i32 * @ptr
  %op23 = add i32  %op22, 1
  store i32  %op23, i32 * @ptr
  br label %label29
label24:                                                ; preds = %label11
  %op25 = load i32 , i32 * %op4
  %op26 = icmp eq i32  %op25, 60
  %op27 = zext i1  %op26 to i32 
  %op28 = icmp ne i32  %op27, 0
  br i1  %op28, label %label32, label %label35
label29:                                                ; preds = %label21, %label40
  %op30 = load i32 , i32 * %op2
  %op31 = add i32  %op30, 1
  store i32  %op31, i32 * %op2
  br label %label5
label32:                                                ; preds = %label24
  %op33 = load i32 , i32 * @ptr
  %op34 = sub i32  %op33, 1
  store i32  %op34, i32 * @ptr
  br label %label40
label35:                                                ; preds = %label24
  %op36 = load i32 , i32 * %op4
  %op37 = icmp eq i32  %op36, 43
  %op38 = zext i1  %op37 to i32 
  %op39 = icmp ne i32  %op38, 0
  br i1  %op39, label %label41, label %label48
label40:                                                ; preds = %label32, %label53
  br label %label29
label41:                                                ; preds = %label35
  %op42 = load i32 , i32 * @ptr
  %op43 = getelementptr [0 x i32 ], [0 x i32 ]* @tape, i32  0, i32  %op42
  %op44 = load i32 , i32 * %op43
  %op45 = add i32  %op44, 1
  %op46 = load i32 , i32 * @ptr
  %op47 = getelementptr [0 x i32 ], [0 x i32 ]* @tape, i32  0, i32  %op46
  store i32  %op45, i32 * %op47
  br label %label53
label48:                                                ; preds = %label35
  %op49 = load i32 , i32 * %op4
  %op50 = icmp eq i32  %op49, 45
  %op51 = zext i1  %op50 to i32 
  %op52 = icmp ne i32  %op51, 0
  br i1  %op52, label %label54, label %label61
label53:                                                ; preds = %label41, %label66
  br label %label40
label54:                                                ; preds = %label48
  %op55 = load i32 , i32 * @ptr
  %op56 = getelementptr [0 x i32 ], [0 x i32 ]* @tape, i32  0, i32  %op55
  %op57 = load i32 , i32 * %op56
  %op58 = sub i32  %op57, 1
  %op59 = load i32 , i32 * @ptr
  %op60 = getelementptr [0 x i32 ], [0 x i32 ]* @tape, i32  0, i32  %op59
  store i32  %op58, i32 * %op60
  br label %label66
label61:                                                ; preds = %label48
  %op62 = load i32 , i32 * %op4
  %op63 = icmp eq i32  %op62, 46
  %op64 = zext i1  %op63 to i32 
  %op65 = icmp ne i32  %op64, 0
  br i1  %op65, label %label67, label %label72
label66:                                                ; preds = %label54, %label77
  br label %label53
label67:                                                ; preds = %label61
  %op68 = load i32 , i32 * @ptr
  %op69 = getelementptr [0 x i32 ], [0 x i32 ]* @tape, i32  0, i32  %op68
  %op70 = load i32 , i32 * %op69
  %op71 = trunc i32  %op70 to i8 
  call void @putch(i8  %op71)
  br label %label77
label72:                                                ; preds = %label61
  %op73 = load i32 , i32 * %op4
  %op74 = icmp eq i32  %op73, 44
  %op75 = zext i1  %op74 to i32 
  %op76 = icmp ne i32  %op75, 0
  br i1  %op76, label %label78, label %label83
label77:                                                ; preds = %label67, %label88
  br label %label66
label78:                                                ; preds = %label72
  %op79 = call i8  @getch()
  %op80 = load i32 , i32 * @ptr
  %op81 = getelementptr [0 x i32 ], [0 x i32 ]* @tape, i32  0, i32  %op80
  %op82 = zext i8  %op79 to i32 
  store i32  %op82, i32 * %op81
  br label %label88
label83:                                                ; preds = %label72
  %op84 = load i32 , i32 * %op4
  %op85 = icmp eq i32  %op84, 93
  %op86 = zext i1  %op85 to i32 
  %op87 = icmp ne i32  %op86, 0
  br i1  %op87, label %label91, label %label90
label88:                                                ; preds = %label78, %label90
  br label %label77
label89:                                                ; preds = %label91
  store i32  1, i32 * %op3
  br label %label96
label90:                                                ; preds = %label83, %label91, %label112
  br label %label88
label91:                                                ; preds = %label83
  %op92 = load i32 , i32 * @ptr
  %op93 = getelementptr [0 x i32 ], [0 x i32 ]* @tape, i32  0, i32  %op92
  %op94 = load i32 , i32 * %op93
  %op95 = icmp ne i32  %op94, 0
  br i1  %op95, label %label89, label %label90
label96:                                                ; preds = %label89, %label121
  %op97 = load i32 , i32 * %op3
  %op98 = icmp sgt i32  %op97, 0
  %op99 = zext i1  %op98 to i32 
  %op100 = icmp ne i32  %op99, 0
  br i1  %op100, label %label101, label %label112
label101:                                                ; preds = %label96
  %op102 = load i32 , i32 * %op2
  %op103 = sub i32  %op102, 1
  store i32  %op103, i32 * %op2
  %op104 = load i32 , i32 * %op2
  %op105 = load i32 *, i32 ** %op1
  %op106 = getelementptr i32 , i32 * %op105, i32  %op104
  %op107 = load i32 , i32 * %op106
  store i32  %op107, i32 * %op4
  %op108 = load i32 , i32 * %op4
  %op109 = icmp eq i32  %op108, 91
  %op110 = zext i1  %op109 to i32 
  %op111 = icmp ne i32  %op110, 0
  br i1  %op111, label %label113, label %label116
label112:                                                ; preds = %label96
  br label %label90
label113:                                                ; preds = %label101
  %op114 = load i32 , i32 * %op3
  %op115 = sub i32  %op114, 1
  store i32  %op115, i32 * %op3
  br label %label121
label116:                                                ; preds = %label101
  %op117 = load i32 , i32 * %op4
  %op118 = icmp eq i32  %op117, 93
  %op119 = zext i1  %op118 to i32 
  %op120 = icmp ne i32  %op119, 0
  br i1  %op120, label %label122, label %label125
label121:                                                ; preds = %label113, %label125
  br label %label96
label122:                                                ; preds = %label116
  %op123 = load i32 , i32 * %op3
  %op124 = add i32  %op123, 1
  store i32  %op124, i32 * %op3
  br label %label125
label125:                                                ; preds = %label116, %label122
  br label %label121
}
define i32  @main() {
label_entry:
  call void @read_program()
  %op0 = getelementptr [0 x i32 ], [0 x i32 ]* @program, i32  0, i32  0
  call void @interpret(i32 * %op0)
  ret i32  0
}

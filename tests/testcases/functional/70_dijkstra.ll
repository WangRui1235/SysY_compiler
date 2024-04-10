; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/70_dijkstra.sy"

@INF = global i32  65535
@e = global [16 x [16 x i32 ]] zeroinitializer
@book = global [16 x i32 ] zeroinitializer
@dis = global [16 x i32 ] zeroinitializer
@n = global i32  zeroinitializer
@m = global i32  zeroinitializer
@v1 = global i32  zeroinitializer
@v2 = global i32  zeroinitializer
@w = global i32  zeroinitializer
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

define void @Dijkstra() {
label_entry:
  %op0 = alloca i32 
  %op1 = alloca i32 
  store i32  1, i32 * %op1
  br label %label2
label2:                                                ; preds = %label_entry, %label8
  %op3 = load i32 , i32 * %op1
  %op4 = load i32 , i32 * @n
  %op5 = icmp sle i32  %op3, %op4
  %op6 = zext i1  %op5 to i32 
  %op7 = icmp ne i32  %op6, 0
  br i1  %op7, label %label8, label %label19
label8:                                                ; preds = %label2
  %op9 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* @e, i32  0, i32  1
  %op10 = load i32 , i32 * %op1
  %op11 = getelementptr [16 x i32 ], [16 x i32 ]* %op9, i32  0, i32  %op10
  %op12 = load i32 , i32 * %op11
  %op13 = load i32 , i32 * %op1
  %op14 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op13
  store i32  %op12, i32 * %op14
  %op15 = load i32 , i32 * %op1
  %op16 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32  0, i32  %op15
  store i32  0, i32 * %op16
  %op17 = load i32 , i32 * %op1
  %op18 = add i32  %op17, 1
  store i32  %op18, i32 * %op1
  br label %label2
label19:                                                ; preds = %label2
  %op20 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32  0, i32  1
  store i32  1, i32 * %op20
  store i32  1, i32 * %op1
  br label %label21
label21:                                                ; preds = %label19, %label83
  %op22 = load i32 , i32 * %op1
  %op23 = load i32 , i32 * @n
  %op24 = sub i32  %op23, 1
  %op25 = icmp sle i32  %op22, %op24
  %op26 = zext i1  %op25 to i32 
  %op27 = icmp ne i32  %op26, 0
  br i1  %op27, label %label28, label %label33
label28:                                                ; preds = %label21
  %op29 = alloca i32 
  %op30 = load i32 , i32 * @INF
  store i32  %op30, i32 * %op29
  %op31 = alloca i32 
  store i32  0, i32 * %op31
  %op32 = alloca i32 
  store i32  1, i32 * %op32
  br label %label34
label33:                                                ; preds = %label21
  ret void
label34:                                                ; preds = %label28, %label57
  %op35 = load i32 , i32 * %op32
  %op36 = load i32 , i32 * @n
  %op37 = icmp sle i32  %op35, %op36
  %op38 = zext i1  %op37 to i32 
  %op39 = icmp ne i32  %op38, 0
  br i1  %op39, label %label40, label %label48
label40:                                                ; preds = %label34
  %op41 = load i32 , i32 * %op29
  %op42 = load i32 , i32 * %op32
  %op43 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op42
  %op44 = load i32 , i32 * %op43
  %op45 = icmp sgt i32  %op41, %op44
  %op46 = zext i1  %op45 to i32 
  %op47 = icmp ne i32  %op46, 0
  br i1  %op47, label %label60, label %label57
label48:                                                ; preds = %label34
  %op49 = load i32 , i32 * %op31
  %op50 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32  0, i32  %op49
  store i32  1, i32 * %op50
  %op51 = alloca i32 
  store i32  1, i32 * %op51
  br label %label67
label52:                                                ; preds = %label60
  %op53 = load i32 , i32 * %op32
  %op54 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op53
  %op55 = load i32 , i32 * %op54
  store i32  %op55, i32 * %op29
  %op56 = load i32 , i32 * %op32
  store i32  %op56, i32 * %op31
  br label %label57
label57:                                                ; preds = %label40, %label60, %label52
  %op58 = load i32 , i32 * %op32
  %op59 = add i32  %op58, 1
  store i32  %op59, i32 * %op32
  br label %label34
label60:                                                ; preds = %label40
  %op61 = load i32 , i32 * %op32
  %op62 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32  0, i32  %op61
  %op63 = load i32 , i32 * %op62
  %op64 = icmp eq i32  %op63, 0
  %op65 = zext i1  %op64 to i32 
  %op66 = icmp ne i32  %op65, 0
  br i1  %op66, label %label52, label %label57
label67:                                                ; preds = %label48, %label102
  %op68 = load i32 , i32 * %op51
  %op69 = load i32 , i32 * @n
  %op70 = icmp sle i32  %op68, %op69
  %op71 = zext i1  %op70 to i32 
  %op72 = icmp ne i32  %op71, 0
  br i1  %op72, label %label73, label %label83
label73:                                                ; preds = %label67
  %op74 = load i32 , i32 * %op31
  %op75 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* @e, i32  0, i32  %op74
  %op76 = load i32 , i32 * %op51
  %op77 = getelementptr [16 x i32 ], [16 x i32 ]* %op75, i32  0, i32  %op76
  %op78 = load i32 , i32 * %op77
  %op79 = load i32 , i32 * @INF
  %op80 = icmp slt i32  %op78, %op79
  %op81 = zext i1  %op80 to i32 
  %op82 = icmp ne i32  %op81, 0
  br i1  %op82, label %label86, label %label102
label83:                                                ; preds = %label67
  %op84 = load i32 , i32 * %op1
  %op85 = add i32  %op84, 1
  store i32  %op85, i32 * %op1
  br label %label21
label86:                                                ; preds = %label73
  %op87 = load i32 , i32 * %op51
  %op88 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op87
  %op89 = load i32 , i32 * %op88
  %op90 = load i32 , i32 * %op31
  %op91 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op90
  %op92 = load i32 , i32 * %op91
  %op93 = load i32 , i32 * %op31
  %op94 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* @e, i32  0, i32  %op93
  %op95 = load i32 , i32 * %op51
  %op96 = getelementptr [16 x i32 ], [16 x i32 ]* %op94, i32  0, i32  %op95
  %op97 = load i32 , i32 * %op96
  %op98 = add i32  %op92, %op97
  %op99 = icmp sgt i32  %op89, %op98
  %op100 = zext i1  %op99 to i32 
  %op101 = icmp ne i32  %op100, 0
  br i1  %op101, label %label105, label %label117
label102:                                                ; preds = %label73, %label117
  %op103 = load i32 , i32 * %op51
  %op104 = add i32  %op103, 1
  store i32  %op104, i32 * %op51
  br label %label67
label105:                                                ; preds = %label86
  %op106 = load i32 , i32 * %op31
  %op107 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op106
  %op108 = load i32 , i32 * %op107
  %op109 = load i32 , i32 * %op31
  %op110 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* @e, i32  0, i32  %op109
  %op111 = load i32 , i32 * %op51
  %op112 = getelementptr [16 x i32 ], [16 x i32 ]* %op110, i32  0, i32  %op111
  %op113 = load i32 , i32 * %op112
  %op114 = add i32  %op108, %op113
  %op115 = load i32 , i32 * %op51
  %op116 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op115
  store i32  %op114, i32 * %op116
  br label %label117
label117:                                                ; preds = %label86, %label105
  br label %label102
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  %op1 = call i32  @getint()
  store i32  %op1, i32 * @n
  %op2 = call i32  @getint()
  store i32  %op2, i32 * @m
  store i32  1, i32 * %op0
  br label %label3
label3:                                                ; preds = %label_entry, %label24
  %op4 = load i32 , i32 * %op0
  %op5 = load i32 , i32 * @n
  %op6 = icmp sle i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label11
label9:                                                ; preds = %label3
  %op10 = alloca i32 
  store i32  1, i32 * %op10
  br label %label12
label11:                                                ; preds = %label3
  store i32  1, i32 * %op0
  br label %label41
label12:                                                ; preds = %label9, %label38
  %op13 = load i32 , i32 * %op10
  %op14 = load i32 , i32 * @n
  %op15 = icmp sle i32  %op13, %op14
  %op16 = zext i1  %op15 to i32 
  %op17 = icmp ne i32  %op16, 0
  br i1  %op17, label %label18, label %label24
label18:                                                ; preds = %label12
  %op19 = load i32 , i32 * %op0
  %op20 = load i32 , i32 * %op10
  %op21 = icmp eq i32  %op19, %op20
  %op22 = zext i1  %op21 to i32 
  %op23 = icmp ne i32  %op22, 0
  br i1  %op23, label %label27, label %label32
label24:                                                ; preds = %label12
  %op25 = load i32 , i32 * %op0
  %op26 = add i32  %op25, 1
  store i32  %op26, i32 * %op0
  br label %label3
label27:                                                ; preds = %label18
  %op28 = load i32 , i32 * %op0
  %op29 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* @e, i32  0, i32  %op28
  %op30 = load i32 , i32 * %op10
  %op31 = getelementptr [16 x i32 ], [16 x i32 ]* %op29, i32  0, i32  %op30
  store i32  0, i32 * %op31
  br label %label38
label32:                                                ; preds = %label18
  %op33 = load i32 , i32 * @INF
  %op34 = load i32 , i32 * %op0
  %op35 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* @e, i32  0, i32  %op34
  %op36 = load i32 , i32 * %op10
  %op37 = getelementptr [16 x i32 ], [16 x i32 ]* %op35, i32  0, i32  %op36
  store i32  %op33, i32 * %op37
  br label %label38
label38:                                                ; preds = %label27, %label32
  %op39 = load i32 , i32 * %op10
  %op40 = add i32  %op39, 1
  store i32  %op40, i32 * %op10
  br label %label12
label41:                                                ; preds = %label11, %label47
  %op42 = load i32 , i32 * %op0
  %op43 = load i32 , i32 * @m
  %op44 = icmp sle i32  %op42, %op43
  %op45 = zext i1  %op44 to i32 
  %op46 = icmp ne i32  %op45, 0
  br i1  %op46, label %label47, label %label59
label47:                                                ; preds = %label41
  %op48 = alloca i32 
  %op49 = call i32  @getint()
  store i32  %op49, i32 * %op48
  %op50 = alloca i32 
  %op51 = call i32  @getint()
  store i32  %op51, i32 * %op50
  %op52 = call i32  @getint()
  %op53 = load i32 , i32 * %op50
  %op54 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* @e, i32  0, i32  %op53
  %op55 = load i32 , i32 * %op48
  %op56 = getelementptr [16 x i32 ], [16 x i32 ]* %op54, i32  0, i32  %op55
  store i32  %op52, i32 * %op56
  %op57 = load i32 , i32 * %op0
  %op58 = add i32  %op57, 1
  store i32  %op58, i32 * %op0
  br label %label41
label59:                                                ; preds = %label41
  call void @Dijkstra()
  store i32  1, i32 * %op0
  br label %label60
label60:                                                ; preds = %label59, %label66
  %op61 = load i32 , i32 * %op0
  %op62 = load i32 , i32 * @n
  %op63 = icmp sle i32  %op61, %op62
  %op64 = zext i1  %op63 to i32 
  %op65 = icmp ne i32  %op64, 0
  br i1  %op65, label %label66, label %label73
label66:                                                ; preds = %label60
  %op67 = load i32 , i32 * %op0
  %op68 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op67
  %op69 = load i32 , i32 * %op68
  call void @putint(i32  %op69)
  %op70 = trunc i32  32 to i8 
  call void @putch(i8  %op70)
  %op71 = load i32 , i32 * %op0
  %op72 = add i32  %op71, 1
  store i32  %op72, i32 * %op0
  br label %label60
label73:                                                ; preds = %label60
  %op74 = trunc i32  10 to i8 
  call void @putch(i8  %op74)
  ret i32  0
}

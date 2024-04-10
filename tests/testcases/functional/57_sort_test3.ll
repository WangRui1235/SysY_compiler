; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/57_sort_test3.sy"

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

define i32  @QuickSort(i32 * %arg0, i32  %arg1, i32  %arg2) {
label_entry:
  %op3 = alloca i32 *
  store i32 * %arg0, i32 ** %op3
  %op4 = alloca i32 
  store i32  %arg1, i32 * %op4
  %op5 = alloca i32 
  store i32  %arg2, i32 * %op5
  %op6 = load i32 , i32 * %op4
  %op7 = load i32 , i32 * %op5
  %op8 = icmp slt i32  %op6, %op7
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label21
label11:                                                ; preds = %label_entry
  %op12 = alloca i32 
  %op13 = load i32 , i32 * %op4
  store i32  %op13, i32 * %op12
  %op14 = alloca i32 
  %op15 = load i32 , i32 * %op5
  store i32  %op15, i32 * %op14
  %op16 = alloca i32 
  %op17 = load i32 , i32 * %op4
  %op18 = load i32 *, i32 ** %op3
  %op19 = getelementptr i32 , i32 * %op18, i32  %op17
  %op20 = load i32 , i32 * %op19
  store i32  %op20, i32 * %op16
  br label %label22
label21:                                                ; preds = %label_entry, %label29
  ret i32  0
label22:                                                ; preds = %label11, %label117
  %op23 = load i32 , i32 * %op12
  %op24 = load i32 , i32 * %op14
  %op25 = icmp slt i32  %op23, %op24
  %op26 = zext i1  %op25 to i32 
  %op27 = icmp ne i32  %op26, 0
  br i1  %op27, label %label28, label %label29
label28:                                                ; preds = %label22
  br label %label47
label29:                                                ; preds = %label22
  %op30 = load i32 , i32 * %op16
  %op31 = load i32 , i32 * %op12
  %op32 = load i32 *, i32 ** %op3
  %op33 = getelementptr i32 , i32 * %op32, i32  %op31
  store i32  %op30, i32 * %op33
  %op34 = alloca i32 
  %op35 = load i32 , i32 * %op12
  %op36 = sub i32  %op35, 1
  store i32  %op36, i32 * %op34
  %op37 = load i32 *, i32 ** %op3
  %op38 = load i32 , i32 * %op4
  %op39 = load i32 , i32 * %op34
  %op40 = call i32  @QuickSort(i32 * %op37, i32  %op38, i32  %op39)
  store i32  %op40, i32 * %op34
  %op41 = load i32 , i32 * %op12
  %op42 = add i32  %op41, 1
  store i32  %op42, i32 * %op34
  %op43 = load i32 *, i32 ** %op3
  %op44 = load i32 , i32 * %op34
  %op45 = load i32 , i32 * %op5
  %op46 = call i32  @QuickSort(i32 * %op43, i32  %op44, i32  %op45)
  store i32  %op46, i32 * %op34
  br label %label21
label47:                                                ; preds = %label28, %label53
  %op48 = load i32 , i32 * %op12
  %op49 = load i32 , i32 * %op14
  %op50 = icmp slt i32  %op48, %op49
  %op51 = zext i1  %op50 to i32 
  %op52 = icmp ne i32  %op51, 0
  br i1  %op52, label %label62, label %label56
label53:                                                ; preds = %label62
  %op54 = load i32 , i32 * %op14
  %op55 = sub i32  %op54, 1
  store i32  %op55, i32 * %op14
  br label %label47
label56:                                                ; preds = %label47, %label62
  %op57 = load i32 , i32 * %op12
  %op58 = load i32 , i32 * %op14
  %op59 = icmp slt i32  %op57, %op58
  %op60 = zext i1  %op59 to i32 
  %op61 = icmp ne i32  %op60, 0
  br i1  %op61, label %label72, label %label82
label62:                                                ; preds = %label47
  %op63 = load i32 , i32 * %op14
  %op64 = load i32 *, i32 ** %op3
  %op65 = getelementptr i32 , i32 * %op64, i32  %op63
  %op66 = load i32 , i32 * %op65
  %op67 = load i32 , i32 * %op16
  %op68 = sub i32  %op67, 1
  %op69 = icmp sgt i32  %op66, %op68
  %op70 = zext i1  %op69 to i32 
  %op71 = icmp ne i32  %op70, 0
  br i1  %op71, label %label53, label %label56
label72:                                                ; preds = %label56
  %op73 = load i32 , i32 * %op14
  %op74 = load i32 *, i32 ** %op3
  %op75 = getelementptr i32 , i32 * %op74, i32  %op73
  %op76 = load i32 , i32 * %op75
  %op77 = load i32 , i32 * %op12
  %op78 = load i32 *, i32 ** %op3
  %op79 = getelementptr i32 , i32 * %op78, i32  %op77
  store i32  %op76, i32 * %op79
  %op80 = load i32 , i32 * %op12
  %op81 = add i32  %op80, 1
  store i32  %op81, i32 * %op12
  br label %label82
label82:                                                ; preds = %label56, %label72
  br label %label83
label83:                                                ; preds = %label82, %label89
  %op84 = load i32 , i32 * %op12
  %op85 = load i32 , i32 * %op14
  %op86 = icmp slt i32  %op84, %op85
  %op87 = zext i1  %op86 to i32 
  %op88 = icmp ne i32  %op87, 0
  br i1  %op88, label %label98, label %label92
label89:                                                ; preds = %label98
  %op90 = load i32 , i32 * %op12
  %op91 = add i32  %op90, 1
  store i32  %op91, i32 * %op12
  br label %label83
label92:                                                ; preds = %label83, %label98
  %op93 = load i32 , i32 * %op12
  %op94 = load i32 , i32 * %op14
  %op95 = icmp slt i32  %op93, %op94
  %op96 = zext i1  %op95 to i32 
  %op97 = icmp ne i32  %op96, 0
  br i1  %op97, label %label107, label %label117
label98:                                                ; preds = %label83
  %op99 = load i32 , i32 * %op12
  %op100 = load i32 *, i32 ** %op3
  %op101 = getelementptr i32 , i32 * %op100, i32  %op99
  %op102 = load i32 , i32 * %op101
  %op103 = load i32 , i32 * %op16
  %op104 = icmp slt i32  %op102, %op103
  %op105 = zext i1  %op104 to i32 
  %op106 = icmp ne i32  %op105, 0
  br i1  %op106, label %label89, label %label92
label107:                                                ; preds = %label92
  %op108 = load i32 , i32 * %op12
  %op109 = load i32 *, i32 ** %op3
  %op110 = getelementptr i32 , i32 * %op109, i32  %op108
  %op111 = load i32 , i32 * %op110
  %op112 = load i32 , i32 * %op14
  %op113 = load i32 *, i32 ** %op3
  %op114 = getelementptr i32 , i32 * %op113, i32  %op112
  store i32  %op111, i32 * %op114
  %op115 = load i32 , i32 * %op14
  %op116 = sub i32  %op115, 1
  store i32  %op116, i32 * %op14
  br label %label117
label117:                                                ; preds = %label92, %label107
  br label %label22
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
  %op12 = alloca i32 
  store i32  9, i32 * %op12
  %op13 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  0
  %op14 = load i32 , i32 * %op11
  %op15 = load i32 , i32 * %op12
  %op16 = call i32  @QuickSort(i32 * %op13, i32  %op14, i32  %op15)
  store i32  %op16, i32 * %op11
  br label %label17
label17:                                                ; preds = %label_entry, %label23
  %op18 = load i32 , i32 * %op11
  %op19 = load i32 , i32 * @n
  %op20 = icmp slt i32  %op18, %op19
  %op21 = zext i1  %op20 to i32 
  %op22 = icmp ne i32  %op21, 0
  br i1  %op22, label %label23, label %label33
label23:                                                ; preds = %label17
  %op24 = alloca i32 
  %op25 = load i32 , i32 * %op11
  %op26 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  %op25
  %op27 = load i32 , i32 * %op26
  store i32  %op27, i32 * %op24
  %op28 = load i32 , i32 * %op24
  call void @putint(i32  %op28)
  store i32  10, i32 * %op24
  %op29 = load i32 , i32 * %op24
  %op30 = trunc i32  %op29 to i8 
  call void @putch(i8  %op30)
  %op31 = load i32 , i32 * %op11
  %op32 = add i32  %op31, 1
  store i32  %op32, i32 * %op11
  br label %label17
label33:                                                ; preds = %label17
  ret i32  0
}

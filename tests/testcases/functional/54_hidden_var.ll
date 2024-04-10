; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/54_hidden_var.sy"

@b = global i32  5
@c = global [4 x i32 ] [i32  6, i32  7, i32  8, i32  9]
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

define i32  @main() {
label_entry:
  %op0 = alloca i32 
  store i32  1, i32 * %op0
  %op1 = alloca i32 
  store i32  2, i32 * %op1
  store i32  3, i32 * %op1
  %op2 = load i32 , i32 * %op1
  call void @putint(i32  %op2)
  %op3 = load i32 , i32 * %op1
  call void @putint(i32  %op3)
  %op4 = load i32 , i32 * %op0
  call void @putint(i32  %op4)
  %op5 = trunc i32  10 to i8 
  call void @putch(i8  %op5)
  br label %label6
label6:                                                ; preds = %label_entry, %label47
  %op7 = load i32 , i32 * %op0
  %op8 = icmp slt i32  %op7, 5
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label17
label11:                                                ; preds = %label6
  %op12 = alloca i32 
  store i32  0, i32 * %op12
  %op13 = load i32 , i32 * %op12
  %op14 = add i32  %op13, 1
  store i32  %op14, i32 * %op12
  %op15 = load i32 , i32 * %op12
  %op16 = icmp ne i32  %op15, 0
  br i1  %op16, label %label46, label %label47
label17:                                                ; preds = %label6, %label46
  %op18 = load i32 , i32 * %op0
  call void @putint(i32  %op18)
  %op19 = trunc i32  10 to i8 
  call void @putch(i8  %op19)
  %op20 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  2
  store i32  1, i32 * %op20
  %op21 = alloca [2 x [8 x i32 ]]
  %op22 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op21, i32  0, i32  0, i32  0
  store i32  0, i32 * %op22
  %op23 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op21, i32  0, i32  0, i32  1
  store i32  0, i32 * %op23
  %op24 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op21, i32  0, i32  0, i32  2
  store i32  0, i32 * %op24
  %op25 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op21, i32  0, i32  0, i32  3
  store i32  0, i32 * %op25
  %op26 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op21, i32  0, i32  0, i32  4
  store i32  0, i32 * %op26
  %op27 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op21, i32  0, i32  0, i32  5
  store i32  0, i32 * %op27
  %op28 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op21, i32  0, i32  0, i32  6
  store i32  0, i32 * %op28
  %op29 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op21, i32  0, i32  0, i32  7
  store i32  0, i32 * %op29
  %op30 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op21, i32  0, i32  1, i32  0
  store i32  0, i32 * %op30
  %op31 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op21, i32  0, i32  1, i32  1
  store i32  0, i32 * %op31
  %op32 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op21, i32  0, i32  1, i32  2
  store i32  0, i32 * %op32
  %op33 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op21, i32  0, i32  1, i32  3
  store i32  0, i32 * %op33
  %op34 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op21, i32  0, i32  1, i32  4
  store i32  0, i32 * %op34
  %op35 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op21, i32  0, i32  1, i32  5
  store i32  0, i32 * %op35
  %op36 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op21, i32  0, i32  1, i32  6
  store i32  0, i32 * %op36
  %op37 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op21, i32  0, i32  1, i32  7
  store i32  0, i32 * %op37
  %op38 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op21, i32  0, i32  0, i32  0
  store i32  0, i32 * %op38
  %op39 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op21, i32  0, i32  0, i32  1
  store i32  9, i32 * %op39
  %op40 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op21, i32  0, i32  1, i32  0
  store i32  8, i32 * %op40
  %op41 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op21, i32  0, i32  1, i32  1
  store i32  3, i32 * %op41
  %op42 = alloca i32 
  store i32  2, i32 * %op42
  %op43 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  2
  %op44 = load i32 , i32 * %op43
  %op45 = icmp ne i32  %op44, 0
  br i1  %op45, label %label48, label %label103
label46:                                                ; preds = %label11
  br label %label17
label47:                                                ; preds = %label11
  br label %label6
label48:                                                ; preds = %label17
  %op49 = alloca [7 x [1 x [5 x i32 ]]]
  %op50 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  0, i32  0, i32  0
  store i32  0, i32 * %op50
  %op51 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  0, i32  0, i32  1
  store i32  0, i32 * %op51
  %op52 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  0, i32  0, i32  2
  store i32  0, i32 * %op52
  %op53 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  0, i32  0, i32  3
  store i32  0, i32 * %op53
  %op54 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  0, i32  0, i32  4
  store i32  0, i32 * %op54
  %op55 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  1, i32  0, i32  0
  store i32  0, i32 * %op55
  %op56 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  1, i32  0, i32  1
  store i32  0, i32 * %op56
  %op57 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  1, i32  0, i32  2
  store i32  0, i32 * %op57
  %op58 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  1, i32  0, i32  3
  store i32  0, i32 * %op58
  %op59 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  1, i32  0, i32  4
  store i32  0, i32 * %op59
  %op60 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  2, i32  0, i32  0
  store i32  0, i32 * %op60
  %op61 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  2, i32  0, i32  1
  store i32  0, i32 * %op61
  %op62 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  2, i32  0, i32  2
  store i32  0, i32 * %op62
  %op63 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  2, i32  0, i32  3
  store i32  0, i32 * %op63
  %op64 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  2, i32  0, i32  4
  store i32  0, i32 * %op64
  %op65 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  3, i32  0, i32  0
  store i32  0, i32 * %op65
  %op66 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  3, i32  0, i32  1
  store i32  0, i32 * %op66
  %op67 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  3, i32  0, i32  2
  store i32  0, i32 * %op67
  %op68 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  3, i32  0, i32  3
  store i32  0, i32 * %op68
  %op69 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  3, i32  0, i32  4
  store i32  0, i32 * %op69
  %op70 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  4, i32  0, i32  0
  store i32  0, i32 * %op70
  %op71 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  4, i32  0, i32  1
  store i32  0, i32 * %op71
  %op72 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  4, i32  0, i32  2
  store i32  0, i32 * %op72
  %op73 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  4, i32  0, i32  3
  store i32  0, i32 * %op73
  %op74 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  4, i32  0, i32  4
  store i32  0, i32 * %op74
  %op75 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  5, i32  0, i32  0
  store i32  0, i32 * %op75
  %op76 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  5, i32  0, i32  1
  store i32  0, i32 * %op76
  %op77 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  5, i32  0, i32  2
  store i32  0, i32 * %op77
  %op78 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  5, i32  0, i32  3
  store i32  0, i32 * %op78
  %op79 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  5, i32  0, i32  4
  store i32  0, i32 * %op79
  %op80 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  6, i32  0, i32  0
  store i32  0, i32 * %op80
  %op81 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  6, i32  0, i32  1
  store i32  0, i32 * %op81
  %op82 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  6, i32  0, i32  2
  store i32  0, i32 * %op82
  %op83 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  6, i32  0, i32  3
  store i32  0, i32 * %op83
  %op84 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  6, i32  0, i32  4
  store i32  0, i32 * %op84
  %op85 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  2, i32  0, i32  0
  store i32  2, i32 * %op85
  %op86 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  2, i32  0, i32  1
  store i32  1, i32 * %op86
  %op87 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  2, i32  0, i32  2
  store i32  8, i32 * %op87
  %op88 = load i32 , i32 * %op42
  %op89 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  %op88
  %op90 = getelementptr [1 x [5 x i32 ]], [1 x [5 x i32 ]]* %op89, i32  0, i32  0
  %op91 = getelementptr [5 x i32 ], [5 x i32 ]* %op90, i32  0, i32  0
  %op92 = load i32 , i32 * %op91
  call void @putint(i32  %op92)
  %op93 = load i32 , i32 * %op42
  %op94 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  %op93
  %op95 = getelementptr [1 x [5 x i32 ]], [1 x [5 x i32 ]]* %op94, i32  0, i32  0
  %op96 = getelementptr [5 x i32 ], [5 x i32 ]* %op95, i32  0, i32  1
  %op97 = load i32 , i32 * %op96
  call void @putint(i32  %op97)
  %op98 = load i32 , i32 * %op42
  %op99 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op49, i32  0, i32  %op98
  %op100 = getelementptr [1 x [5 x i32 ]], [1 x [5 x i32 ]]* %op99, i32  0, i32  0
  %op101 = getelementptr [5 x i32 ], [5 x i32 ]* %op100, i32  0, i32  2
  %op102 = load i32 , i32 * %op101
  call void @putint(i32  %op102)
  br label %label103
label103:                                                ; preds = %label17, %label48
  %op104 = trunc i32  10 to i8 
  call void @putch(i8  %op104)
  %op105 = load i32 , i32 * @b
  call void @putint(i32  %op105)
  %op106 = trunc i32  10 to i8 
  call void @putch(i8  %op106)
  %op107 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  0
  %op108 = load i32 , i32 * %op107
  call void @putint(i32  %op108)
  %op109 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  1
  %op110 = load i32 , i32 * %op109
  call void @putint(i32  %op110)
  %op111 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  2
  %op112 = load i32 , i32 * %op111
  call void @putint(i32  %op112)
  %op113 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  3
  %op114 = load i32 , i32 * %op113
  call void @putint(i32  %op114)
  %op115 = trunc i32  10 to i8 
  call void @putch(i8  %op115)
  ret i32  0
}

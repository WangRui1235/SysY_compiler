; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/hidden_functional/07_arr_init_nd.sy"

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
  %op0 = alloca [5 x [3 x i32 ]]
  %op1 = alloca [5 x [3 x i32 ]]
  %op2 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op1, i32  0, i32  0, i32  0
  store i32  0, i32 * %op2
  %op3 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op1, i32  0, i32  0, i32  1
  store i32  0, i32 * %op3
  %op4 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op1, i32  0, i32  0, i32  2
  store i32  0, i32 * %op4
  %op5 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op1, i32  0, i32  1, i32  0
  store i32  0, i32 * %op5
  %op6 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op1, i32  0, i32  1, i32  1
  store i32  0, i32 * %op6
  %op7 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op1, i32  0, i32  1, i32  2
  store i32  0, i32 * %op7
  %op8 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op1, i32  0, i32  2, i32  0
  store i32  0, i32 * %op8
  %op9 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op1, i32  0, i32  2, i32  1
  store i32  0, i32 * %op9
  %op10 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op1, i32  0, i32  2, i32  2
  store i32  0, i32 * %op10
  %op11 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op1, i32  0, i32  3, i32  0
  store i32  0, i32 * %op11
  %op12 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op1, i32  0, i32  3, i32  1
  store i32  0, i32 * %op12
  %op13 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op1, i32  0, i32  3, i32  2
  store i32  0, i32 * %op13
  %op14 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op1, i32  0, i32  4, i32  0
  store i32  0, i32 * %op14
  %op15 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op1, i32  0, i32  4, i32  1
  store i32  0, i32 * %op15
  %op16 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op1, i32  0, i32  4, i32  2
  store i32  0, i32 * %op16
  %op17 = alloca [5 x [3 x i32 ]]
  %op18 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  0, i32  0
  store i32  0, i32 * %op18
  %op19 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  0, i32  1
  store i32  0, i32 * %op19
  %op20 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  0, i32  2
  store i32  0, i32 * %op20
  %op21 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  1, i32  0
  store i32  0, i32 * %op21
  %op22 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  1, i32  1
  store i32  0, i32 * %op22
  %op23 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  1, i32  2
  store i32  0, i32 * %op23
  %op24 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  2, i32  0
  store i32  0, i32 * %op24
  %op25 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  2, i32  1
  store i32  0, i32 * %op25
  %op26 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  2, i32  2
  store i32  0, i32 * %op26
  %op27 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  3, i32  0
  store i32  0, i32 * %op27
  %op28 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  3, i32  1
  store i32  0, i32 * %op28
  %op29 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  3, i32  2
  store i32  0, i32 * %op29
  %op30 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  4, i32  0
  store i32  0, i32 * %op30
  %op31 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  4, i32  1
  store i32  0, i32 * %op31
  %op32 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  4, i32  2
  store i32  0, i32 * %op32
  %op33 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  0, i32  0
  store i32  1, i32 * %op33
  %op34 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  0, i32  1
  store i32  2, i32 * %op34
  %op35 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  0, i32  2
  store i32  3, i32 * %op35
  %op36 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  1, i32  0
  store i32  4, i32 * %op36
  %op37 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  1, i32  1
  store i32  5, i32 * %op37
  %op38 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  1, i32  2
  store i32  6, i32 * %op38
  %op39 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  2, i32  0
  store i32  7, i32 * %op39
  %op40 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  2, i32  1
  store i32  8, i32 * %op40
  %op41 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  2, i32  2
  store i32  9, i32 * %op41
  %op42 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  3, i32  0
  store i32  10, i32 * %op42
  %op43 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  3, i32  1
  store i32  11, i32 * %op43
  %op44 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  3, i32  2
  store i32  12, i32 * %op44
  %op45 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  4, i32  0
  store i32  13, i32 * %op45
  %op46 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  4, i32  1
  store i32  14, i32 * %op46
  %op47 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op17, i32  0, i32  4, i32  2
  store i32  15, i32 * %op47
  %op48 = alloca [5 x [3 x i32 ]]
  %op49 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  0, i32  0
  store i32  0, i32 * %op49
  %op50 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  0, i32  1
  store i32  0, i32 * %op50
  %op51 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  0, i32  2
  store i32  0, i32 * %op51
  %op52 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  1, i32  0
  store i32  0, i32 * %op52
  %op53 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  1, i32  1
  store i32  0, i32 * %op53
  %op54 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  1, i32  2
  store i32  0, i32 * %op54
  %op55 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  2, i32  0
  store i32  0, i32 * %op55
  %op56 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  2, i32  1
  store i32  0, i32 * %op56
  %op57 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  2, i32  2
  store i32  0, i32 * %op57
  %op58 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  3, i32  0
  store i32  0, i32 * %op58
  %op59 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  3, i32  1
  store i32  0, i32 * %op59
  %op60 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  3, i32  2
  store i32  0, i32 * %op60
  %op61 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  4, i32  0
  store i32  0, i32 * %op61
  %op62 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  4, i32  1
  store i32  0, i32 * %op62
  %op63 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  4, i32  2
  store i32  0, i32 * %op63
  %op64 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  0, i32  0
  store i32  1, i32 * %op64
  %op65 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  0, i32  1
  store i32  2, i32 * %op65
  %op66 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  0, i32  2
  store i32  3, i32 * %op66
  %op67 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  1, i32  0
  store i32  4, i32 * %op67
  %op68 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  1, i32  1
  store i32  5, i32 * %op68
  %op69 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  1, i32  2
  store i32  6, i32 * %op69
  %op70 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  2, i32  0
  store i32  7, i32 * %op70
  %op71 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  2, i32  1
  store i32  8, i32 * %op71
  %op72 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  2, i32  2
  store i32  9, i32 * %op72
  %op73 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  3, i32  0
  store i32  10, i32 * %op73
  %op74 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  3, i32  1
  store i32  11, i32 * %op74
  %op75 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  3, i32  2
  store i32  12, i32 * %op75
  %op76 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  4, i32  0
  store i32  13, i32 * %op76
  %op77 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  4, i32  1
  store i32  14, i32 * %op77
  %op78 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op48, i32  0, i32  4, i32  2
  store i32  15, i32 * %op78
  %op79 = alloca [5 x [3 x i32 ]]
  %op80 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  0, i32  0
  store i32  0, i32 * %op80
  %op81 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  0, i32  1
  store i32  0, i32 * %op81
  %op82 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  0, i32  2
  store i32  0, i32 * %op82
  %op83 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  1, i32  0
  store i32  0, i32 * %op83
  %op84 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  1, i32  1
  store i32  0, i32 * %op84
  %op85 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  1, i32  2
  store i32  0, i32 * %op85
  %op86 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  2, i32  0
  store i32  0, i32 * %op86
  %op87 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  2, i32  1
  store i32  0, i32 * %op87
  %op88 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  2, i32  2
  store i32  0, i32 * %op88
  %op89 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  3, i32  0
  store i32  0, i32 * %op89
  %op90 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  3, i32  1
  store i32  0, i32 * %op90
  %op91 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  3, i32  2
  store i32  0, i32 * %op91
  %op92 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  4, i32  0
  store i32  0, i32 * %op92
  %op93 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  4, i32  1
  store i32  0, i32 * %op93
  %op94 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  4, i32  2
  store i32  0, i32 * %op94
  %op95 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  0, i32  0
  store i32  1, i32 * %op95
  %op96 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  0, i32  1
  store i32  2, i32 * %op96
  %op97 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  0, i32  2
  store i32  3, i32 * %op97
  %op98 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  1, i32  0
  store i32  4, i32 * %op98
  %op99 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  1, i32  1
  store i32  5, i32 * %op99
  %op100 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  1, i32  2
  store i32  6, i32 * %op100
  %op101 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  2, i32  0
  store i32  7, i32 * %op101
  %op102 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  2, i32  1
  store i32  8, i32 * %op102
  %op103 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  2, i32  2
  store i32  9, i32 * %op103
  %op104 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  3, i32  0
  store i32  10, i32 * %op104
  %op105 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  3, i32  1
  store i32  11, i32 * %op105
  %op106 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  3, i32  2
  store i32  12, i32 * %op106
  %op107 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  4, i32  0
  store i32  13, i32 * %op107
  %op108 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  4, i32  1
  store i32  14, i32 * %op108
  %op109 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op79, i32  0, i32  4, i32  2
  store i32  15, i32 * %op109
  %op110 = alloca [3 x i32 ]
  %op111 = alloca [5 x [3 x i32 ]]
  %op112 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op111, i32  0, i32  0, i32  0
  store i32  0, i32 * %op112
  %op113 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op111, i32  0, i32  0, i32  1
  store i32  0, i32 * %op113
  %op114 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op111, i32  0, i32  0, i32  2
  store i32  0, i32 * %op114
  %op115 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op111, i32  0, i32  1, i32  0
  store i32  0, i32 * %op115
  %op116 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op111, i32  0, i32  1, i32  1
  store i32  0, i32 * %op116
  %op117 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op111, i32  0, i32  1, i32  2
  store i32  0, i32 * %op117
  %op118 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op111, i32  0, i32  2, i32  0
  store i32  0, i32 * %op118
  %op119 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op111, i32  0, i32  2, i32  1
  store i32  0, i32 * %op119
  %op120 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op111, i32  0, i32  2, i32  2
  store i32  0, i32 * %op120
  %op121 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op111, i32  0, i32  3, i32  0
  store i32  0, i32 * %op121
  %op122 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op111, i32  0, i32  3, i32  1
  store i32  0, i32 * %op122
  %op123 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op111, i32  0, i32  3, i32  2
  store i32  0, i32 * %op123
  %op124 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op111, i32  0, i32  4, i32  0
  store i32  0, i32 * %op124
  %op125 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op111, i32  0, i32  4, i32  1
  store i32  0, i32 * %op125
  %op126 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op111, i32  0, i32  4, i32  2
  store i32  0, i32 * %op126
  %op127 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op111, i32  0, i32  0, i32  0
  store i32  1, i32 * %op127
  %op128 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op111, i32  0, i32  0, i32  1
  store i32  2, i32 * %op128
  %op129 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op111, i32  0, i32  0, i32  2
  store i32  3, i32 * %op129
  %op130 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op111, i32  0, i32  1, i32  0
  store i32  4, i32 * %op130
  %op131 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op111, i32  0, i32  2, i32  0
  store i32  7, i32 * %op131
  %op132 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op111, i32  0, i32  3, i32  0
  store i32  10, i32 * %op132
  %op133 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op111, i32  0, i32  3, i32  1
  store i32  11, i32 * %op133
  %op134 = getelementptr [5 x [3 x i32 ]], [5 x [3 x i32 ]]* %op111, i32  0, i32  3, i32  2
  store i32  12, i32 * %op134
  %op135 = alloca [5 x i32 ]
  %op136 = alloca [2 x [3 x [4 x i32 ]]]
  %op137 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  0, i32  0, i32  0
  store i32  0, i32 * %op137
  %op138 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  0, i32  0, i32  1
  store i32  0, i32 * %op138
  %op139 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  0, i32  0, i32  2
  store i32  0, i32 * %op139
  %op140 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  0, i32  0, i32  3
  store i32  0, i32 * %op140
  %op141 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  0, i32  1, i32  0
  store i32  0, i32 * %op141
  %op142 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  0, i32  1, i32  1
  store i32  0, i32 * %op142
  %op143 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  0, i32  1, i32  2
  store i32  0, i32 * %op143
  %op144 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  0, i32  1, i32  3
  store i32  0, i32 * %op144
  %op145 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  0, i32  2, i32  0
  store i32  0, i32 * %op145
  %op146 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  0, i32  2, i32  1
  store i32  0, i32 * %op146
  %op147 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  0, i32  2, i32  2
  store i32  0, i32 * %op147
  %op148 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  0, i32  2, i32  3
  store i32  0, i32 * %op148
  %op149 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  1, i32  0, i32  0
  store i32  0, i32 * %op149
  %op150 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  1, i32  0, i32  1
  store i32  0, i32 * %op150
  %op151 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  1, i32  0, i32  2
  store i32  0, i32 * %op151
  %op152 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  1, i32  0, i32  3
  store i32  0, i32 * %op152
  %op153 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  1, i32  1, i32  0
  store i32  0, i32 * %op153
  %op154 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  1, i32  1, i32  1
  store i32  0, i32 * %op154
  %op155 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  1, i32  1, i32  2
  store i32  0, i32 * %op155
  %op156 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  1, i32  1, i32  3
  store i32  0, i32 * %op156
  %op157 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  1, i32  2, i32  0
  store i32  0, i32 * %op157
  %op158 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  1, i32  2, i32  1
  store i32  0, i32 * %op158
  %op159 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  1, i32  2, i32  2
  store i32  0, i32 * %op159
  %op160 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  1, i32  2, i32  3
  store i32  0, i32 * %op160
  %op161 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  0, i32  0, i32  0
  store i32  1, i32 * %op161
  %op162 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  0, i32  0, i32  1
  store i32  2, i32 * %op162
  %op163 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  0, i32  0, i32  2
  store i32  3, i32 * %op163
  %op164 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  0, i32  0, i32  3
  store i32  4, i32 * %op164
  %op165 = getelementptr [2 x [3 x [4 x i32 ]]], [2 x [3 x [4 x i32 ]]]* %op136, i32  0, i32  0, i32  1, i32  0
  store i32  5, i32 * %op165
  ret i32  4
}

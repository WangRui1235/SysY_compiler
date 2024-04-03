; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/func/functional/04_arr_defn3.sy"

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
  %op0 = alloca [8 x i32 ]
  %op1 = alloca [8 x i32 ]
  %op2 = getelementptr [8 x i32 ], [8 x i32 ]* %op1, i32  0, i32  0
  store i32  1, i32 * %op2
  %op3 = getelementptr [8 x i32 ], [8 x i32 ]* %op1, i32  0, i32  1
  store i32  2, i32 * %op3
  %op4 = getelementptr [8 x i32 ], [8 x i32 ]* %op1, i32  0, i32  2
  store i32  3, i32 * %op4
  %op5 = getelementptr [8 x i32 ], [8 x i32 ]* %op1, i32  0, i32  3
  store i32  4, i32 * %op5
  %op6 = getelementptr [8 x i32 ], [8 x i32 ]* %op1, i32  0, i32  4
  store i32  5, i32 * %op6
  %op7 = getelementptr [8 x i32 ], [8 x i32 ]* %op1, i32  0, i32  5
  store i32  6, i32 * %op7
  %op8 = getelementptr [8 x i32 ], [8 x i32 ]* %op1, i32  0, i32  6
  store i32  7, i32 * %op8
  %op9 = getelementptr [8 x i32 ], [8 x i32 ]* %op1, i32  0, i32  7
  store i32  8, i32 * %op9
  %op10 = alloca [8 x i32 ]
  %op11 = getelementptr [8 x i32 ], [8 x i32 ]* %op10, i32  0, i32  0
  store i32  1, i32 * %op11
  %op12 = getelementptr [8 x i32 ], [8 x i32 ]* %op10, i32  0, i32  1
  store i32  2, i32 * %op12
  %op13 = getelementptr [8 x i32 ], [8 x i32 ]* %op10, i32  0, i32  2
  store i32  3, i32 * %op13
  %op14 = getelementptr [8 x i32 ], [8 x i32 ]* %op10, i32  0, i32  3
  store i32  4, i32 * %op14
  %op15 = getelementptr [8 x i32 ], [8 x i32 ]* %op10, i32  0, i32  4
  store i32  5, i32 * %op15
  %op16 = getelementptr [8 x i32 ], [8 x i32 ]* %op10, i32  0, i32  5
  store i32  6, i32 * %op16
  %op17 = getelementptr [8 x i32 ], [8 x i32 ]* %op10, i32  0, i32  6
  store i32  7, i32 * %op17
  %op18 = getelementptr [8 x i32 ], [8 x i32 ]* %op10, i32  0, i32  7
  store i32  8, i32 * %op18
  %op19 = alloca [8 x i32 ]
  %op20 = getelementptr [8 x i32 ], [8 x i32 ]* %op19, i32  0, i32  0
  store i32  1, i32 * %op20
  %op21 = getelementptr [8 x i32 ], [8 x i32 ]* %op19, i32  0, i32  1
  store i32  2, i32 * %op21
  %op22 = getelementptr [8 x i32 ], [8 x i32 ]* %op19, i32  0, i32  2
  store i32  3, i32 * %op22
  %op23 = getelementptr [8 x i32 ], [8 x i32 ]* %op19, i32  0, i32  4
  store i32  5, i32 * %op23
  %op24 = getelementptr [8 x i32 ], [8 x i32 ]* %op19, i32  0, i32  6
  store i32  7, i32 * %op24
  %op25 = getelementptr [8 x i32 ], [8 x i32 ]* %op19, i32  0, i32  7
  store i32  8, i32 * %op25
  %op26 = getelementptr [8 x i32 ], [8 x i32 ]* %op19, i32  0, i32  2
  %op27 = load i32 , i32 * %op26
  %op28 = getelementptr [8 x i32 ], [8 x i32 ]* %op10, i32  0, i32  2
  %op29 = load i32 , i32 * %op28
  %op30 = alloca [8 x i32 ]
  %op31 = getelementptr [8 x i32 ], [8 x i32 ]* %op30, i32  0, i32  0
  store i32  %op27, i32 * %op31
  %op32 = getelementptr [8 x i32 ], [8 x i32 ]* %op30, i32  0, i32  1
  store i32  %op29, i32 * %op32
  %op33 = getelementptr [8 x i32 ], [8 x i32 ]* %op30, i32  0, i32  2
  store i32  3, i32 * %op33
  %op34 = getelementptr [8 x i32 ], [8 x i32 ]* %op30, i32  0, i32  3
  store i32  4, i32 * %op34
  %op35 = getelementptr [8 x i32 ], [8 x i32 ]* %op30, i32  0, i32  4
  store i32  5, i32 * %op35
  %op36 = getelementptr [8 x i32 ], [8 x i32 ]* %op30, i32  0, i32  5
  store i32  6, i32 * %op36
  %op37 = getelementptr [8 x i32 ], [8 x i32 ]* %op30, i32  0, i32  6
  store i32  7, i32 * %op37
  %op38 = getelementptr [8 x i32 ], [8 x i32 ]* %op30, i32  0, i32  7
  store i32  8, i32 * %op38
  %op39 = getelementptr [8 x i32 ], [8 x i32 ]* %op30, i32  0, i32  3
  %op40 = load i32 , i32 * %op39
  %op41 = getelementptr [8 x i32 ], [8 x i32 ]* %op30, i32  0, i32  0
  %op42 = load i32 , i32 * %op41
  %op43 = add i32  %op40, %op42
  %op44 = getelementptr [8 x i32 ], [8 x i32 ]* %op30, i32  0, i32  0
  %op45 = load i32 , i32 * %op44
  %op46 = add i32  %op43, %op45
  %op47 = getelementptr [8 x i32 ], [8 x i32 ]* %op0, i32  0, i32  2
  %op48 = load i32 , i32 * %op47
  %op49 = add i32  %op46, %op48
  ret i32  %op49
}

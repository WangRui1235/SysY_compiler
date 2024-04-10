; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/05_arr_defn4.sy"

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
  %op0 = alloca [4 x [2 x i32 ]]
  %op1 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  0, i32  0
  store i32  0, i32 * %op1
  %op2 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  0, i32  1
  store i32  0, i32 * %op2
  %op3 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  1, i32  0
  store i32  0, i32 * %op3
  %op4 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  1, i32  1
  store i32  0, i32 * %op4
  %op5 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  2, i32  0
  store i32  0, i32 * %op5
  %op6 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  2, i32  1
  store i32  0, i32 * %op6
  %op7 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  3, i32  0
  store i32  0, i32 * %op7
  %op8 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  3, i32  1
  store i32  0, i32 * %op8
  %op9 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  0, i32  0
  store i32  1, i32 * %op9
  %op10 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  0, i32  1
  store i32  2, i32 * %op10
  %op11 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  1, i32  0
  store i32  3, i32 * %op11
  %op12 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  1, i32  1
  store i32  4, i32 * %op12
  %op13 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  3, i32  0
  store i32  7, i32 * %op13
  %op14 = alloca i32 
  store i32  3, i32 * %op14
  %op15 = alloca [4 x [2 x i32 ]]
  %op16 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op15, i32  0, i32  0, i32  0
  store i32  0, i32 * %op16
  %op17 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op15, i32  0, i32  0, i32  1
  store i32  0, i32 * %op17
  %op18 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op15, i32  0, i32  1, i32  0
  store i32  0, i32 * %op18
  %op19 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op15, i32  0, i32  1, i32  1
  store i32  0, i32 * %op19
  %op20 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op15, i32  0, i32  2, i32  0
  store i32  0, i32 * %op20
  %op21 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op15, i32  0, i32  2, i32  1
  store i32  0, i32 * %op21
  %op22 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op15, i32  0, i32  3, i32  0
  store i32  0, i32 * %op22
  %op23 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op15, i32  0, i32  3, i32  1
  store i32  0, i32 * %op23
  %op24 = alloca [4 x [2 x i32 ]]
  %op25 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  0, i32  0
  store i32  0, i32 * %op25
  %op26 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  0, i32  1
  store i32  0, i32 * %op26
  %op27 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  1, i32  0
  store i32  0, i32 * %op27
  %op28 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  1, i32  1
  store i32  0, i32 * %op28
  %op29 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  2, i32  0
  store i32  0, i32 * %op29
  %op30 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  2, i32  1
  store i32  0, i32 * %op30
  %op31 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  3, i32  0
  store i32  0, i32 * %op31
  %op32 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  3, i32  1
  store i32  0, i32 * %op32
  %op33 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  0, i32  0
  store i32  1, i32 * %op33
  %op34 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  0, i32  1
  store i32  2, i32 * %op34
  %op35 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  1, i32  0
  store i32  3, i32 * %op35
  %op36 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  1, i32  1
  store i32  4, i32 * %op36
  %op37 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  2, i32  0
  store i32  5, i32 * %op37
  %op38 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  2, i32  1
  store i32  6, i32 * %op38
  %op39 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  3, i32  0
  store i32  7, i32 * %op39
  %op40 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  3, i32  1
  store i32  8, i32 * %op40
  ret i32  0
}

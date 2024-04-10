; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/hidden_functional/25_scope3.sy"

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
  %op0 = trunc i32  97 to i8 
  call void @putch(i8  %op0)
  %op1 = trunc i32  10 to i8 
  call void @putch(i8  %op1)
  %op2 = alloca i32 
  store i32  0, i32 * %op2
  %op3 = alloca i32 
  store i32  1, i32 * %op3
  %op4 = load i32 , i32 * %op3
  %op5 = add i32  %op4, 2
  store i32  %op5, i32 * %op3
  %op6 = alloca i32 
  %op7 = load i32 , i32 * %op3
  %op8 = add i32  %op7, 3
  store i32  %op8, i32 * %op6
  %op9 = load i32 , i32 * %op6
  %op10 = add i32  %op9, 4
  store i32  %op10, i32 * %op6
  %op11 = load i32 , i32 * %op2
  %op12 = load i32 , i32 * %op3
  %op13 = add i32  %op11, %op12
  %op14 = load i32 , i32 * %op6
  %op15 = add i32  %op13, %op14
  store i32  %op15, i32 * %op2
  %op16 = load i32 , i32 * %op6
  %op17 = add i32  %op16, 5
  store i32  %op17, i32 * %op6
  %op18 = alloca i32 
  %op19 = load i32 , i32 * %op6
  %op20 = add i32  %op19, 6
  store i32  %op20, i32 * %op18
  %op21 = load i32 , i32 * %op3
  %op22 = load i32 , i32 * %op18
  %op23 = add i32  %op21, %op22
  store i32  %op23, i32 * %op3
  %op24 = load i32 , i32 * %op2
  %op25 = load i32 , i32 * %op3
  %op26 = add i32  %op24, %op25
  %op27 = load i32 , i32 * %op6
  %op28 = add i32  %op26, %op27
  %op29 = load i32 , i32 * %op18
  %op30 = add i32  %op28, %op29
  store i32  %op30, i32 * %op2
  %op31 = load i32 , i32 * %op6
  %op32 = load i32 , i32 * %op3
  %op33 = add i32  %op31, %op32
  store i32  %op33, i32 * %op6
  %op34 = alloca i32 
  %op35 = load i32 , i32 * %op18
  %op36 = add i32  %op35, 7
  store i32  %op36, i32 * %op34
  %op37 = load i32 , i32 * %op34
  %op38 = add i32  %op37, 8
  store i32  %op38, i32 * %op34
  %op39 = load i32 , i32 * %op2
  %op40 = load i32 , i32 * %op34
  %op41 = add i32  %op39, %op40
  %op42 = load i32 , i32 * %op6
  %op43 = add i32  %op41, %op42
  %op44 = load i32 , i32 * %op18
  %op45 = add i32  %op43, %op44
  store i32  %op45, i32 * %op2
  %op46 = load i32 , i32 * %op6
  %op47 = load i32 , i32 * %op34
  %op48 = add i32  %op46, %op47
  store i32  %op48, i32 * %op6
  %op49 = alloca i32 
  %op50 = load i32 , i32 * %op18
  %op51 = add i32  %op50, 9
  store i32  %op51, i32 * %op49
  %op52 = load i32 , i32 * %op34
  %op53 = add i32  %op52, 10
  store i32  %op53, i32 * %op34
  %op54 = alloca i32 
  store i32  11, i32 * %op54
  %op55 = load i32 , i32 * %op49
  %op56 = add i32  %op55, 12
  store i32  %op56, i32 * %op49
  %op57 = load i32 , i32 * %op2
  %op58 = load i32 , i32 * %op54
  %op59 = add i32  %op57, %op58
  %op60 = load i32 , i32 * %op49
  %op61 = add i32  %op59, %op60
  %op62 = load i32 , i32 * %op18
  %op63 = add i32  %op61, %op62
  store i32  %op63, i32 * %op2
  %op64 = load i32 , i32 * %op18
  %op65 = load i32 , i32 * %op49
  %op66 = add i32  %op64, %op65
  store i32  %op66, i32 * %op18
  %op67 = alloca i32 
  %op68 = load i32 , i32 * %op49
  %op69 = add i32  %op68, 13
  store i32  %op69, i32 * %op67
  %op70 = load i32 , i32 * %op67
  %op71 = load i32 , i32 * %op54
  %op72 = add i32  %op70, %op71
  store i32  %op72, i32 * %op67
  %op73 = load i32 , i32 * %op2
  %op74 = load i32 , i32 * %op54
  %op75 = add i32  %op73, %op74
  %op76 = load i32 , i32 * %op49
  %op77 = add i32  %op75, %op76
  %op78 = load i32 , i32 * %op67
  %op79 = add i32  %op77, %op78
  store i32  %op79, i32 * %op2
  %op80 = load i32 , i32 * %op2
  %op81 = load i32 , i32 * %op18
  %op82 = sub i32  %op80, %op81
  store i32  %op82, i32 * %op2
  %op83 = load i32 , i32 * %op2
  %op84 = load i32 , i32 * %op6
  %op85 = sub i32  %op83, %op84
  store i32  %op85, i32 * %op2
  %op86 = load i32 , i32 * %op2
  %op87 = load i32 , i32 * %op3
  %op88 = sub i32  %op86, %op87
  store i32  %op88, i32 * %op2
  %op89 = load i32 , i32 * %op2
  %op90 = srem i32  %op89, 77
  ret i32  %op90
}

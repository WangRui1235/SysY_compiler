; ModuleID = 'cminus'
source_filename = "/home/waang/cowork/tests/func/hidden_functional/25_scope3.sy"

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
  store i32  1, i32 * %op2
  %op3 = alloca i32 
  store i32  0, i32 * %op3
  %op4 = load i32 , i32 * %op2
  %op5 = add i32  %op4, 2
  store i32  %op5, i32 * %op2
  %op6 = load i32 , i32 * %op2
  %op7 = add i32  %op6, 3
  %op8 = alloca i32 
  store i32  %op7, i32 * %op8
  %op9 = load i32 , i32 * %op8
  %op10 = add i32  %op9, 4
  store i32  %op10, i32 * %op8
  %op11 = load i32 , i32 * %op3
  %op12 = load i32 , i32 * %op2
  %op13 = add i32  %op11, %op12
  %op14 = load i32 , i32 * %op8
  %op15 = add i32  %op13, %op14
  store i32  %op15, i32 * %op3
  %op16 = load i32 , i32 * %op8
  %op17 = add i32  %op16, 5
  store i32  %op17, i32 * %op8
  %op18 = load i32 , i32 * %op8
  %op19 = add i32  %op18, 6
  %op20 = alloca i32 
  store i32  %op19, i32 * %op20
  %op21 = load i32 , i32 * %op2
  %op22 = load i32 , i32 * %op20
  %op23 = add i32  %op21, %op22
  store i32  %op23, i32 * %op2
  %op24 = load i32 , i32 * %op3
  %op25 = load i32 , i32 * %op2
  %op26 = add i32  %op24, %op25
  %op27 = load i32 , i32 * %op8
  %op28 = add i32  %op26, %op27
  %op29 = load i32 , i32 * %op20
  %op30 = add i32  %op28, %op29
  store i32  %op30, i32 * %op3
  %op31 = load i32 , i32 * %op8
  %op32 = load i32 , i32 * %op2
  %op33 = add i32  %op31, %op32
  store i32  %op33, i32 * %op8
  %op34 = load i32 , i32 * %op20
  %op35 = add i32  %op34, 7
  %op36 = alloca i32 
  store i32  %op35, i32 * %op36
  %op37 = load i32 , i32 * %op36
  %op38 = add i32  %op37, 8
  store i32  %op38, i32 * %op36
  %op39 = load i32 , i32 * %op3
  %op40 = load i32 , i32 * %op36
  %op41 = add i32  %op39, %op40
  %op42 = load i32 , i32 * %op8
  %op43 = add i32  %op41, %op42
  %op44 = load i32 , i32 * %op20
  %op45 = add i32  %op43, %op44
  store i32  %op45, i32 * %op3
  %op46 = load i32 , i32 * %op8
  %op47 = load i32 , i32 * %op36
  %op48 = add i32  %op46, %op47
  store i32  %op48, i32 * %op8
  %op49 = load i32 , i32 * %op20
  %op50 = add i32  %op49, 9
  %op51 = alloca i32 
  store i32  %op50, i32 * %op51
  %op52 = load i32 , i32 * %op36
  %op53 = add i32  %op52, 10
  store i32  %op53, i32 * %op36
  %op54 = alloca i32 
  store i32  11, i32 * %op54
  %op55 = load i32 , i32 * %op51
  %op56 = add i32  %op55, 12
  store i32  %op56, i32 * %op51
  %op57 = load i32 , i32 * %op3
  %op58 = load i32 , i32 * %op54
  %op59 = add i32  %op57, %op58
  %op60 = load i32 , i32 * %op51
  %op61 = add i32  %op59, %op60
  %op62 = load i32 , i32 * %op20
  %op63 = add i32  %op61, %op62
  store i32  %op63, i32 * %op3
  %op64 = load i32 , i32 * %op20
  %op65 = load i32 , i32 * %op51
  %op66 = add i32  %op64, %op65
  store i32  %op66, i32 * %op20
  %op67 = load i32 , i32 * %op51
  %op68 = add i32  %op67, 13
  %op69 = alloca i32 
  store i32  %op68, i32 * %op69
  %op70 = load i32 , i32 * %op69
  %op71 = load i32 , i32 * %op54
  %op72 = add i32  %op70, %op71
  store i32  %op72, i32 * %op69
  %op73 = load i32 , i32 * %op3
  %op74 = load i32 , i32 * %op54
  %op75 = add i32  %op73, %op74
  %op76 = load i32 , i32 * %op51
  %op77 = add i32  %op75, %op76
  %op78 = load i32 , i32 * %op69
  %op79 = add i32  %op77, %op78
  store i32  %op79, i32 * %op3
  %op80 = load i32 , i32 * %op3
  %op81 = load i32 , i32 * %op20
  %op82 = sub i32  %op80, %op81
  store i32  %op82, i32 * %op3
  %op83 = load i32 , i32 * %op3
  %op84 = load i32 , i32 * %op8
  %op85 = sub i32  %op83, %op84
  store i32  %op85, i32 * %op3
  %op86 = load i32 , i32 * %op3
  %op87 = load i32 , i32 * %op2
  %op88 = sub i32  %op86, %op87
  store i32  %op88, i32 * %op3
  %op89 = load i32 , i32 * %op3
  %op90 = srem i32  %op89, 77
  ret i32  %op90
}

; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/28_while_test3.sy"

@g = global i32  zeroinitializer
@h = global i32  zeroinitializer
@f = global i32  zeroinitializer
@e = global i32  zeroinitializer
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

define i32  @EightWhile() {
label_entry:
  %op0 = alloca i32 
  store i32  5, i32 * %op0
  %op1 = alloca i32 
  %op2 = alloca i32 
  store i32  6, i32 * %op1
  store i32  7, i32 * %op2
  %op3 = alloca i32 
  store i32  10, i32 * %op3
  br label %label4
label4:                                                ; preds = %label_entry, %label36
  %op5 = load i32 , i32 * %op0
  %op6 = icmp slt i32  %op5, 20
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label12
label9:                                                ; preds = %label4
  %op10 = load i32 , i32 * %op0
  %op11 = add i32  %op10, 3
  store i32  %op11, i32 * %op0
  br label %label28
label12:                                                ; preds = %label4
  %op13 = load i32 , i32 * %op0
  %op14 = load i32 , i32 * %op1
  %op15 = load i32 , i32 * %op3
  %op16 = add i32  %op14, %op15
  %op17 = add i32  %op13, %op16
  %op18 = load i32 , i32 * %op2
  %op19 = add i32  %op17, %op18
  %op20 = load i32 , i32 * @e
  %op21 = load i32 , i32 * %op3
  %op22 = add i32  %op20, %op21
  %op23 = load i32 , i32 * @g
  %op24 = sub i32  %op22, %op23
  %op25 = load i32 , i32 * @h
  %op26 = add i32  %op24, %op25
  %op27 = sub i32  %op19, %op26
  ret i32  %op27
label28:                                                ; preds = %label9, %label47
  %op29 = load i32 , i32 * %op1
  %op30 = icmp slt i32  %op29, 10
  %op31 = zext i1  %op30 to i32 
  %op32 = icmp ne i32  %op31, 0
  br i1  %op32, label %label33, label %label36
label33:                                                ; preds = %label28
  %op34 = load i32 , i32 * %op1
  %op35 = add i32  %op34, 1
  store i32  %op35, i32 * %op1
  br label %label39
label36:                                                ; preds = %label28
  %op37 = load i32 , i32 * %op1
  %op38 = sub i32  %op37, 2
  store i32  %op38, i32 * %op1
  br label %label4
label39:                                                ; preds = %label33, %label58
  %op40 = load i32 , i32 * %op2
  %op41 = icmp eq i32  %op40, 7
  %op42 = zext i1  %op41 to i32 
  %op43 = icmp ne i32  %op42, 0
  br i1  %op43, label %label44, label %label47
label44:                                                ; preds = %label39
  %op45 = load i32 , i32 * %op2
  %op46 = sub i32  %op45, 1
  store i32  %op46, i32 * %op2
  br label %label50
label47:                                                ; preds = %label39
  %op48 = load i32 , i32 * %op2
  %op49 = add i32  %op48, 1
  store i32  %op49, i32 * %op2
  br label %label28
label50:                                                ; preds = %label44, %label69
  %op51 = load i32 , i32 * %op3
  %op52 = icmp slt i32  %op51, 20
  %op53 = zext i1  %op52 to i32 
  %op54 = icmp ne i32  %op53, 0
  br i1  %op54, label %label55, label %label58
label55:                                                ; preds = %label50
  %op56 = load i32 , i32 * %op3
  %op57 = add i32  %op56, 3
  store i32  %op57, i32 * %op3
  br label %label61
label58:                                                ; preds = %label50
  %op59 = load i32 , i32 * %op3
  %op60 = sub i32  %op59, 1
  store i32  %op60, i32 * %op3
  br label %label39
label61:                                                ; preds = %label55, %label80
  %op62 = load i32 , i32 * @e
  %op63 = icmp sgt i32  %op62, 1
  %op64 = zext i1  %op63 to i32 
  %op65 = icmp ne i32  %op64, 0
  br i1  %op65, label %label66, label %label69
label66:                                                ; preds = %label61
  %op67 = load i32 , i32 * @e
  %op68 = sub i32  %op67, 1
  store i32  %op68, i32 * @e
  br label %label72
label69:                                                ; preds = %label61
  %op70 = load i32 , i32 * @e
  %op71 = add i32  %op70, 1
  store i32  %op71, i32 * @e
  br label %label50
label72:                                                ; preds = %label66, %label91
  %op73 = load i32 , i32 * @f
  %op74 = icmp sgt i32  %op73, 2
  %op75 = zext i1  %op74 to i32 
  %op76 = icmp ne i32  %op75, 0
  br i1  %op76, label %label77, label %label80
label77:                                                ; preds = %label72
  %op78 = load i32 , i32 * @f
  %op79 = sub i32  %op78, 2
  store i32  %op79, i32 * @f
  br label %label83
label80:                                                ; preds = %label72
  %op81 = load i32 , i32 * @f
  %op82 = add i32  %op81, 1
  store i32  %op82, i32 * @f
  br label %label61
label83:                                                ; preds = %label77, %label102
  %op84 = load i32 , i32 * @g
  %op85 = icmp slt i32  %op84, 3
  %op86 = zext i1  %op85 to i32 
  %op87 = icmp ne i32  %op86, 0
  br i1  %op87, label %label88, label %label91
label88:                                                ; preds = %label83
  %op89 = load i32 , i32 * @g
  %op90 = add i32  %op89, 10
  store i32  %op90, i32 * @g
  br label %label94
label91:                                                ; preds = %label83
  %op92 = load i32 , i32 * @g
  %op93 = sub i32  %op92, 8
  store i32  %op93, i32 * @g
  br label %label72
label94:                                                ; preds = %label88, %label99
  %op95 = load i32 , i32 * @h
  %op96 = icmp slt i32  %op95, 10
  %op97 = zext i1  %op96 to i32 
  %op98 = icmp ne i32  %op97, 0
  br i1  %op98, label %label99, label %label102
label99:                                                ; preds = %label94
  %op100 = load i32 , i32 * @h
  %op101 = add i32  %op100, 8
  store i32  %op101, i32 * @h
  br label %label94
label102:                                                ; preds = %label94
  %op103 = load i32 , i32 * @h
  %op104 = sub i32  %op103, 1
  store i32  %op104, i32 * @h
  br label %label83
}
define i32  @main() {
label_entry:
  store i32  1, i32 * @g
  store i32  2, i32 * @h
  store i32  4, i32 * @e
  store i32  6, i32 * @f
  %op0 = call i32  @EightWhile()
  ret i32  %op0
}

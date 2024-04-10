; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/hidden_functional/03_branch.sy"

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
  %op2 = alloca i32 
  store i32  3, i32 * %op2
  %op3 = alloca i32 
  store i32  4, i32 * %op3
  %op4 = alloca i32 
  store i32  5, i32 * %op4
  %op5 = alloca i32 
  store i32  6, i32 * %op5
  %op6 = load i32 , i32 * %op0
  %op7 = load i32 , i32 * %op1
  %op8 = mul i32  %op6, %op7
  %op9 = load i32 , i32 * %op2
  %op10 = add i32  %op8, %op9
  %op11 = icmp slt i32  %op10, 6
  %op12 = zext i1  %op11 to i32 
  %op13 = icmp ne i32  %op12, 0
  br i1  %op13, label %label18, label %label17
label14:                                                ; preds = %label18
  %op15 = load i32 , i32 * %op4
  %op16 = icmp ne i32  %op15, 0
  br i1  %op16, label %label23, label %label29
label17:                                                ; preds = %label_entry, %label18
  ret i32  1
label18:                                                ; preds = %label_entry
  %op19 = load i32 , i32 * %op3
  %op20 = icmp ne i32  %op19, 0
  %op21 = zext i1  %op20 to i32 
  %op22 = icmp ne i32  %op21, 0
  br i1  %op22, label %label14, label %label17
label23:                                                ; preds = %label14, %label29
  %op24 = load i32 , i32 * %op2
  %op25 = icmp eq i32  %op24, 2
  %op26 = zext i1  %op25 to i32 
  %op27 = icmp ne i32  %op26, 0
  br i1  %op27, label %label41, label %label36
label28:                                                ; preds = %label29
  ret i32  2
label29:                                                ; preds = %label14
  %op30 = load i32 , i32 * %op0
  %op31 = icmp eq i32  %op30, 0
  %op32 = zext i1  %op31 to i32 
  %op33 = add i32  %op32, 0
  %op34 = icmp ne i32  %op33, 0
  br i1  %op34, label %label23, label %label28
label35:                                                ; preds = %label41
  ret i32  3
label36:                                                ; preds = %label23, %label41
  %op37 = load i32 , i32 * %op5
  %op38 = load i32 , i32 * %op2
  %op39 = srem i32  %op37, %op38
  %op40 = icmp ne i32  %op39, 0
  br i1  %op40, label %label58, label %label49
label41:                                                ; preds = %label23
  %op42 = load i32 , i32 * %op3
  %op43 = load i32 , i32 * %op4
  %op44 = add i32  %op42, %op43
  %op45 = icmp sgt i32  %op44, 2
  %op46 = zext i1  %op45 to i32 
  %op47 = icmp ne i32  %op46, 0
  br i1  %op47, label %label35, label %label36
label48:                                                ; preds = %label58
  ret i32  4
label49:                                                ; preds = %label36, %label58
  %op50 = load i32 , i32 * %op3
  %op51 = load i32 , i32 * %op1
  %op52 = sdiv i32  %op50, %op51
  %op53 = load i32 , i32 * %op0
  %op54 = add i32  %op52, %op53
  %op55 = icmp sge i32  %op54, 2
  %op56 = zext i1  %op55 to i32 
  %op57 = icmp ne i32  %op56, 0
  br i1  %op57, label %label61, label %label68
label58:                                                ; preds = %label36
  %op59 = load i32 , i32 * %op4
  %op60 = icmp ne i32  %op59, 0
  br i1  %op60, label %label48, label %label49
label61:                                                ; preds = %label49
  %op62 = load i32 , i32 * %op4
  %op63 = load i32 , i32 * %op5
  %op64 = sub i32  %op62, %op63
  %op65 = icmp sge i32  %op64, 0
  %op66 = zext i1  %op65 to i32 
  %op67 = icmp ne i32  %op66, 0
  br i1  %op67, label %label69, label %label76
label68:                                                ; preds = %label49
  ret i32  5
label69:                                                ; preds = %label61, %label76
  ret i32  6
label70:                                                ; preds = %label76
  %op71 = load i32 , i32 * %op2
  %op72 = load i32 , i32 * %op5
  %op73 = icmp ne i32  %op71, %op72
  %op74 = zext i1  %op73 to i32 
  %op75 = icmp ne i32  %op74, 0
  br i1  %op75, label %label81, label %label90
label76:                                                ; preds = %label61
  %op77 = load i32 , i32 * %op3
  %op78 = icmp sgt i32  %op77, 4
  %op79 = zext i1  %op78 to i32 
  %op80 = icmp ne i32  %op79, 0
  br i1  %op80, label %label69, label %label70
label81:                                                ; preds = %label70
  %op82 = load i32 , i32 * %op1
  %op83 = load i32 , i32 * %op4
  %op84 = load i32 , i32 * %op3
  %op85 = mul i32  %op83, %op84
  %op86 = add i32  %op82, %op85
  %op87 = icmp sgt i32  %op86, 10
  %op88 = zext i1  %op87 to i32 
  %op89 = icmp ne i32  %op88, 0
  br i1  %op89, label %label91, label %label94
label90:                                                ; preds = %label70
  ret i32  7
label91:                                                ; preds = %label81
  %op92 = load i32 , i32 * %op5
  %op93 = icmp eq i32  %op92, 0
  br i1  %op93, label %label95, label %label96
label94:                                                ; preds = %label81
  ret i32  8
label95:                                                ; preds = %label91
  ret i32  9
label96:                                                ; preds = %label91
  ret i32  10
}

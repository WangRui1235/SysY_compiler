; ModuleID = 'cminus'
source_filename = "/home/waang/cowork/tests/func/hidden_functional/34_multi_loop.sy"

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
  store i32  0, i32 * %op0
  %op1 = alloca i32 
  store i32  0, i32 * %op1
  br label %label2
label2:                                                ; preds = %label_entry, %label18
  %op3 = load i32 , i32 * %op1
  %op4 = icmp slt i32  %op3, 3
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label9
label7:                                                ; preds = %label2
  %op8 = alloca i32 
  store i32  0, i32 * %op8
  br label %label11
label9:                                                ; preds = %label2
  %op10 = load i32 , i32 * %op0
  ret i32  %op10
label11:                                                ; preds = %label7, %label28
  %op12 = load i32 , i32 * %op8
  %op13 = icmp slt i32  %op12, 4
  %op14 = zext i1  %op13 to i32 
  %op15 = icmp ne i32  %op14, 0
  br i1  %op15, label %label16, label %label18
label16:                                                ; preds = %label11
  %op17 = alloca i32 
  store i32  0, i32 * %op17
  br label %label21
label18:                                                ; preds = %label11
  %op19 = load i32 , i32 * %op1
  %op20 = add i32  %op19, 1
  store i32  %op20, i32 * %op1
  br label %label2
label21:                                                ; preds = %label16, %label38
  %op22 = load i32 , i32 * %op17
  %op23 = icmp slt i32  %op22, 5
  %op24 = zext i1  %op23 to i32 
  %op25 = icmp ne i32  %op24, 0
  br i1  %op25, label %label26, label %label28
label26:                                                ; preds = %label21
  %op27 = alloca i32 
  store i32  0, i32 * %op27
  br label %label31
label28:                                                ; preds = %label21
  %op29 = load i32 , i32 * %op8
  %op30 = add i32  %op29, 1
  store i32  %op30, i32 * %op8
  br label %label11
label31:                                                ; preds = %label26, %label48
  %op32 = load i32 , i32 * %op27
  %op33 = icmp slt i32  %op32, 3
  %op34 = zext i1  %op33 to i32 
  %op35 = icmp ne i32  %op34, 0
  br i1  %op35, label %label36, label %label38
label36:                                                ; preds = %label31
  %op37 = alloca i32 
  store i32  0, i32 * %op37
  br label %label41
label38:                                                ; preds = %label31
  %op39 = load i32 , i32 * %op17
  %op40 = add i32  %op39, 1
  store i32  %op40, i32 * %op17
  br label %label21
label41:                                                ; preds = %label36, %label58
  %op42 = load i32 , i32 * %op37
  %op43 = icmp slt i32  %op42, 5
  %op44 = zext i1  %op43 to i32 
  %op45 = icmp ne i32  %op44, 0
  br i1  %op45, label %label46, label %label48
label46:                                                ; preds = %label41
  %op47 = alloca i32 
  store i32  0, i32 * %op47
  br label %label51
label48:                                                ; preds = %label41
  %op49 = load i32 , i32 * %op27
  %op50 = add i32  %op49, 1
  store i32  %op50, i32 * %op27
  br label %label31
label51:                                                ; preds = %label46, %label68
  %op52 = load i32 , i32 * %op47
  %op53 = icmp slt i32  %op52, 4
  %op54 = zext i1  %op53 to i32 
  %op55 = icmp ne i32  %op54, 0
  br i1  %op55, label %label56, label %label58
label56:                                                ; preds = %label51
  %op57 = alloca i32 
  store i32  0, i32 * %op57
  br label %label61
label58:                                                ; preds = %label51
  %op59 = load i32 , i32 * %op37
  %op60 = add i32  %op59, 1
  store i32  %op60, i32 * %op37
  br label %label41
label61:                                                ; preds = %label56, %label78
  %op62 = load i32 , i32 * %op57
  %op63 = icmp slt i32  %op62, 6
  %op64 = zext i1  %op63 to i32 
  %op65 = icmp ne i32  %op64, 0
  br i1  %op65, label %label66, label %label68
label66:                                                ; preds = %label61
  %op67 = alloca i32 
  store i32  0, i32 * %op67
  br label %label71
label68:                                                ; preds = %label61
  %op69 = load i32 , i32 * %op47
  %op70 = add i32  %op69, 1
  store i32  %op70, i32 * %op47
  br label %label51
label71:                                                ; preds = %label66, %label88
  %op72 = load i32 , i32 * %op67
  %op73 = icmp slt i32  %op72, 5
  %op74 = zext i1  %op73 to i32 
  %op75 = icmp ne i32  %op74, 0
  br i1  %op75, label %label76, label %label78
label76:                                                ; preds = %label71
  %op77 = alloca i32 
  store i32  0, i32 * %op77
  br label %label81
label78:                                                ; preds = %label71
  %op79 = load i32 , i32 * %op57
  %op80 = add i32  %op79, 1
  store i32  %op80, i32 * %op57
  br label %label61
label81:                                                ; preds = %label76, %label98
  %op82 = load i32 , i32 * %op77
  %op83 = icmp slt i32  %op82, 5
  %op84 = zext i1  %op83 to i32 
  %op85 = icmp ne i32  %op84, 0
  br i1  %op85, label %label86, label %label88
label86:                                                ; preds = %label81
  %op87 = alloca i32 
  store i32  0, i32 * %op87
  br label %label91
label88:                                                ; preds = %label81
  %op89 = load i32 , i32 * %op67
  %op90 = add i32  %op89, 1
  store i32  %op90, i32 * %op67
  br label %label71
label91:                                                ; preds = %label86, %label108
  %op92 = load i32 , i32 * %op87
  %op93 = icmp slt i32  %op92, 3
  %op94 = zext i1  %op93 to i32 
  %op95 = icmp ne i32  %op94, 0
  br i1  %op95, label %label96, label %label98
label96:                                                ; preds = %label91
  %op97 = alloca i32 
  store i32  0, i32 * %op97
  br label %label101
label98:                                                ; preds = %label91
  %op99 = load i32 , i32 * %op77
  %op100 = add i32  %op99, 1
  store i32  %op100, i32 * %op77
  br label %label81
label101:                                                ; preds = %label96, %label118
  %op102 = load i32 , i32 * %op97
  %op103 = icmp slt i32  %op102, 6
  %op104 = zext i1  %op103 to i32 
  %op105 = icmp ne i32  %op104, 0
  br i1  %op105, label %label106, label %label108
label106:                                                ; preds = %label101
  %op107 = alloca i32 
  store i32  0, i32 * %op107
  br label %label111
label108:                                                ; preds = %label101
  %op109 = load i32 , i32 * %op87
  %op110 = add i32  %op109, 1
  store i32  %op110, i32 * %op87
  br label %label91
label111:                                                ; preds = %label106, %label128
  %op112 = load i32 , i32 * %op107
  %op113 = icmp slt i32  %op112, 7
  %op114 = zext i1  %op113 to i32 
  %op115 = icmp ne i32  %op114, 0
  br i1  %op115, label %label116, label %label118
label116:                                                ; preds = %label111
  %op117 = alloca i32 
  store i32  0, i32 * %op117
  br label %label121
label118:                                                ; preds = %label111
  %op119 = load i32 , i32 * %op97
  %op120 = add i32  %op119, 2
  store i32  %op120, i32 * %op97
  br label %label101
label121:                                                ; preds = %label116, %label138
  %op122 = load i32 , i32 * %op117
  %op123 = icmp slt i32  %op122, 5
  %op124 = zext i1  %op123 to i32 
  %op125 = icmp ne i32  %op124, 0
  br i1  %op125, label %label126, label %label128
label126:                                                ; preds = %label121
  %op127 = alloca i32 
  store i32  0, i32 * %op127
  br label %label131
label128:                                                ; preds = %label121
  %op129 = load i32 , i32 * %op107
  %op130 = add i32  %op129, 2
  store i32  %op130, i32 * %op107
  br label %label111
label131:                                                ; preds = %label126, %label152
  %op132 = load i32 , i32 * %op127
  %op133 = icmp slt i32  %op132, 3
  %op134 = zext i1  %op133 to i32 
  %op135 = icmp ne i32  %op134, 0
  br i1  %op135, label %label136, label %label138
label136:                                                ; preds = %label131
  %op137 = alloca i32 
  store i32  0, i32 * %op137
  br label %label141
label138:                                                ; preds = %label131
  %op139 = load i32 , i32 * %op117
  %op140 = add i32  %op139, 2
  store i32  %op140, i32 * %op117
  br label %label121
label141:                                                ; preds = %label136, %label146
  %op142 = load i32 , i32 * %op137
  %op143 = icmp slt i32  %op142, 6
  %op144 = zext i1  %op143 to i32 
  %op145 = icmp ne i32  %op144, 0
  br i1  %op145, label %label146, label %label152
label146:                                                ; preds = %label141
  %op147 = load i32 , i32 * %op0
  %op148 = add i32  %op147, 3
  %op149 = srem i32  %op148, 999
  store i32  %op149, i32 * %op0
  %op150 = load i32 , i32 * %op137
  %op151 = add i32  %op150, 3
  store i32  %op151, i32 * %op137
  br label %label141
label152:                                                ; preds = %label141
  %op153 = load i32 , i32 * %op127
  %op154 = add i32  %op153, 1
  store i32  %op154, i32 * %op127
  br label %label131
}

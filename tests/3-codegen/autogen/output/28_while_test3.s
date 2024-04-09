# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl g
	.type g, @object
	.size g, 4
g:
	.space 4
	.globl h
	.type h, @object
	.size h, 4
h:
	.space 4
	.globl f
	.type f, @object
	.size f, 4
f:
	.space 4
	.globl e
	.type e, @object
	.size e, 4
e:
	.space 4
	.text
	.globl EightWhile
	.type EightWhile, @function
EightWhile:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -384
.EightWhile_label_entry:
# %op0 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -24
# store i32  5, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op1 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -40
# %op2 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -56
# store i32  6, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# store i32  7, i32 * %op2
	ld.d $t0, $fp, -56
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op3 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -72
# store i32  10, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# br label %label4
	b .EightWhile_label4
.EightWhile_label4:
# %op5 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op6 = icmp slt i32  %op5, 20
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 20
	slt $t2, $t0, $t1
	st.b $t2, $fp, -81
# %op7 = zext i1  %op6 to i32 
	ld.b $t0, $fp, -81
	st.w $t0, $fp, -88
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -89
# br i1  %op8, label %label9, label %label12
	ld.b $t0, $fp, -89
	bnez $t0, .EightWhile_label9
	b .EightWhile_label12
.EightWhile_label9:
# %op10 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op11 = add i32  %op10, 3
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -100
# store i32  %op11, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -100
	st.w $t1, $t0, 0
# br label %label28
	b .EightWhile_label28
.EightWhile_label12:
# %op13 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op14 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op15 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op16 = add i32  %op14, %op15
	ld.w $t0, $fp, -108
	ld.w $t1, $fp, -112
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -116
# %op17 = add i32  %op13, %op16
	ld.w $t0, $fp, -104
	ld.w $t1, $fp, -116
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# %op18 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op19 = add i32  %op17, %op18
	ld.w $t0, $fp, -120
	ld.w $t1, $fp, -124
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -128
# %op20 = load i32 , i32 * @e
	la.local $t0, e
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op21 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# %op22 = add i32  %op20, %op21
	ld.w $t0, $fp, -132
	ld.w $t1, $fp, -136
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -140
# %op23 = load i32 , i32 * @g
	la.local $t0, g
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op24 = sub i32  %op22, %op23
	ld.w $t0, $fp, -140
	ld.w $t1, $fp, -144
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -148
# %op25 = load i32 , i32 * @h
	la.local $t0, h
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op26 = add i32  %op24, %op25
	ld.w $t0, $fp, -148
	ld.w $t1, $fp, -152
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# %op27 = sub i32  %op19, %op26
	ld.w $t0, $fp, -128
	ld.w $t1, $fp, -156
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -160
# ret i32  %op27
	ld.w $a0, $fp, -160
	b EightWhile_ret
.EightWhile_label28:
# %op29 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op30 = icmp slt i32  %op29, 10
	ld.w $t0, $fp, -164
	addi.w $t1, $zero, 10
	slt $t2, $t0, $t1
	st.b $t2, $fp, -165
# %op31 = zext i1  %op30 to i32 
	ld.b $t0, $fp, -165
	st.w $t0, $fp, -172
# %op32 = icmp ne i32  %op31, 0
	ld.w $t0, $fp, -172
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -173
# br i1  %op32, label %label33, label %label36
	ld.b $t0, $fp, -173
	bnez $t0, .EightWhile_label33
	b .EightWhile_label36
.EightWhile_label33:
# %op34 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op35 = add i32  %op34, 1
	ld.w $t0, $fp, -180
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -184
# store i32  %op35, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -184
	st.w $t1, $t0, 0
# br label %label39
	b .EightWhile_label39
.EightWhile_label36:
# %op37 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op38 = sub i32  %op37, 2
	ld.w $t0, $fp, -188
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -192
# store i32  %op38, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -192
	st.w $t1, $t0, 0
# br label %label4
	b .EightWhile_label4
.EightWhile_label39:
# %op40 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op41 = icmp eq i32  %op40, 7
	ld.w $t0, $fp, -196
	addi.w $t1, $zero, 7
	beq  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -197
# %op42 = zext i1  %op41 to i32 
	ld.b $t0, $fp, -197
	st.w $t0, $fp, -204
# %op43 = icmp ne i32  %op42, 0
	ld.w $t0, $fp, -204
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -205
# br i1  %op43, label %label44, label %label47
	ld.b $t0, $fp, -205
	bnez $t0, .EightWhile_label44
	b .EightWhile_label47
.EightWhile_label44:
# %op45 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op46 = sub i32  %op45, 1
	ld.w $t0, $fp, -212
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -216
# store i32  %op46, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -216
	st.w $t1, $t0, 0
# br label %label50
	b .EightWhile_label50
.EightWhile_label47:
# %op48 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# %op49 = add i32  %op48, 1
	ld.w $t0, $fp, -220
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -224
# store i32  %op49, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -224
	st.w $t1, $t0, 0
# br label %label28
	b .EightWhile_label28
.EightWhile_label50:
# %op51 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op52 = icmp slt i32  %op51, 20
	ld.w $t0, $fp, -228
	addi.w $t1, $zero, 20
	slt $t2, $t0, $t1
	st.b $t2, $fp, -229
# %op53 = zext i1  %op52 to i32 
	ld.b $t0, $fp, -229
	st.w $t0, $fp, -236
# %op54 = icmp ne i32  %op53, 0
	ld.w $t0, $fp, -236
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -237
# br i1  %op54, label %label55, label %label58
	ld.b $t0, $fp, -237
	bnez $t0, .EightWhile_label55
	b .EightWhile_label58
.EightWhile_label55:
# %op56 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op57 = add i32  %op56, 3
	ld.w $t0, $fp, -244
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -248
# store i32  %op57, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -248
	st.w $t1, $t0, 0
# br label %label61
	b .EightWhile_label61
.EightWhile_label58:
# %op59 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# %op60 = sub i32  %op59, 1
	ld.w $t0, $fp, -252
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -256
# store i32  %op60, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -256
	st.w $t1, $t0, 0
# br label %label39
	b .EightWhile_label39
.EightWhile_label61:
# %op62 = load i32 , i32 * @e
	la.local $t0, e
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# %op63 = icmp sgt i32  %op62, 1
	ld.w $t0, $fp, -260
	addi.w $t1, $zero, 1
	slt $t2, $t1, $t0
	st.b $t2, $fp, -261
# %op64 = zext i1  %op63 to i32 
	ld.b $t0, $fp, -261
	st.w $t0, $fp, -268
# %op65 = icmp ne i32  %op64, 0
	ld.w $t0, $fp, -268
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -269
# br i1  %op65, label %label66, label %label69
	ld.b $t0, $fp, -269
	bnez $t0, .EightWhile_label66
	b .EightWhile_label69
.EightWhile_label66:
# %op67 = load i32 , i32 * @e
	la.local $t0, e
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op68 = sub i32  %op67, 1
	ld.w $t0, $fp, -276
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -280
# store i32  %op68, i32 * @e
	la.local $t0, e
	ld.w $t1, $fp, -280
	st.w $t1, $t0, 0
# br label %label72
	b .EightWhile_label72
.EightWhile_label69:
# %op70 = load i32 , i32 * @e
	la.local $t0, e
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# %op71 = add i32  %op70, 1
	ld.w $t0, $fp, -284
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -288
# store i32  %op71, i32 * @e
	la.local $t0, e
	ld.w $t1, $fp, -288
	st.w $t1, $t0, 0
# br label %label50
	b .EightWhile_label50
.EightWhile_label72:
# %op73 = load i32 , i32 * @f
	la.local $t0, f
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# %op74 = icmp sgt i32  %op73, 2
	ld.w $t0, $fp, -292
	addi.w $t1, $zero, 2
	slt $t2, $t1, $t0
	st.b $t2, $fp, -293
# %op75 = zext i1  %op74 to i32 
	ld.b $t0, $fp, -293
	st.w $t0, $fp, -300
# %op76 = icmp ne i32  %op75, 0
	ld.w $t0, $fp, -300
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -301
# br i1  %op76, label %label77, label %label80
	ld.b $t0, $fp, -301
	bnez $t0, .EightWhile_label77
	b .EightWhile_label80
.EightWhile_label77:
# %op78 = load i32 , i32 * @f
	la.local $t0, f
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op79 = sub i32  %op78, 2
	ld.w $t0, $fp, -308
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -312
# store i32  %op79, i32 * @f
	la.local $t0, f
	ld.w $t1, $fp, -312
	st.w $t1, $t0, 0
# br label %label83
	b .EightWhile_label83
.EightWhile_label80:
# %op81 = load i32 , i32 * @f
	la.local $t0, f
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op82 = add i32  %op81, 1
	ld.w $t0, $fp, -316
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -320
# store i32  %op82, i32 * @f
	la.local $t0, f
	ld.w $t1, $fp, -320
	st.w $t1, $t0, 0
# br label %label61
	b .EightWhile_label61
.EightWhile_label83:
# %op84 = load i32 , i32 * @g
	la.local $t0, g
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op85 = icmp slt i32  %op84, 3
	ld.w $t0, $fp, -324
	addi.w $t1, $zero, 3
	slt $t2, $t0, $t1
	st.b $t2, $fp, -325
# %op86 = zext i1  %op85 to i32 
	ld.b $t0, $fp, -325
	st.w $t0, $fp, -332
# %op87 = icmp ne i32  %op86, 0
	ld.w $t0, $fp, -332
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -333
# br i1  %op87, label %label88, label %label91
	ld.b $t0, $fp, -333
	bnez $t0, .EightWhile_label88
	b .EightWhile_label91
.EightWhile_label88:
# %op89 = load i32 , i32 * @g
	la.local $t0, g
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -340
# %op90 = add i32  %op89, 10
	ld.w $t0, $fp, -340
	addi.w $t1, $zero, 10
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -344
# store i32  %op90, i32 * @g
	la.local $t0, g
	ld.w $t1, $fp, -344
	st.w $t1, $t0, 0
# br label %label94
	b .EightWhile_label94
.EightWhile_label91:
# %op92 = load i32 , i32 * @g
	la.local $t0, g
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op93 = sub i32  %op92, 8
	ld.w $t0, $fp, -348
	addi.w $t1, $zero, 8
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -352
# store i32  %op93, i32 * @g
	la.local $t0, g
	ld.w $t1, $fp, -352
	st.w $t1, $t0, 0
# br label %label72
	b .EightWhile_label72
.EightWhile_label94:
# %op95 = load i32 , i32 * @h
	la.local $t0, h
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op96 = icmp slt i32  %op95, 10
	ld.w $t0, $fp, -356
	addi.w $t1, $zero, 10
	slt $t2, $t0, $t1
	st.b $t2, $fp, -357
# %op97 = zext i1  %op96 to i32 
	ld.b $t0, $fp, -357
	st.w $t0, $fp, -364
# %op98 = icmp ne i32  %op97, 0
	ld.w $t0, $fp, -364
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -365
# br i1  %op98, label %label99, label %label102
	ld.b $t0, $fp, -365
	bnez $t0, .EightWhile_label99
	b .EightWhile_label102
.EightWhile_label99:
# %op100 = load i32 , i32 * @h
	la.local $t0, h
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -372
# %op101 = add i32  %op100, 8
	ld.w $t0, $fp, -372
	addi.w $t1, $zero, 8
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -376
# store i32  %op101, i32 * @h
	la.local $t0, h
	ld.w $t1, $fp, -376
	st.w $t1, $t0, 0
# br label %label94
	b .EightWhile_label94
.EightWhile_label102:
# %op103 = load i32 , i32 * @h
	la.local $t0, h
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op104 = sub i32  %op103, 1
	ld.w $t0, $fp, -380
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -384
# store i32  %op104, i32 * @h
	la.local $t0, h
	ld.w $t1, $fp, -384
	st.w $t1, $t0, 0
# br label %label83
	b .EightWhile_label83
EightWhile_ret:
	addi.d $sp, $sp, 384
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -32
.main_label_entry:
# store i32  1, i32 * @g
	la.local $t0, g
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# store i32  2, i32 * @h
	la.local $t0, h
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# store i32  4, i32 * @e
	la.local $t0, e
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# store i32  6, i32 * @f
	la.local $t0, f
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# %op0 = call i32  @EightWhile()
	bl EightWhile
	st.w $a0, $fp, -20
# ret i32  %op0
	ld.w $a0, $fp, -20
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

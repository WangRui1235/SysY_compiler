	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -384
.main_label_entry:
# %op0 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -24
# store i32  1, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op1 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -40
# store i32  2, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op2 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -56
# store i32  3, i32 * %op2
	ld.d $t0, $fp, -56
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op3 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -72
# store i32  4, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op4 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -88
# store i32  5, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op5 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -104
# store i32  6, i32 * %op5
	ld.d $t0, $fp, -104
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# %op6 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op7 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op8 = mul i32  %op6, %op7
	ld.w $t0, $fp, -112
	ld.w $t1, $fp, -116
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# %op9 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op10 = add i32  %op8, %op9
	ld.w $t0, $fp, -120
	ld.w $t1, $fp, -124
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -128
# %op11 = icmp slt i32  %op10, 6
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 6
	slt $t2, $t0, $t1
	st.b $t2, $fp, -129
# %op12 = zext i1  %op11 to i32 
	ld.b $t0, $fp, -129
	st.w $t0, $fp, -136
# %op13 = icmp ne i32  %op12, 0
	ld.w $t0, $fp, -136
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -137
# br i1  %op13, label %label18, label %label17
	ld.b $t0, $fp, -137
	bnez $t0, .main_label18
	b .main_label17
.main_label14:
# %op15 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op16 = icmp ne i32  %op15, 0
	ld.w $t0, $fp, -144
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -145
# br i1  %op16, label %label23, label %label29
	ld.b $t0, $fp, -145
	bnez $t0, .main_label23
	b .main_label29
.main_label17:
# ret i32  1
	addi.w $a0, $zero, 1
	b main_ret
.main_label18:
# %op19 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op20 = icmp ne i32  %op19, 0
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -153
# %op21 = zext i1  %op20 to i32 
	ld.b $t0, $fp, -153
	st.w $t0, $fp, -160
# %op22 = icmp ne i32  %op21, 0
	ld.w $t0, $fp, -160
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -161
# br i1  %op22, label %label14, label %label17
	ld.b $t0, $fp, -161
	bnez $t0, .main_label14
	b .main_label17
.main_label23:
# %op24 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op25 = icmp eq i32  %op24, 2
	ld.w $t0, $fp, -168
	addi.w $t1, $zero, 2
	beq  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -169
# %op26 = zext i1  %op25 to i32 
	ld.b $t0, $fp, -169
	st.w $t0, $fp, -176
# %op27 = icmp ne i32  %op26, 0
	ld.w $t0, $fp, -176
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -177
# br i1  %op27, label %label41, label %label36
	ld.b $t0, $fp, -177
	bnez $t0, .main_label41
	b .main_label36
.main_label28:
# ret i32  2
	addi.w $a0, $zero, 2
	b main_ret
.main_label29:
# %op30 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -184
# %op31 = icmp eq i32  %op30, 0
	ld.w $t0, $fp, -184
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -185
# %op32 = zext i1  %op31 to i32 
	ld.b $t0, $fp, -185
	st.w $t0, $fp, -192
# %op33 = add i32  %op32, 0
	ld.w $t0, $fp, -192
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -196
# %op34 = icmp ne i32  %op33, 0
	ld.w $t0, $fp, -196
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -197
# br i1  %op34, label %label23, label %label28
	ld.b $t0, $fp, -197
	bnez $t0, .main_label23
	b .main_label28
.main_label35:
# ret i32  3
	addi.w $a0, $zero, 3
	b main_ret
.main_label36:
# %op37 = load i32 , i32 * %op5
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op38 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -208
# %op39 = srem i32  %op37, %op38
	ld.w $t0, $fp, -204
	ld.w $t1, $fp, -208
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -212
# %op40 = icmp ne i32  %op39, 0
	ld.w $t0, $fp, -212
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -213
# br i1  %op40, label %label58, label %label49
	ld.b $t0, $fp, -213
	bnez $t0, .main_label58
	b .main_label49
.main_label41:
# %op42 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# %op43 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -224
# %op44 = add i32  %op42, %op43
	ld.w $t0, $fp, -220
	ld.w $t1, $fp, -224
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -228
# %op45 = icmp sgt i32  %op44, 2
	ld.w $t0, $fp, -228
	addi.w $t1, $zero, 2
	slt $t2, $t1, $t0
	st.b $t2, $fp, -229
# %op46 = zext i1  %op45 to i32 
	ld.b $t0, $fp, -229
	st.w $t0, $fp, -236
# %op47 = icmp ne i32  %op46, 0
	ld.w $t0, $fp, -236
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -237
# br i1  %op47, label %label35, label %label36
	ld.b $t0, $fp, -237
	bnez $t0, .main_label35
	b .main_label36
.main_label48:
# ret i32  4
	addi.w $a0, $zero, 4
	b main_ret
.main_label49:
# %op50 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op51 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -248
# %op52 = sdiv i32  %op50, %op51
	ld.w $t0, $fp, -244
	ld.w $t1, $fp, -248
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -252
# %op53 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -256
# %op54 = add i32  %op52, %op53
	ld.w $t0, $fp, -252
	ld.w $t1, $fp, -256
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -260
# %op55 = icmp sge i32  %op54, 2
	ld.w $t0, $fp, -260
	addi.w $t1, $zero, 2
	bge  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -261
# %op56 = zext i1  %op55 to i32 
	ld.b $t0, $fp, -261
	st.w $t0, $fp, -268
# %op57 = icmp ne i32  %op56, 0
	ld.w $t0, $fp, -268
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -269
# br i1  %op57, label %label61, label %label68
	ld.b $t0, $fp, -269
	bnez $t0, .main_label61
	b .main_label68
.main_label58:
# %op59 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op60 = icmp ne i32  %op59, 0
	ld.w $t0, $fp, -276
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label14
	addi.d $t2, $zero, 0
	b false_label14
true_label14:
	addi.d $t2, $zero, 1
false_label14:
	st.b $t2, $fp, -277
# br i1  %op60, label %label48, label %label49
	ld.b $t0, $fp, -277
	bnez $t0, .main_label48
	b .main_label49
.main_label61:
# %op62 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# %op63 = load i32 , i32 * %op5
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -288
# %op64 = sub i32  %op62, %op63
	ld.w $t0, $fp, -284
	ld.w $t1, $fp, -288
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -292
# %op65 = icmp sge i32  %op64, 0
	ld.w $t0, $fp, -292
	addi.w $t1, $zero, 0
	bge  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -293
# %op66 = zext i1  %op65 to i32 
	ld.b $t0, $fp, -293
	st.w $t0, $fp, -300
# %op67 = icmp ne i32  %op66, 0
	ld.w $t0, $fp, -300
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label16
	addi.d $t2, $zero, 0
	b false_label16
true_label16:
	addi.d $t2, $zero, 1
false_label16:
	st.b $t2, $fp, -301
# br i1  %op67, label %label69, label %label76
	ld.b $t0, $fp, -301
	bnez $t0, .main_label69
	b .main_label76
.main_label68:
# ret i32  5
	addi.w $a0, $zero, 5
	b main_ret
.main_label69:
# ret i32  6
	addi.w $a0, $zero, 6
	b main_ret
.main_label70:
# %op71 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op72 = load i32 , i32 * %op5
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -312
# %op73 = icmp ne i32  %op71, %op72
	ld.w $t0, $fp, -308
	ld.w $t1, $fp, -312
	bne  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	st.b $t2, $fp, -313
# %op74 = zext i1  %op73 to i32 
	ld.b $t0, $fp, -313
	st.w $t0, $fp, -320
# %op75 = icmp ne i32  %op74, 0
	ld.w $t0, $fp, -320
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label18
	addi.d $t2, $zero, 0
	b false_label18
true_label18:
	addi.d $t2, $zero, 1
false_label18:
	st.b $t2, $fp, -321
# br i1  %op75, label %label81, label %label90
	ld.b $t0, $fp, -321
	bnez $t0, .main_label81
	b .main_label90
.main_label76:
# %op77 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -328
# %op78 = icmp sgt i32  %op77, 4
	ld.w $t0, $fp, -328
	addi.w $t1, $zero, 4
	slt $t2, $t1, $t0
	st.b $t2, $fp, -329
# %op79 = zext i1  %op78 to i32 
	ld.b $t0, $fp, -329
	st.w $t0, $fp, -336
# %op80 = icmp ne i32  %op79, 0
	ld.w $t0, $fp, -336
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label20
	addi.d $t2, $zero, 0
	b false_label20
true_label20:
	addi.d $t2, $zero, 1
false_label20:
	st.b $t2, $fp, -337
# br i1  %op80, label %label69, label %label70
	ld.b $t0, $fp, -337
	bnez $t0, .main_label69
	b .main_label70
.main_label81:
# %op82 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -344
# %op83 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op84 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -352
# %op85 = mul i32  %op83, %op84
	ld.w $t0, $fp, -348
	ld.w $t1, $fp, -352
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -356
# %op86 = add i32  %op82, %op85
	ld.w $t0, $fp, -344
	ld.w $t1, $fp, -356
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -360
# %op87 = icmp sgt i32  %op86, 10
	ld.w $t0, $fp, -360
	addi.w $t1, $zero, 10
	slt $t2, $t1, $t0
	st.b $t2, $fp, -361
# %op88 = zext i1  %op87 to i32 
	ld.b $t0, $fp, -361
	st.w $t0, $fp, -368
# %op89 = icmp ne i32  %op88, 0
	ld.w $t0, $fp, -368
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label22
	addi.d $t2, $zero, 0
	b false_label22
true_label22:
	addi.d $t2, $zero, 1
false_label22:
	st.b $t2, $fp, -369
# br i1  %op89, label %label91, label %label94
	ld.b $t0, $fp, -369
	bnez $t0, .main_label91
	b .main_label94
.main_label90:
# ret i32  7
	addi.w $a0, $zero, 7
	b main_ret
.main_label91:
# %op92 = load i32 , i32 * %op5
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -376
# %op93 = icmp eq i32  %op92, 0
	ld.w $t0, $fp, -376
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label23
	addi.d $t2, $zero, 0
	b false_label23
true_label23:
	addi.d $t2, $zero, 1
false_label23:
	st.b $t2, $fp, -377
# br i1  %op93, label %label95, label %label96
	ld.b $t0, $fp, -377
	bnez $t0, .main_label95
	b .main_label96
.main_label94:
# ret i32  8
	addi.w $a0, $zero, 8
	b main_ret
.main_label95:
# ret i32  9
	addi.w $a0, $zero, 9
	b main_ret
.main_label96:
# ret i32  10
	addi.w $a0, $zero, 10
	b main_ret
main_ret:
	addi.d $sp, $sp, 384
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

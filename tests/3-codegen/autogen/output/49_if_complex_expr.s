	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -256
.main_label_entry:
# %op0 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -24
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
# %op3 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -72
# %op4 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -88
# store i32  5, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# store i32  5, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# store i32  1, i32 * %op2
	ld.d $t0, $fp, -56
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op5 = mul i32  2, -1
	addi.w $t0, $zero, 2
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -96
# store i32  %op5, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -96
	st.w $t1, $t0, 0
# store i32  2, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op6 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op7 = mul i32  %op6, 1
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# %op8 = sdiv i32  %op7, 2
	ld.w $t0, $fp, -104
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -108
# %op9 = icmp slt i32  %op8, 0
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	st.b $t2, $fp, -109
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -109
	st.w $t0, $fp, -116
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -117
# br i1  %op11, label %label12, label %label21
	ld.b $t0, $fp, -117
	bnez $t0, .main_label12
	b .main_label21
.main_label12:
# %op13 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# call void @putint(i32  %op13)
	ld.w $a0, $fp, -124
	bl putint
# br label %label14
	b .main_label14
.main_label14:
# %op15 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op16 = srem i32  %op15, 2
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -132
# %op17 = add i32  %op16, 67
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, 67
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -136
# %op18 = icmp slt i32  %op17, 0
	ld.w $t0, $fp, -136
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	st.b $t2, $fp, -137
# %op19 = zext i1  %op18 to i32 
	ld.b $t0, $fp, -137
	st.w $t0, $fp, -144
# %op20 = icmp ne i32  %op19, 0
	ld.w $t0, $fp, -144
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -145
# br i1  %op20, label %label35, label %label38
	ld.b $t0, $fp, -145
	bnez $t0, .main_label35
	b .main_label38
.main_label21:
# %op22 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op23 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op24 = sub i32  %op22, %op23
	ld.w $t0, $fp, -152
	ld.w $t1, $fp, -156
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -160
# %op25 = icmp ne i32  %op24, 0
	ld.w $t0, $fp, -160
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -161
# %op26 = zext i1  %op25 to i32 
	ld.b $t0, $fp, -161
	st.w $t0, $fp, -168
# %op27 = icmp ne i32  %op26, 0
	ld.w $t0, $fp, -168
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -169
# br i1  %op27, label %label28, label %label14
	ld.b $t0, $fp, -169
	bnez $t0, .main_label28
	b .main_label14
.main_label28:
# %op29 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op30 = add i32  %op29, 3
	ld.w $t0, $fp, -176
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -180
# %op31 = srem i32  %op30, 2
	ld.w $t0, $fp, -180
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -184
# %op32 = icmp ne i32  %op31, 0
	ld.w $t0, $fp, -184
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -185
# %op33 = zext i1  %op32 to i32 
	ld.b $t0, $fp, -185
	st.w $t0, $fp, -192
# %op34 = icmp ne i32  %op33, 0
	ld.w $t0, $fp, -192
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -193
# br i1  %op34, label %label12, label %label14
	ld.b $t0, $fp, -193
	bnez $t0, .main_label12
	b .main_label14
.main_label35:
# store i32  4, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op36 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -200
# call void @putint(i32  %op36)
	ld.w $a0, $fp, -200
	bl putint
# br label %label37
	b .main_label37
.main_label37:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
.main_label38:
# %op39 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op40 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -208
# %op41 = sub i32  %op39, %op40
	ld.w $t0, $fp, -204
	ld.w $t1, $fp, -208
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -212
# %op42 = icmp ne i32  %op41, 0
	ld.w $t0, $fp, -212
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -213
# %op43 = zext i1  %op42 to i32 
	ld.b $t0, $fp, -213
	st.w $t0, $fp, -220
# %op44 = icmp ne i32  %op43, 0
	ld.w $t0, $fp, -220
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -221
# br i1  %op44, label %label45, label %label37
	ld.b $t0, $fp, -221
	bnez $t0, .main_label45
	b .main_label37
.main_label45:
# %op46 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op47 = add i32  %op46, 2
	ld.w $t0, $fp, -228
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -232
# %op48 = srem i32  %op47, 2
	ld.w $t0, $fp, -232
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -236
# %op49 = icmp ne i32  %op48, 0
	ld.w $t0, $fp, -236
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -237
# %op50 = zext i1  %op49 to i32 
	ld.b $t0, $fp, -237
	st.w $t0, $fp, -244
# %op51 = icmp ne i32  %op50, 0
	ld.w $t0, $fp, -244
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -245
# br i1  %op51, label %label35, label %label37
	ld.b $t0, $fp, -245
	bnez $t0, .main_label35
	b .main_label37
main_ret:
	addi.d $sp, $sp, 256
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

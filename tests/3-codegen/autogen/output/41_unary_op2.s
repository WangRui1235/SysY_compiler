	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -128
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
# store i32  56, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 56
	st.w $t1, $t0, 0
# store i32  4, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op3 = mul i32  4, -1
	addi.w $t0, $zero, 4
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -52
# %op4 = sub i32  %op2, %op3
	ld.w $t0, $fp, -48
	ld.w $t1, $fp, -52
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -56
# %op5 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op6 = add i32  %op4, %op5
	ld.w $t0, $fp, -56
	ld.w $t1, $fp, -60
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -64
# store i32  %op6, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -64
	st.w $t1, $t0, 0
# %op7 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op8 = icmp eq i32  %op7, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -69
# %op9 = zext i1  %op8 to i32 
	ld.b $t0, $fp, -69
	st.w $t0, $fp, -76
# %op10 = icmp eq i32  %op9, 0
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -77
# %op11 = zext i1  %op10 to i32 
	ld.b $t0, $fp, -77
	st.w $t0, $fp, -84
# %op12 = icmp eq i32  %op11, 0
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -85
# %op13 = zext i1  %op12 to i32 
	ld.b $t0, $fp, -85
	st.w $t0, $fp, -92
# %op14 = mul i32  %op13, -1
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -96
# %op15 = icmp ne i32  %op14, 0
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -97
# br i1  %op15, label %label16, label %label20
	ld.b $t0, $fp, -97
	bnez $t0, .main_label16
	b .main_label20
.main_label16:
# %op17 = mul i32  1, -1
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# %op18 = mul i32  %op17, -1
	ld.w $t0, $fp, -104
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -108
# %op19 = mul i32  %op18, -1
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -112
# store i32  %op19, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -112
	st.w $t1, $t0, 0
# br label %label23
	b .main_label23
.main_label20:
# %op21 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op22 = add i32  0, %op21
	addi.w $t0, $zero, 0
	ld.w $t1, $fp, -116
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# store i32  %op22, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -120
	st.w $t1, $t0, 0
# br label %label23
	b .main_label23
.main_label23:
# %op24 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# call void @putint(i32  %op24)
	ld.w $a0, $fp, -124
	bl putint
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 128
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

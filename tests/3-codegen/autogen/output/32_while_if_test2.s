	.text
	.globl ifWhile
	.type ifWhile, @function
ifWhile:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -128
.ifWhile_label_entry:
# %op0 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -24
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -40
# store i32  3, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op3 = icmp eq i32  %op2, 5
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 5
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -49
# %op4 = zext i1  %op3 to i32 
	ld.b $t0, $fp, -49
	st.w $t0, $fp, -56
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -57
# br i1  %op5, label %label6, label %label7
	ld.b $t0, $fp, -57
	bnez $t0, .ifWhile_label6
	b .ifWhile_label7
.ifWhile_label6:
# br label %label10
	b .ifWhile_label10
.ifWhile_label7:
# br label %label21
	b .ifWhile_label21
.ifWhile_label8:
# %op9 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# ret i32  %op9
	ld.w $a0, $fp, -64
	b ifWhile_ret
.ifWhile_label10:
# %op11 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op12 = icmp eq i32  %op11, 2
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 2
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -69
# %op13 = zext i1  %op12 to i32 
	ld.b $t0, $fp, -69
	st.w $t0, $fp, -76
# %op14 = icmp ne i32  %op13, 0
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -77
# br i1  %op14, label %label15, label %label18
	ld.b $t0, $fp, -77
	bnez $t0, .ifWhile_label15
	b .ifWhile_label18
.ifWhile_label15:
# %op16 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op17 = add i32  %op16, 2
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -88
# store i32  %op17, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -88
	st.w $t1, $t0, 0
# br label %label10
	b .ifWhile_label10
.ifWhile_label18:
# %op19 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op20 = add i32  %op19, 25
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 25
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -96
# store i32  %op20, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -96
	st.w $t1, $t0, 0
# br label %label8
	b .ifWhile_label8
.ifWhile_label21:
# %op22 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op23 = icmp slt i32  %op22, 5
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 5
	slt $t2, $t0, $t1
	st.b $t2, $fp, -101
# %op24 = zext i1  %op23 to i32 
	ld.b $t0, $fp, -101
	st.w $t0, $fp, -108
# %op25 = icmp ne i32  %op24, 0
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -109
# br i1  %op25, label %label26, label %label31
	ld.b $t0, $fp, -109
	bnez $t0, .ifWhile_label26
	b .ifWhile_label31
.ifWhile_label26:
# %op27 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op28 = mul i32  %op27, 2
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 2
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# store i32  %op28, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -120
	st.w $t1, $t0, 0
# %op29 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op30 = add i32  %op29, 1
	ld.w $t0, $fp, -124
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -128
# store i32  %op30, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -128
	st.w $t1, $t0, 0
# br label %label21
	b .ifWhile_label21
.ifWhile_label31:
# br label %label8
	b .ifWhile_label8
ifWhile_ret:
	addi.d $sp, $sp, 128
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
# %op0 = call i32  @ifWhile()
	bl ifWhile
	st.w $a0, $fp, -20
# ret i32  %op0
	ld.w $a0, $fp, -20
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

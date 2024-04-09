	.text
	.globl doubleWhile
	.type doubleWhile, @function
doubleWhile:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -112
.doubleWhile_label_entry:
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
# store i32  7, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# br label %label2
	b .doubleWhile_label2
.doubleWhile_label2:
# %op3 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op4 = icmp slt i32  %op3, 100
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 100
	slt $t2, $t0, $t1
	st.b $t2, $fp, -49
# %op5 = zext i1  %op4 to i32 
	ld.b $t0, $fp, -49
	st.w $t0, $fp, -56
# %op6 = icmp ne i32  %op5, 0
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -57
# br i1  %op6, label %label7, label %label10
	ld.b $t0, $fp, -57
	bnez $t0, .doubleWhile_label7
	b .doubleWhile_label10
.doubleWhile_label7:
# %op8 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op9 = add i32  %op8, 30
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 30
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -68
# store i32  %op9, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -68
	st.w $t1, $t0, 0
# br label %label12
	b .doubleWhile_label12
.doubleWhile_label10:
# %op11 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# ret i32  %op11
	ld.w $a0, $fp, -72
	b doubleWhile_ret
.doubleWhile_label12:
# %op13 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op14 = icmp slt i32  %op13, 100
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 100
	slt $t2, $t0, $t1
	st.b $t2, $fp, -77
# %op15 = zext i1  %op14 to i32 
	ld.b $t0, $fp, -77
	st.w $t0, $fp, -84
# %op16 = icmp ne i32  %op15, 0
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -85
# br i1  %op16, label %label17, label %label20
	ld.b $t0, $fp, -85
	bnez $t0, .doubleWhile_label17
	b .doubleWhile_label20
.doubleWhile_label17:
# %op18 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op19 = add i32  %op18, 6
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 6
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -96
# store i32  %op19, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -96
	st.w $t1, $t0, 0
# br label %label12
	b .doubleWhile_label12
.doubleWhile_label20:
# %op21 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op22 = sub i32  %op21, 100
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 100
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# store i32  %op22, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -104
	st.w $t1, $t0, 0
# br label %label2
	b .doubleWhile_label2
doubleWhile_ret:
	addi.d $sp, $sp, 112
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
# %op0 = call i32  @doubleWhile()
	bl doubleWhile
	st.w $a0, $fp, -20
# ret i32  %op0
	ld.w $a0, $fp, -20
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

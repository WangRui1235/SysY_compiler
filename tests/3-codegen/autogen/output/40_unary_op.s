	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -80
.main_label_entry:
# %op0 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -24
# store i32  10, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# %op1 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -32
# %op2 = icmp eq i32  %op1, 0
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -33
# %op3 = zext i1  %op2 to i32 
	ld.b $t0, $fp, -33
	st.w $t0, $fp, -40
# %op4 = icmp eq i32  %op3, 0
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -41
# %op5 = zext i1  %op4 to i32 
	ld.b $t0, $fp, -41
	st.w $t0, $fp, -48
# %op6 = icmp eq i32  %op5, 0
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -49
# %op7 = zext i1  %op6 to i32 
	ld.b $t0, $fp, -49
	st.w $t0, $fp, -56
# %op8 = mul i32  %op7, -1
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# %op9 = icmp ne i32  %op8, 0
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -61
# br i1  %op9, label %label10, label %label14
	ld.b $t0, $fp, -61
	bnez $t0, .main_label10
	b .main_label14
.main_label10:
# %op11 = mul i32  1, -1
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -68
# %op12 = mul i32  %op11, -1
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -72
# %op13 = mul i32  %op12, -1
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -76
# store i32  %op13, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -76
	st.w $t1, $t0, 0
# br label %label15
	b .main_label15
.main_label14:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label15
	b .main_label15
.main_label15:
# %op16 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# ret i32  %op16
	ld.w $a0, $fp, -80
	b main_ret
main_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

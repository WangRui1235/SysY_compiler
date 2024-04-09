# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl k
	.type k, @object
	.size k, 4
k:
	.space 4
	.globl n
	.data
	.type n, @object
	.size n, 4
n:
	.word 10
	.space 4
	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -96
.main_label_entry:
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
# store i32  1, i32 * @k
	la.local $t0, k
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label1
	b .main_label1
.main_label1:
# %op2 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -32
# %op3 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -36
# %op4 = sub i32  %op3, 1
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -40
# %op5 = icmp sle i32  %op2, %op4
	ld.w $t0, $fp, -32
	ld.w $t1, $fp, -40
	bge  $t1, $t0, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -41
# %op6 = zext i1  %op5 to i32 
	ld.b $t0, $fp, -41
	st.w $t0, $fp, -48
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -49
# br i1  %op7, label %label8, label %label16
	ld.b $t0, $fp, -49
	bnez $t0, .main_label8
	b .main_label16
.main_label8:
# %op9 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op10 = add i32  %op9, 1
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# store i32  %op10, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -60
	st.w $t1, $t0, 0
# %op11 = load i32 , i32 * @k
	la.local $t0, k
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op12 = add i32  %op11, 1
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -68
# %op13 = load i32 , i32 * @k
	la.local $t0, k
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op14 = load i32 , i32 * @k
	la.local $t0, k
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op15 = add i32  %op13, %op14
	ld.w $t0, $fp, -72
	ld.w $t1, $fp, -76
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# store i32  %op15, i32 * @k
	la.local $t0, k
	ld.w $t1, $fp, -80
	st.w $t1, $t0, 0
# br label %label1
	b .main_label1
.main_label16:
# %op17 = load i32 , i32 * @k
	la.local $t0, k
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# call void @putint(i32  %op17)
	ld.w $a0, $fp, -84
	bl putint
# %op18 = load i32 , i32 * @k
	la.local $t0, k
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# ret i32  %op18
	ld.w $a0, $fp, -88
	b main_ret
main_ret:
	addi.d $sp, $sp, 96
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

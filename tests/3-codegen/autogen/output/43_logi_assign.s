# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl a
	.type a, @object
	.size a, 4
a:
	.space 4
	.globl b
	.type b, @object
	.size b, 4
b:
	.space 4
	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -80
.main_label_entry:
# %op0 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -20
# store i32  %op0, i32 * @a
	la.local $t0, a
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op1 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -24
# store i32  %op1, i32 * @b
	la.local $t0, b
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op2 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -32
# %op3 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op4 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# %op5 = icmp eq i32  %op3, %op4
	ld.w $t0, $fp, -40
	ld.w $t1, $fp, -44
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -45
# %op6 = zext i1  %op5 to i32 
	ld.b $t0, $fp, -45
	st.w $t0, $fp, -52
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -53
# br i1  %op7, label %label12, label %label9
	ld.b $t0, $fp, -53
	bnez $t0, .main_label12
	b .main_label9
.main_label8:
# store i32  1, i32 * %op2
	ld.d $t0, $fp, -32
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label10
	b .main_label10
.main_label9:
# store i32  0, i32 * %op2
	ld.d $t0, $fp, -32
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label10
	b .main_label10
.main_label10:
# %op11 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# ret i32  %op11
	ld.w $a0, $fp, -60
	b main_ret
.main_label12:
# %op13 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op14 = icmp ne i32  %op13, 3
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 3
	bne  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -65
# %op15 = zext i1  %op14 to i32 
	ld.b $t0, $fp, -65
	st.w $t0, $fp, -72
# %op16 = icmp ne i32  %op15, 0
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -73
# br i1  %op16, label %label8, label %label9
	ld.b $t0, $fp, -73
	bnez $t0, .main_label8
	b .main_label9
main_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

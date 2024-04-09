# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl a
	.data
	.type a, @object
	.size a, 4
a:
	.word 3
	.space 4
	.globl b
	.data
	.type b, @object
	.size b, 4
b:
	.word 5
	.space 4
	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
.main_label_entry:
# %op0 = alloca i32 
	addi.d $t0, $fp, -28
	st.d $t0, $fp, -24
# store i32  5, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op1 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -32
# %op2 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -36
# %op3 = add i32  %op1, %op2
	ld.w $t0, $fp, -32
	ld.w $t1, $fp, -36
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -40
# ret i32  %op3
	ld.w $a0, $fp, -40
	b main_ret
main_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

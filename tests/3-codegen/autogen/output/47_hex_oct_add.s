	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -64
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
# store i32  15, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 15
	st.w $t1, $t0, 0
# store i32  12, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 12
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op3 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# %op4 = add i32  %op2, %op3
	ld.w $t0, $fp, -48
	ld.w $t1, $fp, -52
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -56
# %op5 = add i32  %op4, 61
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 61
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# ret i32  %op5
	ld.w $a0, $fp, -60
	b main_ret
main_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

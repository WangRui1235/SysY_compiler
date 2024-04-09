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
# %op1 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -40
# store i32  10, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# store i32  30, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 30
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op3 = mul i32  5, -1
	addi.w $t0, $zero, 5
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
# %op7 = mul i32  5, -1
	addi.w $t0, $zero, 5
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -68
# %op8 = add i32  %op6, %op7
	ld.w $t0, $fp, -64
	ld.w $t1, $fp, -68
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -72
# ret i32  %op8
	ld.w $a0, $fp, -72
	b main_ret
main_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

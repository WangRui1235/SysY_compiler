	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -192
.main_label_entry:
# %op0 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -24
# store i32  893, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 893
	st.w $t1, $t0, 0
# %op1 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -40
# store i32  716, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 716
	st.w $t1, $t0, 0
# %op2 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -56
# store i32  837, i32 * %op2
	ld.d $t0, $fp, -56
	addi.w $t1, $zero, 837
	st.w $t1, $t0, 0
# %op3 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op4 = add i32  %op3, 128
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 128
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -68
# store i32  %op4, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -68
	st.w $t1, $t0, 0
# %op5 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op6 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op7 = add i32  %op5, %op6
	ld.w $t0, $fp, -72
	ld.w $t1, $fp, -76
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# store i32  %op7, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -80
	st.w $t1, $t0, 0
# %op8 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -88
# store i32  241, i32 * %op8
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 241
	st.w $t1, $t0, 0
# %op9 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op10 = load i32 , i32 * %op8
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op11 = add i32  %op9, %op10
	ld.w $t0, $fp, -96
	ld.w $t1, $fp, -100
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# %op12 = sub i32  %op11, 412
	ld.w $t0, $fp, -104
	addi.w $t1, $zero, 412
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -108
# store i32  %op12, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -108
	st.w $t1, $t0, 0
# %op13 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3972
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -120
# store i32  771, i32 * %op13
	ld.d $t0, $fp, -120
	addi.w $t1, $zero, 771
	st.w $t1, $t0, 0
# %op14 = load i32 , i32 * %op8
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op15 = load i32 , i32 * %op13
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op16 = add i32  %op14, %op15
	ld.w $t0, $fp, -128
	ld.w $t1, $fp, -132
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -136
# %op17 = sub i32  %op16, 18
	ld.w $t0, $fp, -136
	addi.w $t1, $zero, 18
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -140
# store i32  %op17, i32 * %op8
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -140
	st.w $t1, $t0, 0
# %op18 = load i32 , i32 * %op8
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op19 = add i32  %op18, 66
	ld.w $t0, $fp, -144
	addi.w $t1, $zero, 66
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -148
# store i32  %op19, i32 * %op13
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -148
	st.w $t1, $t0, 0
# %op20 = load i32 , i32 * %op8
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op21 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op22 = add i32  %op20, %op21
	ld.w $t0, $fp, -152
	ld.w $t1, $fp, -156
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -160
# %op23 = sub i32  %op22, 33
	ld.w $t0, $fp, -160
	addi.w $t1, $zero, 33
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -164
# store i32  %op23, i32 * %op8
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -164
	st.w $t1, $t0, 0
# %op24 = load i32 , i32 * %op8
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op25 = sub i32  %op24, 55
	ld.w $t0, $fp, -168
	addi.w $t1, $zero, 55
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -172
# store i32  %op25, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -172
	st.w $t1, $t0, 0
# %op26 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op27 = load i32 , i32 * %op8
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op28 = add i32  %op26, %op27
	ld.w $t0, $fp, -176
	ld.w $t1, $fp, -180
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -184
# %op29 = srem i32  %op28, 21
	ld.w $t0, $fp, -184
	addi.w $t1, $zero, 21
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -188
# ret i32  %op29
	ld.w $a0, $fp, -188
	b main_ret
main_ret:
	addi.d $sp, $sp, 192
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

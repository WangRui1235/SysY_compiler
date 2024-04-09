	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -224
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
# %op2 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -56
# %op3 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -72
# %op4 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -88
# store i32  5, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# store i32  5, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# store i32  1, i32 * %op2
	ld.d $t0, $fp, -56
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op5 = mul i32  2, -1
	addi.w $t0, $zero, 2
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -96
# store i32  %op5, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -96
	st.w $t1, $t0, 0
# %op6 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op7 = mul i32  %op6, 1
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# %op8 = sdiv i32  %op7, 2
	ld.w $t0, $fp, -104
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -108
# %op9 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op10 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op11 = sub i32  %op9, %op10
	ld.w $t0, $fp, -112
	ld.w $t1, $fp, -116
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# %op12 = add i32  %op8, %op11
	ld.w $t0, $fp, -108
	ld.w $t1, $fp, -120
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -124
# %op13 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op14 = add i32  %op13, 3
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -132
# %op15 = mul i32  %op14, -1
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -136
# %op16 = srem i32  %op15, 2
	ld.w $t0, $fp, -136
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -140
# %op17 = sub i32  %op12, %op16
	ld.w $t0, $fp, -124
	ld.w $t1, $fp, -140
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -144
# store i32  %op17, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -144
	st.w $t1, $t0, 0
# %op18 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# call void @putint(i32  %op18)
	ld.w $a0, $fp, -148
	bl putint
# %op19 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op20 = srem i32  %op19, 2
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# %op21 = add i32  %op20, 67
	ld.w $t0, $fp, -156
	addi.w $t1, $zero, 67
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -160
# %op22 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op23 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op24 = sub i32  %op22, %op23
	ld.w $t0, $fp, -164
	ld.w $t1, $fp, -168
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -172
# %op25 = mul i32  %op24, -1
	ld.w $t0, $fp, -172
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -176
# %op26 = add i32  %op21, %op25
	ld.w $t0, $fp, -160
	ld.w $t1, $fp, -176
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -180
# %op27 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -184
# %op28 = add i32  %op27, 2
	ld.w $t0, $fp, -184
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -188
# %op29 = srem i32  %op28, 2
	ld.w $t0, $fp, -188
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -192
# %op30 = mul i32  %op29, -1
	ld.w $t0, $fp, -192
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -196
# %op31 = sub i32  %op26, %op30
	ld.w $t0, $fp, -180
	ld.w $t1, $fp, -196
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -200
# store i32  %op31, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -200
	st.w $t1, $t0, 0
# %op32 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op33 = add i32  %op32, 3
	ld.w $t0, $fp, -204
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -208
# store i32  %op33, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -208
	st.w $t1, $t0, 0
# %op34 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# call void @putint(i32  %op34)
	ld.w $a0, $fp, -212
	bl putint
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 224
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

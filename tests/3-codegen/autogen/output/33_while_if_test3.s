	.text
	.globl deepWhileBr
	.type deepWhileBr, @function
deepWhileBr:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -208
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.deepWhileBr_label_entry:
# %op2 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -32
# store i32  %arg0, i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op3 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -48
# store i32  %arg1, i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op4 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -64
# %op5 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op6 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op7 = add i32  %op5, %op6
	ld.w $t0, $fp, -72
	ld.w $t1, $fp, -76
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# store i32  %op7, i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -80
	st.w $t1, $t0, 0
# br label %label8
	b .deepWhileBr_label8
.deepWhileBr_label8:
# %op9 = load i32 , i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op10 = icmp slt i32  %op9, 75
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 75
	slt $t2, $t0, $t1
	st.b $t2, $fp, -85
# %op11 = zext i1  %op10 to i32 
	ld.b $t0, $fp, -85
	st.w $t0, $fp, -92
# %op12 = icmp ne i32  %op11, 0
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -93
# br i1  %op12, label %label13, label %label19
	ld.b $t0, $fp, -93
	bnez $t0, .deepWhileBr_label13
	b .deepWhileBr_label19
.deepWhileBr_label13:
# %op14 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -104
# store i32  42, i32 * %op14
	ld.d $t0, $fp, -104
	addi.w $t1, $zero, 42
	st.w $t1, $t0, 0
# %op15 = load i32 , i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op16 = icmp slt i32  %op15, 100
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 100
	slt $t2, $t0, $t1
	st.b $t2, $fp, -113
# %op17 = zext i1  %op16 to i32 
	ld.b $t0, $fp, -113
	st.w $t0, $fp, -120
# %op18 = icmp ne i32  %op17, 0
	ld.w $t0, $fp, -120
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -121
# br i1  %op18, label %label21, label %label29
	ld.b $t0, $fp, -121
	bnez $t0, .deepWhileBr_label21
	b .deepWhileBr_label29
.deepWhileBr_label19:
# %op20 = load i32 , i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# ret i32  %op20
	ld.w $a0, $fp, -128
	b deepWhileBr_ret
.deepWhileBr_label21:
# %op22 = load i32 , i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op23 = load i32 , i32 * %op14
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# %op24 = add i32  %op22, %op23
	ld.w $t0, $fp, -132
	ld.w $t1, $fp, -136
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -140
# store i32  %op24, i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -140
	st.w $t1, $t0, 0
# %op25 = load i32 , i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op26 = icmp sgt i32  %op25, 99
	ld.w $t0, $fp, -144
	addi.w $t1, $zero, 99
	slt $t2, $t1, $t0
	st.b $t2, $fp, -145
# %op27 = zext i1  %op26 to i32 
	ld.b $t0, $fp, -145
	st.w $t0, $fp, -152
# %op28 = icmp ne i32  %op27, 0
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -153
# br i1  %op28, label %label30, label %label37
	ld.b $t0, $fp, -153
	bnez $t0, .deepWhileBr_label30
	b .deepWhileBr_label37
.deepWhileBr_label29:
# br label %label8
	b .deepWhileBr_label8
.deepWhileBr_label30:
# %op31 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3924
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -168
# %op32 = load i32 , i32 * %op14
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op33 = mul i32  %op32, 2
	ld.w $t0, $fp, -176
	addi.w $t1, $zero, 2
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -180
# store i32  %op33, i32 * %op31
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -180
	st.w $t1, $t0, 0
# %op34 = icmp eq i32  1, 1
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 1
	beq  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -181
# %op35 = zext i1  %op34 to i32 
	ld.b $t0, $fp, -181
	st.w $t0, $fp, -188
# %op36 = icmp ne i32  %op35, 0
	ld.w $t0, $fp, -188
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -189
# br i1  %op36, label %label38, label %label41
	ld.b $t0, $fp, -189
	bnez $t0, .deepWhileBr_label38
	b .deepWhileBr_label41
.deepWhileBr_label37:
# br label %label29
	b .deepWhileBr_label29
.deepWhileBr_label38:
# %op39 = load i32 , i32 * %op31
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op40 = mul i32  %op39, 2
	ld.w $t0, $fp, -196
	addi.w $t1, $zero, 2
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -200
# store i32  %op40, i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -200
	st.w $t1, $t0, 0
# br label %label41
	b .deepWhileBr_label41
.deepWhileBr_label41:
# br label %label37
	b .deepWhileBr_label37
deepWhileBr_ret:
	addi.d $sp, $sp, 208
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
.main_label_entry:
# %op0 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -24
# store i32  2, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op1 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -32
# %op2 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -36
# %op3 = call i32  @deepWhileBr(i32  %op1, i32  %op2)
	ld.w $a0, $fp, -32
	ld.w $a1, $fp, -36
	bl deepWhileBr
	st.w $a0, $fp, -40
# ret i32  %op3
	ld.w $a0, $fp, -40
	b main_ret
main_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

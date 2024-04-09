	.text
	.globl FourWhile
	.type FourWhile, @function
FourWhile:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -224
.FourWhile_label_entry:
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
# %op2 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -56
# store i32  6, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# store i32  7, i32 * %op2
	ld.d $t0, $fp, -56
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op3 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -72
# store i32  10, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# br label %label4
	b .FourWhile_label4
.FourWhile_label4:
# %op5 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op6 = icmp slt i32  %op5, 20
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 20
	slt $t2, $t0, $t1
	st.b $t2, $fp, -81
# %op7 = zext i1  %op6 to i32 
	ld.b $t0, $fp, -81
	st.w $t0, $fp, -88
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -89
# br i1  %op8, label %label9, label %label12
	ld.b $t0, $fp, -89
	bnez $t0, .FourWhile_label9
	b .FourWhile_label12
.FourWhile_label9:
# %op10 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op11 = add i32  %op10, 3
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -100
# store i32  %op11, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -100
	st.w $t1, $t0, 0
# br label %label20
	b .FourWhile_label20
.FourWhile_label12:
# %op13 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op14 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op15 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op16 = add i32  %op14, %op15
	ld.w $t0, $fp, -108
	ld.w $t1, $fp, -112
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -116
# %op17 = add i32  %op13, %op16
	ld.w $t0, $fp, -104
	ld.w $t1, $fp, -116
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# %op18 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op19 = add i32  %op17, %op18
	ld.w $t0, $fp, -120
	ld.w $t1, $fp, -124
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -128
# ret i32  %op19
	ld.w $a0, $fp, -128
	b FourWhile_ret
.FourWhile_label20:
# %op21 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op22 = icmp slt i32  %op21, 10
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, 10
	slt $t2, $t0, $t1
	st.b $t2, $fp, -133
# %op23 = zext i1  %op22 to i32 
	ld.b $t0, $fp, -133
	st.w $t0, $fp, -140
# %op24 = icmp ne i32  %op23, 0
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -141
# br i1  %op24, label %label25, label %label28
	ld.b $t0, $fp, -141
	bnez $t0, .FourWhile_label25
	b .FourWhile_label28
.FourWhile_label25:
# %op26 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op27 = add i32  %op26, 1
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -152
# store i32  %op27, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -152
	st.w $t1, $t0, 0
# br label %label31
	b .FourWhile_label31
.FourWhile_label28:
# %op29 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op30 = sub i32  %op29, 2
	ld.w $t0, $fp, -156
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -160
# store i32  %op30, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -160
	st.w $t1, $t0, 0
# br label %label4
	b .FourWhile_label4
.FourWhile_label31:
# %op32 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op33 = icmp eq i32  %op32, 7
	ld.w $t0, $fp, -164
	addi.w $t1, $zero, 7
	beq  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -165
# %op34 = zext i1  %op33 to i32 
	ld.b $t0, $fp, -165
	st.w $t0, $fp, -172
# %op35 = icmp ne i32  %op34, 0
	ld.w $t0, $fp, -172
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -173
# br i1  %op35, label %label36, label %label39
	ld.b $t0, $fp, -173
	bnez $t0, .FourWhile_label36
	b .FourWhile_label39
.FourWhile_label36:
# %op37 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op38 = sub i32  %op37, 1
	ld.w $t0, $fp, -180
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -184
# store i32  %op38, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -184
	st.w $t1, $t0, 0
# br label %label42
	b .FourWhile_label42
.FourWhile_label39:
# %op40 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op41 = add i32  %op40, 1
	ld.w $t0, $fp, -188
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -192
# store i32  %op41, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -192
	st.w $t1, $t0, 0
# br label %label20
	b .FourWhile_label20
.FourWhile_label42:
# %op43 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op44 = icmp slt i32  %op43, 20
	ld.w $t0, $fp, -196
	addi.w $t1, $zero, 20
	slt $t2, $t0, $t1
	st.b $t2, $fp, -197
# %op45 = zext i1  %op44 to i32 
	ld.b $t0, $fp, -197
	st.w $t0, $fp, -204
# %op46 = icmp ne i32  %op45, 0
	ld.w $t0, $fp, -204
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -205
# br i1  %op46, label %label47, label %label50
	ld.b $t0, $fp, -205
	bnez $t0, .FourWhile_label47
	b .FourWhile_label50
.FourWhile_label47:
# %op48 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op49 = add i32  %op48, 3
	ld.w $t0, $fp, -212
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -216
# store i32  %op49, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -216
	st.w $t1, $t0, 0
# br label %label42
	b .FourWhile_label42
.FourWhile_label50:
# %op51 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# %op52 = sub i32  %op51, 1
	ld.w $t0, $fp, -220
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -224
# store i32  %op52, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -224
	st.w $t1, $t0, 0
# br label %label31
	b .FourWhile_label31
FourWhile_ret:
	addi.d $sp, $sp, 224
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
# %op0 = call i32  @FourWhile()
	bl FourWhile
	st.w $a0, $fp, -20
# ret i32  %op0
	ld.w $a0, $fp, -20
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

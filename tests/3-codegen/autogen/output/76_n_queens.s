# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl ans
	.type ans, @object
	.size ans, 200
ans:
	.space 200
	.globl sum
	.data
	.type sum, @object
	.size sum, 4
sum:
	.word 0
	.space 4
	.globl n
	.type n, @object
	.size n, 4
n:
	.space 4
	.globl row
	.type row, @object
	.size row, 200
row:
	.space 200
	.globl line1
	.type line1, @object
	.size line1, 200
line1:
	.space 200
	.globl line2
	.type line2, @object
	.size line2, 400
line2:
	.space 400
	.text
	.globl printans
	.type printans, @function
printans:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -112
.printans_label_entry:
# %op0 = load i32 , i32 * @sum
	la.local $t0, sum
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -20
# %op1 = add i32  %op0, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -24
# store i32  %op1, i32 * @sum
	la.local $t0, sum
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op2 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -32
# store i32  1, i32 * %op2
	ld.d $t0, $fp, -32
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label3
	b .printans_label3
.printans_label3:
# %op4 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op5 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# %op6 = icmp sle i32  %op4, %op5
	ld.w $t0, $fp, -40
	ld.w $t1, $fp, -44
	bge  $t1, $t0, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -45
# %op7 = zext i1  %op6 to i32 
	ld.b $t0, $fp, -45
	st.w $t0, $fp, -52
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -53
# br i1  %op8, label %label9, label %label19
	ld.b $t0, $fp, -53
	bnez $t0, .printans_label9
	b .printans_label19
.printans_label9:
# %op10 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op11 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op12 = getelementptr [50 x i32 ], [50 x i32 ]* @ans, i32  0, i32  %op10
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 200
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 200
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -60
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, ans
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -72
# %op13 = load i32 , i32 * %op12
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# call void @putint(i32  %op13)
	ld.w $a0, $fp, -76
	bl putint
# %op14 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op15 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op16 = icmp eq i32  %op14, %op15
	ld.w $t0, $fp, -80
	ld.w $t1, $fp, -84
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -85
# %op17 = zext i1  %op16 to i32 
	ld.b $t0, $fp, -85
	st.w $t0, $fp, -92
# %op18 = icmp ne i32  %op17, 0
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -93
# br i1  %op18, label %label20, label %label22
	ld.b $t0, $fp, -93
	bnez $t0, .printans_label20
	b .printans_label22
.printans_label19:
# ret void
	addi.d $a0, $zero, 0
	b printans_ret
.printans_label20:
# %op21 = trunc i32  10 to i8 
	addi.w $t0, $zero, 10
	andi $t1, $t0, 255
	st.b $t1, $fp, -94
# call void @putch(i8  %op21)
	ld.b $a0, $fp, -94
	bl putch
# ret void
	addi.d $a0, $zero, 0
	b printans_ret
.printans_label22:
# %op23 = trunc i32  32 to i8 
	addi.w $t0, $zero, 32
	andi $t1, $t0, 255
	st.b $t1, $fp, -95
# call void @putch(i8  %op23)
	ld.b $a0, $fp, -95
	bl putch
# br label %label24
	b .printans_label24
.printans_label24:
# %op25 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op26 = add i32  %op25, 1
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# store i32  %op26, i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -104
	st.w $t1, $t0, 0
# br label %label3
	b .printans_label3
printans_ret:
	addi.d $sp, $sp, 112
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl f
	.type f, @function
f:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -464
	st.w $a0, $fp, -20
.f_label_entry:
# %op1 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -32
# store i32  %arg0, i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op2 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -48
# store i32  1, i32 * %op2
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label3
	b .f_label3
.f_label3:
# %op4 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op5 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op6 = icmp sle i32  %op4, %op5
	ld.w $t0, $fp, -56
	ld.w $t1, $fp, -60
	bge  $t1, $t0, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -61
# %op7 = zext i1  %op6 to i32 
	ld.b $t0, $fp, -61
	st.w $t0, $fp, -68
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -69
# br i1  %op8, label %label9, label %label17
	ld.b $t0, $fp, -69
	bnez $t0, .f_label9
	b .f_label17
.f_label9:
# %op10 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op11 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op12 = getelementptr [50 x i32 ], [50 x i32 ]* @row, i32  0, i32  %op10
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 200
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 200
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -76
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, row
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -88
# %op13 = load i32 , i32 * %op12
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op14 = icmp ne i32  %op13, 1
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 1
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -93
# %op15 = zext i1  %op14 to i32 
	ld.b $t0, $fp, -93
	st.w $t0, $fp, -100
# %op16 = icmp ne i32  %op15, 0
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -101
# br i1  %op16, label %label45, label %label28
	ld.b $t0, $fp, -101
	bnez $t0, .f_label45
	b .f_label28
.f_label17:
# ret void
	addi.d $a0, $zero, 0
	b f_ret
.f_label18:
# %op19 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op20 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op21 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op22 = getelementptr [50 x i32 ], [50 x i32 ]* @ans, i32  0, i32  %op20
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 200
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 200
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -112
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, ans
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -128
# store i32  %op19, i32 * %op22
	ld.d $t0, $fp, -128
	ld.w $t1, $fp, -108
	st.w $t1, $t0, 0
# %op23 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op24 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# %op25 = icmp eq i32  %op23, %op24
	ld.w $t0, $fp, -132
	ld.w $t1, $fp, -136
	beq  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -137
# %op26 = zext i1  %op25 to i32 
	ld.b $t0, $fp, -137
	st.w $t0, $fp, -144
# %op27 = icmp ne i32  %op26, 0
	ld.w $t0, $fp, -144
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -145
# br i1  %op27, label %label57, label %label58
	ld.b $t0, $fp, -145
	bnez $t0, .f_label57
	b .f_label58
.f_label28:
# %op29 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op30 = add i32  %op29, 1
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# store i32  %op30, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -156
	st.w $t1, $t0, 0
# br label %label3
	b .f_label3
.f_label31:
# %op32 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op33 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op34 = add i32  %op32, %op33
	ld.w $t0, $fp, -160
	ld.w $t1, $fp, -164
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -168
# %op35 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op36 = sub i32  %op34, %op35
	ld.w $t0, $fp, -168
	ld.w $t1, $fp, -172
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -176
# %op37 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op38 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -184
# %op39 = add i32  %op37, %op38
	ld.w $t0, $fp, -180
	ld.w $t1, $fp, -184
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -188
# %op40 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -192
# %op41 = sub i32  %op39, %op40
	ld.w $t0, $fp, -188
	ld.w $t1, $fp, -192
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -196
# %op42 = getelementptr [100 x i32 ], [100 x i32 ]* @line2, i32  0, i32  %op36
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 400
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 400
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -176
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, line2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -208
# %op43 = load i32 , i32 * %op42
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op44 = icmp eq i32  %op43, 0
	ld.w $t0, $fp, -212
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -213
# br i1  %op44, label %label18, label %label28
	ld.b $t0, $fp, -213
	bnez $t0, .f_label18
	b .f_label28
.f_label45:
# %op46 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# %op47 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -224
# %op48 = add i32  %op46, %op47
	ld.w $t0, $fp, -220
	ld.w $t1, $fp, -224
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -228
# %op49 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -232
# %op50 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# %op51 = add i32  %op49, %op50
	ld.w $t0, $fp, -232
	ld.w $t1, $fp, -236
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -240
# %op52 = getelementptr [50 x i32 ], [50 x i32 ]* @line1, i32  0, i32  %op48
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 200
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 200
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -228
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, line1
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -248
# %op53 = load i32 , i32 * %op52
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# %op54 = icmp eq i32  %op53, 0
	ld.w $t0, $fp, -252
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -253
# %op55 = zext i1  %op54 to i32 
	ld.b $t0, $fp, -253
	st.w $t0, $fp, -260
# %op56 = icmp ne i32  %op55, 0
	ld.w $t0, $fp, -260
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -261
# br i1  %op56, label %label31, label %label28
	ld.b $t0, $fp, -261
	bnez $t0, .f_label31
	b .f_label28
.f_label57:
# call void @printans()
	bl printans
# br label %label58
	b .f_label58
.f_label58:
# %op59 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# %op60 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -272
# %op61 = getelementptr [50 x i32 ], [50 x i32 ]* @row, i32  0, i32  %op59
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 200
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 200
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -268
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, row
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -280
# store i32  1, i32 * %op61
	ld.d $t0, $fp, -280
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op62 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# %op63 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -288
# %op64 = add i32  %op62, %op63
	ld.w $t0, $fp, -284
	ld.w $t1, $fp, -288
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -292
# %op65 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -296
# %op66 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op67 = add i32  %op65, %op66
	ld.w $t0, $fp, -296
	ld.w $t1, $fp, -300
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -304
# %op68 = getelementptr [50 x i32 ], [50 x i32 ]* @line1, i32  0, i32  %op64
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 200
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 200
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -292
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, line1
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -312
# store i32  1, i32 * %op68
	ld.d $t0, $fp, -312
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op69 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op70 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -320
# %op71 = add i32  %op69, %op70
	ld.w $t0, $fp, -316
	ld.w $t1, $fp, -320
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -324
# %op72 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -328
# %op73 = sub i32  %op71, %op72
	ld.w $t0, $fp, -324
	ld.w $t1, $fp, -328
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -332
# %op74 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -336
# %op75 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -340
# %op76 = add i32  %op74, %op75
	ld.w $t0, $fp, -336
	ld.w $t1, $fp, -340
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -344
# %op77 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op78 = sub i32  %op76, %op77
	ld.w $t0, $fp, -344
	ld.w $t1, $fp, -348
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -352
# %op79 = getelementptr [100 x i32 ], [100 x i32 ]* @line2, i32  0, i32  %op73
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 400
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 400
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -332
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, line2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -360
# store i32  1, i32 * %op79
	ld.d $t0, $fp, -360
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op80 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# %op81 = add i32  %op80, 1
	ld.w $t0, $fp, -364
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -368
# call void @f(i32  %op81)
	ld.w $a0, $fp, -368
	bl f
# %op82 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -372
# %op83 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -376
# %op84 = getelementptr [50 x i32 ], [50 x i32 ]* @row, i32  0, i32  %op82
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 200
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 200
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -372
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, row
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -384
# store i32  0, i32 * %op84
	ld.d $t0, $fp, -384
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op85 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -388
# %op86 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -392
# %op87 = add i32  %op85, %op86
	ld.w $t0, $fp, -388
	ld.w $t1, $fp, -392
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -396
# %op88 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -400
# %op89 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -404
# %op90 = add i32  %op88, %op89
	ld.w $t0, $fp, -400
	ld.w $t1, $fp, -404
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -408
# %op91 = getelementptr [50 x i32 ], [50 x i32 ]* @line1, i32  0, i32  %op87
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 200
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 200
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -396
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, line1
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -416
# store i32  0, i32 * %op91
	ld.d $t0, $fp, -416
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op92 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -420
# %op93 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -424
# %op94 = add i32  %op92, %op93
	ld.w $t0, $fp, -420
	ld.w $t1, $fp, -424
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -428
# %op95 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -432
# %op96 = sub i32  %op94, %op95
	ld.w $t0, $fp, -428
	ld.w $t1, $fp, -432
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -436
# %op97 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -440
# %op98 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -444
# %op99 = add i32  %op97, %op98
	ld.w $t0, $fp, -440
	ld.w $t1, $fp, -444
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -448
# %op100 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -452
# %op101 = sub i32  %op99, %op100
	ld.w $t0, $fp, -448
	ld.w $t1, $fp, -452
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -456
# %op102 = getelementptr [100 x i32 ], [100 x i32 ]* @line2, i32  0, i32  %op96
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 400
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 400
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -436
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, line2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -464
# store i32  0, i32 * %op102
	ld.d $t0, $fp, -464
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label28
	b .f_label28
f_ret:
	addi.d $sp, $sp, 464
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
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
# %op1 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -32
# store i32  %op0, i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# br label %label2
	b .main_label2
.main_label2:
# %op3 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op4 = icmp sgt i32  %op3, 0
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -41
# %op5 = zext i1  %op4 to i32 
	ld.b $t0, $fp, -41
	st.w $t0, $fp, -48
# %op6 = icmp ne i32  %op5, 0
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label14
	addi.d $t2, $zero, 0
	b false_label14
true_label14:
	addi.d $t2, $zero, 1
false_label14:
	st.b $t2, $fp, -49
# br i1  %op6, label %label7, label %label11
	ld.b $t0, $fp, -49
	bnez $t0, .main_label7
	b .main_label11
.main_label7:
# %op8 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -56
# store i32  %op8, i32 * @n
	la.local $t0, n
	ld.w $t1, $fp, -56
	st.w $t1, $t0, 0
# call void @f(i32  1)
	addi.w $a0, $zero, 1
	bl f
# %op9 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op10 = sub i32  %op9, 1
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -64
# store i32  %op10, i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -64
	st.w $t1, $t0, 0
# br label %label2
	b .main_label2
.main_label11:
# %op12 = load i32 , i32 * @sum
	la.local $t0, sum
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# ret i32  %op12
	ld.w $a0, $fp, -68
	b main_ret
main_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -368
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
# %op1 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -40
# store i32  20, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 20
	st.w $t1, $t0, 0
# %op2 = alloca [20 x i32 ]
	lu12i.w $t0, -1
	ori $t0, $t0, 3960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -56
# %op3 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 80
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
	ori $t1, $t1, 80
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
	ld.d $t1, $fp, -56
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -144
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -144
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op4 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  1
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 80
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
	ori $t1, $t1, 80
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 1
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -56
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -152
# store i32  2, i32 * %op4
	ld.d $t0, $fp, -152
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op5 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -160
# store i32  0, i32 * %op5
	ld.d $t0, $fp, -160
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label6
	b .main_label6
.main_label6:
# %op7 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op8 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op9 = icmp slt i32  %op7, %op8
	ld.w $t0, $fp, -168
	ld.w $t1, $fp, -172
	slt $t2, $t0, $t1
	st.b $t2, $fp, -173
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -173
	st.w $t0, $fp, -180
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -180
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -181
# br i1  %op11, label %label12, label %label47
	ld.b $t0, $fp, -181
	bnez $t0, .main_label12
	b .main_label47
.main_label12:
# %op13 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op14 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -192
# %op15 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  %op13
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 80
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
	ori $t1, $t1, 80
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -188
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -56
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -200
# %op16 = load i32 , i32 * %op15
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op17 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -208
# %op18 = sub i32  %op17, 1
	ld.w $t0, $fp, -208
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -212
# %op19 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -216
# %op20 = sub i32  %op19, 1
	ld.w $t0, $fp, -216
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -220
# %op21 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  %op18
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 80
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
	ori $t1, $t1, 80
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -212
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -56
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -232
# %op22 = load i32 , i32 * %op21
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# %op23 = add i32  %op16, %op22
	ld.w $t0, $fp, -204
	ld.w $t1, $fp, -236
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -240
# %op24 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op25 = sub i32  %op24, 2
	ld.w $t0, $fp, -244
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -248
# %op26 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# %op27 = sub i32  %op26, 2
	ld.w $t0, $fp, -252
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -256
# %op28 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  %op25
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 80
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
	ori $t1, $t1, 80
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -248
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -56
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -264
# %op29 = load i32 , i32 * %op28
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# %op30 = add i32  %op23, %op29
	ld.w $t0, $fp, -240
	ld.w $t1, $fp, -268
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -272
# %op31 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op32 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -280
# %op33 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  %op31
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 80
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
	ori $t1, $t1, 80
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -276
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -56
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -288
# store i32  %op30, i32 * %op33
	ld.d $t0, $fp, -288
	ld.w $t1, $fp, -272
	st.w $t1, $t0, 0
# %op34 = load i32 , i32 * %op5
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# %op35 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -296
# %op36 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op37 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  %op35
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 80
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
	ori $t1, $t1, 80
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -296
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -56
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -312
# %op38 = load i32 , i32 * %op37
	ld.d $t0, $fp, -312
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op39 = add i32  %op34, %op38
	ld.w $t0, $fp, -292
	ld.w $t1, $fp, -316
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -320
# store i32  %op39, i32 * %op5
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -320
	st.w $t1, $t0, 0
# %op40 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op41 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -328
# %op42 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  %op40
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 80
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
	ori $t1, $t1, 80
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -324
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -56
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -336
# %op43 = load i32 , i32 * %op42
	ld.d $t0, $fp, -336
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -340
# call void @putint(i32  %op43)
	ld.w $a0, $fp, -340
	bl putint
# %op44 = trunc i32  10 to i8 
	addi.w $t0, $zero, 10
	andi $t1, $t0, 255
	st.b $t1, $fp, -341
# call void @putch(i8  %op44)
	ld.b $a0, $fp, -341
	bl putch
# %op45 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op46 = add i32  %op45, 1
	ld.w $t0, $fp, -348
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -352
# store i32  %op46, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -352
	st.w $t1, $t0, 0
# br label %label6
	b .main_label6
.main_label47:
# %op48 = load i32 , i32 * %op5
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# ret i32  %op48
	ld.w $a0, $fp, -356
	b main_ret
main_ret:
	addi.d $sp, $sp, 368
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

	.text
	.globl MAX
	.type MAX, @function
MAX:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -112
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.MAX_label_entry:
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
# %op4 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op5 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op6 = icmp eq i32  %op4, %op5
	ld.w $t0, $fp, -56
	ld.w $t1, $fp, -60
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -61
# %op7 = zext i1  %op6 to i32 
	ld.b $t0, $fp, -61
	st.w $t0, $fp, -68
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -69
# br i1  %op8, label %label9, label %label11
	ld.b $t0, $fp, -69
	bnez $t0, .MAX_label9
	b .MAX_label11
.MAX_label9:
# %op10 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# ret i32  %op10
	ld.w $a0, $fp, -76
	b MAX_ret
.MAX_label11:
# %op12 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op13 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op14 = icmp sgt i32  %op12, %op13
	ld.w $t0, $fp, -80
	ld.w $t1, $fp, -84
	slt $t2, $t1, $t0
	st.b $t2, $fp, -85
# %op15 = zext i1  %op14 to i32 
	ld.b $t0, $fp, -85
	st.w $t0, $fp, -92
# %op16 = icmp ne i32  %op15, 0
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -93
# br i1  %op16, label %label17, label %label19
	ld.b $t0, $fp, -93
	bnez $t0, .MAX_label17
	b .MAX_label19
.MAX_label17:
# %op18 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# ret i32  %op18
	ld.w $a0, $fp, -100
	b MAX_ret
.MAX_label19:
# %op20 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# ret i32  %op20
	ld.w $a0, $fp, -104
	b MAX_ret
MAX_ret:
	addi.d $sp, $sp, 112
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl max_sum_nonadjacent
	.type max_sum_nonadjacent, @function
max_sum_nonadjacent:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -416
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
.max_sum_nonadjacent_label_entry:
# %op2 = alloca i32 *
	lu12i.w $t0, -1
	ori $t0, $t0, 4048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -40
# store i32 * %arg0, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op3 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -56
# store i32  %arg1, i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op4 = alloca [16 x i32 ]
	lu12i.w $t0, -1
	ori $t0, $t0, 3960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -72
# %op5 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -144
# %op6 = getelementptr i32 , i32 * %op5, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
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
	ld.d $t1, $fp, -144
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -152
# %op7 = load i32 , i32 * %op6
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op8 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 64
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
	ori $t1, $t1, 64
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
	ld.d $t1, $fp, -72
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -168
# store i32  %op7, i32 * %op8
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -156
	st.w $t1, $t0, 0
# %op9 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -176
# %op10 = getelementptr i32 , i32 * %op9, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
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
	ld.d $t1, $fp, -176
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -184
# %op11 = load i32 , i32 * %op10
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op12 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -200
# %op13 = getelementptr i32 , i32 * %op12, i32  1
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
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
	ld.d $t1, $fp, -200
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -208
# %op14 = load i32 , i32 * %op13
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op15 = call i32  @MAX(i32  %op11, i32  %op14)
	ld.w $a0, $fp, -188
	ld.w $a1, $fp, -212
	bl MAX
	st.w $a0, $fp, -216
# %op16 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  1
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 64
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
	ori $t1, $t1, 64
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
	ld.d $t1, $fp, -72
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -224
# store i32  %op15, i32 * %op16
	ld.d $t0, $fp, -224
	ld.w $t1, $fp, -216
	st.w $t1, $t0, 0
# %op17 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -232
# store i32  2, i32 * %op17
	ld.d $t0, $fp, -232
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# br label %label18
	b .max_sum_nonadjacent_label18
.max_sum_nonadjacent_label18:
# %op19 = load i32 , i32 * %op17
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -240
# %op20 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op21 = icmp slt i32  %op19, %op20
	ld.w $t0, $fp, -240
	ld.w $t1, $fp, -244
	slt $t2, $t0, $t1
	st.b $t2, $fp, -245
# %op22 = zext i1  %op21 to i32 
	ld.b $t0, $fp, -245
	st.w $t0, $fp, -252
# %op23 = icmp ne i32  %op22, 0
	ld.w $t0, $fp, -252
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -253
# br i1  %op23, label %label24, label %label49
	ld.b $t0, $fp, -253
	bnez $t0, .max_sum_nonadjacent_label24
	b .max_sum_nonadjacent_label49
.max_sum_nonadjacent_label24:
# %op25 = load i32 , i32 * %op17
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# %op26 = sub i32  %op25, 2
	ld.w $t0, $fp, -260
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -264
# %op27 = load i32 , i32 * %op17
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# %op28 = sub i32  %op27, 2
	ld.w $t0, $fp, -268
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -272
# %op29 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  %op26
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 64
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
	ori $t1, $t1, 64
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -264
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -72
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -280
# %op30 = load i32 , i32 * %op29
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# %op31 = load i32 , i32 * %op17
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -288
# %op32 = load i32 , i32 * %op17
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# %op33 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -304
# %op34 = getelementptr i32 , i32 * %op33, i32  %op31
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -288
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -304
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -312
# %op35 = load i32 , i32 * %op34
	ld.d $t0, $fp, -312
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op36 = add i32  %op30, %op35
	ld.w $t0, $fp, -284
	ld.w $t1, $fp, -316
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -320
# %op37 = load i32 , i32 * %op17
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op38 = sub i32  %op37, 1
	ld.w $t0, $fp, -324
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -328
# %op39 = load i32 , i32 * %op17
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op40 = sub i32  %op39, 1
	ld.w $t0, $fp, -332
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -336
# %op41 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  %op38
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 64
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
	ori $t1, $t1, 64
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -328
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -72
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -344
# %op42 = load i32 , i32 * %op41
	ld.d $t0, $fp, -344
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op43 = call i32  @MAX(i32  %op36, i32  %op42)
	ld.w $a0, $fp, -320
	ld.w $a1, $fp, -348
	bl MAX
	st.w $a0, $fp, -352
# %op44 = load i32 , i32 * %op17
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op45 = load i32 , i32 * %op17
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -360
# %op46 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  %op44
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 64
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
	ori $t1, $t1, 64
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -356
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -72
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -368
# store i32  %op43, i32 * %op46
	ld.d $t0, $fp, -368
	ld.w $t1, $fp, -352
	st.w $t1, $t0, 0
# %op47 = load i32 , i32 * %op17
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -372
# %op48 = add i32  %op47, 1
	ld.w $t0, $fp, -372
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -376
# store i32  %op48, i32 * %op17
	ld.d $t0, $fp, -232
	ld.w $t1, $fp, -376
	st.w $t1, $t0, 0
# br label %label18
	b .max_sum_nonadjacent_label18
.max_sum_nonadjacent_label49:
# %op50 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op51 = sub i32  %op50, 1
	ld.w $t0, $fp, -380
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -384
# %op52 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -388
# %op53 = sub i32  %op52, 1
	ld.w $t0, $fp, -388
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -392
# %op54 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  %op51
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 64
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
	ori $t1, $t1, 64
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -384
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -72
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -400
# %op55 = load i32 , i32 * %op54
	ld.d $t0, $fp, -400
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -404
# ret i32  %op55
	ld.w $a0, $fp, -404
	b max_sum_nonadjacent_ret
max_sum_nonadjacent_ret:
	addi.d $sp, $sp, 416
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl longest_common_subseq
	.type longest_common_subseq, @function
longest_common_subseq:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -1504
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
	st.d $a2, $fp, -40
	st.w $a3, $fp, -44
.longest_common_subseq_label_entry:
# %op4 = alloca i32 *
	lu12i.w $t0, -1
	ori $t0, $t0, 4032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -56
# store i32 * %arg0, i32 ** %op4
	ld.d $t0, $fp, -56
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op5 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -72
# store i32  %arg1, i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op6 = alloca i32 *
	lu12i.w $t0, -1
	ori $t0, $t0, 4000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -88
# store i32 * %arg2, i32 ** %op6
	ld.d $t0, $fp, -88
	ld.d $t1, $fp, -40
	st.d $t1, $t0, 0
# %op7 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -104
# store i32  %arg3, i32 * %op7
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -44
	st.w $t1, $t0, 0
# %op8 = alloca [256 x i32 ]
	lu12i.w $t0, -1
	ori $t0, $t0, 2952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -120
# %op9 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 2940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -1152
# %op10 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 2924
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -1168
# store i32  1, i32 * %op9
	ld.d $t0, $fp, -1152
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label11
	b .longest_common_subseq_label11
.longest_common_subseq_label11:
# %op12 = load i32 , i32 * %op9
	ld.d $t0, $fp, -1152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1176
# %op13 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1180
# %op14 = icmp sle i32  %op12, %op13
	ld.w $t0, $fp, -1176
	ld.w $t1, $fp, -1180
	bge  $t1, $t0, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -1181
# %op15 = zext i1  %op14 to i32 
	ld.b $t0, $fp, -1181
	st.w $t0, $fp, -1188
# %op16 = icmp ne i32  %op15, 0
	ld.w $t0, $fp, -1188
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -1189
# br i1  %op16, label %label17, label %label18
	ld.b $t0, $fp, -1189
	bnez $t0, .longest_common_subseq_label17
	b .longest_common_subseq_label18
.longest_common_subseq_label17:
# store i32  1, i32 * %op10
	ld.d $t0, $fp, -1168
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label24
	b .longest_common_subseq_label24
.longest_common_subseq_label18:
# %op19 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1196
# %op20 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1200
# %op21 = load i32 , i32 * %op7
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1204
# %op22 = getelementptr [256 x i32 ], [256 x i32 ]* %op8, i32  0, i32  %op19
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 1024
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
	ori $t1, $t1, 1024
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1196
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -120
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1216
# %op23 = load i32 , i32 * %op22
	ld.d $t0, $fp, -1216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1220
# ret i32  %op23
	ld.w $a0, $fp, -1220
	b longest_common_subseq_ret
.longest_common_subseq_label24:
# %op25 = load i32 , i32 * %op10
	ld.d $t0, $fp, -1168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1224
# %op26 = load i32 , i32 * %op7
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1228
# %op27 = icmp sle i32  %op25, %op26
	ld.w $t0, $fp, -1224
	ld.w $t1, $fp, -1228
	bge  $t1, $t0, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -1229
# %op28 = zext i1  %op27 to i32 
	ld.b $t0, $fp, -1229
	st.w $t0, $fp, -1236
# %op29 = icmp ne i32  %op28, 0
	ld.w $t0, $fp, -1236
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -1237
# br i1  %op29, label %label30, label %label48
	ld.b $t0, $fp, -1237
	bnez $t0, .longest_common_subseq_label30
	b .longest_common_subseq_label48
.longest_common_subseq_label30:
# %op31 = load i32 , i32 * %op9
	ld.d $t0, $fp, -1152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1244
# %op32 = sub i32  %op31, 1
	ld.w $t0, $fp, -1244
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1248
# %op33 = load i32 , i32 * %op9
	ld.d $t0, $fp, -1152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1252
# %op34 = sub i32  %op33, 1
	ld.w $t0, $fp, -1252
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1256
# %op35 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -56
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1264
# %op36 = getelementptr i32 , i32 * %op35, i32  %op32
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1248
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -1264
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1272
# %op37 = load i32 , i32 * %op36
	ld.d $t0, $fp, -1272
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1276
# %op38 = load i32 , i32 * %op10
	ld.d $t0, $fp, -1168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1280
# %op39 = sub i32  %op38, 1
	ld.w $t0, $fp, -1280
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1284
# %op40 = load i32 , i32 * %op10
	ld.d $t0, $fp, -1168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1288
# %op41 = sub i32  %op40, 1
	ld.w $t0, $fp, -1288
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1292
# %op42 = load i32 *, i32 ** %op6
	ld.d $t0, $fp, -88
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1304
# %op43 = getelementptr i32 , i32 * %op42, i32  %op39
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1284
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -1304
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1312
# %op44 = load i32 , i32 * %op43
	ld.d $t0, $fp, -1312
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1316
# %op45 = icmp eq i32  %op37, %op44
	ld.w $t0, $fp, -1276
	ld.w $t1, $fp, -1316
	beq  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -1317
# %op46 = zext i1  %op45 to i32 
	ld.b $t0, $fp, -1317
	st.w $t0, $fp, -1324
# %op47 = icmp ne i32  %op46, 0
	ld.w $t0, $fp, -1324
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -1325
# br i1  %op47, label %label51, label %label65
	ld.b $t0, $fp, -1325
	bnez $t0, .longest_common_subseq_label51
	b .longest_common_subseq_label65
.longest_common_subseq_label48:
# %op49 = load i32 , i32 * %op9
	ld.d $t0, $fp, -1152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1332
# %op50 = add i32  %op49, 1
	ld.w $t0, $fp, -1332
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1336
# store i32  %op50, i32 * %op9
	ld.d $t0, $fp, -1152
	ld.w $t1, $fp, -1336
	st.w $t1, $t0, 0
# br label %label11
	b .longest_common_subseq_label11
.longest_common_subseq_label51:
# %op52 = load i32 , i32 * %op9
	ld.d $t0, $fp, -1152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1340
# %op53 = sub i32  %op52, 1
	ld.w $t0, $fp, -1340
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1344
# %op54 = load i32 , i32 * %op9
	ld.d $t0, $fp, -1152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1348
# %op55 = sub i32  %op54, 1
	ld.w $t0, $fp, -1348
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1352
# %op56 = load i32 , i32 * %op10
	ld.d $t0, $fp, -1168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1356
# %op57 = sub i32  %op56, 1
	ld.w $t0, $fp, -1356
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1360
# %op58 = getelementptr [256 x i32 ], [256 x i32 ]* %op8, i32  0, i32  %op53
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 1024
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
	ori $t1, $t1, 1024
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1344
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -120
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1368
# %op59 = load i32 , i32 * %op58
	ld.d $t0, $fp, -1368
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1372
# %op60 = add i32  %op59, 1
	ld.w $t0, $fp, -1372
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1376
# %op61 = load i32 , i32 * %op9
	ld.d $t0, $fp, -1152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1380
# %op62 = load i32 , i32 * %op9
	ld.d $t0, $fp, -1152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1384
# %op63 = load i32 , i32 * %op10
	ld.d $t0, $fp, -1168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1388
# %op64 = getelementptr [256 x i32 ], [256 x i32 ]* %op8, i32  0, i32  %op61
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 1024
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
	ori $t1, $t1, 1024
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1380
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -120
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1400
# store i32  %op60, i32 * %op64
	ld.d $t0, $fp, -1400
	ld.w $t1, $fp, -1376
	st.w $t1, $t0, 0
# br label %label84
	b .longest_common_subseq_label84
.longest_common_subseq_label65:
# %op66 = load i32 , i32 * %op9
	ld.d $t0, $fp, -1152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1404
# %op67 = sub i32  %op66, 1
	ld.w $t0, $fp, -1404
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1408
# %op68 = load i32 , i32 * %op9
	ld.d $t0, $fp, -1152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1412
# %op69 = sub i32  %op68, 1
	ld.w $t0, $fp, -1412
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1416
# %op70 = load i32 , i32 * %op10
	ld.d $t0, $fp, -1168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1420
# %op71 = getelementptr [256 x i32 ], [256 x i32 ]* %op8, i32  0, i32  %op67
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 1024
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
	ori $t1, $t1, 1024
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1408
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -120
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1432
# %op72 = load i32 , i32 * %op71
	ld.d $t0, $fp, -1432
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1436
# %op73 = load i32 , i32 * %op9
	ld.d $t0, $fp, -1152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1440
# %op74 = load i32 , i32 * %op9
	ld.d $t0, $fp, -1152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1444
# %op75 = load i32 , i32 * %op10
	ld.d $t0, $fp, -1168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1448
# %op76 = sub i32  %op75, 1
	ld.w $t0, $fp, -1448
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1452
# %op77 = getelementptr [256 x i32 ], [256 x i32 ]* %op8, i32  0, i32  %op73
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 1024
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
	ori $t1, $t1, 1024
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1440
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -120
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1464
# %op78 = load i32 , i32 * %op77
	ld.d $t0, $fp, -1464
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1468
# %op79 = call i32  @MAX(i32  %op72, i32  %op78)
	ld.w $a0, $fp, -1436
	ld.w $a1, $fp, -1468
	bl MAX
	st.w $a0, $fp, -1472
# %op80 = load i32 , i32 * %op9
	ld.d $t0, $fp, -1152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1476
# %op81 = load i32 , i32 * %op9
	ld.d $t0, $fp, -1152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1480
# %op82 = load i32 , i32 * %op10
	ld.d $t0, $fp, -1168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1484
# %op83 = getelementptr [256 x i32 ], [256 x i32 ]* %op8, i32  0, i32  %op80
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 1024
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
	ori $t1, $t1, 1024
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1476
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -120
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1496
# store i32  %op79, i32 * %op83
	ld.d $t0, $fp, -1496
	ld.w $t1, $fp, -1472
	st.w $t1, $t0, 0
# br label %label84
	b .longest_common_subseq_label84
.longest_common_subseq_label84:
# %op85 = load i32 , i32 * %op10
	ld.d $t0, $fp, -1168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1500
# %op86 = add i32  %op85, 1
	ld.w $t0, $fp, -1500
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1504
# store i32  %op86, i32 * %op10
	ld.d $t0, $fp, -1168
	ld.w $t1, $fp, -1504
	st.w $t1, $t0, 0
# br label %label24
	b .longest_common_subseq_label24
longest_common_subseq_ret:
	addi.d $sp, $sp, 1504
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -448
.main_label_entry:
# %op0 = alloca [15 x i32 ]
	lu12i.w $t0, -1
	ori $t0, $t0, 4012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -24
# %op1 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 60
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
	ori $t1, $t1, 60
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
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -96
# store i32  8, i32 * %op1
	ld.d $t0, $fp, -96
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op2 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  1
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 60
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
	ori $t1, $t1, 60
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
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -104
# store i32  7, i32 * %op2
	ld.d $t0, $fp, -104
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op3 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  2
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 60
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
	ori $t1, $t1, 60
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 2
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -112
# store i32  4, i32 * %op3
	ld.d $t0, $fp, -112
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op4 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  3
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 60
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
	ori $t1, $t1, 60
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 3
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -120
# store i32  1, i32 * %op4
	ld.d $t0, $fp, -120
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op5 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  4
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 60
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
	ori $t1, $t1, 60
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -128
# store i32  2, i32 * %op5
	ld.d $t0, $fp, -128
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op6 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  5
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 60
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
	ori $t1, $t1, 60
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 5
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -136
# store i32  7, i32 * %op6
	ld.d $t0, $fp, -136
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op7 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  6
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 60
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
	ori $t1, $t1, 60
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 6
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -144
# store i32  0, i32 * %op7
	ld.d $t0, $fp, -144
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op8 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  7
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 60
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
	ori $t1, $t1, 60
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 7
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -152
# store i32  1, i32 * %op8
	ld.d $t0, $fp, -152
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op9 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  8
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 60
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
	ori $t1, $t1, 60
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 8
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -160
# store i32  9, i32 * %op9
	ld.d $t0, $fp, -160
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# %op10 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  9
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 60
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
	ori $t1, $t1, 60
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 9
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -168
# store i32  3, i32 * %op10
	ld.d $t0, $fp, -168
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op11 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  10
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 60
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
	ori $t1, $t1, 60
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 10
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -176
# store i32  4, i32 * %op11
	ld.d $t0, $fp, -176
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op12 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  11
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 60
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
	ori $t1, $t1, 60
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 11
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -184
# store i32  8, i32 * %op12
	ld.d $t0, $fp, -184
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op13 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  12
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 60
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
	ori $t1, $t1, 60
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 12
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -192
# store i32  3, i32 * %op13
	ld.d $t0, $fp, -192
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op14 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  13
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 60
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
	ori $t1, $t1, 60
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 13
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -200
# store i32  7, i32 * %op14
	ld.d $t0, $fp, -200
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op15 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  14
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 60
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
	ori $t1, $t1, 60
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 14
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -208
# store i32  0, i32 * %op15
	ld.d $t0, $fp, -208
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op16 = alloca [13 x i32 ]
	lu12i.w $t0, -1
	ori $t0, $t0, 3828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -216
# %op17 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 52
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
	ori $t1, $t1, 52
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
	ld.d $t1, $fp, -216
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -280
# store i32  3, i32 * %op17
	ld.d $t0, $fp, -280
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op18 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  1
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 52
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
	ori $t1, $t1, 52
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
	ld.d $t1, $fp, -216
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -288
# store i32  9, i32 * %op18
	ld.d $t0, $fp, -288
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# %op19 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  2
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 52
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
	ori $t1, $t1, 52
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 2
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -216
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -296
# store i32  7, i32 * %op19
	ld.d $t0, $fp, -296
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op20 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  3
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 52
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
	ori $t1, $t1, 52
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 3
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -216
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -304
# store i32  1, i32 * %op20
	ld.d $t0, $fp, -304
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op21 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  4
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 52
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
	ori $t1, $t1, 52
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -216
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -312
# store i32  4, i32 * %op21
	ld.d $t0, $fp, -312
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op22 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  5
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 52
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
	ori $t1, $t1, 52
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 5
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -216
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -320
# store i32  2, i32 * %op22
	ld.d $t0, $fp, -320
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op23 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  6
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 52
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
	ori $t1, $t1, 52
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 6
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -216
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -328
# store i32  4, i32 * %op23
	ld.d $t0, $fp, -328
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op24 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  7
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 52
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
	ori $t1, $t1, 52
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 7
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -216
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -336
# store i32  3, i32 * %op24
	ld.d $t0, $fp, -336
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op25 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  8
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 52
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
	ori $t1, $t1, 52
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 8
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -216
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -344
# store i32  6, i32 * %op25
	ld.d $t0, $fp, -344
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# %op26 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  9
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 52
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
	ori $t1, $t1, 52
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 9
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -216
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -352
# store i32  8, i32 * %op26
	ld.d $t0, $fp, -352
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op27 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  10
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 52
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
	ori $t1, $t1, 52
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 10
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -216
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -360
# store i32  0, i32 * %op27
	ld.d $t0, $fp, -360
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op28 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  11
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 52
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
	ori $t1, $t1, 52
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 11
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -216
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -368
# store i32  1, i32 * %op28
	ld.d $t0, $fp, -368
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op29 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  12
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 52
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
	ori $t1, $t1, 52
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 12
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -216
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -376
# store i32  5, i32 * %op29
	ld.d $t0, $fp, -376
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op30 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3708
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -384
# %op31 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3692
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -400
# %op32 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 60
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
	ori $t1, $t1, 60
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
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -416
# %op33 = call i32  @max_sum_nonadjacent(i32 * %op32, i32  15)
	ld.d $a0, $fp, -416
	addi.w $a1, $zero, 15
	bl max_sum_nonadjacent
	st.w $a0, $fp, -420
# call void @putint(i32  %op33)
	ld.w $a0, $fp, -420
	bl putint
# %op34 = trunc i32  10 to i8 
	addi.w $t0, $zero, 10
	andi $t1, $t0, 255
	st.b $t1, $fp, -421
# call void @putch(i8  %op34)
	ld.b $a0, $fp, -421
	bl putch
# %op35 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 60
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
	ori $t1, $t1, 60
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
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -432
# %op36 = getelementptr [13 x i32 ], [13 x i32 ]* %op16, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 52
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
	ori $t1, $t1, 52
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
	ld.d $t1, $fp, -216
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -440
# %op37 = call i32  @longest_common_subseq(i32 * %op35, i32  15, i32 * %op36, i32  13)
	ld.d $a0, $fp, -432
	addi.w $a1, $zero, 15
	ld.d $a2, $fp, -440
	addi.w $a3, $zero, 13
	bl longest_common_subseq
	st.w $a0, $fp, -444
# call void @putint(i32  %op37)
	ld.w $a0, $fp, -444
	bl putint
# %op38 = trunc i32  10 to i8 
	addi.w $t0, $zero, 10
	andi $t1, $t0, 255
	st.b $t1, $fp, -445
# call void @putch(i8  %op38)
	ld.b $a0, $fp, -445
	bl putch
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 448
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

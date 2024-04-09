	.text
	.globl exgcd
	.type exgcd, @function
exgcd:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -368
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
	st.d $a2, $fp, -32
	st.d $a3, $fp, -40
.exgcd_label_entry:
# %op4 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -48
# store i32  %arg0, i32 * %op4
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op5 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -64
# store i32  %arg1, i32 * %op5
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op6 = alloca i32 *
	lu12i.w $t0, -1
	ori $t0, $t0, 4008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -80
# store i32 * %arg2, i32 ** %op6
	ld.d $t0, $fp, -80
	ld.d $t1, $fp, -32
	st.d $t1, $t0, 0
# %op7 = alloca i32 *
	lu12i.w $t0, -1
	ori $t0, $t0, 3992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -96
# store i32 * %arg3, i32 ** %op7
	ld.d $t0, $fp, -96
	ld.d $t1, $fp, -40
	st.d $t1, $t0, 0
# %op8 = load i32 , i32 * %op5
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op9 = icmp eq i32  %op8, 0
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -109
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -109
	st.w $t0, $fp, -116
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -117
# br i1  %op11, label %label12, label %label18
	ld.b $t0, $fp, -117
	bnez $t0, .exgcd_label12
	b .exgcd_label18
.exgcd_label12:
# %op13 = load i32 *, i32 ** %op6
	ld.d $t0, $fp, -80
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -128
# %op14 = getelementptr i32 , i32 * %op13, i32  0
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
	ld.d $t1, $fp, -128
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -136
# store i32  1, i32 * %op14
	ld.d $t0, $fp, -136
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op15 = load i32 *, i32 ** %op7
	ld.d $t0, $fp, -96
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -144
# %op16 = getelementptr i32 , i32 * %op15, i32  0
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
# store i32  0, i32 * %op16
	ld.d $t0, $fp, -152
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op17 = load i32 , i32 * %op4
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# ret i32  %op17
	ld.w $a0, $fp, -156
	b exgcd_ret
.exgcd_label18:
# %op19 = load i32 , i32 * %op5
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op20 = load i32 , i32 * %op4
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op21 = load i32 , i32 * %op5
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op22 = srem i32  %op20, %op21
	ld.w $t0, $fp, -164
	ld.w $t1, $fp, -168
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -172
# %op23 = load i32 *, i32 ** %op6
	ld.d $t0, $fp, -80
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -184
# %op24 = load i32 *, i32 ** %op7
	ld.d $t0, $fp, -96
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -192
# %op25 = call i32  @exgcd(i32  %op19, i32  %op22, i32 * %op23, i32 * %op24)
	ld.w $a0, $fp, -160
	ld.w $a1, $fp, -172
	ld.d $a2, $fp, -184
	ld.d $a3, $fp, -192
	bl exgcd
	st.w $a0, $fp, -196
# %op26 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3884
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -208
# store i32  %op25, i32 * %op26
	ld.d $t0, $fp, -208
	ld.w $t1, $fp, -196
	st.w $t1, $t0, 0
# %op27 = load i32 *, i32 ** %op6
	ld.d $t0, $fp, -80
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -224
# %op28 = getelementptr i32 , i32 * %op27, i32  0
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
	ld.d $t1, $fp, -224
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -232
# %op29 = load i32 , i32 * %op28
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# %op30 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3844
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -248
# store i32  %op29, i32 * %op30
	ld.d $t0, $fp, -248
	ld.w $t1, $fp, -236
	st.w $t1, $t0, 0
# %op31 = load i32 *, i32 ** %op7
	ld.d $t0, $fp, -96
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -264
# %op32 = getelementptr i32 , i32 * %op31, i32  0
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
	ld.d $t1, $fp, -264
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -272
# %op33 = load i32 , i32 * %op32
	ld.d $t0, $fp, -272
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op34 = load i32 *, i32 ** %op6
	ld.d $t0, $fp, -80
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -288
# %op35 = getelementptr i32 , i32 * %op34, i32  0
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
	ld.d $t1, $fp, -288
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -296
# store i32  %op33, i32 * %op35
	ld.d $t0, $fp, -296
	ld.w $t1, $fp, -276
	st.w $t1, $t0, 0
# %op36 = load i32 , i32 * %op30
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op37 = load i32 , i32 * %op4
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -304
# %op38 = load i32 , i32 * %op5
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op39 = sdiv i32  %op37, %op38
	ld.w $t0, $fp, -304
	ld.w $t1, $fp, -308
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -312
# %op40 = load i32 *, i32 ** %op7
	ld.d $t0, $fp, -96
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -320
# %op41 = getelementptr i32 , i32 * %op40, i32  0
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
	ld.d $t1, $fp, -320
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -328
# %op42 = load i32 , i32 * %op41
	ld.d $t0, $fp, -328
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op43 = mul i32  %op39, %op42
	ld.w $t0, $fp, -312
	ld.w $t1, $fp, -332
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -336
# %op44 = sub i32  %op36, %op43
	ld.w $t0, $fp, -300
	ld.w $t1, $fp, -336
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -340
# %op45 = load i32 *, i32 ** %op7
	ld.d $t0, $fp, -96
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -352
# %op46 = getelementptr i32 , i32 * %op45, i32  0
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
	ld.d $t1, $fp, -352
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -360
# store i32  %op44, i32 * %op46
	ld.d $t0, $fp, -360
	ld.w $t1, $fp, -340
	st.w $t1, $t0, 0
# %op47 = load i32 , i32 * %op26
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# ret i32  %op47
	ld.w $a0, $fp, -364
	b exgcd_ret
exgcd_ret:
	addi.d $sp, $sp, 368
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
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
# store i32  7, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op1 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -40
# store i32  15, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 15
	st.w $t1, $t0, 0
# %op2 = alloca [1 x i32 ]
	lu12i.w $t0, -1
	ori $t0, $t0, 4036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -56
# %op3 = getelementptr [1 x i32 ], [1 x i32 ]* %op2, i32  0, i32  0
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
	ld.d $t1, $fp, -56
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -72
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op4 = alloca [1 x i32 ]
	lu12i.w $t0, -1
	ori $t0, $t0, 4012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -80
# %op5 = getelementptr [1 x i32 ], [1 x i32 ]* %op4, i32  0, i32  0
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
	ld.d $t1, $fp, -80
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -96
# store i32  1, i32 * %op5
	ld.d $t0, $fp, -96
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op6 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op7 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op8 = getelementptr [1 x i32 ], [1 x i32 ]* %op2, i32  0, i32  0
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
	ld.d $t1, $fp, -56
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -112
# %op9 = getelementptr [1 x i32 ], [1 x i32 ]* %op4, i32  0, i32  0
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
	ld.d $t1, $fp, -80
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -120
# %op10 = call i32  @exgcd(i32  %op6, i32  %op7, i32 * %op8, i32 * %op9)
	ld.w $a0, $fp, -100
	ld.w $a1, $fp, -104
	ld.d $a2, $fp, -112
	ld.d $a3, $fp, -120
	bl exgcd
	st.w $a0, $fp, -124
# %op11 = getelementptr [1 x i32 ], [1 x i32 ]* %op2, i32  0, i32  0
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
	ld.d $t1, $fp, -56
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -136
# %op12 = load i32 , i32 * %op11
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op13 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op14 = srem i32  %op12, %op13
	ld.w $t0, $fp, -140
	ld.w $t1, $fp, -144
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -148
# %op15 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op16 = add i32  %op14, %op15
	ld.w $t0, $fp, -148
	ld.w $t1, $fp, -152
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# %op17 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op18 = srem i32  %op16, %op17
	ld.w $t0, $fp, -156
	ld.w $t1, $fp, -160
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -164
# %op19 = getelementptr [1 x i32 ], [1 x i32 ]* %op2, i32  0, i32  0
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
	ld.d $t1, $fp, -56
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -176
# store i32  %op18, i32 * %op19
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -164
	st.w $t1, $t0, 0
# %op20 = getelementptr [1 x i32 ], [1 x i32 ]* %op2, i32  0, i32  0
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
	ld.d $t1, $fp, -56
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -184
# %op21 = load i32 , i32 * %op20
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# call void @putint(i32  %op21)
	ld.w $a0, $fp, -188
	bl putint
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 192
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

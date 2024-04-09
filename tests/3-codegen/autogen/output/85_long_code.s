# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl n
	.type n, @object
	.size n, 4
n:
	.space 4
	.text
	.globl bubblesort
	.type bubblesort, @function
bubblesort:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -384
	st.d $a0, $fp, -24
.bubblesort_label_entry:
# %op1 = alloca i32 *
	lu12i.w $t0, -1
	ori $t0, $t0, 4056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -32
# store i32 * %arg0, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op2 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -48
# %op3 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -64
# store i32  0, i32 * %op2
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label4
	b .bubblesort_label4
.bubblesort_label4:
# %op5 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op6 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op7 = sub i32  %op6, 1
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# %op8 = icmp slt i32  %op5, %op7
	ld.w $t0, $fp, -72
	ld.w $t1, $fp, -80
	slt $t2, $t0, $t1
	st.b $t2, $fp, -81
# %op9 = zext i1  %op8 to i32 
	ld.b $t0, $fp, -81
	st.w $t0, $fp, -88
# %op10 = icmp ne i32  %op9, 0
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -89
# br i1  %op10, label %label11, label %label12
	ld.b $t0, $fp, -89
	bnez $t0, .bubblesort_label11
	b .bubblesort_label12
.bubblesort_label11:
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label13
	b .bubblesort_label13
.bubblesort_label12:
# ret i32  0
	addi.w $a0, $zero, 0
	b bubblesort_ret
.bubblesort_label13:
# %op14 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op15 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op16 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op17 = sub i32  %op15, %op16
	ld.w $t0, $fp, -100
	ld.w $t1, $fp, -104
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -108
# %op18 = sub i32  %op17, 1
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -112
# %op19 = icmp slt i32  %op14, %op18
	ld.w $t0, $fp, -96
	ld.w $t1, $fp, -112
	slt $t2, $t0, $t1
	st.b $t2, $fp, -113
# %op20 = zext i1  %op19 to i32 
	ld.b $t0, $fp, -113
	st.w $t0, $fp, -120
# %op21 = icmp ne i32  %op20, 0
	ld.w $t0, $fp, -120
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -121
# br i1  %op21, label %label22, label %label38
	ld.b $t0, $fp, -121
	bnez $t0, .bubblesort_label22
	b .bubblesort_label38
.bubblesort_label22:
# %op23 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op24 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op25 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -144
# %op26 = getelementptr i32 , i32 * %op25, i32  %op23
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -128
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -144
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -152
# %op27 = load i32 , i32 * %op26
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op28 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op29 = add i32  %op28, 1
	ld.w $t0, $fp, -160
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -164
# %op30 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op31 = add i32  %op30, 1
	ld.w $t0, $fp, -168
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -172
# %op32 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -184
# %op33 = getelementptr i32 , i32 * %op32, i32  %op29
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -164
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -184
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -192
# %op34 = load i32 , i32 * %op33
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op35 = icmp sgt i32  %op27, %op34
	ld.w $t0, $fp, -156
	ld.w $t1, $fp, -196
	slt $t2, $t1, $t0
	st.b $t2, $fp, -197
# %op36 = zext i1  %op35 to i32 
	ld.b $t0, $fp, -197
	st.w $t0, $fp, -204
# %op37 = icmp ne i32  %op36, 0
	ld.w $t0, $fp, -204
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -205
# br i1  %op37, label %label41, label %label66
	ld.b $t0, $fp, -205
	bnez $t0, .bubblesort_label41
	b .bubblesort_label66
.bubblesort_label38:
# %op39 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op40 = add i32  %op39, 1
	ld.w $t0, $fp, -212
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -216
# store i32  %op40, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -216
	st.w $t1, $t0, 0
# br label %label4
	b .bubblesort_label4
.bubblesort_label41:
# %op42 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3868
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -224
# %op43 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -232
# %op44 = add i32  %op43, 1
	ld.w $t0, $fp, -232
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -236
# %op45 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -240
# %op46 = add i32  %op45, 1
	ld.w $t0, $fp, -240
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -244
# %op47 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -256
# %op48 = getelementptr i32 , i32 * %op47, i32  %op44
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -236
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -256
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -264
# %op49 = load i32 , i32 * %op48
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# store i32  %op49, i32 * %op42
	ld.d $t0, $fp, -224
	ld.w $t1, $fp, -268
	st.w $t1, $t0, 0
# %op50 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -272
# %op51 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op52 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -288
# %op53 = getelementptr i32 , i32 * %op52, i32  %op50
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -272
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -288
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -296
# %op54 = load i32 , i32 * %op53
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op55 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -304
# %op56 = add i32  %op55, 1
	ld.w $t0, $fp, -304
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -308
# %op57 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -312
# %op58 = add i32  %op57, 1
	ld.w $t0, $fp, -312
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -316
# %op59 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -328
# %op60 = getelementptr i32 , i32 * %op59, i32  %op56
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -308
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -328
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -336
# store i32  %op54, i32 * %op60
	ld.d $t0, $fp, -336
	ld.w $t1, $fp, -300
	st.w $t1, $t0, 0
# %op61 = load i32 , i32 * %op42
	ld.d $t0, $fp, -224
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -340
# %op62 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -344
# %op63 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op64 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -360
# %op65 = getelementptr i32 , i32 * %op64, i32  %op62
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -344
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -360
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -368
# store i32  %op61, i32 * %op65
	ld.d $t0, $fp, -368
	ld.w $t1, $fp, -340
	st.w $t1, $t0, 0
# br label %label66
	b .bubblesort_label66
.bubblesort_label66:
# %op67 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -372
# %op68 = add i32  %op67, 1
	ld.w $t0, $fp, -372
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -376
# store i32  %op68, i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -376
	st.w $t1, $t0, 0
# br label %label13
	b .bubblesort_label13
bubblesort_ret:
	addi.d $sp, $sp, 384
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl insertsort
	.type insertsort, @function
insertsort:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -336
	st.d $a0, $fp, -24
.insertsort_label_entry:
# %op1 = alloca i32 *
	lu12i.w $t0, -1
	ori $t0, $t0, 4056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -32
# store i32 * %arg0, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
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
	b .insertsort_label3
.insertsort_label3:
# %op4 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op5 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op6 = icmp slt i32  %op4, %op5
	ld.w $t0, $fp, -56
	ld.w $t1, $fp, -60
	slt $t2, $t0, $t1
	st.b $t2, $fp, -61
# %op7 = zext i1  %op6 to i32 
	ld.b $t0, $fp, -61
	st.w $t0, $fp, -68
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -69
# br i1  %op8, label %label9, label %label19
	ld.b $t0, $fp, -69
	bnez $t0, .insertsort_label9
	b .insertsort_label19
.insertsort_label9:
# %op10 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -80
# %op11 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op12 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op13 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -104
# %op14 = getelementptr i32 , i32 * %op13, i32  %op11
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -88
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -104
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -112
# %op15 = load i32 , i32 * %op14
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# store i32  %op15, i32 * %op10
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -116
	st.w $t1, $t0, 0
# %op16 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -128
# %op17 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# %op18 = sub i32  %op17, 1
	ld.w $t0, $fp, -136
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -140
# store i32  %op18, i32 * %op16
	ld.d $t0, $fp, -128
	ld.w $t1, $fp, -140
	st.w $t1, $t0, 0
# br label %label20
	b .insertsort_label20
.insertsort_label19:
# ret i32  0
	addi.w $a0, $zero, 0
	b insertsort_ret
.insertsort_label20:
# %op21 = load i32 , i32 * %op16
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op22 = mul i32  1, -1
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -148
# %op23 = icmp sgt i32  %op21, %op22
	ld.w $t0, $fp, -144
	ld.w $t1, $fp, -148
	slt $t2, $t1, $t0
	st.b $t2, $fp, -149
# %op24 = zext i1  %op23 to i32 
	ld.b $t0, $fp, -149
	st.w $t0, $fp, -156
# %op25 = icmp ne i32  %op24, 0
	ld.w $t0, $fp, -156
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -157
# br i1  %op25, label %label50, label %label40
	ld.b $t0, $fp, -157
	bnez $t0, .insertsort_label50
	b .insertsort_label40
.insertsort_label26:
# %op27 = load i32 , i32 * %op16
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op28 = load i32 , i32 * %op16
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op29 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -176
# %op30 = getelementptr i32 , i32 * %op29, i32  %op27
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -164
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -176
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -184
# %op31 = load i32 , i32 * %op30
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op32 = load i32 , i32 * %op16
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -192
# %op33 = add i32  %op32, 1
	ld.w $t0, $fp, -192
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -196
# %op34 = load i32 , i32 * %op16
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -200
# %op35 = add i32  %op34, 1
	ld.w $t0, $fp, -200
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -204
# %op36 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -216
# %op37 = getelementptr i32 , i32 * %op36, i32  %op33
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -196
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -216
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -224
# store i32  %op31, i32 * %op37
	ld.d $t0, $fp, -224
	ld.w $t1, $fp, -188
	st.w $t1, $t0, 0
# %op38 = load i32 , i32 * %op16
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op39 = sub i32  %op38, 1
	ld.w $t0, $fp, -228
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -232
# store i32  %op39, i32 * %op16
	ld.d $t0, $fp, -128
	ld.w $t1, $fp, -232
	st.w $t1, $t0, 0
# br label %label20
	b .insertsort_label20
.insertsort_label40:
# %op41 = load i32 , i32 * %op10
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# %op42 = load i32 , i32 * %op16
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -240
# %op43 = add i32  %op42, 1
	ld.w $t0, $fp, -240
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -244
# %op44 = load i32 , i32 * %op16
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -248
# %op45 = add i32  %op44, 1
	ld.w $t0, $fp, -248
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -252
# %op46 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -264
# %op47 = getelementptr i32 , i32 * %op46, i32  %op43
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -244
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -264
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -272
# store i32  %op41, i32 * %op47
	ld.d $t0, $fp, -272
	ld.w $t1, $fp, -236
	st.w $t1, $t0, 0
# %op48 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op49 = add i32  %op48, 1
	ld.w $t0, $fp, -276
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -280
# store i32  %op49, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -280
	st.w $t1, $t0, 0
# br label %label3
	b .insertsort_label3
.insertsort_label50:
# %op51 = load i32 , i32 * %op10
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# %op52 = load i32 , i32 * %op16
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -288
# %op53 = load i32 , i32 * %op16
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# %op54 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -304
# %op55 = getelementptr i32 , i32 * %op54, i32  %op52
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
# %op56 = load i32 , i32 * %op55
	ld.d $t0, $fp, -312
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op57 = icmp slt i32  %op51, %op56
	ld.w $t0, $fp, -284
	ld.w $t1, $fp, -316
	slt $t2, $t0, $t1
	st.b $t2, $fp, -317
# %op58 = zext i1  %op57 to i32 
	ld.b $t0, $fp, -317
	st.w $t0, $fp, -324
# %op59 = icmp ne i32  %op58, 0
	ld.w $t0, $fp, -324
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -325
# br i1  %op59, label %label26, label %label40
	ld.b $t0, $fp, -325
	bnez $t0, .insertsort_label26
	b .insertsort_label40
insertsort_ret:
	addi.d $sp, $sp, 336
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl QuickSort
	.type QuickSort, @function
QuickSort:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -624
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
	st.w $a2, $fp, -32
.QuickSort_label_entry:
# %op3 = alloca i32 *
	lu12i.w $t0, -1
	ori $t0, $t0, 4048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -40
# store i32 * %arg0, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op4 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -56
# store i32  %arg1, i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op5 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -72
# store i32  %arg2, i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -32
	st.w $t1, $t0, 0
# %op6 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op7 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op8 = icmp slt i32  %op6, %op7
	ld.w $t0, $fp, -80
	ld.w $t1, $fp, -84
	slt $t2, $t0, $t1
	st.b $t2, $fp, -85
# %op9 = zext i1  %op8 to i32 
	ld.b $t0, $fp, -85
	st.w $t0, $fp, -92
# %op10 = icmp ne i32  %op9, 0
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -93
# br i1  %op10, label %label11, label %label22
	ld.b $t0, $fp, -93
	bnez $t0, .QuickSort_label11
	b .QuickSort_label22
.QuickSort_label11:
# %op12 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -104
# %op13 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# store i32  %op13, i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -112
	st.w $t1, $t0, 0
# %op14 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3972
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -120
# %op15 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# store i32  %op15, i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -128
	st.w $t1, $t0, 0
# %op16 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -136
# %op17 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op18 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op19 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -160
# %op20 = getelementptr i32 , i32 * %op19, i32  %op17
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -144
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -160
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -168
# %op21 = load i32 , i32 * %op20
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# store i32  %op21, i32 * %op16
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -172
	st.w $t1, $t0, 0
# br label %label23
	b .QuickSort_label23
.QuickSort_label22:
# ret i32  0
	addi.w $a0, $zero, 0
	b QuickSort_ret
.QuickSort_label23:
# %op24 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op25 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op26 = icmp slt i32  %op24, %op25
	ld.w $t0, $fp, -176
	ld.w $t1, $fp, -180
	slt $t2, $t0, $t1
	st.b $t2, $fp, -181
# %op27 = zext i1  %op26 to i32 
	ld.b $t0, $fp, -181
	st.w $t0, $fp, -188
# %op28 = icmp ne i32  %op27, 0
	ld.w $t0, $fp, -188
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -189
# br i1  %op28, label %label29, label %label30
	ld.b $t0, $fp, -189
	bnez $t0, .QuickSort_label29
	b .QuickSort_label30
.QuickSort_label29:
# br label %label49
	b .QuickSort_label49
.QuickSort_label30:
# %op31 = load i32 , i32 * %op16
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op32 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -200
# %op33 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op34 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -216
# %op35 = getelementptr i32 , i32 * %op34, i32  %op32
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -200
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -216
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -224
# store i32  %op31, i32 * %op35
	ld.d $t0, $fp, -224
	ld.w $t1, $fp, -196
	st.w $t1, $t0, 0
# %op36 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -232
# %op37 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -240
# %op38 = sub i32  %op37, 1
	ld.w $t0, $fp, -240
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -244
# store i32  %op38, i32 * %op36
	ld.d $t0, $fp, -232
	ld.w $t1, $fp, -244
	st.w $t1, $t0, 0
# %op39 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -256
# %op40 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# %op41 = load i32 , i32 * %op36
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -264
# %op42 = call i32  @QuickSort(i32 * %op39, i32  %op40, i32  %op41)
	ld.d $a0, $fp, -256
	ld.w $a1, $fp, -260
	ld.w $a2, $fp, -264
	bl QuickSort
	st.w $a0, $fp, -268
# store i32  %op42, i32 * %op36
	ld.d $t0, $fp, -232
	ld.w $t1, $fp, -268
	st.w $t1, $t0, 0
# %op43 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -272
# %op44 = add i32  %op43, 1
	ld.w $t0, $fp, -272
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -276
# store i32  %op44, i32 * %op36
	ld.d $t0, $fp, -232
	ld.w $t1, $fp, -276
	st.w $t1, $t0, 0
# %op45 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -288
# %op46 = load i32 , i32 * %op36
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# %op47 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -296
# %op48 = call i32  @QuickSort(i32 * %op45, i32  %op46, i32  %op47)
	ld.d $a0, $fp, -288
	ld.w $a1, $fp, -292
	ld.w $a2, $fp, -296
	bl QuickSort
	st.w $a0, $fp, -300
# store i32  %op48, i32 * %op36
	ld.d $t0, $fp, -232
	ld.w $t1, $fp, -300
	st.w $t1, $t0, 0
# br label %label22
	b .QuickSort_label22
.QuickSort_label49:
# %op50 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -304
# %op51 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op52 = icmp slt i32  %op50, %op51
	ld.w $t0, $fp, -304
	ld.w $t1, $fp, -308
	slt $t2, $t0, $t1
	st.b $t2, $fp, -309
# %op53 = zext i1  %op52 to i32 
	ld.b $t0, $fp, -309
	st.w $t0, $fp, -316
# %op54 = icmp ne i32  %op53, 0
	ld.w $t0, $fp, -316
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	st.b $t2, $fp, -317
# br i1  %op54, label %label64, label %label58
	ld.b $t0, $fp, -317
	bnez $t0, .QuickSort_label64
	b .QuickSort_label58
.QuickSort_label55:
# %op56 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op57 = sub i32  %op56, 1
	ld.w $t0, $fp, -324
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -328
# store i32  %op57, i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -328
	st.w $t1, $t0, 0
# br label %label49
	b .QuickSort_label49
.QuickSort_label58:
# %op59 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op60 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -336
# %op61 = icmp slt i32  %op59, %op60
	ld.w $t0, $fp, -332
	ld.w $t1, $fp, -336
	slt $t2, $t0, $t1
	st.b $t2, $fp, -337
# %op62 = zext i1  %op61 to i32 
	ld.b $t0, $fp, -337
	st.w $t0, $fp, -344
# %op63 = icmp ne i32  %op62, 0
	ld.w $t0, $fp, -344
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	st.b $t2, $fp, -345
# br i1  %op63, label %label75, label %label87
	ld.b $t0, $fp, -345
	bnez $t0, .QuickSort_label75
	b .QuickSort_label87
.QuickSort_label64:
# %op65 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -352
# %op66 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op67 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -368
# %op68 = getelementptr i32 , i32 * %op67, i32  %op65
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -352
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -368
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -376
# %op69 = load i32 , i32 * %op68
	ld.d $t0, $fp, -376
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op70 = load i32 , i32 * %op16
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -384
# %op71 = sub i32  %op70, 1
	ld.w $t0, $fp, -384
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -388
# %op72 = icmp sgt i32  %op69, %op71
	ld.w $t0, $fp, -380
	ld.w $t1, $fp, -388
	slt $t2, $t1, $t0
	st.b $t2, $fp, -389
# %op73 = zext i1  %op72 to i32 
	ld.b $t0, $fp, -389
	st.w $t0, $fp, -396
# %op74 = icmp ne i32  %op73, 0
	ld.w $t0, $fp, -396
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label21
	addi.d $t2, $zero, 0
	b false_label21
true_label21:
	addi.d $t2, $zero, 1
false_label21:
	st.b $t2, $fp, -397
# br i1  %op74, label %label55, label %label58
	ld.b $t0, $fp, -397
	bnez $t0, .QuickSort_label55
	b .QuickSort_label58
.QuickSort_label75:
# %op76 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -404
# %op77 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -408
# %op78 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -416
# %op79 = getelementptr i32 , i32 * %op78, i32  %op76
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -404
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -416
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -424
# %op80 = load i32 , i32 * %op79
	ld.d $t0, $fp, -424
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -428
# %op81 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -432
# %op82 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -436
# %op83 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -448
# %op84 = getelementptr i32 , i32 * %op83, i32  %op81
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -432
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -448
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -456
# store i32  %op80, i32 * %op84
	ld.d $t0, $fp, -456
	ld.w $t1, $fp, -428
	st.w $t1, $t0, 0
# %op85 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -460
# %op86 = add i32  %op85, 1
	ld.w $t0, $fp, -460
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -464
# store i32  %op86, i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -464
	st.w $t1, $t0, 0
# br label %label87
	b .QuickSort_label87
.QuickSort_label87:
# br label %label88
	b .QuickSort_label88
.QuickSort_label88:
# %op89 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -468
# %op90 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -472
# %op91 = icmp slt i32  %op89, %op90
	ld.w $t0, $fp, -468
	ld.w $t1, $fp, -472
	slt $t2, $t0, $t1
	st.b $t2, $fp, -473
# %op92 = zext i1  %op91 to i32 
	ld.b $t0, $fp, -473
	st.w $t0, $fp, -480
# %op93 = icmp ne i32  %op92, 0
	ld.w $t0, $fp, -480
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label23
	addi.d $t2, $zero, 0
	b false_label23
true_label23:
	addi.d $t2, $zero, 1
false_label23:
	st.b $t2, $fp, -481
# br i1  %op93, label %label103, label %label97
	ld.b $t0, $fp, -481
	bnez $t0, .QuickSort_label103
	b .QuickSort_label97
.QuickSort_label94:
# %op95 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -488
# %op96 = add i32  %op95, 1
	ld.w $t0, $fp, -488
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -492
# store i32  %op96, i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -492
	st.w $t1, $t0, 0
# br label %label88
	b .QuickSort_label88
.QuickSort_label97:
# %op98 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -496
# %op99 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -500
# %op100 = icmp slt i32  %op98, %op99
	ld.w $t0, $fp, -496
	ld.w $t1, $fp, -500
	slt $t2, $t0, $t1
	st.b $t2, $fp, -501
# %op101 = zext i1  %op100 to i32 
	ld.b $t0, $fp, -501
	st.w $t0, $fp, -508
# %op102 = icmp ne i32  %op101, 0
	ld.w $t0, $fp, -508
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label25
	addi.d $t2, $zero, 0
	b false_label25
true_label25:
	addi.d $t2, $zero, 1
false_label25:
	st.b $t2, $fp, -509
# br i1  %op102, label %label113, label %label125
	ld.b $t0, $fp, -509
	bnez $t0, .QuickSort_label113
	b .QuickSort_label125
.QuickSort_label103:
# %op104 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -516
# %op105 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -520
# %op106 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -528
# %op107 = getelementptr i32 , i32 * %op106, i32  %op104
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -516
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -528
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -536
# %op108 = load i32 , i32 * %op107
	ld.d $t0, $fp, -536
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -540
# %op109 = load i32 , i32 * %op16
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -544
# %op110 = icmp slt i32  %op108, %op109
	ld.w $t0, $fp, -540
	ld.w $t1, $fp, -544
	slt $t2, $t0, $t1
	st.b $t2, $fp, -545
# %op111 = zext i1  %op110 to i32 
	ld.b $t0, $fp, -545
	st.w $t0, $fp, -552
# %op112 = icmp ne i32  %op111, 0
	ld.w $t0, $fp, -552
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label27
	addi.d $t2, $zero, 0
	b false_label27
true_label27:
	addi.d $t2, $zero, 1
false_label27:
	st.b $t2, $fp, -553
# br i1  %op112, label %label94, label %label97
	ld.b $t0, $fp, -553
	bnez $t0, .QuickSort_label94
	b .QuickSort_label97
.QuickSort_label113:
# %op114 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -560
# %op115 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -564
# %op116 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -576
# %op117 = getelementptr i32 , i32 * %op116, i32  %op114
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -560
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -576
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -584
# %op118 = load i32 , i32 * %op117
	ld.d $t0, $fp, -584
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -588
# %op119 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -592
# %op120 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -596
# %op121 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -608
# %op122 = getelementptr i32 , i32 * %op121, i32  %op119
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -592
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -608
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -616
# store i32  %op118, i32 * %op122
	ld.d $t0, $fp, -616
	ld.w $t1, $fp, -588
	st.w $t1, $t0, 0
# %op123 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -620
# %op124 = sub i32  %op123, 1
	ld.w $t0, $fp, -620
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -624
# store i32  %op124, i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -624
	st.w $t1, $t0, 0
# br label %label125
	b .QuickSort_label125
.QuickSort_label125:
# br label %label23
	b .QuickSort_label23
QuickSort_ret:
	addi.d $sp, $sp, 624
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl getMid
	.type getMid, @function
getMid:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -208
	st.d $a0, $fp, -24
.getMid_label_entry:
# %op1 = alloca i32 *
	lu12i.w $t0, -1
	ori $t0, $t0, 4056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -32
# store i32 * %arg0, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op2 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -48
# %op3 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op4 = srem i32  %op3, 2
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# %op5 = icmp eq i32  %op4, 0
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label28
	addi.d $t2, $zero, 0
	b false_label28
true_label28:
	addi.d $t2, $zero, 1
false_label28:
	st.b $t2, $fp, -61
# %op6 = zext i1  %op5 to i32 
	ld.b $t0, $fp, -61
	st.w $t0, $fp, -68
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label29
	addi.d $t2, $zero, 0
	b false_label29
true_label29:
	addi.d $t2, $zero, 1
false_label29:
	st.b $t2, $fp, -69
# br i1  %op7, label %label8, label %label25
	ld.b $t0, $fp, -69
	bnez $t0, .getMid_label8
	b .getMid_label25
.getMid_label8:
# %op9 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op10 = sdiv i32  %op9, 2
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# store i32  %op10, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -80
	st.w $t1, $t0, 0
# %op11 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op12 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op13 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -96
# %op14 = getelementptr i32 , i32 * %op13, i32  %op11
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -84
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -104
# %op15 = load i32 , i32 * %op14
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op16 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op17 = sub i32  %op16, 1
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -116
# %op18 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -120
# %op19 = sub i32  %op18, 1
	ld.w $t0, $fp, -120
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -124
# %op20 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -136
# %op21 = getelementptr i32 , i32 * %op20, i32  %op17
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -116
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -136
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -144
# %op22 = load i32 , i32 * %op21
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op23 = add i32  %op15, %op22
	ld.w $t0, $fp, -108
	ld.w $t1, $fp, -148
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -152
# %op24 = sdiv i32  %op23, 2
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# ret i32  %op24
	ld.w $a0, $fp, -156
	b getMid_ret
.getMid_label25:
# %op26 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op27 = sdiv i32  %op26, 2
	ld.w $t0, $fp, -160
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -164
# store i32  %op27, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -164
	st.w $t1, $t0, 0
# %op28 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op29 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op30 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -184
# %op31 = getelementptr i32 , i32 * %op30, i32  %op28
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -168
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -184
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -192
# %op32 = load i32 , i32 * %op31
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# ret i32  %op32
	ld.w $a0, $fp, -196
	b getMid_ret
getMid_ret:
	addi.d $sp, $sp, 208
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl getMost
	.type getMost, @function
getMost:
	lu12i.w $t0, 1
	ori $t0, $t0, 224
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	sub.d $sp, $sp, $t0
	add.d $fp, $sp, $t0
	st.d $a0, $fp, -24
.getMost_label_entry:
# %op1 = alloca i32 *
	lu12i.w $t0, -1
	ori $t0, $t0, 4056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -32
# store i32 * %arg0, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op2 = alloca [1000 x i32 ]
	lu12i.w $t0, -1
	ori $t0, $t0, 48
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -48
# %op3 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 36
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 40
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  0, i32 * %op3
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label4
	b .getMost_label4
.getMost_label4:
# %op5 = load i32 , i32 * %op3
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 32
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op6 = icmp slt i32  %op5, 1000
	lu12i.w $t0, -1
	ori $t0, $t0, 32
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1000
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 31
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op7 = zext i1  %op6 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 31
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 24
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op8 = icmp ne i32  %op7, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 24
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label31
	addi.d $t2, $zero, 0
	b false_label31
true_label31:
	addi.d $t2, $zero, 1
false_label31:
	lu12i.w $t8, -1
	ori $t8, $t8, 23
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op8, label %label9, label %label15
	lu12i.w $t0, -1
	ori $t0, $t0, 23
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .getMost_label9
	b .getMost_label15
.getMost_label9:
# %op10 = load i32 , i32 * %op3
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 16
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op11 = load i32 , i32 * %op3
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 12
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op12 = getelementptr [1000 x i32 ], [1000 x i32 ]* %op2, i32  0, i32  %op10
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4000
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
	ori $t1, $t1, 4000
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 16
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -48
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 0
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  0, i32 * %op12
	lu12i.w $t0, -1
	ori $t0, $t0, 0
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op13 = load i32 , i32 * %op3
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4092
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op14 = add i32  %op13, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 4092
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op14, i32 * %op3
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 4088
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label4
	b .getMost_label4
.getMost_label15:
# store i32  0, i32 * %op3
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op16 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 4076
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 4080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op17 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 4060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 4064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  0, i32 * %op16
	lu12i.w $t0, -2
	ori $t0, $t0, 4080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label18
	b .getMost_label18
.getMost_label18:
# %op19 = load i32 , i32 * %op3
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op20 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op21 = icmp slt i32  %op19, %op20
	lu12i.w $t0, -2
	ori $t0, $t0, 4056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 4052
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4051
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op22 = zext i1  %op21 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 4051
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op23 = icmp ne i32  %op22, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label33
	addi.d $t2, $zero, 0
	b false_label33
true_label33:
	addi.d $t2, $zero, 1
false_label33:
	lu12i.w $t8, -2
	ori $t8, $t8, 4043
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op23, label %label24, label %label47
	lu12i.w $t0, -2
	ori $t0, $t0, 4043
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .getMost_label24
	b .getMost_label47
.getMost_label24:
# %op25 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 4028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 4032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op26 = load i32 , i32 * %op3
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op27 = load i32 , i32 * %op3
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op28 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op29 = getelementptr i32 , i32 * %op28, i32  %op26
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -2
	ori $t1, $t1, 4024
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	lu12i.w $t1, -2
	ori $t1, $t1, 4008
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op30 = load i32 , i32 * %op29
	lu12i.w $t0, -2
	ori $t0, $t0, 4000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op30, i32 * %op25
	lu12i.w $t0, -2
	ori $t0, $t0, 4032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3996
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op31 = load i32 , i32 * %op25
	lu12i.w $t0, -2
	ori $t0, $t0, 4032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op32 = load i32 , i32 * %op25
	lu12i.w $t0, -2
	ori $t0, $t0, 4032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op33 = getelementptr [1000 x i32 ], [1000 x i32 ]* %op2, i32  0, i32  %op31
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4000
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
	ori $t1, $t1, 4000
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -2
	ori $t1, $t1, 3992
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -48
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op34 = load i32 , i32 * %op33
	lu12i.w $t0, -2
	ori $t0, $t0, 3976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op35 = add i32  %op34, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3972
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op36 = load i32 , i32 * %op25
	lu12i.w $t0, -2
	ori $t0, $t0, 4032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op37 = load i32 , i32 * %op25
	lu12i.w $t0, -2
	ori $t0, $t0, 4032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op38 = getelementptr [1000 x i32 ], [1000 x i32 ]* %op2, i32  0, i32  %op36
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4000
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
	ori $t1, $t1, 4000
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -2
	ori $t1, $t1, 3964
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -48
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op35, i32 * %op38
	lu12i.w $t0, -2
	ori $t0, $t0, 3952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3968
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op39 = load i32 , i32 * %op25
	lu12i.w $t0, -2
	ori $t0, $t0, 4032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op40 = load i32 , i32 * %op25
	lu12i.w $t0, -2
	ori $t0, $t0, 4032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op41 = getelementptr [1000 x i32 ], [1000 x i32 ]* %op2, i32  0, i32  %op39
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4000
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
	ori $t1, $t1, 4000
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -2
	ori $t1, $t1, 3948
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -48
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op42 = load i32 , i32 * %op41
	lu12i.w $t0, -2
	ori $t0, $t0, 3936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op43 = load i32 , i32 * %op16
	lu12i.w $t0, -2
	ori $t0, $t0, 4080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op44 = icmp sgt i32  %op42, %op43
	lu12i.w $t0, -2
	ori $t0, $t0, 3932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3928
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3927
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op45 = zext i1  %op44 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3927
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op46 = icmp ne i32  %op45, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label35
	addi.d $t2, $zero, 0
	b false_label35
true_label35:
	addi.d $t2, $zero, 1
false_label35:
	lu12i.w $t8, -2
	ori $t8, $t8, 3919
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op46, label %label49, label %label55
	lu12i.w $t0, -2
	ori $t0, $t0, 3919
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .getMost_label49
	b .getMost_label55
.getMost_label47:
# %op48 = load i32 , i32 * %op17
	lu12i.w $t0, -2
	ori $t0, $t0, 4064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# ret i32  %op48
	lu12i.w $a0, -2
	ori $a0, $a0, 3912
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	b getMost_ret
.getMost_label49:
# %op50 = load i32 , i32 * %op25
	lu12i.w $t0, -2
	ori $t0, $t0, 4032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op51 = load i32 , i32 * %op25
	lu12i.w $t0, -2
	ori $t0, $t0, 4032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op52 = getelementptr [1000 x i32 ], [1000 x i32 ]* %op2, i32  0, i32  %op50
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4000
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
	ori $t1, $t1, 4000
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -2
	ori $t1, $t1, 3908
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -48
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op53 = load i32 , i32 * %op52
	lu12i.w $t0, -2
	ori $t0, $t0, 3896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op53, i32 * %op16
	lu12i.w $t0, -2
	ori $t0, $t0, 4080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3892
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op54 = load i32 , i32 * %op25
	lu12i.w $t0, -2
	ori $t0, $t0, 4032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op54, i32 * %op17
	lu12i.w $t0, -2
	ori $t0, $t0, 4064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3888
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label55
	b .getMost_label55
.getMost_label55:
# %op56 = load i32 , i32 * %op3
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op57 = add i32  %op56, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3884
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op57, i32 * %op3
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3880
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label18
	b .getMost_label18
getMost_ret:
	lu12i.w $t0, 1
	ori $t0, $t0, 224
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	sub.d $t0, $zero, $t0
	add.d $sp, $sp, $t0
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl revert
	.type revert, @function
revert:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -240
	st.d $a0, $fp, -24
.revert_label_entry:
# %op1 = alloca i32 *
	lu12i.w $t0, -1
	ori $t0, $t0, 4056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -32
# store i32 * %arg0, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op2 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -48
# %op3 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -64
# %op4 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -80
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -80
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label5
	b .revert_label5
.revert_label5:
# %op6 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op7 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op8 = icmp slt i32  %op6, %op7
	ld.w $t0, $fp, -88
	ld.w $t1, $fp, -92
	slt $t2, $t0, $t1
	st.b $t2, $fp, -93
# %op9 = zext i1  %op8 to i32 
	ld.b $t0, $fp, -93
	st.w $t0, $fp, -100
# %op10 = icmp ne i32  %op9, 0
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label37
	addi.d $t2, $zero, 0
	b false_label37
true_label37:
	addi.d $t2, $zero, 1
false_label37:
	st.b $t2, $fp, -101
# br i1  %op10, label %label11, label %label35
	ld.b $t0, $fp, -101
	bnez $t0, .revert_label11
	b .revert_label35
.revert_label11:
# %op12 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op13 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op14 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -120
# %op15 = getelementptr i32 , i32 * %op14, i32  %op12
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -108
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -120
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -128
# %op16 = load i32 , i32 * %op15
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# store i32  %op16, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -132
	st.w $t1, $t0, 0
# %op17 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# %op18 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op19 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -152
# %op20 = getelementptr i32 , i32 * %op19, i32  %op17
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -136
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -152
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -160
# %op21 = load i32 , i32 * %op20
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op22 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op23 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op24 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -184
# %op25 = getelementptr i32 , i32 * %op24, i32  %op22
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -168
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -184
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -192
# store i32  %op21, i32 * %op25
	ld.d $t0, $fp, -192
	ld.w $t1, $fp, -164
	st.w $t1, $t0, 0
# %op26 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op27 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -200
# %op28 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op29 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -216
# %op30 = getelementptr i32 , i32 * %op29, i32  %op27
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -200
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -216
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -224
# store i32  %op26, i32 * %op30
	ld.d $t0, $fp, -224
	ld.w $t1, $fp, -196
	st.w $t1, $t0, 0
# %op31 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op32 = add i32  %op31, 1
	ld.w $t0, $fp, -228
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -232
# store i32  %op32, i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -232
	st.w $t1, $t0, 0
# %op33 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# %op34 = sub i32  %op33, 1
	ld.w $t0, $fp, -236
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -240
# store i32  %op34, i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -240
	st.w $t1, $t0, 0
# br label %label5
	b .revert_label5
.revert_label35:
# ret i32  0
	addi.w $a0, $zero, 0
	b revert_ret
revert_ret:
	addi.d $sp, $sp, 240
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl arrCopy
	.type arrCopy, @function
arrCopy:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -160
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
.arrCopy_label_entry:
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
# %op3 = alloca i32 *
	lu12i.w $t0, -1
	ori $t0, $t0, 4032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -56
# store i32 * %arg1, i32 ** %op3
	ld.d $t0, $fp, -56
	ld.d $t1, $fp, -32
	st.d $t1, $t0, 0
# %op4 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -72
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label5
	b .arrCopy_label5
.arrCopy_label5:
# %op6 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op7 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op8 = icmp slt i32  %op6, %op7
	ld.w $t0, $fp, -80
	ld.w $t1, $fp, -84
	slt $t2, $t0, $t1
	st.b $t2, $fp, -85
# %op9 = zext i1  %op8 to i32 
	ld.b $t0, $fp, -85
	st.w $t0, $fp, -92
# %op10 = icmp ne i32  %op9, 0
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label39
	addi.d $t2, $zero, 0
	b false_label39
true_label39:
	addi.d $t2, $zero, 1
false_label39:
	st.b $t2, $fp, -93
# br i1  %op10, label %label11, label %label23
	ld.b $t0, $fp, -93
	bnez $t0, .arrCopy_label11
	b .arrCopy_label23
.arrCopy_label11:
# %op12 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op13 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op14 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -112
# %op15 = getelementptr i32 , i32 * %op14, i32  %op12
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -100
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -112
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -120
# %op16 = load i32 , i32 * %op15
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op17 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op18 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op19 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -56
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -144
# %op20 = getelementptr i32 , i32 * %op19, i32  %op17
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -128
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -144
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -152
# store i32  %op16, i32 * %op20
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -124
	st.w $t1, $t0, 0
# %op21 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op22 = add i32  %op21, 1
	ld.w $t0, $fp, -156
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -160
# store i32  %op22, i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -160
	st.w $t1, $t0, 0
# br label %label5
	b .arrCopy_label5
.arrCopy_label23:
# ret i32  0
	addi.w $a0, $zero, 0
	b arrCopy_ret
arrCopy_ret:
	addi.d $sp, $sp, 160
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl calSum
	.type calSum, @function
calSum:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -256
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
.calSum_label_entry:
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
# %op4 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -72
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op5 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -88
# store i32  0, i32 * %op5
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label6
	b .calSum_label6
.calSum_label6:
# %op7 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op8 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op9 = icmp slt i32  %op7, %op8
	ld.w $t0, $fp, -96
	ld.w $t1, $fp, -100
	slt $t2, $t0, $t1
	st.b $t2, $fp, -101
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -101
	st.w $t0, $fp, -108
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label41
	addi.d $t2, $zero, 0
	b false_label41
true_label41:
	addi.d $t2, $zero, 1
false_label41:
	st.b $t2, $fp, -109
# br i1  %op11, label %label12, label %label28
	ld.b $t0, $fp, -109
	bnez $t0, .calSum_label12
	b .calSum_label28
.calSum_label12:
# %op13 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op14 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -120
# %op15 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op16 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -136
# %op17 = getelementptr i32 , i32 * %op16, i32  %op14
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -120
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -136
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -144
# %op18 = load i32 , i32 * %op17
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op19 = add i32  %op13, %op18
	ld.w $t0, $fp, -116
	ld.w $t1, $fp, -148
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -152
# store i32  %op19, i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -152
	st.w $t1, $t0, 0
# %op20 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op21 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op22 = srem i32  %op20, %op21
	ld.w $t0, $fp, -156
	ld.w $t1, $fp, -160
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -164
# %op23 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op24 = sub i32  %op23, 1
	ld.w $t0, $fp, -168
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -172
# %op25 = icmp ne i32  %op22, %op24
	ld.w $t0, $fp, -164
	ld.w $t1, $fp, -172
	bne  $t0, $t1, true_label42
	addi.d $t2, $zero, 0
	b false_label42
true_label42:
	addi.d $t2, $zero, 1
false_label42:
	st.b $t2, $fp, -173
# %op26 = zext i1  %op25 to i32 
	ld.b $t0, $fp, -173
	st.w $t0, $fp, -180
# %op27 = icmp ne i32  %op26, 0
	ld.w $t0, $fp, -180
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label43
	addi.d $t2, $zero, 0
	b false_label43
true_label43:
	addi.d $t2, $zero, 1
false_label43:
	st.b $t2, $fp, -181
# br i1  %op27, label %label29, label %label34
	ld.b $t0, $fp, -181
	bnez $t0, .calSum_label29
	b .calSum_label34
.calSum_label28:
# ret i32  0
	addi.w $a0, $zero, 0
	b calSum_ret
.calSum_label29:
# %op30 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op31 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -192
# %op32 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -200
# %op33 = getelementptr i32 , i32 * %op32, i32  %op30
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -188
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -200
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -208
# store i32  0, i32 * %op33
	ld.d $t0, $fp, -208
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label40
	b .calSum_label40
.calSum_label34:
# %op35 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op36 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -216
# %op37 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# %op38 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -232
# %op39 = getelementptr i32 , i32 * %op38, i32  %op36
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -216
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -232
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -240
# store i32  %op35, i32 * %op39
	ld.d $t0, $fp, -240
	ld.w $t1, $fp, -212
	st.w $t1, $t0, 0
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label40
	b .calSum_label40
.calSum_label40:
# %op41 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op42 = add i32  %op41, 1
	ld.w $t0, $fp, -244
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -248
# store i32  %op42, i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -248
	st.w $t1, $t0, 0
# br label %label6
	b .calSum_label6
calSum_ret:
	addi.d $sp, $sp, 256
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl avgPooling
	.type avgPooling, @function
avgPooling:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -512
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
.avgPooling_label_entry:
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
# %op4 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -72
# %op5 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -88
# store i32  0, i32 * %op5
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op6 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -104
# br label %label7
	b .avgPooling_label7
.avgPooling_label7:
# %op8 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op9 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op10 = icmp slt i32  %op8, %op9
	ld.w $t0, $fp, -112
	ld.w $t1, $fp, -116
	slt $t2, $t0, $t1
	st.b $t2, $fp, -117
# %op11 = zext i1  %op10 to i32 
	ld.b $t0, $fp, -117
	st.w $t0, $fp, -124
# %op12 = icmp ne i32  %op11, 0
	ld.w $t0, $fp, -124
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label45
	addi.d $t2, $zero, 0
	b false_label45
true_label45:
	addi.d $t2, $zero, 1
false_label45:
	st.b $t2, $fp, -125
# br i1  %op12, label %label13, label %label20
	ld.b $t0, $fp, -125
	bnez $t0, .avgPooling_label13
	b .avgPooling_label20
.avgPooling_label13:
# %op14 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op15 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# %op16 = sub i32  %op15, 1
	ld.w $t0, $fp, -136
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -140
# %op17 = icmp slt i32  %op14, %op16
	ld.w $t0, $fp, -132
	ld.w $t1, $fp, -140
	slt $t2, $t0, $t1
	st.b $t2, $fp, -141
# %op18 = zext i1  %op17 to i32 
	ld.b $t0, $fp, -141
	st.w $t0, $fp, -148
# %op19 = icmp ne i32  %op18, 0
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label47
	addi.d $t2, $zero, 0
	b false_label47
true_label47:
	addi.d $t2, $zero, 1
false_label47:
	st.b $t2, $fp, -149
# br i1  %op19, label %label25, label %label33
	ld.b $t0, $fp, -149
	bnez $t0, .avgPooling_label25
	b .avgPooling_label33
.avgPooling_label20:
# %op21 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op22 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op23 = sub i32  %op21, %op22
	ld.w $t0, $fp, -156
	ld.w $t1, $fp, -160
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -164
# %op24 = add i32  %op23, 1
	ld.w $t0, $fp, -164
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -168
# store i32  %op24, i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -168
	st.w $t1, $t0, 0
# br label %label87
	b .avgPooling_label87
.avgPooling_label25:
# %op26 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op27 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op28 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op29 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -192
# %op30 = getelementptr i32 , i32 * %op29, i32  %op27
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -176
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -192
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -200
# %op31 = load i32 , i32 * %op30
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op32 = add i32  %op26, %op31
	ld.w $t0, $fp, -172
	ld.w $t1, $fp, -204
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -208
# store i32  %op32, i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -208
	st.w $t1, $t0, 0
# br label %label40
	b .avgPooling_label40
.avgPooling_label33:
# %op34 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op35 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -216
# %op36 = sub i32  %op35, 1
	ld.w $t0, $fp, -216
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -220
# %op37 = icmp eq i32  %op34, %op36
	ld.w $t0, $fp, -212
	ld.w $t1, $fp, -220
	beq  $t0, $t1, true_label48
	addi.d $t2, $zero, 0
	b false_label48
true_label48:
	addi.d $t2, $zero, 1
false_label48:
	st.b $t2, $fp, -221
# %op38 = zext i1  %op37 to i32 
	ld.b $t0, $fp, -221
	st.w $t0, $fp, -228
# %op39 = icmp ne i32  %op38, 0
	ld.w $t0, $fp, -228
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label49
	addi.d $t2, $zero, 0
	b false_label49
true_label49:
	addi.d $t2, $zero, 1
false_label49:
	st.b $t2, $fp, -229
# br i1  %op39, label %label43, label %label52
	ld.b $t0, $fp, -229
	bnez $t0, .avgPooling_label43
	b .avgPooling_label52
.avgPooling_label40:
# %op41 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# %op42 = add i32  %op41, 1
	ld.w $t0, $fp, -236
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -240
# store i32  %op42, i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -240
	st.w $t1, $t0, 0
# br label %label7
	b .avgPooling_label7
.avgPooling_label43:
# %op44 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -248
# %op45 = getelementptr i32 , i32 * %op44, i32  0
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
	ld.d $t1, $fp, -248
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -256
# %op46 = load i32 , i32 * %op45
	ld.d $t0, $fp, -256
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# store i32  %op46, i32 * %op6
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -260
	st.w $t1, $t0, 0
# %op47 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -264
# %op48 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# %op49 = sdiv i32  %op47, %op48
	ld.w $t0, $fp, -264
	ld.w $t1, $fp, -268
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -272
# %op50 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -280
# %op51 = getelementptr i32 , i32 * %op50, i32  0
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
	ld.d $t1, $fp, -280
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -288
# store i32  %op49, i32 * %op51
	ld.d $t0, $fp, -288
	ld.w $t1, $fp, -272
	st.w $t1, $t0, 0
# br label %label86
	b .avgPooling_label86
.avgPooling_label52:
# %op53 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# %op54 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -296
# %op55 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op56 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -312
# %op57 = getelementptr i32 , i32 * %op56, i32  %op54
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -296
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -312
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -320
# %op58 = load i32 , i32 * %op57
	ld.d $t0, $fp, -320
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op59 = add i32  %op53, %op58
	ld.w $t0, $fp, -292
	ld.w $t1, $fp, -324
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -328
# %op60 = load i32 , i32 * %op6
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op61 = sub i32  %op59, %op60
	ld.w $t0, $fp, -328
	ld.w $t1, $fp, -332
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -336
# store i32  %op61, i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -336
	st.w $t1, $t0, 0
# %op62 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -340
# %op63 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -344
# %op64 = sub i32  %op62, %op63
	ld.w $t0, $fp, -340
	ld.w $t1, $fp, -344
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -348
# %op65 = add i32  %op64, 1
	ld.w $t0, $fp, -348
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -352
# %op66 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op67 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -360
# %op68 = sub i32  %op66, %op67
	ld.w $t0, $fp, -356
	ld.w $t1, $fp, -360
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -364
# %op69 = add i32  %op68, 1
	ld.w $t0, $fp, -364
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -368
# %op70 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -376
# %op71 = getelementptr i32 , i32 * %op70, i32  %op65
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -352
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -376
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -384
# %op72 = load i32 , i32 * %op71
	ld.d $t0, $fp, -384
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -388
# store i32  %op72, i32 * %op6
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -388
	st.w $t1, $t0, 0
# %op73 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -392
# %op74 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -396
# %op75 = sdiv i32  %op73, %op74
	ld.w $t0, $fp, -392
	ld.w $t1, $fp, -396
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -400
# %op76 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -404
# %op77 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -408
# %op78 = sub i32  %op76, %op77
	ld.w $t0, $fp, -404
	ld.w $t1, $fp, -408
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -412
# %op79 = add i32  %op78, 1
	ld.w $t0, $fp, -412
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -416
# %op80 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -420
# %op81 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -424
# %op82 = sub i32  %op80, %op81
	ld.w $t0, $fp, -420
	ld.w $t1, $fp, -424
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -428
# %op83 = add i32  %op82, 1
	ld.w $t0, $fp, -428
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -432
# %op84 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -440
# %op85 = getelementptr i32 , i32 * %op84, i32  %op79
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -416
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -440
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -448
# store i32  %op75, i32 * %op85
	ld.d $t0, $fp, -448
	ld.w $t1, $fp, -400
	st.w $t1, $t0, 0
# br label %label86
	b .avgPooling_label86
.avgPooling_label86:
# br label %label40
	b .avgPooling_label40
.avgPooling_label87:
# %op88 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -452
# %op89 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -456
# %op90 = icmp slt i32  %op88, %op89
	ld.w $t0, $fp, -452
	ld.w $t1, $fp, -456
	slt $t2, $t0, $t1
	st.b $t2, $fp, -457
# %op91 = zext i1  %op90 to i32 
	ld.b $t0, $fp, -457
	st.w $t0, $fp, -464
# %op92 = icmp ne i32  %op91, 0
	ld.w $t0, $fp, -464
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label51
	addi.d $t2, $zero, 0
	b false_label51
true_label51:
	addi.d $t2, $zero, 1
false_label51:
	st.b $t2, $fp, -465
# br i1  %op92, label %label93, label %label100
	ld.b $t0, $fp, -465
	bnez $t0, .avgPooling_label93
	b .avgPooling_label100
.avgPooling_label93:
# %op94 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -472
# %op95 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -476
# %op96 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -488
# %op97 = getelementptr i32 , i32 * %op96, i32  %op94
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -472
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -488
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -496
# store i32  0, i32 * %op97
	ld.d $t0, $fp, -496
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op98 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -500
# %op99 = add i32  %op98, 1
	ld.w $t0, $fp, -500
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -504
# store i32  %op99, i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -504
	st.w $t1, $t0, 0
# br label %label87
	b .avgPooling_label87
.avgPooling_label100:
# ret i32  0
	addi.w $a0, $zero, 0
	b avgPooling_ret
avgPooling_ret:
	addi.d $sp, $sp, 512
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -1216
.main_label_entry:
# store i32  32, i32 * @n
	la.local $t0, n
	addi.w $t1, $zero, 32
	st.w $t1, $t0, 0
# %op0 = alloca [32 x i32 ]
	lu12i.w $t0, -1
	ori $t0, $t0, 3944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -24
# %op1 = alloca [32 x i32 ]
	lu12i.w $t0, -1
	ori $t0, $t0, 3808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -160
# %op2 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	st.d $t0, $fp, -296
# store i32  7, i32 * %op2
	ld.d $t0, $fp, -296
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op3 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  1
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	st.d $t0, $fp, -304
# store i32  23, i32 * %op3
	ld.d $t0, $fp, -304
	addi.w $t1, $zero, 23
	st.w $t1, $t0, 0
# %op4 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  2
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	st.d $t0, $fp, -312
# store i32  89, i32 * %op4
	ld.d $t0, $fp, -312
	addi.w $t1, $zero, 89
	st.w $t1, $t0, 0
# %op5 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  3
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	st.d $t0, $fp, -320
# store i32  26, i32 * %op5
	ld.d $t0, $fp, -320
	addi.w $t1, $zero, 26
	st.w $t1, $t0, 0
# %op6 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  4
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	st.d $t0, $fp, -328
# store i32  282, i32 * %op6
	ld.d $t0, $fp, -328
	addi.w $t1, $zero, 282
	st.w $t1, $t0, 0
# %op7 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  5
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	st.d $t0, $fp, -336
# store i32  254, i32 * %op7
	ld.d $t0, $fp, -336
	addi.w $t1, $zero, 254
	st.w $t1, $t0, 0
# %op8 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  6
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	st.d $t0, $fp, -344
# store i32  27, i32 * %op8
	ld.d $t0, $fp, -344
	addi.w $t1, $zero, 27
	st.w $t1, $t0, 0
# %op9 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  7
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	st.d $t0, $fp, -352
# store i32  5, i32 * %op9
	ld.d $t0, $fp, -352
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op10 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  8
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	st.d $t0, $fp, -360
# store i32  83, i32 * %op10
	ld.d $t0, $fp, -360
	addi.w $t1, $zero, 83
	st.w $t1, $t0, 0
# %op11 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  9
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	st.d $t0, $fp, -368
# store i32  273, i32 * %op11
	ld.d $t0, $fp, -368
	addi.w $t1, $zero, 273
	st.w $t1, $t0, 0
# %op12 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  10
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	st.d $t0, $fp, -376
# store i32  574, i32 * %op12
	ld.d $t0, $fp, -376
	addi.w $t1, $zero, 574
	st.w $t1, $t0, 0
# %op13 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  11
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	st.d $t0, $fp, -384
# store i32  905, i32 * %op13
	ld.d $t0, $fp, -384
	addi.w $t1, $zero, 905
	st.w $t1, $t0, 0
# %op14 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  12
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	st.d $t0, $fp, -392
# store i32  354, i32 * %op14
	ld.d $t0, $fp, -392
	addi.w $t1, $zero, 354
	st.w $t1, $t0, 0
# %op15 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  13
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	st.d $t0, $fp, -400
# store i32  657, i32 * %op15
	ld.d $t0, $fp, -400
	addi.w $t1, $zero, 657
	st.w $t1, $t0, 0
# %op16 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  14
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	st.d $t0, $fp, -408
# store i32  935, i32 * %op16
	ld.d $t0, $fp, -408
	addi.w $t1, $zero, 935
	st.w $t1, $t0, 0
# %op17 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  15
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 15
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -416
# store i32  264, i32 * %op17
	ld.d $t0, $fp, -416
	addi.w $t1, $zero, 264
	st.w $t1, $t0, 0
# %op18 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  16
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 16
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -424
# store i32  639, i32 * %op18
	ld.d $t0, $fp, -424
	addi.w $t1, $zero, 639
	st.w $t1, $t0, 0
# %op19 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  17
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 17
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -432
# store i32  459, i32 * %op19
	ld.d $t0, $fp, -432
	addi.w $t1, $zero, 459
	st.w $t1, $t0, 0
# %op20 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  18
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 18
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -440
# store i32  29, i32 * %op20
	ld.d $t0, $fp, -440
	addi.w $t1, $zero, 29
	st.w $t1, $t0, 0
# %op21 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  19
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 19
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -448
# store i32  68, i32 * %op21
	ld.d $t0, $fp, -448
	addi.w $t1, $zero, 68
	st.w $t1, $t0, 0
# %op22 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  20
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 20
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -456
# store i32  929, i32 * %op22
	ld.d $t0, $fp, -456
	addi.w $t1, $zero, 929
	st.w $t1, $t0, 0
# %op23 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  21
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 21
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -464
# store i32  756, i32 * %op23
	ld.d $t0, $fp, -464
	addi.w $t1, $zero, 756
	st.w $t1, $t0, 0
# %op24 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  22
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 22
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -472
# store i32  452, i32 * %op24
	ld.d $t0, $fp, -472
	addi.w $t1, $zero, 452
	st.w $t1, $t0, 0
# %op25 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  23
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 23
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -480
# store i32  279, i32 * %op25
	ld.d $t0, $fp, -480
	addi.w $t1, $zero, 279
	st.w $t1, $t0, 0
# %op26 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  24
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 24
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -488
# store i32  58, i32 * %op26
	ld.d $t0, $fp, -488
	addi.w $t1, $zero, 58
	st.w $t1, $t0, 0
# %op27 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  25
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 25
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -496
# store i32  87, i32 * %op27
	ld.d $t0, $fp, -496
	addi.w $t1, $zero, 87
	st.w $t1, $t0, 0
# %op28 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  26
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 26
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -504
# store i32  96, i32 * %op28
	ld.d $t0, $fp, -504
	addi.w $t1, $zero, 96
	st.w $t1, $t0, 0
# %op29 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  27
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 27
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -512
# store i32  36, i32 * %op29
	ld.d $t0, $fp, -512
	addi.w $t1, $zero, 36
	st.w $t1, $t0, 0
# %op30 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  28
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 28
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -520
# store i32  39, i32 * %op30
	ld.d $t0, $fp, -520
	addi.w $t1, $zero, 39
	st.w $t1, $t0, 0
# %op31 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  29
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 29
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -528
# store i32  28, i32 * %op31
	ld.d $t0, $fp, -528
	addi.w $t1, $zero, 28
	st.w $t1, $t0, 0
# %op32 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  30
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 30
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -536
# store i32  1, i32 * %op32
	ld.d $t0, $fp, -536
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op33 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  31
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 31
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -544
# store i32  290, i32 * %op33
	ld.d $t0, $fp, -544
	addi.w $t1, $zero, 290
	st.w $t1, $t0, 0
# %op34 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3540
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -552
# %op35 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	st.d $t0, $fp, -568
# %op36 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	ld.d $t1, $fp, -160
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -576
# %op37 = call i32  @arrCopy(i32 * %op35, i32 * %op36)
	ld.d $a0, $fp, -568
	ld.d $a1, $fp, -576
	bl arrCopy
	st.w $a0, $fp, -580
# store i32  %op37, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -580
	st.w $t1, $t0, 0
# %op38 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	ld.d $t1, $fp, -160
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -592
# %op39 = call i32  @revert(i32 * %op38)
	ld.d $a0, $fp, -592
	bl revert
	st.w $a0, $fp, -596
# store i32  %op39, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -596
	st.w $t1, $t0, 0
# %op40 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3484
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -608
# store i32  0, i32 * %op40
	ld.d $t0, $fp, -608
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label41
	b .main_label41
.main_label41:
# %op42 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -616
# %op43 = icmp slt i32  %op42, 32
	ld.w $t0, $fp, -616
	addi.w $t1, $zero, 32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -617
# %op44 = zext i1  %op43 to i32 
	ld.b $t0, $fp, -617
	st.w $t0, $fp, -624
# %op45 = icmp ne i32  %op44, 0
	ld.w $t0, $fp, -624
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label53
	addi.d $t2, $zero, 0
	b false_label53
true_label53:
	addi.d $t2, $zero, 1
false_label53:
	st.b $t2, $fp, -625
# br i1  %op45, label %label46, label %label54
	ld.b $t0, $fp, -625
	bnez $t0, .main_label46
	b .main_label54
.main_label46:
# %op47 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -632
# %op48 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -636
# %op49 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op47
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -632
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -160
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -648
# %op50 = load i32 , i32 * %op49
	ld.d $t0, $fp, -648
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -652
# store i32  %op50, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -652
	st.w $t1, $t0, 0
# %op51 = load i32 , i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -656
# call void @putint(i32  %op51)
	ld.w $a0, $fp, -656
	bl putint
# %op52 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -660
# %op53 = add i32  %op52, 1
	ld.w $t0, $fp, -660
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -664
# store i32  %op53, i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $fp, -664
	st.w $t1, $t0, 0
# br label %label41
	b .main_label41
.main_label54:
# %op55 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	ld.d $t1, $fp, -160
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -672
# %op56 = call i32  @bubblesort(i32 * %op55)
	ld.d $a0, $fp, -672
	bl bubblesort
	st.w $a0, $fp, -676
# store i32  %op56, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -676
	st.w $t1, $t0, 0
# store i32  0, i32 * %op40
	ld.d $t0, $fp, -608
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label57
	b .main_label57
.main_label57:
# %op58 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -680
# %op59 = icmp slt i32  %op58, 32
	ld.w $t0, $fp, -680
	addi.w $t1, $zero, 32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -681
# %op60 = zext i1  %op59 to i32 
	ld.b $t0, $fp, -681
	st.w $t0, $fp, -688
# %op61 = icmp ne i32  %op60, 0
	ld.w $t0, $fp, -688
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label55
	addi.d $t2, $zero, 0
	b false_label55
true_label55:
	addi.d $t2, $zero, 1
false_label55:
	st.b $t2, $fp, -689
# br i1  %op61, label %label62, label %label70
	ld.b $t0, $fp, -689
	bnez $t0, .main_label62
	b .main_label70
.main_label62:
# %op63 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -696
# %op64 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -700
# %op65 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op63
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -696
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -160
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -712
# %op66 = load i32 , i32 * %op65
	ld.d $t0, $fp, -712
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -716
# store i32  %op66, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -716
	st.w $t1, $t0, 0
# %op67 = load i32 , i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -720
# call void @putint(i32  %op67)
	ld.w $a0, $fp, -720
	bl putint
# %op68 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -724
# %op69 = add i32  %op68, 1
	ld.w $t0, $fp, -724
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -728
# store i32  %op69, i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $fp, -728
	st.w $t1, $t0, 0
# br label %label57
	b .main_label57
.main_label70:
# %op71 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	ld.d $t1, $fp, -160
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -736
# %op72 = call i32  @getMid(i32 * %op71)
	ld.d $a0, $fp, -736
	bl getMid
	st.w $a0, $fp, -740
# store i32  %op72, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -740
	st.w $t1, $t0, 0
# %op73 = load i32 , i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -744
# call void @putint(i32  %op73)
	ld.w $a0, $fp, -744
	bl putint
# %op74 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	ld.d $t1, $fp, -160
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -752
# %op75 = call i32  @getMost(i32 * %op74)
	ld.d $a0, $fp, -752
	bl getMost
	st.w $a0, $fp, -756
# store i32  %op75, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -756
	st.w $t1, $t0, 0
# %op76 = load i32 , i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -760
# call void @putint(i32  %op76)
	ld.w $a0, $fp, -760
	bl putint
# %op77 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	st.d $t0, $fp, -768
# %op78 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	ld.d $t1, $fp, -160
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -776
# %op79 = call i32  @arrCopy(i32 * %op77, i32 * %op78)
	ld.d $a0, $fp, -768
	ld.d $a1, $fp, -776
	bl arrCopy
	st.w $a0, $fp, -780
# store i32  %op79, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -780
	st.w $t1, $t0, 0
# %op80 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	ld.d $t1, $fp, -160
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -792
# %op81 = call i32  @bubblesort(i32 * %op80)
	ld.d $a0, $fp, -792
	bl bubblesort
	st.w $a0, $fp, -796
# store i32  %op81, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -796
	st.w $t1, $t0, 0
# store i32  0, i32 * %op40
	ld.d $t0, $fp, -608
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label82
	b .main_label82
.main_label82:
# %op83 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -800
# %op84 = icmp slt i32  %op83, 32
	ld.w $t0, $fp, -800
	addi.w $t1, $zero, 32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -801
# %op85 = zext i1  %op84 to i32 
	ld.b $t0, $fp, -801
	st.w $t0, $fp, -808
# %op86 = icmp ne i32  %op85, 0
	ld.w $t0, $fp, -808
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label57
	addi.d $t2, $zero, 0
	b false_label57
true_label57:
	addi.d $t2, $zero, 1
false_label57:
	st.b $t2, $fp, -809
# br i1  %op86, label %label87, label %label95
	ld.b $t0, $fp, -809
	bnez $t0, .main_label87
	b .main_label95
.main_label87:
# %op88 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -816
# %op89 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -820
# %op90 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op88
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -816
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -160
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -832
# %op91 = load i32 , i32 * %op90
	ld.d $t0, $fp, -832
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -836
# store i32  %op91, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -836
	st.w $t1, $t0, 0
# %op92 = load i32 , i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -840
# call void @putint(i32  %op92)
	ld.w $a0, $fp, -840
	bl putint
# %op93 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -844
# %op94 = add i32  %op93, 1
	ld.w $t0, $fp, -844
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -848
# store i32  %op94, i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $fp, -848
	st.w $t1, $t0, 0
# br label %label82
	b .main_label82
.main_label95:
# %op96 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	st.d $t0, $fp, -856
# %op97 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	ld.d $t1, $fp, -160
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -864
# %op98 = call i32  @arrCopy(i32 * %op96, i32 * %op97)
	ld.d $a0, $fp, -856
	ld.d $a1, $fp, -864
	bl arrCopy
	st.w $a0, $fp, -868
# store i32  %op98, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -868
	st.w $t1, $t0, 0
# %op99 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	ld.d $t1, $fp, -160
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -880
# %op100 = call i32  @insertsort(i32 * %op99)
	ld.d $a0, $fp, -880
	bl insertsort
	st.w $a0, $fp, -884
# store i32  %op100, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -884
	st.w $t1, $t0, 0
# store i32  0, i32 * %op40
	ld.d $t0, $fp, -608
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label101
	b .main_label101
.main_label101:
# %op102 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -888
# %op103 = icmp slt i32  %op102, 32
	ld.w $t0, $fp, -888
	addi.w $t1, $zero, 32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -889
# %op104 = zext i1  %op103 to i32 
	ld.b $t0, $fp, -889
	st.w $t0, $fp, -896
# %op105 = icmp ne i32  %op104, 0
	ld.w $t0, $fp, -896
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label59
	addi.d $t2, $zero, 0
	b false_label59
true_label59:
	addi.d $t2, $zero, 1
false_label59:
	st.b $t2, $fp, -897
# br i1  %op105, label %label106, label %label114
	ld.b $t0, $fp, -897
	bnez $t0, .main_label106
	b .main_label114
.main_label106:
# %op107 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -904
# %op108 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -908
# %op109 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op107
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -904
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -160
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -920
# %op110 = load i32 , i32 * %op109
	ld.d $t0, $fp, -920
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -924
# store i32  %op110, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -924
	st.w $t1, $t0, 0
# %op111 = load i32 , i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -928
# call void @putint(i32  %op111)
	ld.w $a0, $fp, -928
	bl putint
# %op112 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -932
# %op113 = add i32  %op112, 1
	ld.w $t0, $fp, -932
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -936
# store i32  %op113, i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $fp, -936
	st.w $t1, $t0, 0
# br label %label101
	b .main_label101
.main_label114:
# %op115 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	st.d $t0, $fp, -944
# %op116 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	ld.d $t1, $fp, -160
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -952
# %op117 = call i32  @arrCopy(i32 * %op115, i32 * %op116)
	ld.d $a0, $fp, -944
	ld.d $a1, $fp, -952
	bl arrCopy
	st.w $a0, $fp, -956
# store i32  %op117, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -956
	st.w $t1, $t0, 0
# store i32  0, i32 * %op40
	ld.d $t0, $fp, -608
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  31, i32 * %op34
	ld.d $t0, $fp, -552
	addi.w $t1, $zero, 31
	st.w $t1, $t0, 0
# %op118 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	ld.d $t1, $fp, -160
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -968
# %op119 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -972
# %op120 = load i32 , i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -976
# %op121 = call i32  @QuickSort(i32 * %op118, i32  %op119, i32  %op120)
	ld.d $a0, $fp, -968
	ld.w $a1, $fp, -972
	ld.w $a2, $fp, -976
	bl QuickSort
	st.w $a0, $fp, -980
# store i32  %op121, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -980
	st.w $t1, $t0, 0
# br label %label122
	b .main_label122
.main_label122:
# %op123 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -984
# %op124 = icmp slt i32  %op123, 32
	ld.w $t0, $fp, -984
	addi.w $t1, $zero, 32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -985
# %op125 = zext i1  %op124 to i32 
	ld.b $t0, $fp, -985
	st.w $t0, $fp, -992
# %op126 = icmp ne i32  %op125, 0
	ld.w $t0, $fp, -992
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label61
	addi.d $t2, $zero, 0
	b false_label61
true_label61:
	addi.d $t2, $zero, 1
false_label61:
	st.b $t2, $fp, -993
# br i1  %op126, label %label127, label %label135
	ld.b $t0, $fp, -993
	bnez $t0, .main_label127
	b .main_label135
.main_label127:
# %op128 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1000
# %op129 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1004
# %op130 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op128
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1000
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -160
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1016
# %op131 = load i32 , i32 * %op130
	ld.d $t0, $fp, -1016
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1020
# store i32  %op131, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -1020
	st.w $t1, $t0, 0
# %op132 = load i32 , i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1024
# call void @putint(i32  %op132)
	ld.w $a0, $fp, -1024
	bl putint
# %op133 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1028
# %op134 = add i32  %op133, 1
	ld.w $t0, $fp, -1028
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1032
# store i32  %op134, i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $fp, -1032
	st.w $t1, $t0, 0
# br label %label122
	b .main_label122
.main_label135:
# %op136 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	st.d $t0, $fp, -1040
# %op137 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	ld.d $t1, $fp, -160
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1048
# %op138 = call i32  @arrCopy(i32 * %op136, i32 * %op137)
	ld.d $a0, $fp, -1040
	ld.d $a1, $fp, -1048
	bl arrCopy
	st.w $a0, $fp, -1052
# store i32  %op138, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -1052
	st.w $t1, $t0, 0
# %op139 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	ld.d $t1, $fp, -160
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1064
# %op140 = call i32  @calSum(i32 * %op139, i32  4)
	ld.d $a0, $fp, -1064
	addi.w $a1, $zero, 4
	bl calSum
	st.w $a0, $fp, -1068
# store i32  %op140, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -1068
	st.w $t1, $t0, 0
# store i32  0, i32 * %op40
	ld.d $t0, $fp, -608
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label141
	b .main_label141
.main_label141:
# %op142 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1072
# %op143 = icmp slt i32  %op142, 32
	ld.w $t0, $fp, -1072
	addi.w $t1, $zero, 32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1073
# %op144 = zext i1  %op143 to i32 
	ld.b $t0, $fp, -1073
	st.w $t0, $fp, -1080
# %op145 = icmp ne i32  %op144, 0
	ld.w $t0, $fp, -1080
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label63
	addi.d $t2, $zero, 0
	b false_label63
true_label63:
	addi.d $t2, $zero, 1
false_label63:
	st.b $t2, $fp, -1081
# br i1  %op145, label %label146, label %label154
	ld.b $t0, $fp, -1081
	bnez $t0, .main_label146
	b .main_label154
.main_label146:
# %op147 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1088
# %op148 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1092
# %op149 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op147
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1088
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -160
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1104
# %op150 = load i32 , i32 * %op149
	ld.d $t0, $fp, -1104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1108
# store i32  %op150, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -1108
	st.w $t1, $t0, 0
# %op151 = load i32 , i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1112
# call void @putint(i32  %op151)
	ld.w $a0, $fp, -1112
	bl putint
# %op152 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1116
# %op153 = add i32  %op152, 1
	ld.w $t0, $fp, -1116
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1120
# store i32  %op153, i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $fp, -1120
	st.w $t1, $t0, 0
# br label %label141
	b .main_label141
.main_label154:
# %op155 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	st.d $t0, $fp, -1128
# %op156 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	ld.d $t1, $fp, -160
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1136
# %op157 = call i32  @arrCopy(i32 * %op155, i32 * %op156)
	ld.d $a0, $fp, -1128
	ld.d $a1, $fp, -1136
	bl arrCopy
	st.w $a0, $fp, -1140
# store i32  %op157, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -1140
	st.w $t1, $t0, 0
# %op158 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
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
	ld.d $t1, $fp, -160
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1152
# %op159 = call i32  @avgPooling(i32 * %op158, i32  3)
	ld.d $a0, $fp, -1152
	addi.w $a1, $zero, 3
	bl avgPooling
	st.w $a0, $fp, -1156
# store i32  %op159, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -1156
	st.w $t1, $t0, 0
# store i32  0, i32 * %op40
	ld.d $t0, $fp, -608
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label160
	b .main_label160
.main_label160:
# %op161 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1160
# %op162 = icmp slt i32  %op161, 32
	ld.w $t0, $fp, -1160
	addi.w $t1, $zero, 32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1161
# %op163 = zext i1  %op162 to i32 
	ld.b $t0, $fp, -1161
	st.w $t0, $fp, -1168
# %op164 = icmp ne i32  %op163, 0
	ld.w $t0, $fp, -1168
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label65
	addi.d $t2, $zero, 0
	b false_label65
true_label65:
	addi.d $t2, $zero, 1
false_label65:
	st.b $t2, $fp, -1169
# br i1  %op164, label %label165, label %label173
	ld.b $t0, $fp, -1169
	bnez $t0, .main_label165
	b .main_label173
.main_label165:
# %op166 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1176
# %op167 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1180
# %op168 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op166
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 128
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
	ori $t1, $t1, 128
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1176
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -160
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1192
# %op169 = load i32 , i32 * %op168
	ld.d $t0, $fp, -1192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1196
# store i32  %op169, i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -1196
	st.w $t1, $t0, 0
# %op170 = load i32 , i32 * %op34
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1200
# call void @putint(i32  %op170)
	ld.w $a0, $fp, -1200
	bl putint
# %op171 = load i32 , i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1204
# %op172 = add i32  %op171, 1
	ld.w $t0, $fp, -1204
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1208
# store i32  %op172, i32 * %op40
	ld.d $t0, $fp, -608
	ld.w $t1, $fp, -1208
	st.w $t1, $t0, 0
# br label %label160
	b .main_label160
.main_label173:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 1216
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

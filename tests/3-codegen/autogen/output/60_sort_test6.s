# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl n
	.type n, @object
	.size n, 4
n:
	.space 4
	.text
	.globl counting_sort
	.type counting_sort, @function
counting_sort:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -976
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.w $a2, $fp, -36
.counting_sort_label_entry:
# %op3 = alloca i32 *
	lu12i.w $t0, -1
	ori $t0, $t0, 4040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -48
# store i32 * %arg0, i32 ** %op3
	ld.d $t0, $fp, -48
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op4 = alloca i32 *
	lu12i.w $t0, -1
	ori $t0, $t0, 4024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -64
# store i32 * %arg1, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $fp, -32
	st.d $t1, $t0, 0
# %op5 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -80
# store i32  %arg2, i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -36
	st.w $t1, $t0, 0
# %op6 = alloca [10 x i32 ]
	lu12i.w $t0, -1
	ori $t0, $t0, 3960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -96
# %op7 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -144
# %op8 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -160
# %op9 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3916
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -176
# store i32  0, i32 * %op9
	ld.d $t0, $fp, -176
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op7
	ld.d $t0, $fp, -144
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op8
	ld.d $t0, $fp, -160
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label10
	b .counting_sort_label10
.counting_sort_label10:
# %op11 = load i32 , i32 * %op9
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -184
# %op12 = icmp slt i32  %op11, 10
	ld.w $t0, $fp, -184
	addi.w $t1, $zero, 10
	slt $t2, $t0, $t1
	st.b $t2, $fp, -185
# %op13 = zext i1  %op12 to i32 
	ld.b $t0, $fp, -185
	st.w $t0, $fp, -192
# %op14 = icmp ne i32  %op13, 0
	ld.w $t0, $fp, -192
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -193
# br i1  %op14, label %label15, label %label21
	ld.b $t0, $fp, -193
	bnez $t0, .counting_sort_label15
	b .counting_sort_label21
.counting_sort_label15:
# %op16 = load i32 , i32 * %op9
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -200
# %op17 = load i32 , i32 * %op9
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op18 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op16
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 40
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
	ori $t1, $t1, 40
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -200
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -216
# store i32  0, i32 * %op18
	ld.d $t0, $fp, -216
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op19 = load i32 , i32 * %op9
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# %op20 = add i32  %op19, 1
	ld.w $t0, $fp, -220
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -224
# store i32  %op20, i32 * %op9
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -224
	st.w $t1, $t0, 0
# br label %label10
	b .counting_sort_label10
.counting_sort_label21:
# br label %label22
	b .counting_sort_label22
.counting_sort_label22:
# %op23 = load i32 , i32 * %op7
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op24 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -232
# %op25 = icmp slt i32  %op23, %op24
	ld.w $t0, $fp, -228
	ld.w $t1, $fp, -232
	slt $t2, $t0, $t1
	st.b $t2, $fp, -233
# %op26 = zext i1  %op25 to i32 
	ld.b $t0, $fp, -233
	st.w $t0, $fp, -240
# %op27 = icmp ne i32  %op26, 0
	ld.w $t0, $fp, -240
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -241
# br i1  %op27, label %label28, label %label55
	ld.b $t0, $fp, -241
	bnez $t0, .counting_sort_label28
	b .counting_sort_label55
.counting_sort_label28:
# %op29 = load i32 , i32 * %op7
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -248
# %op30 = load i32 , i32 * %op7
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# %op31 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -48
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -264
# %op32 = getelementptr i32 , i32 * %op31, i32  %op29
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -248
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
# %op34 = load i32 , i32 * %op7
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -280
# %op35 = load i32 , i32 * %op7
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# %op36 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -48
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -296
# %op37 = getelementptr i32 , i32 * %op36, i32  %op34
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -280
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -296
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -304
# %op38 = load i32 , i32 * %op37
	ld.d $t0, $fp, -304
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op39 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op33
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 40
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
	ori $t1, $t1, 40
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -276
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -320
# %op40 = load i32 , i32 * %op39
	ld.d $t0, $fp, -320
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op41 = add i32  %op40, 1
	ld.w $t0, $fp, -324
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -328
# %op42 = load i32 , i32 * %op7
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op43 = load i32 , i32 * %op7
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -336
# %op44 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -48
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -344
# %op45 = getelementptr i32 , i32 * %op44, i32  %op42
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -332
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -344
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -352
# %op46 = load i32 , i32 * %op45
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op47 = load i32 , i32 * %op7
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -360
# %op48 = load i32 , i32 * %op7
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# %op49 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -48
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -376
# %op50 = getelementptr i32 , i32 * %op49, i32  %op47
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -360
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -376
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -384
# %op51 = load i32 , i32 * %op50
	ld.d $t0, $fp, -384
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -388
# %op52 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op46
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 40
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
	ori $t1, $t1, 40
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -356
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -400
# store i32  %op41, i32 * %op52
	ld.d $t0, $fp, -400
	ld.w $t1, $fp, -328
	st.w $t1, $t0, 0
# %op53 = load i32 , i32 * %op7
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -404
# %op54 = add i32  %op53, 1
	ld.w $t0, $fp, -404
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -408
# store i32  %op54, i32 * %op7
	ld.d $t0, $fp, -144
	ld.w $t1, $fp, -408
	st.w $t1, $t0, 0
# br label %label22
	b .counting_sort_label22
.counting_sort_label55:
# store i32  1, i32 * %op9
	ld.d $t0, $fp, -176
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label56
	b .counting_sort_label56
.counting_sort_label56:
# %op57 = load i32 , i32 * %op9
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -412
# %op58 = icmp slt i32  %op57, 10
	ld.w $t0, $fp, -412
	addi.w $t1, $zero, 10
	slt $t2, $t0, $t1
	st.b $t2, $fp, -413
# %op59 = zext i1  %op58 to i32 
	ld.b $t0, $fp, -413
	st.w $t0, $fp, -420
# %op60 = icmp ne i32  %op59, 0
	ld.w $t0, $fp, -420
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -421
# br i1  %op60, label %label61, label %label78
	ld.b $t0, $fp, -421
	bnez $t0, .counting_sort_label61
	b .counting_sort_label78
.counting_sort_label61:
# %op62 = load i32 , i32 * %op9
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -428
# %op63 = load i32 , i32 * %op9
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -432
# %op64 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op62
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 40
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
	ori $t1, $t1, 40
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -428
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -440
# %op65 = load i32 , i32 * %op64
	ld.d $t0, $fp, -440
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -444
# %op66 = load i32 , i32 * %op9
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -448
# %op67 = sub i32  %op66, 1
	ld.w $t0, $fp, -448
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -452
# %op68 = load i32 , i32 * %op9
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -456
# %op69 = sub i32  %op68, 1
	ld.w $t0, $fp, -456
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -460
# %op70 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op67
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 40
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
	ori $t1, $t1, 40
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -452
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -472
# %op71 = load i32 , i32 * %op70
	ld.d $t0, $fp, -472
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -476
# %op72 = add i32  %op65, %op71
	ld.w $t0, $fp, -444
	ld.w $t1, $fp, -476
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -480
# %op73 = load i32 , i32 * %op9
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -484
# %op74 = load i32 , i32 * %op9
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -488
# %op75 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op73
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 40
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
	ori $t1, $t1, 40
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -484
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -496
# store i32  %op72, i32 * %op75
	ld.d $t0, $fp, -496
	ld.w $t1, $fp, -480
	st.w $t1, $t0, 0
# %op76 = load i32 , i32 * %op9
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -500
# %op77 = add i32  %op76, 1
	ld.w $t0, $fp, -500
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -504
# store i32  %op77, i32 * %op9
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -504
	st.w $t1, $t0, 0
# br label %label56
	b .counting_sort_label56
.counting_sort_label78:
# %op79 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -508
# store i32  %op79, i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -508
	st.w $t1, $t0, 0
# br label %label80
	b .counting_sort_label80
.counting_sort_label80:
# %op81 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -512
# %op82 = icmp sgt i32  %op81, 0
	ld.w $t0, $fp, -512
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -513
# %op83 = zext i1  %op82 to i32 
	ld.b $t0, $fp, -513
	st.w $t0, $fp, -520
# %op84 = icmp ne i32  %op83, 0
	ld.w $t0, $fp, -520
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -521
# br i1  %op84, label %label85, label %label161
	ld.b $t0, $fp, -521
	bnez $t0, .counting_sort_label85
	b .counting_sort_label161
.counting_sort_label85:
# %op86 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -528
# %op87 = sub i32  %op86, 1
	ld.w $t0, $fp, -528
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -532
# %op88 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -536
# %op89 = sub i32  %op88, 1
	ld.w $t0, $fp, -536
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -540
# %op90 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -48
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -552
# %op91 = getelementptr i32 , i32 * %op90, i32  %op87
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -532
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -552
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -560
# %op92 = load i32 , i32 * %op91
	ld.d $t0, $fp, -560
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -564
# %op93 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -568
# %op94 = sub i32  %op93, 1
	ld.w $t0, $fp, -568
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -572
# %op95 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -576
# %op96 = sub i32  %op95, 1
	ld.w $t0, $fp, -576
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -580
# %op97 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -48
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -592
# %op98 = getelementptr i32 , i32 * %op97, i32  %op94
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -572
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -592
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -600
# %op99 = load i32 , i32 * %op98
	ld.d $t0, $fp, -600
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -604
# %op100 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op92
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 40
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
	ori $t1, $t1, 40
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -564
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -616
# %op101 = load i32 , i32 * %op100
	ld.d $t0, $fp, -616
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -620
# %op102 = sub i32  %op101, 1
	ld.w $t0, $fp, -620
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -624
# %op103 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -628
# %op104 = sub i32  %op103, 1
	ld.w $t0, $fp, -628
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -632
# %op105 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -636
# %op106 = sub i32  %op105, 1
	ld.w $t0, $fp, -636
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -640
# %op107 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -48
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -648
# %op108 = getelementptr i32 , i32 * %op107, i32  %op104
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -632
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -648
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -656
# %op109 = load i32 , i32 * %op108
	ld.d $t0, $fp, -656
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -660
# %op110 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -664
# %op111 = sub i32  %op110, 1
	ld.w $t0, $fp, -664
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -668
# %op112 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -672
# %op113 = sub i32  %op112, 1
	ld.w $t0, $fp, -672
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -676
# %op114 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -48
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -688
# %op115 = getelementptr i32 , i32 * %op114, i32  %op111
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -668
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -688
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -696
# %op116 = load i32 , i32 * %op115
	ld.d $t0, $fp, -696
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -700
# %op117 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op109
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 40
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
	ori $t1, $t1, 40
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -660
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -712
# store i32  %op102, i32 * %op117
	ld.d $t0, $fp, -712
	ld.w $t1, $fp, -624
	st.w $t1, $t0, 0
# %op118 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -716
# %op119 = sub i32  %op118, 1
	ld.w $t0, $fp, -716
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -720
# %op120 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -724
# %op121 = sub i32  %op120, 1
	ld.w $t0, $fp, -724
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -728
# %op122 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -48
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -736
# %op123 = getelementptr i32 , i32 * %op122, i32  %op119
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -720
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -736
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -744
# %op124 = load i32 , i32 * %op123
	ld.d $t0, $fp, -744
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -748
# %op125 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -752
# %op126 = sub i32  %op125, 1
	ld.w $t0, $fp, -752
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -756
# %op127 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -760
# %op128 = sub i32  %op127, 1
	ld.w $t0, $fp, -760
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -764
# %op129 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -48
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -776
# %op130 = getelementptr i32 , i32 * %op129, i32  %op126
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -756
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -776
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -784
# %op131 = load i32 , i32 * %op130
	ld.d $t0, $fp, -784
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -788
# %op132 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -792
# %op133 = sub i32  %op132, 1
	ld.w $t0, $fp, -792
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -796
# %op134 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -800
# %op135 = sub i32  %op134, 1
	ld.w $t0, $fp, -800
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -804
# %op136 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -48
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -816
# %op137 = getelementptr i32 , i32 * %op136, i32  %op133
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -796
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -816
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -824
# %op138 = load i32 , i32 * %op137
	ld.d $t0, $fp, -824
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -828
# %op139 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op131
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 40
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
	ori $t1, $t1, 40
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -788
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -840
# %op140 = load i32 , i32 * %op139
	ld.d $t0, $fp, -840
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -844
# %op141 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -848
# %op142 = sub i32  %op141, 1
	ld.w $t0, $fp, -848
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -852
# %op143 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -856
# %op144 = sub i32  %op143, 1
	ld.w $t0, $fp, -856
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -860
# %op145 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -48
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -872
# %op146 = getelementptr i32 , i32 * %op145, i32  %op142
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -852
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -872
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -880
# %op147 = load i32 , i32 * %op146
	ld.d $t0, $fp, -880
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -884
# %op148 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -888
# %op149 = sub i32  %op148, 1
	ld.w $t0, $fp, -888
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -892
# %op150 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -896
# %op151 = sub i32  %op150, 1
	ld.w $t0, $fp, -896
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -900
# %op152 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -48
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -912
# %op153 = getelementptr i32 , i32 * %op152, i32  %op149
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -892
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -912
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -920
# %op154 = load i32 , i32 * %op153
	ld.d $t0, $fp, -920
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -924
# %op155 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op147
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 40
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
	ori $t1, $t1, 40
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -884
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -936
# %op156 = load i32 , i32 * %op155
	ld.d $t0, $fp, -936
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -940
# %op157 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -952
# %op158 = getelementptr i32 , i32 * %op157, i32  %op140
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -844
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -952
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -960
# store i32  %op124, i32 * %op158
	ld.d $t0, $fp, -960
	ld.w $t1, $fp, -748
	st.w $t1, $t0, 0
# %op159 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -964
# %op160 = sub i32  %op159, 1
	ld.w $t0, $fp, -964
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -968
# store i32  %op160, i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -968
	st.w $t1, $t0, 0
# br label %label80
	b .counting_sort_label80
.counting_sort_label161:
# ret i32  0
	addi.w $a0, $zero, 0
	b counting_sort_ret
counting_sort_ret:
	addi.d $sp, $sp, 976
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -320
.main_label_entry:
# store i32  10, i32 * @n
	la.local $t0, n
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# %op0 = alloca [10 x i32 ]
	lu12i.w $t0, -1
	ori $t0, $t0, 4032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -24
# %op1 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 40
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
	ori $t1, $t1, 40
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
	st.d $t0, $fp, -72
# store i32  4, i32 * %op1
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op2 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  1
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 40
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
	ori $t1, $t1, 40
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
	st.d $t0, $fp, -80
# store i32  3, i32 * %op2
	ld.d $t0, $fp, -80
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op3 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  2
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 40
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
	ori $t1, $t1, 40
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
	st.d $t0, $fp, -88
# store i32  9, i32 * %op3
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# %op4 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  3
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 40
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
	ori $t1, $t1, 40
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
	st.d $t0, $fp, -96
# store i32  2, i32 * %op4
	ld.d $t0, $fp, -96
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op5 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  4
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 40
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
	ori $t1, $t1, 40
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
	st.d $t0, $fp, -104
# store i32  0, i32 * %op5
	ld.d $t0, $fp, -104
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op6 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  5
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 40
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
	ori $t1, $t1, 40
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
	st.d $t0, $fp, -112
# store i32  1, i32 * %op6
	ld.d $t0, $fp, -112
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op7 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  6
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 40
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
	ori $t1, $t1, 40
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
	st.d $t0, $fp, -120
# store i32  6, i32 * %op7
	ld.d $t0, $fp, -120
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# %op8 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  7
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 40
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
	ori $t1, $t1, 40
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
	st.d $t0, $fp, -128
# store i32  5, i32 * %op8
	ld.d $t0, $fp, -128
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op9 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  8
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 40
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
	ori $t1, $t1, 40
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
	st.d $t0, $fp, -136
# store i32  7, i32 * %op9
	ld.d $t0, $fp, -136
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op10 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  9
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 40
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
	ori $t1, $t1, 40
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
	st.d $t0, $fp, -144
# store i32  8, i32 * %op10
	ld.d $t0, $fp, -144
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op11 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -152
# store i32  0, i32 * %op11
	ld.d $t0, $fp, -152
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op12 = alloca [10 x i32 ]
	lu12i.w $t0, -1
	ori $t0, $t0, 3888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -168
# %op13 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 40
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
	ori $t1, $t1, 40
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
	st.d $t0, $fp, -216
# %op14 = getelementptr [10 x i32 ], [10 x i32 ]* %op12, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 40
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
	ori $t1, $t1, 40
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
	ld.d $t1, $fp, -168
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -224
# %op15 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op16 = call i32  @counting_sort(i32 * %op13, i32 * %op14, i32  %op15)
	ld.d $a0, $fp, -216
	ld.d $a1, $fp, -224
	ld.w $a2, $fp, -228
	bl counting_sort
	st.w $a0, $fp, -232
# store i32  %op16, i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -232
	st.w $t1, $t0, 0
# br label %label17
	b .main_label17
.main_label17:
# %op18 = load i32 , i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# %op19 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -240
# %op20 = icmp slt i32  %op18, %op19
	ld.w $t0, $fp, -236
	ld.w $t1, $fp, -240
	slt $t2, $t0, $t1
	st.b $t2, $fp, -241
# %op21 = zext i1  %op20 to i32 
	ld.b $t0, $fp, -241
	st.w $t0, $fp, -248
# %op22 = icmp ne i32  %op21, 0
	ld.w $t0, $fp, -248
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -249
# br i1  %op22, label %label23, label %label34
	ld.b $t0, $fp, -249
	bnez $t0, .main_label23
	b .main_label34
.main_label23:
# %op24 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -264
# %op25 = load i32 , i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -272
# %op26 = load i32 , i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op27 = getelementptr [10 x i32 ], [10 x i32 ]* %op12, i32  0, i32  %op25
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 40
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
	ori $t1, $t1, 40
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -272
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -168
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -288
# %op28 = load i32 , i32 * %op27
	ld.d $t0, $fp, -288
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# store i32  %op28, i32 * %op24
	ld.d $t0, $fp, -264
	ld.w $t1, $fp, -292
	st.w $t1, $t0, 0
# %op29 = load i32 , i32 * %op24
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -296
# call void @putint(i32  %op29)
	ld.w $a0, $fp, -296
	bl putint
# store i32  10, i32 * %op24
	ld.d $t0, $fp, -264
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# %op30 = load i32 , i32 * %op24
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op31 = trunc i32  %op30 to i8 
	ld.w $t0, $fp, -300
	andi $t1, $t0, 255
	st.b $t1, $fp, -301
# call void @putch(i8  %op31)
	ld.b $a0, $fp, -301
	bl putch
# %op32 = load i32 , i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op33 = add i32  %op32, 1
	ld.w $t0, $fp, -308
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -312
# store i32  %op33, i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -312
	st.w $t1, $t0, 0
# br label %label17
	b .main_label17
.main_label34:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 320
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

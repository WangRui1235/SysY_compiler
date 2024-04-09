# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl n
	.type n, @object
	.size n, 4
n:
	.space 4
	.text
	.globl select_sort
	.type select_sort, @function
select_sort:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -416
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
.select_sort_label_entry:
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
# %op6 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -104
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label7
	b .select_sort_label7
.select_sort_label7:
# %op8 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op9 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op10 = sub i32  %op9, 1
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# %op11 = icmp slt i32  %op8, %op10
	ld.w $t0, $fp, -112
	ld.w $t1, $fp, -120
	slt $t2, $t0, $t1
	st.b $t2, $fp, -121
# %op12 = zext i1  %op11 to i32 
	ld.b $t0, $fp, -121
	st.w $t0, $fp, -128
# %op13 = icmp ne i32  %op12, 0
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -129
# br i1  %op13, label %label14, label %label18
	ld.b $t0, $fp, -129
	bnez $t0, .select_sort_label14
	b .select_sort_label18
.select_sort_label14:
# %op15 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# store i32  %op15, i32 * %op6
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -136
	st.w $t1, $t0, 0
# %op16 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op17 = add i32  %op16, 1
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -144
# store i32  %op17, i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -144
	st.w $t1, $t0, 0
# br label %label19
	b .select_sort_label19
.select_sort_label18:
# ret i32  0
	addi.w $a0, $zero, 0
	b select_sort_ret
.select_sort_label19:
# %op20 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op21 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op22 = icmp slt i32  %op20, %op21
	ld.w $t0, $fp, -148
	ld.w $t1, $fp, -152
	slt $t2, $t0, $t1
	st.b $t2, $fp, -153
# %op23 = zext i1  %op22 to i32 
	ld.b $t0, $fp, -153
	st.w $t0, $fp, -160
# %op24 = icmp ne i32  %op23, 0
	ld.w $t0, $fp, -160
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -161
# br i1  %op24, label %label25, label %label39
	ld.b $t0, $fp, -161
	bnez $t0, .select_sort_label25
	b .select_sort_label39
.select_sort_label25:
# %op26 = load i32 , i32 * %op6
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op27 = load i32 , i32 * %op6
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op28 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -184
# %op29 = getelementptr i32 , i32 * %op28, i32  %op26
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
# %op30 = load i32 , i32 * %op29
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op31 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -200
# %op32 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op33 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -216
# %op34 = getelementptr i32 , i32 * %op33, i32  %op31
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
# %op35 = load i32 , i32 * %op34
	ld.d $t0, $fp, -224
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op36 = icmp sgt i32  %op30, %op35
	ld.w $t0, $fp, -196
	ld.w $t1, $fp, -228
	slt $t2, $t1, $t0
	st.b $t2, $fp, -229
# %op37 = zext i1  %op36 to i32 
	ld.b $t0, $fp, -229
	st.w $t0, $fp, -236
# %op38 = icmp ne i32  %op37, 0
	ld.w $t0, $fp, -236
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -237
# br i1  %op38, label %label45, label %label47
	ld.b $t0, $fp, -237
	bnez $t0, .select_sort_label45
	b .select_sort_label47
.select_sort_label39:
# %op40 = load i32 , i32 * %op6
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op41 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -248
# %op42 = icmp ne i32  %op40, %op41
	ld.w $t0, $fp, -244
	ld.w $t1, $fp, -248
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -249
# %op43 = zext i1  %op42 to i32 
	ld.b $t0, $fp, -249
	st.w $t0, $fp, -256
# %op44 = icmp ne i32  %op43, 0
	ld.w $t0, $fp, -256
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -257
# br i1  %op44, label %label50, label %label71
	ld.b $t0, $fp, -257
	bnez $t0, .select_sort_label50
	b .select_sort_label71
.select_sort_label45:
# %op46 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -264
# store i32  %op46, i32 * %op6
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -264
	st.w $t1, $t0, 0
# br label %label47
	b .select_sort_label47
.select_sort_label47:
# %op48 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# %op49 = add i32  %op48, 1
	ld.w $t0, $fp, -268
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -272
# store i32  %op49, i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -272
	st.w $t1, $t0, 0
# br label %label19
	b .select_sort_label19
.select_sort_label50:
# %op51 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -280
# %op52 = load i32 , i32 * %op6
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -288
# %op53 = load i32 , i32 * %op6
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# %op54 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
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
# store i32  %op56, i32 * %op51
	ld.d $t0, $fp, -280
	ld.w $t1, $fp, -316
	st.w $t1, $t0, 0
# %op57 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -320
# %op58 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op59 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -336
# %op60 = getelementptr i32 , i32 * %op59, i32  %op57
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -320
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -336
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -344
# %op61 = load i32 , i32 * %op60
	ld.d $t0, $fp, -344
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op62 = load i32 , i32 * %op6
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -352
# %op63 = load i32 , i32 * %op6
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op64 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -368
# %op65 = getelementptr i32 , i32 * %op64, i32  %op62
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
# store i32  %op61, i32 * %op65
	ld.d $t0, $fp, -376
	ld.w $t1, $fp, -348
	st.w $t1, $t0, 0
# %op66 = load i32 , i32 * %op51
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op67 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -384
# %op68 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -388
# %op69 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -400
# %op70 = getelementptr i32 , i32 * %op69, i32  %op67
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -384
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -400
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -408
# store i32  %op66, i32 * %op70
	ld.d $t0, $fp, -408
	ld.w $t1, $fp, -380
	st.w $t1, $t0, 0
# br label %label71
	b .select_sort_label71
.select_sort_label71:
# %op72 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -412
# %op73 = add i32  %op72, 1
	ld.w $t0, $fp, -412
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -416
# store i32  %op73, i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -416
	st.w $t1, $t0, 0
# br label %label7
	b .select_sort_label7
select_sort_ret:
	addi.d $sp, $sp, 416
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -256
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
# %op12 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  0
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
	st.d $t0, $fp, -168
# %op13 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op14 = call i32  @select_sort(i32 * %op12, i32  %op13)
	ld.d $a0, $fp, -168
	ld.w $a1, $fp, -172
	bl select_sort
	st.w $a0, $fp, -176
# store i32  %op14, i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -176
	st.w $t1, $t0, 0
# br label %label15
	b .main_label15
.main_label15:
# %op16 = load i32 , i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op17 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -184
# %op18 = icmp slt i32  %op16, %op17
	ld.w $t0, $fp, -180
	ld.w $t1, $fp, -184
	slt $t2, $t0, $t1
	st.b $t2, $fp, -185
# %op19 = zext i1  %op18 to i32 
	ld.b $t0, $fp, -185
	st.w $t0, $fp, -192
# %op20 = icmp ne i32  %op19, 0
	ld.w $t0, $fp, -192
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -193
# br i1  %op20, label %label21, label %label32
	ld.b $t0, $fp, -193
	bnez $t0, .main_label21
	b .main_label32
.main_label21:
# %op22 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3884
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -208
# %op23 = load i32 , i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -216
# %op24 = load i32 , i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# %op25 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  %op23
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
	ld.w $t1, $fp, -216
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -232
# %op26 = load i32 , i32 * %op25
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# store i32  %op26, i32 * %op22
	ld.d $t0, $fp, -208
	ld.w $t1, $fp, -236
	st.w $t1, $t0, 0
# %op27 = load i32 , i32 * %op22
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -240
# call void @putint(i32  %op27)
	ld.w $a0, $fp, -240
	bl putint
# store i32  10, i32 * %op22
	ld.d $t0, $fp, -208
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# %op28 = load i32 , i32 * %op22
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op29 = trunc i32  %op28 to i8 
	ld.w $t0, $fp, -244
	andi $t1, $t0, 255
	st.b $t1, $fp, -245
# call void @putch(i8  %op29)
	ld.b $a0, $fp, -245
	bl putch
# %op30 = load i32 , i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# %op31 = add i32  %op30, 1
	ld.w $t0, $fp, -252
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -256
# store i32  %op31, i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -256
	st.w $t1, $t0, 0
# br label %label15
	b .main_label15
.main_label32:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 256
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

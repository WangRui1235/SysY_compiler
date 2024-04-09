# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl INF
	.data
	.type INF, @object
	.size INF, 4
INF:
	.word 1879048192
	.space 4
	.globl size
	.type size, @object
	.size size, 40
size:
	.space 40
	.globl to
	.type to, @object
	.size to, 400
to:
	.space 400
	.globl cap
	.type cap, @object
	.size cap, 400
cap:
	.space 400
	.globl rev
	.type rev, @object
	.size rev, 400
rev:
	.space 400
	.globl used
	.type used, @object
	.size used, 40
used:
	.space 40
	.text
	.globl my_memset
	.type my_memset, @function
my_memset:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -160
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
	st.w $a2, $fp, -32
.my_memset_label_entry:
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
# %op6 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -88
# store i32  0, i32 * %op6
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label7
	b .my_memset_label7
.my_memset_label7:
# %op8 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op9 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op10 = icmp slt i32  %op8, %op9
	ld.w $t0, $fp, -96
	ld.w $t1, $fp, -100
	slt $t2, $t0, $t1
	st.b $t2, $fp, -101
# %op11 = zext i1  %op10 to i32 
	ld.b $t0, $fp, -101
	st.w $t0, $fp, -108
# %op12 = icmp ne i32  %op11, 0
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -109
# br i1  %op12, label %label13, label %label21
	ld.b $t0, $fp, -109
	bnez $t0, .my_memset_label13
	b .my_memset_label21
.my_memset_label13:
# %op14 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op15 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -120
# %op16 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op17 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -136
# %op18 = getelementptr i32 , i32 * %op17, i32  %op15
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
# store i32  %op14, i32 * %op18
	ld.d $t0, $fp, -144
	ld.w $t1, $fp, -116
	st.w $t1, $t0, 0
# %op19 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op20 = add i32  %op19, 1
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -152
# store i32  %op20, i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -152
	st.w $t1, $t0, 0
# br label %label7
	b .my_memset_label7
.my_memset_label21:
# ret void
	addi.d $a0, $zero, 0
	b my_memset_ret
my_memset_ret:
	addi.d $sp, $sp, 160
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl add_node
	.type add_node, @function
add_node:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -464
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
	st.w $a2, $fp, -28
.add_node_label_entry:
# %op3 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -40
# store i32  %arg0, i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op4 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -56
# store i32  %arg1, i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -24
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
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op6 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op7 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op8 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op9 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op10 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op11 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op9
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
	ld.w $t1, $fp, -92
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, size
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -104
# %op12 = load i32 , i32 * %op11
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op13 = getelementptr [100 x i32 ], [100 x i32 ]* @to, i32  0, i32  %op7
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
	ld.w $t1, $fp, -84
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, to
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -120
# store i32  %op6, i32 * %op13
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -80
	st.w $t1, $t0, 0
# %op14 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op15 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op16 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op17 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# %op18 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op19 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op17
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
	ld.w $t1, $fp, -136
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, size
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -152
# %op20 = load i32 , i32 * %op19
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op21 = getelementptr [100 x i32 ], [100 x i32 ]* @cap, i32  0, i32  %op15
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
	ld.w $t1, $fp, -128
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, cap
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -168
# store i32  %op14, i32 * %op21
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -124
	st.w $t1, $t0, 0
# %op22 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op23 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op24 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op22
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
	ld.w $t1, $fp, -172
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, size
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -184
# %op25 = load i32 , i32 * %op24
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op26 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -192
# %op27 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op28 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -200
# %op29 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op30 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op28
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
	la.local $t1, size
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -216
# %op31 = load i32 , i32 * %op30
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# %op32 = getelementptr [100 x i32 ], [100 x i32 ]* @rev, i32  0, i32  %op26
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
	ld.w $t1, $fp, -192
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, rev
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -232
# store i32  %op25, i32 * %op32
	ld.d $t0, $fp, -232
	ld.w $t1, $fp, -188
	st.w $t1, $t0, 0
# %op33 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# %op34 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -240
# %op35 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op36 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -248
# %op37 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# %op38 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op36
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
	ld.w $t1, $fp, -248
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, size
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -264
# %op39 = load i32 , i32 * %op38
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# %op40 = getelementptr [100 x i32 ], [100 x i32 ]* @to, i32  0, i32  %op34
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
	ld.w $t1, $fp, -240
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, to
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -280
# store i32  %op33, i32 * %op40
	ld.d $t0, $fp, -280
	ld.w $t1, $fp, -236
	st.w $t1, $t0, 0
# %op41 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# %op42 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -288
# %op43 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# %op44 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -296
# %op45 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op43
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
	ld.w $t1, $fp, -292
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, size
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -304
# %op46 = load i32 , i32 * %op45
	ld.d $t0, $fp, -304
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op47 = getelementptr [100 x i32 ], [100 x i32 ]* @cap, i32  0, i32  %op41
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
	ld.w $t1, $fp, -284
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, cap
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -320
# store i32  0, i32 * %op47
	ld.d $t0, $fp, -320
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op48 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op49 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -328
# %op50 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op48
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
	ld.w $t1, $fp, -324
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, size
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -336
# %op51 = load i32 , i32 * %op50
	ld.d $t0, $fp, -336
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -340
# %op52 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -344
# %op53 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op54 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -352
# %op55 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op56 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op54
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
	ld.w $t1, $fp, -352
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, size
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -368
# %op57 = load i32 , i32 * %op56
	ld.d $t0, $fp, -368
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -372
# %op58 = getelementptr [100 x i32 ], [100 x i32 ]* @rev, i32  0, i32  %op52
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
	ld.w $t1, $fp, -344
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, rev
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -384
# store i32  %op51, i32 * %op58
	ld.d $t0, $fp, -384
	ld.w $t1, $fp, -340
	st.w $t1, $t0, 0
# %op59 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -388
# %op60 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -392
# %op61 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op59
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
	ld.w $t1, $fp, -388
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, size
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -400
# %op62 = load i32 , i32 * %op61
	ld.d $t0, $fp, -400
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -404
# %op63 = add i32  %op62, 1
	ld.w $t0, $fp, -404
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -408
# %op64 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -412
# %op65 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -416
# %op66 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op64
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
	ld.w $t1, $fp, -412
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, size
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -424
# store i32  %op63, i32 * %op66
	ld.d $t0, $fp, -424
	ld.w $t1, $fp, -408
	st.w $t1, $t0, 0
# %op67 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -428
# %op68 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -432
# %op69 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op67
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
	la.local $t1, size
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -440
# %op70 = load i32 , i32 * %op69
	ld.d $t0, $fp, -440
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -444
# %op71 = add i32  %op70, 1
	ld.w $t0, $fp, -444
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -448
# %op72 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -452
# %op73 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -456
# %op74 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op72
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
	la.local $t1, size
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -464
# store i32  %op71, i32 * %op74
	ld.d $t0, $fp, -464
	ld.w $t1, $fp, -448
	st.w $t1, $t0, 0
# ret void
	addi.d $a0, $zero, 0
	b add_node_ret
add_node_ret:
	addi.d $sp, $sp, 464
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl dfs
	.type dfs, @function
dfs:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -704
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
	st.w $a2, $fp, -28
.dfs_label_entry:
# %op3 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -40
# store i32  %arg0, i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op4 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -56
# store i32  %arg1, i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -24
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
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op6 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op7 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op8 = icmp eq i32  %op6, %op7
	ld.w $t0, $fp, -80
	ld.w $t1, $fp, -84
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -85
# %op9 = zext i1  %op8 to i32 
	ld.b $t0, $fp, -85
	st.w $t0, $fp, -92
# %op10 = icmp ne i32  %op9, 0
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -93
# br i1  %op10, label %label11, label %label13
	ld.b $t0, $fp, -93
	bnez $t0, .dfs_label11
	b .dfs_label13
.dfs_label11:
# %op12 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# ret i32  %op12
	ld.w $a0, $fp, -100
	b dfs_ret
.dfs_label13:
# %op14 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op15 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op16 = getelementptr [10 x i32 ], [10 x i32 ]* @used, i32  0, i32  %op14
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
	ld.w $t1, $fp, -104
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, used
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -120
# store i32  1, i32 * %op16
	ld.d $t0, $fp, -120
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op17 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -128
# store i32  0, i32 * %op17
	ld.d $t0, $fp, -128
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label18
	b .dfs_label18
.dfs_label18:
# %op19 = load i32 , i32 * %op17
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# %op20 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op21 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op22 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op20
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
	ld.w $t1, $fp, -140
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, size
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -152
# %op23 = load i32 , i32 * %op22
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op24 = icmp slt i32  %op19, %op23
	ld.w $t0, $fp, -136
	ld.w $t1, $fp, -156
	slt $t2, $t0, $t1
	st.b $t2, $fp, -157
# %op25 = zext i1  %op24 to i32 
	ld.b $t0, $fp, -157
	st.w $t0, $fp, -164
# %op26 = icmp ne i32  %op25, 0
	ld.w $t0, $fp, -164
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -165
# br i1  %op26, label %label27, label %label41
	ld.b $t0, $fp, -165
	bnez $t0, .dfs_label27
	b .dfs_label41
.dfs_label27:
# %op28 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op29 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op30 = load i32 , i32 * %op17
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op31 = getelementptr [100 x i32 ], [100 x i32 ]* @to, i32  0, i32  %op28
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
	ld.w $t1, $fp, -172
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, to
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -192
# %op32 = load i32 , i32 * %op31
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op33 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -200
# %op34 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op35 = load i32 , i32 * %op17
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -208
# %op36 = getelementptr [100 x i32 ], [100 x i32 ]* @to, i32  0, i32  %op33
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
	ld.w $t1, $fp, -200
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, to
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -216
# %op37 = load i32 , i32 * %op36
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# %op38 = getelementptr [10 x i32 ], [10 x i32 ]* @used, i32  0, i32  %op32
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
	ld.w $t1, $fp, -196
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, used
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -232
# %op39 = load i32 , i32 * %op38
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# %op40 = icmp ne i32  %op39, 0
	ld.w $t0, $fp, -236
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -237
# br i1  %op40, label %label42, label %label45
	ld.b $t0, $fp, -237
	bnez $t0, .dfs_label42
	b .dfs_label45
.dfs_label41:
# ret i32  0
	addi.w $a0, $zero, 0
	b dfs_ret
.dfs_label42:
# %op43 = load i32 , i32 * %op17
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op44 = add i32  %op43, 1
	ld.w $t0, $fp, -244
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -248
# store i32  %op44, i32 * %op17
	ld.d $t0, $fp, -128
	ld.w $t1, $fp, -248
	st.w $t1, $t0, 0
# br label %label18
	b .dfs_label18
.dfs_label45:
# %op46 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# %op47 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -256
# %op48 = load i32 , i32 * %op17
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# %op49 = getelementptr [100 x i32 ], [100 x i32 ]* @cap, i32  0, i32  %op46
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
	ld.w $t1, $fp, -252
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, cap
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -272
# %op50 = load i32 , i32 * %op49
	ld.d $t0, $fp, -272
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op51 = icmp sle i32  %op50, 0
	ld.w $t0, $fp, -276
	addi.w $t1, $zero, 0
	bge  $t1, $t0, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -277
# %op52 = zext i1  %op51 to i32 
	ld.b $t0, $fp, -277
	st.w $t0, $fp, -284
# %op53 = icmp ne i32  %op52, 0
	ld.w $t0, $fp, -284
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -285
# br i1  %op53, label %label54, label %label57
	ld.b $t0, $fp, -285
	bnez $t0, .dfs_label54
	b .dfs_label57
.dfs_label54:
# %op55 = load i32 , i32 * %op17
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# %op56 = add i32  %op55, 1
	ld.w $t0, $fp, -292
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -296
# store i32  %op56, i32 * %op17
	ld.d $t0, $fp, -128
	ld.w $t1, $fp, -296
	st.w $t1, $t0, 0
# br label %label18
	b .dfs_label18
.dfs_label57:
# %op58 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3788
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -304
# %op59 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -312
# %op60 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op61 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -320
# %op62 = load i32 , i32 * %op17
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op63 = getelementptr [100 x i32 ], [100 x i32 ]* @cap, i32  0, i32  %op60
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
	ld.w $t1, $fp, -316
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, cap
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -336
# %op64 = load i32 , i32 * %op63
	ld.d $t0, $fp, -336
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -340
# %op65 = icmp slt i32  %op59, %op64
	ld.w $t0, $fp, -312
	ld.w $t1, $fp, -340
	slt $t2, $t0, $t1
	st.b $t2, $fp, -341
# %op66 = zext i1  %op65 to i32 
	ld.b $t0, $fp, -341
	st.w $t0, $fp, -348
# %op67 = icmp ne i32  %op66, 0
	ld.w $t0, $fp, -348
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -349
# br i1  %op67, label %label68, label %label70
	ld.b $t0, $fp, -349
	bnez $t0, .dfs_label68
	b .dfs_label70
.dfs_label68:
# %op69 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# store i32  %op69, i32 * %op58
	ld.d $t0, $fp, -304
	ld.w $t1, $fp, -356
	st.w $t1, $t0, 0
# br label %label76
	b .dfs_label76
.dfs_label70:
# %op71 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -360
# %op72 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# %op73 = load i32 , i32 * %op17
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -368
# %op74 = getelementptr [100 x i32 ], [100 x i32 ]* @cap, i32  0, i32  %op71
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
	ld.w $t1, $fp, -360
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, cap
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -376
# %op75 = load i32 , i32 * %op74
	ld.d $t0, $fp, -376
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# store i32  %op75, i32 * %op58
	ld.d $t0, $fp, -304
	ld.w $t1, $fp, -380
	st.w $t1, $t0, 0
# br label %label76
	b .dfs_label76
.dfs_label76:
# %op77 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -384
# %op78 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -388
# %op79 = load i32 , i32 * %op17
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -392
# %op80 = getelementptr [100 x i32 ], [100 x i32 ]* @to, i32  0, i32  %op77
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
	ld.w $t1, $fp, -384
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, to
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -400
# %op81 = load i32 , i32 * %op80
	ld.d $t0, $fp, -400
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -404
# %op82 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -408
# %op83 = load i32 , i32 * %op58
	ld.d $t0, $fp, -304
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -412
# %op84 = call i32  @dfs(i32  %op81, i32  %op82, i32  %op83)
	ld.w $a0, $fp, -404
	ld.w $a1, $fp, -408
	ld.w $a2, $fp, -412
	bl dfs
	st.w $a0, $fp, -416
# %op85 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3668
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -424
# store i32  %op84, i32 * %op85
	ld.d $t0, $fp, -424
	ld.w $t1, $fp, -416
	st.w $t1, $t0, 0
# %op86 = load i32 , i32 * %op85
	ld.d $t0, $fp, -424
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -432
# %op87 = icmp sgt i32  %op86, 0
	ld.w $t0, $fp, -432
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -433
# %op88 = zext i1  %op87 to i32 
	ld.b $t0, $fp, -433
	st.w $t0, $fp, -440
# %op89 = icmp ne i32  %op88, 0
	ld.w $t0, $fp, -440
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -441
# br i1  %op89, label %label90, label %label138
	ld.b $t0, $fp, -441
	bnez $t0, .dfs_label90
	b .dfs_label138
.dfs_label90:
# %op91 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -448
# %op92 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -452
# %op93 = load i32 , i32 * %op17
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -456
# %op94 = getelementptr [100 x i32 ], [100 x i32 ]* @cap, i32  0, i32  %op91
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
	ld.w $t1, $fp, -448
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, cap
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -464
# %op95 = load i32 , i32 * %op94
	ld.d $t0, $fp, -464
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -468
# %op96 = load i32 , i32 * %op85
	ld.d $t0, $fp, -424
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -472
# %op97 = sub i32  %op95, %op96
	ld.w $t0, $fp, -468
	ld.w $t1, $fp, -472
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -476
# %op98 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -480
# %op99 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -484
# %op100 = load i32 , i32 * %op17
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -488
# %op101 = getelementptr [100 x i32 ], [100 x i32 ]* @cap, i32  0, i32  %op98
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
	ld.w $t1, $fp, -480
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, cap
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -496
# store i32  %op97, i32 * %op101
	ld.d $t0, $fp, -496
	ld.w $t1, $fp, -476
	st.w $t1, $t0, 0
# %op102 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -500
# %op103 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -504
# %op104 = load i32 , i32 * %op17
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -508
# %op105 = getelementptr [100 x i32 ], [100 x i32 ]* @to, i32  0, i32  %op102
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
	ld.w $t1, $fp, -500
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, to
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -520
# %op106 = load i32 , i32 * %op105
	ld.d $t0, $fp, -520
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -524
# %op107 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -528
# %op108 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -532
# %op109 = load i32 , i32 * %op17
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -536
# %op110 = getelementptr [100 x i32 ], [100 x i32 ]* @to, i32  0, i32  %op107
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
	ld.w $t1, $fp, -528
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, to
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -544
# %op111 = load i32 , i32 * %op110
	ld.d $t0, $fp, -544
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -548
# %op112 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -552
# %op113 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -556
# %op114 = load i32 , i32 * %op17
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -560
# %op115 = getelementptr [100 x i32 ], [100 x i32 ]* @rev, i32  0, i32  %op112
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
	ld.w $t1, $fp, -552
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, rev
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -568
# %op116 = load i32 , i32 * %op115
	ld.d $t0, $fp, -568
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -572
# %op117 = getelementptr [100 x i32 ], [100 x i32 ]* @cap, i32  0, i32  %op106
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
	ld.w $t1, $fp, -524
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, cap
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -584
# %op118 = load i32 , i32 * %op117
	ld.d $t0, $fp, -584
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -588
# %op119 = load i32 , i32 * %op85
	ld.d $t0, $fp, -424
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -592
# %op120 = add i32  %op118, %op119
	ld.w $t0, $fp, -588
	ld.w $t1, $fp, -592
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -596
# %op121 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -600
# %op122 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -604
# %op123 = load i32 , i32 * %op17
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -608
# %op124 = getelementptr [100 x i32 ], [100 x i32 ]* @to, i32  0, i32  %op121
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
	ld.w $t1, $fp, -600
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, to
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -616
# %op125 = load i32 , i32 * %op124
	ld.d $t0, $fp, -616
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -620
# %op126 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -624
# %op127 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -628
# %op128 = load i32 , i32 * %op17
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -632
# %op129 = getelementptr [100 x i32 ], [100 x i32 ]* @to, i32  0, i32  %op126
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
	ld.w $t1, $fp, -624
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, to
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -640
# %op130 = load i32 , i32 * %op129
	ld.d $t0, $fp, -640
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -644
# %op131 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -648
# %op132 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -652
# %op133 = load i32 , i32 * %op17
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -656
# %op134 = getelementptr [100 x i32 ], [100 x i32 ]* @rev, i32  0, i32  %op131
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
	ld.w $t1, $fp, -648
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, rev
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -664
# %op135 = load i32 , i32 * %op134
	ld.d $t0, $fp, -664
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -668
# %op136 = getelementptr [100 x i32 ], [100 x i32 ]* @cap, i32  0, i32  %op125
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
	ld.w $t1, $fp, -620
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, cap
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -680
# store i32  %op120, i32 * %op136
	ld.d $t0, $fp, -680
	ld.w $t1, $fp, -596
	st.w $t1, $t0, 0
# %op137 = load i32 , i32 * %op85
	ld.d $t0, $fp, -424
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -684
# ret i32  %op137
	ld.w $a0, $fp, -684
	b dfs_ret
.dfs_label138:
# %op139 = load i32 , i32 * %op17
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -688
# %op140 = add i32  %op139, 1
	ld.w $t0, $fp, -688
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -692
# store i32  %op140, i32 * %op17
	ld.d $t0, $fp, -128
	ld.w $t1, $fp, -692
	st.w $t1, $t0, 0
# br label %label18
	b .dfs_label18
dfs_ret:
	addi.d $sp, $sp, 704
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl max_flow
	.type max_flow, @function
max_flow:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -144
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.max_flow_label_entry:
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
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label5
	b .max_flow_label5
.max_flow_label5:
# %op6 = icmp ne i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -69
# br i1  %op6, label %label7, label %label18
	ld.b $t0, $fp, -69
	bnez $t0, .max_flow_label7
	b .max_flow_label18
.max_flow_label7:
# %op8 = getelementptr [10 x i32 ], [10 x i32 ]* @used, i32  0, i32  0
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
	la.local $t1, used
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -80
# call void @my_memset(i32 * %op8, i32  0, i32  10)
	ld.d $a0, $fp, -80
	addi.w $a1, $zero, 0
	addi.w $a2, $zero, 10
	bl my_memset
# %op9 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op10 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op11 = load i32 , i32 * @INF
	la.local $t0, INF
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op12 = call i32  @dfs(i32  %op9, i32  %op10, i32  %op11)
	ld.w $a0, $fp, -84
	ld.w $a1, $fp, -88
	ld.w $a2, $fp, -92
	bl dfs
	st.w $a0, $fp, -96
# %op13 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -104
# store i32  %op12, i32 * %op13
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -96
	st.w $t1, $t0, 0
# %op14 = load i32 , i32 * %op13
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op15 = icmp eq i32  %op14, 0
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label14
	addi.d $t2, $zero, 0
	b false_label14
true_label14:
	addi.d $t2, $zero, 1
false_label14:
	st.b $t2, $fp, -113
# %op16 = zext i1  %op15 to i32 
	ld.b $t0, $fp, -113
	st.w $t0, $fp, -120
# %op17 = icmp ne i32  %op16, 0
	ld.w $t0, $fp, -120
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -121
# br i1  %op17, label %label19, label %label21
	ld.b $t0, $fp, -121
	bnez $t0, .max_flow_label19
	b .max_flow_label21
.max_flow_label18:
# ret i32  0
	addi.w $a0, $zero, 0
	b max_flow_ret
.max_flow_label19:
# %op20 = load i32 , i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# ret i32  %op20
	ld.w $a0, $fp, -128
	b max_flow_ret
.max_flow_label21:
# %op22 = load i32 , i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op23 = load i32 , i32 * %op13
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
# br label %label5
	b .max_flow_label5
max_flow_ret:
	addi.d $sp, $sp, 144
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -176
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
# %op2 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -48
# store i32  %op2, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -48
	st.w $t1, $t0, 0
# %op3 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -52
# store i32  %op3, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -52
	st.w $t1, $t0, 0
# %op4 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  0
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
	la.local $t1, size
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -64
# call void @my_memset(i32 * %op4, i32  0, i32  10)
	ld.d $a0, $fp, -64
	addi.w $a1, $zero, 0
	addi.w $a2, $zero, 10
	bl my_memset
# br label %label5
	b .main_label5
.main_label5:
# %op6 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op7 = icmp sgt i32  %op6, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -69
# %op8 = zext i1  %op7 to i32 
	ld.b $t0, $fp, -69
	st.w $t0, $fp, -76
# %op9 = icmp ne i32  %op8, 0
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	st.b $t2, $fp, -77
# br i1  %op9, label %label10, label %label22
	ld.b $t0, $fp, -77
	bnez $t0, .main_label10
	b .main_label22
.main_label10:
# %op11 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -88
# %op12 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -104
# %op13 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -112
# store i32  %op13, i32 * %op11
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -112
	st.w $t1, $t0, 0
# %op14 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -116
# store i32  %op14, i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -116
	st.w $t1, $t0, 0
# %op15 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -120
# %op16 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -128
# store i32  %op15, i32 * %op16
	ld.d $t0, $fp, -128
	ld.w $t1, $fp, -120
	st.w $t1, $t0, 0
# %op17 = load i32 , i32 * %op11
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# %op18 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op19 = load i32 , i32 * %op16
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# call void @add_node(i32  %op17, i32  %op18, i32  %op19)
	ld.w $a0, $fp, -136
	ld.w $a1, $fp, -140
	ld.w $a2, $fp, -144
	bl add_node
# %op20 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op21 = sub i32  %op20, 1
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -152
# store i32  %op21, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -152
	st.w $t1, $t0, 0
# br label %label5
	b .main_label5
.main_label22:
# %op23 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op24 = call i32  @max_flow(i32  1, i32  %op23)
	addi.w $a0, $zero, 1
	ld.w $a1, $fp, -156
	bl max_flow
	st.w $a0, $fp, -160
# call void @putint(i32  %op24)
	ld.w $a0, $fp, -160
	bl putint
# %op25 = trunc i32  10 to i8 
	addi.w $t0, $zero, 10
	andi $t1, $t0, 255
	st.b $t1, $fp, -161
# call void @putch(i8  %op25)
	ld.b $a0, $fp, -161
	bl putch
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 176
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

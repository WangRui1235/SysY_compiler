# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl n
	.type n, @object
	.size n, 4
n:
	.space 4
	.text
	.globl swap
	.type swap, @function
swap:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -224
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
	st.w $a2, $fp, -32
.swap_label_entry:
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
# %op7 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op8 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op9 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -112
# %op10 = getelementptr i32 , i32 * %op9, i32  %op7
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -96
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -112
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -120
# %op11 = load i32 , i32 * %op10
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# store i32  %op11, i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -124
	st.w $t1, $t0, 0
# %op12 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op13 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op14 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -144
# %op15 = getelementptr i32 , i32 * %op14, i32  %op12
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
# %op16 = load i32 , i32 * %op15
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op17 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op18 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op19 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -176
# %op20 = getelementptr i32 , i32 * %op19, i32  %op17
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -160
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -176
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -184
# store i32  %op16, i32 * %op20
	ld.d $t0, $fp, -184
	ld.w $t1, $fp, -156
	st.w $t1, $t0, 0
# %op21 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op22 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -192
# %op23 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op24 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -208
# %op25 = getelementptr i32 , i32 * %op24, i32  %op22
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -192
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -208
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -216
# store i32  %op21, i32 * %op25
	ld.d $t0, $fp, -216
	ld.w $t1, $fp, -188
	st.w $t1, $t0, 0
# ret i32  0
	addi.w $a0, $zero, 0
	b swap_ret
swap_ret:
	addi.d $sp, $sp, 224
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl heap_ajust
	.type heap_ajust, @function
heap_ajust:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -368
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
	st.w $a2, $fp, -32
.heap_ajust_label_entry:
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
# %op7 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# store i32  %op7, i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -96
	st.w $t1, $t0, 0
# %op8 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -104
# %op9 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op10 = mul i32  %op9, 2
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 2
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -116
# %op11 = add i32  %op10, 1
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# store i32  %op11, i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -120
	st.w $t1, $t0, 0
# br label %label12
	b .heap_ajust_label12
.heap_ajust_label12:
# %op13 = load i32 , i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op14 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op15 = add i32  %op14, 1
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -132
# %op16 = icmp slt i32  %op13, %op15
	ld.w $t0, $fp, -124
	ld.w $t1, $fp, -132
	slt $t2, $t0, $t1
	st.b $t2, $fp, -133
# %op17 = zext i1  %op16 to i32 
	ld.b $t0, $fp, -133
	st.w $t0, $fp, -140
# %op18 = icmp ne i32  %op17, 0
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -141
# br i1  %op18, label %label19, label %label25
	ld.b $t0, $fp, -141
	bnez $t0, .heap_ajust_label19
	b .heap_ajust_label25
.heap_ajust_label19:
# %op20 = load i32 , i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op21 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
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
# br i1  %op24, label %label43, label %label29
	ld.b $t0, $fp, -161
	bnez $t0, .heap_ajust_label43
	b .heap_ajust_label29
.heap_ajust_label25:
# ret i32  0
	addi.w $a0, $zero, 0
	b heap_ajust_ret
.heap_ajust_label26:
# %op27 = load i32 , i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op28 = add i32  %op27, 1
	ld.w $t0, $fp, -168
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -172
# store i32  %op28, i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -172
	st.w $t1, $t0, 0
# br label %label29
	b .heap_ajust_label29
.heap_ajust_label29:
# %op30 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op31 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op32 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -192
# %op33 = getelementptr i32 , i32 * %op32, i32  %op30
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
# %op34 = load i32 , i32 * %op33
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op35 = load i32 , i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -208
# %op36 = load i32 , i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op37 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -224
# %op38 = getelementptr i32 , i32 * %op37, i32  %op35
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -208
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -224
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -232
# %op39 = load i32 , i32 * %op38
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# %op40 = icmp sgt i32  %op34, %op39
	ld.w $t0, $fp, -204
	ld.w $t1, $fp, -236
	slt $t2, $t1, $t0
	st.b $t2, $fp, -237
# %op41 = zext i1  %op40 to i32 
	ld.b $t0, $fp, -237
	st.w $t0, $fp, -244
# %op42 = icmp ne i32  %op41, 0
	ld.w $t0, $fp, -244
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -245
# br i1  %op42, label %label59, label %label60
	ld.b $t0, $fp, -245
	bnez $t0, .heap_ajust_label59
	b .heap_ajust_label60
.heap_ajust_label43:
# %op44 = load i32 , i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# %op45 = load i32 , i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -256
# %op46 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -264
# %op47 = getelementptr i32 , i32 * %op46, i32  %op44
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -252
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -264
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -272
# %op48 = load i32 , i32 * %op47
	ld.d $t0, $fp, -272
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op49 = load i32 , i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -280
# %op50 = add i32  %op49, 1
	ld.w $t0, $fp, -280
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -284
# %op51 = load i32 , i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -288
# %op52 = add i32  %op51, 1
	ld.w $t0, $fp, -288
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -292
# %op53 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -304
# %op54 = getelementptr i32 , i32 * %op53, i32  %op50
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -284
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -304
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -312
# %op55 = load i32 , i32 * %op54
	ld.d $t0, $fp, -312
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op56 = icmp slt i32  %op48, %op55
	ld.w $t0, $fp, -276
	ld.w $t1, $fp, -316
	slt $t2, $t0, $t1
	st.b $t2, $fp, -317
# %op57 = zext i1  %op56 to i32 
	ld.b $t0, $fp, -317
	st.w $t0, $fp, -324
# %op58 = icmp ne i32  %op57, 0
	ld.w $t0, $fp, -324
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -325
# br i1  %op58, label %label26, label %label29
	ld.b $t0, $fp, -325
	bnez $t0, .heap_ajust_label26
	b .heap_ajust_label29
.heap_ajust_label59:
# ret i32  0
	addi.w $a0, $zero, 0
	b heap_ajust_ret
.heap_ajust_label60:
# %op61 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -336
# %op62 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -340
# %op63 = load i32 , i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -344
# %op64 = call i32  @swap(i32 * %op61, i32  %op62, i32  %op63)
	ld.d $a0, $fp, -336
	ld.w $a1, $fp, -340
	ld.w $a2, $fp, -344
	bl swap
	st.w $a0, $fp, -348
# store i32  %op64, i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -348
	st.w $t1, $t0, 0
# %op65 = load i32 , i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -352
# store i32  %op65, i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -352
	st.w $t1, $t0, 0
# %op66 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op67 = mul i32  %op66, 2
	ld.w $t0, $fp, -356
	addi.w $t1, $zero, 2
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -360
# %op68 = add i32  %op67, 1
	ld.w $t0, $fp, -360
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -364
# store i32  %op68, i32 * %op8
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -364
	st.w $t1, $t0, 0
# br label %label69
	b .heap_ajust_label69
.heap_ajust_label69:
# br label %label12
	b .heap_ajust_label12
heap_ajust_ret:
	addi.d $sp, $sp, 368
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl heap_sort
	.type heap_sort, @function
heap_sort:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -272
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
.heap_sort_label_entry:
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
# %op6 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op7 = sdiv i32  %op6, 2
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -100
# %op8 = sub i32  %op7, 1
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# store i32  %op8, i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -104
	st.w $t1, $t0, 0
# br label %label9
	b .heap_sort_label9
.heap_sort_label9:
# %op10 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op11 = mul i32  1, -1
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -112
# %op12 = icmp sgt i32  %op10, %op11
	ld.w $t0, $fp, -108
	ld.w $t1, $fp, -112
	slt $t2, $t1, $t0
	st.b $t2, $fp, -113
# %op13 = zext i1  %op12 to i32 
	ld.b $t0, $fp, -113
	st.w $t0, $fp, -120
# %op14 = icmp ne i32  %op13, 0
	ld.w $t0, $fp, -120
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -121
# br i1  %op14, label %label15, label %label24
	ld.b $t0, $fp, -121
	bnez $t0, .heap_sort_label15
	b .heap_sort_label24
.heap_sort_label15:
# %op16 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op17 = sub i32  %op16, 1
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -132
# store i32  %op17, i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -132
	st.w $t1, $t0, 0
# %op18 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -144
# %op19 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op20 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op21 = call i32  @heap_ajust(i32 * %op18, i32  %op19, i32  %op20)
	ld.d $a0, $fp, -144
	ld.w $a1, $fp, -148
	ld.w $a2, $fp, -152
	bl heap_ajust
	st.w $a0, $fp, -156
# store i32  %op21, i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -156
	st.w $t1, $t0, 0
# %op22 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op23 = sub i32  %op22, 1
	ld.w $t0, $fp, -160
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -164
# store i32  %op23, i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -164
	st.w $t1, $t0, 0
# br label %label9
	b .heap_sort_label9
.heap_sort_label24:
# %op25 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op26 = sub i32  %op25, 1
	ld.w $t0, $fp, -168
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -172
# store i32  %op26, i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -172
	st.w $t1, $t0, 0
# br label %label27
	b .heap_sort_label27
.heap_sort_label27:
# %op28 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op29 = icmp sgt i32  %op28, 0
	ld.w $t0, $fp, -176
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -177
# %op30 = zext i1  %op29 to i32 
	ld.b $t0, $fp, -177
	st.w $t0, $fp, -184
# %op31 = icmp ne i32  %op30, 0
	ld.w $t0, $fp, -184
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -185
# br i1  %op31, label %label32, label %label46
	ld.b $t0, $fp, -185
	bnez $t0, .heap_sort_label32
	b .heap_sort_label46
.heap_sort_label32:
# %op33 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -200
# store i32  0, i32 * %op33
	ld.d $t0, $fp, -200
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op34 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -216
# %op35 = load i32 , i32 * %op33
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# %op36 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -224
# %op37 = call i32  @swap(i32 * %op34, i32  %op35, i32  %op36)
	ld.d $a0, $fp, -216
	ld.w $a1, $fp, -220
	ld.w $a2, $fp, -224
	bl swap
	st.w $a0, $fp, -228
# store i32  %op37, i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -228
	st.w $t1, $t0, 0
# %op38 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -232
# %op39 = sub i32  %op38, 1
	ld.w $t0, $fp, -232
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -236
# store i32  %op39, i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -236
	st.w $t1, $t0, 0
# %op40 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -248
# %op41 = load i32 , i32 * %op33
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# %op42 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -256
# %op43 = call i32  @heap_ajust(i32 * %op40, i32  %op41, i32  %op42)
	ld.d $a0, $fp, -248
	ld.w $a1, $fp, -252
	ld.w $a2, $fp, -256
	bl heap_ajust
	st.w $a0, $fp, -260
# store i32  %op43, i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -260
	st.w $t1, $t0, 0
# %op44 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -264
# %op45 = sub i32  %op44, 1
	ld.w $t0, $fp, -264
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -268
# store i32  %op45, i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -268
	st.w $t1, $t0, 0
# br label %label27
	b .heap_sort_label27
.heap_sort_label46:
# ret i32  0
	addi.w $a0, $zero, 0
	b heap_sort_ret
heap_sort_ret:
	addi.d $sp, $sp, 272
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
# %op14 = call i32  @heap_sort(i32 * %op12, i32  %op13)
	ld.d $a0, $fp, -168
	ld.w $a1, $fp, -172
	bl heap_sort
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
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
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

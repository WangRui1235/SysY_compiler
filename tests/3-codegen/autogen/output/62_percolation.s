# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl array
	.type array, @object
	.size array, 440
array:
	.space 440
	.globl n
	.type n, @object
	.size n, 4
n:
	.space 4
	.text
	.globl init
	.type init, @function
init:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -112
	st.w $a0, $fp, -20
.init_label_entry:
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
	b .init_label3
.init_label3:
# %op4 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op5 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op6 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op7 = mul i32  %op5, %op6
	ld.w $t0, $fp, -60
	ld.w $t1, $fp, -64
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -68
# %op8 = add i32  %op7, 1
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -72
# %op9 = icmp sle i32  %op4, %op8
	ld.w $t0, $fp, -56
	ld.w $t1, $fp, -72
	bge  $t1, $t0, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -73
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -73
	st.w $t0, $fp, -80
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -81
# br i1  %op11, label %label12, label %label19
	ld.b $t0, $fp, -81
	bnez $t0, .init_label12
	b .init_label19
.init_label12:
# %op13 = mul i32  1, -1
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -88
# %op14 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op15 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op16 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op14
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 440
	lu32i.d $t1, 0
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
	ori $t1, $t1, 440
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -92
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, array
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -104
# store i32  %op13, i32 * %op16
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -88
	st.w $t1, $t0, 0
# %op17 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op18 = add i32  %op17, 1
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -112
# store i32  %op18, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -112
	st.w $t1, $t0, 0
# br label %label3
	b .init_label3
.init_label19:
# ret void
	addi.d $a0, $zero, 0
	b init_ret
init_ret:
	addi.d $sp, $sp, 112
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl findfa
	.type findfa, @function
findfa:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -144
	st.w $a0, $fp, -20
.findfa_label_entry:
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
# %op2 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op3 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# %op4 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op2
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 440
	lu32i.d $t1, 0
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
	ori $t1, $t1, 440
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -40
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, array
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -56
# %op5 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op6 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op7 = icmp eq i32  %op5, %op6
	ld.w $t0, $fp, -60
	ld.w $t1, $fp, -64
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -65
# %op8 = zext i1  %op7 to i32 
	ld.b $t0, $fp, -65
	st.w $t0, $fp, -72
# %op9 = icmp ne i32  %op8, 0
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -73
# br i1  %op9, label %label10, label %label12
	ld.b $t0, $fp, -73
	bnez $t0, .findfa_label10
	b .findfa_label12
.findfa_label10:
# %op11 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# ret i32  %op11
	ld.w $a0, $fp, -80
	b findfa_ret
.findfa_label12:
# %op13 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op14 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op15 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op13
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 440
	lu32i.d $t1, 0
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
	ori $t1, $t1, 440
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -84
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, array
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -96
# %op16 = load i32 , i32 * %op15
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op17 = call i32  @findfa(i32  %op16)
	ld.w $a0, $fp, -100
	bl findfa
	st.w $a0, $fp, -104
# %op18 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op19 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op20 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op18
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 440
	lu32i.d $t1, 0
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
	ori $t1, $t1, 440
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -108
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, array
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -120
# store i32  %op17, i32 * %op20
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -104
	st.w $t1, $t0, 0
# %op21 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op22 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op23 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op21
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 440
	lu32i.d $t1, 0
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
	ori $t1, $t1, 440
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -124
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, array
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -136
# %op24 = load i32 , i32 * %op23
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# ret i32  %op24
	ld.w $a0, $fp, -140
	b findfa_ret
findfa_ret:
	addi.d $sp, $sp, 144
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl mmerge
	.type mmerge, @function
mmerge:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -144
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.mmerge_label_entry:
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
# %op5 = call i32  @findfa(i32  %op4)
	ld.w $a0, $fp, -56
	bl findfa
	st.w $a0, $fp, -60
# %op6 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -72
# store i32  %op5, i32 * %op6
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -60
	st.w $t1, $t0, 0
# %op7 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op8 = call i32  @findfa(i32  %op7)
	ld.w $a0, $fp, -80
	bl findfa
	st.w $a0, $fp, -84
# %op9 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -96
# store i32  %op8, i32 * %op9
	ld.d $t0, $fp, -96
	ld.w $t1, $fp, -84
	st.w $t1, $t0, 0
# %op10 = load i32 , i32 * %op6
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op11 = load i32 , i32 * %op9
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op12 = icmp ne i32  %op10, %op11
	ld.w $t0, $fp, -104
	ld.w $t1, $fp, -108
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -109
# %op13 = zext i1  %op12 to i32 
	ld.b $t0, $fp, -109
	st.w $t0, $fp, -116
# %op14 = icmp ne i32  %op13, 0
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -117
# br i1  %op14, label %label15, label %label20
	ld.b $t0, $fp, -117
	bnez $t0, .mmerge_label15
	b .mmerge_label20
.mmerge_label15:
# %op16 = load i32 , i32 * %op9
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op17 = load i32 , i32 * %op6
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op18 = load i32 , i32 * %op6
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op19 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op17
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 440
	lu32i.d $t1, 0
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
	ori $t1, $t1, 440
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -128
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, array
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -144
# store i32  %op16, i32 * %op19
	ld.d $t0, $fp, -144
	ld.w $t1, $fp, -124
	st.w $t1, $t0, 0
# br label %label20
	b .mmerge_label20
.mmerge_label20:
# ret void
	addi.d $a0, $zero, 0
	b mmerge_ret
mmerge_ret:
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
	addi.d $sp, $sp, -816
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
# %op2 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -56
# %op3 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -72
# store i32  1, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label4
	b .main_label4
.main_label4:
# %op5 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op6 = icmp ne i32  %op5, 0
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -81
# br i1  %op6, label %label7, label %label18
	ld.b $t0, $fp, -81
	bnez $t0, .main_label7
	b .main_label18
.main_label7:
# %op8 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op9 = sub i32  %op8, 1
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -92
# store i32  %op9, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -92
	st.w $t1, $t0, 0
# store i32  4, i32 * @n
	la.local $t0, n
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# store i32  10, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# %op10 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -104
# store i32  0, i32 * %op10
	ld.d $t0, $fp, -104
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op11 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3972
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -120
# store i32  0, i32 * %op11
	ld.d $t0, $fp, -120
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op12 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# call void @init(i32  %op12)
	ld.w $a0, $fp, -128
	bl init
# %op13 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op14 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# %op15 = mul i32  %op13, %op14
	ld.w $t0, $fp, -132
	ld.w $t1, $fp, -136
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -140
# %op16 = add i32  %op15, 1
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -144
# %op17 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -152
# store i32  %op16, i32 * %op17
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -144
	st.w $t1, $t0, 0
# br label %label19
	b .main_label19
.main_label18:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
.main_label19:
# %op20 = load i32 , i32 * %op10
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op21 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op22 = icmp slt i32  %op20, %op21
	ld.w $t0, $fp, -160
	ld.w $t1, $fp, -164
	slt $t2, $t0, $t1
	st.b $t2, $fp, -165
# %op23 = zext i1  %op22 to i32 
	ld.b $t0, $fp, -165
	st.w $t0, $fp, -172
# %op24 = icmp ne i32  %op23, 0
	ld.w $t0, $fp, -172
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -173
# br i1  %op24, label %label25, label %label30
	ld.b $t0, $fp, -173
	bnez $t0, .main_label25
	b .main_label30
.main_label25:
# %op26 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -180
# store i32  %op26, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -180
	st.w $t1, $t0, 0
# %op27 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -184
# store i32  %op27, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -184
	st.w $t1, $t0, 0
# %op28 = load i32 , i32 * %op11
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op29 = icmp eq i32  %op28, 0
	ld.w $t0, $fp, -188
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -189
# br i1  %op29, label %label33, label %label49
	ld.b $t0, $fp, -189
	bnez $t0, .main_label33
	b .main_label49
.main_label30:
# %op31 = load i32 , i32 * %op11
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op32 = icmp eq i32  %op31, 0
	ld.w $t0, $fp, -196
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -197
# br i1  %op32, label %label186, label %label189
	ld.b $t0, $fp, -197
	bnez $t0, .main_label186
	b .main_label189
.main_label33:
# %op34 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op35 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -208
# %op36 = sub i32  %op35, 1
	ld.w $t0, $fp, -208
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -212
# %op37 = mul i32  %op34, %op36
	ld.w $t0, $fp, -204
	ld.w $t1, $fp, -212
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -216
# %op38 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# %op39 = add i32  %op37, %op38
	ld.w $t0, $fp, -216
	ld.w $t1, $fp, -220
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -224
# %op40 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -232
# store i32  %op39, i32 * %op40
	ld.d $t0, $fp, -232
	ld.w $t1, $fp, -224
	st.w $t1, $t0, 0
# %op41 = load i32 , i32 * %op40
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -240
# %op42 = load i32 , i32 * %op40
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op43 = load i32 , i32 * %op40
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -248
# %op44 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op42
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 440
	lu32i.d $t1, 0
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
	ori $t1, $t1, 440
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -244
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, array
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -256
# store i32  %op41, i32 * %op44
	ld.d $t0, $fp, -256
	ld.w $t1, $fp, -240
	st.w $t1, $t0, 0
# %op45 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# %op46 = icmp eq i32  %op45, 1
	ld.w $t0, $fp, -260
	addi.w $t1, $zero, 1
	beq  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -261
# %op47 = zext i1  %op46 to i32 
	ld.b $t0, $fp, -261
	st.w $t0, $fp, -268
# %op48 = icmp ne i32  %op47, 0
	ld.w $t0, $fp, -268
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -269
# br i1  %op48, label %label52, label %label55
	ld.b $t0, $fp, -269
	bnez $t0, .main_label52
	b .main_label55
.main_label49:
# %op50 = load i32 , i32 * %op10
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op51 = add i32  %op50, 1
	ld.w $t0, $fp, -276
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -280
# store i32  %op51, i32 * %op10
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -280
	st.w $t1, $t0, 0
# br label %label19
	b .main_label19
.main_label52:
# %op53 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 440
	lu32i.d $t1, 0
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
	ori $t1, $t1, 440
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, array
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -288
# store i32  0, i32 * %op53
	ld.d $t0, $fp, -288
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op54 = load i32 , i32 * %op40
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# call void @mmerge(i32  %op54, i32  0)
	ld.w $a0, $fp, -292
	addi.w $a1, $zero, 0
	bl mmerge
# br label %label55
	b .main_label55
.main_label55:
# %op56 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -296
# %op57 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op58 = icmp eq i32  %op56, %op57
	ld.w $t0, $fp, -296
	ld.w $t1, $fp, -300
	beq  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -301
# %op59 = zext i1  %op58 to i32 
	ld.b $t0, $fp, -301
	st.w $t0, $fp, -308
# %op60 = icmp ne i32  %op59, 0
	ld.w $t0, $fp, -308
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label14
	addi.d $t2, $zero, 0
	b false_label14
true_label14:
	addi.d $t2, $zero, 1
false_label14:
	st.b $t2, $fp, -309
# br i1  %op60, label %label61, label %label68
	ld.b $t0, $fp, -309
	bnez $t0, .main_label61
	b .main_label68
.main_label61:
# %op62 = load i32 , i32 * %op17
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op63 = load i32 , i32 * %op17
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -320
# %op64 = load i32 , i32 * %op17
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op65 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op63
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 440
	lu32i.d $t1, 0
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
	ori $t1, $t1, 440
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -320
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, array
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -336
# store i32  %op62, i32 * %op65
	ld.d $t0, $fp, -336
	ld.w $t1, $fp, -316
	st.w $t1, $t0, 0
# %op66 = load i32 , i32 * %op40
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -340
# %op67 = load i32 , i32 * %op17
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -344
# call void @mmerge(i32  %op66, i32  %op67)
	ld.w $a0, $fp, -340
	ld.w $a1, $fp, -344
	bl mmerge
# br label %label68
	b .main_label68
.main_label68:
# %op69 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op70 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -352
# %op71 = icmp slt i32  %op69, %op70
	ld.w $t0, $fp, -348
	ld.w $t1, $fp, -352
	slt $t2, $t0, $t1
	st.b $t2, $fp, -353
# %op72 = zext i1  %op71 to i32 
	ld.b $t0, $fp, -353
	st.w $t0, $fp, -360
# %op73 = icmp ne i32  %op72, 0
	ld.w $t0, $fp, -360
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label16
	addi.d $t2, $zero, 0
	b false_label16
true_label16:
	addi.d $t2, $zero, 1
false_label16:
	st.b $t2, $fp, -361
# br i1  %op73, label %label83, label %label78
	ld.b $t0, $fp, -361
	bnez $t0, .main_label83
	b .main_label78
.main_label74:
# %op75 = load i32 , i32 * %op40
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -368
# %op76 = load i32 , i32 * %op40
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -372
# %op77 = add i32  %op76, 1
	ld.w $t0, $fp, -372
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -376
# call void @mmerge(i32  %op75, i32  %op77)
	ld.w $a0, $fp, -368
	ld.w $a1, $fp, -376
	bl mmerge
# br label %label78
	b .main_label78
.main_label78:
# %op79 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op80 = icmp sgt i32  %op79, 1
	ld.w $t0, $fp, -380
	addi.w $t1, $zero, 1
	slt $t2, $t1, $t0
	st.b $t2, $fp, -381
# %op81 = zext i1  %op80 to i32 
	ld.b $t0, $fp, -381
	st.w $t0, $fp, -388
# %op82 = icmp ne i32  %op81, 0
	ld.w $t0, $fp, -388
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label18
	addi.d $t2, $zero, 0
	b false_label18
true_label18:
	addi.d $t2, $zero, 1
false_label18:
	st.b $t2, $fp, -389
# br i1  %op82, label %label104, label %label98
	ld.b $t0, $fp, -389
	bnez $t0, .main_label104
	b .main_label98
.main_label83:
# %op84 = load i32 , i32 * %op40
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -396
# %op85 = add i32  %op84, 1
	ld.w $t0, $fp, -396
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -400
# %op86 = load i32 , i32 * %op40
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -404
# %op87 = add i32  %op86, 1
	ld.w $t0, $fp, -404
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -408
# %op88 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op85
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 440
	lu32i.d $t1, 0
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
	ori $t1, $t1, 440
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -400
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, array
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -416
# %op89 = load i32 , i32 * %op88
	ld.d $t0, $fp, -416
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -420
# %op90 = mul i32  1, -1
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -424
# %op91 = icmp ne i32  %op89, %op90
	ld.w $t0, $fp, -420
	ld.w $t1, $fp, -424
	bne  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	st.b $t2, $fp, -425
# %op92 = zext i1  %op91 to i32 
	ld.b $t0, $fp, -425
	st.w $t0, $fp, -432
# %op93 = icmp ne i32  %op92, 0
	ld.w $t0, $fp, -432
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label20
	addi.d $t2, $zero, 0
	b false_label20
true_label20:
	addi.d $t2, $zero, 1
false_label20:
	st.b $t2, $fp, -433
# br i1  %op93, label %label74, label %label78
	ld.b $t0, $fp, -433
	bnez $t0, .main_label74
	b .main_label78
.main_label94:
# %op95 = load i32 , i32 * %op40
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -440
# %op96 = load i32 , i32 * %op40
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -444
# %op97 = sub i32  %op96, 1
	ld.w $t0, $fp, -444
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -448
# call void @mmerge(i32  %op95, i32  %op97)
	ld.w $a0, $fp, -440
	ld.w $a1, $fp, -448
	bl mmerge
# br label %label98
	b .main_label98
.main_label98:
# %op99 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -452
# %op100 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -456
# %op101 = icmp slt i32  %op99, %op100
	ld.w $t0, $fp, -452
	ld.w $t1, $fp, -456
	slt $t2, $t0, $t1
	st.b $t2, $fp, -457
# %op102 = zext i1  %op101 to i32 
	ld.b $t0, $fp, -457
	st.w $t0, $fp, -464
# %op103 = icmp ne i32  %op102, 0
	ld.w $t0, $fp, -464
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label22
	addi.d $t2, $zero, 0
	b false_label22
true_label22:
	addi.d $t2, $zero, 1
false_label22:
	st.b $t2, $fp, -465
# br i1  %op103, label %label125, label %label120
	ld.b $t0, $fp, -465
	bnez $t0, .main_label125
	b .main_label120
.main_label104:
# %op105 = load i32 , i32 * %op40
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -472
# %op106 = sub i32  %op105, 1
	ld.w $t0, $fp, -472
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -476
# %op107 = load i32 , i32 * %op40
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -480
# %op108 = sub i32  %op107, 1
	ld.w $t0, $fp, -480
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -484
# %op109 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op106
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 440
	lu32i.d $t1, 0
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
	ori $t1, $t1, 440
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -476
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, array
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -496
# %op110 = load i32 , i32 * %op109
	ld.d $t0, $fp, -496
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -500
# %op111 = mul i32  1, -1
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -504
# %op112 = icmp ne i32  %op110, %op111
	ld.w $t0, $fp, -500
	ld.w $t1, $fp, -504
	bne  $t0, $t1, true_label23
	addi.d $t2, $zero, 0
	b false_label23
true_label23:
	addi.d $t2, $zero, 1
false_label23:
	st.b $t2, $fp, -505
# %op113 = zext i1  %op112 to i32 
	ld.b $t0, $fp, -505
	st.w $t0, $fp, -512
# %op114 = icmp ne i32  %op113, 0
	ld.w $t0, $fp, -512
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label24
	addi.d $t2, $zero, 0
	b false_label24
true_label24:
	addi.d $t2, $zero, 1
false_label24:
	st.b $t2, $fp, -513
# br i1  %op114, label %label94, label %label98
	ld.b $t0, $fp, -513
	bnez $t0, .main_label94
	b .main_label98
.main_label115:
# %op116 = load i32 , i32 * %op40
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -520
# %op117 = load i32 , i32 * %op40
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -524
# %op118 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -528
# %op119 = add i32  %op117, %op118
	ld.w $t0, $fp, -524
	ld.w $t1, $fp, -528
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -532
# call void @mmerge(i32  %op116, i32  %op119)
	ld.w $a0, $fp, -520
	ld.w $a1, $fp, -532
	bl mmerge
# br label %label120
	b .main_label120
.main_label120:
# %op121 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -536
# %op122 = icmp sgt i32  %op121, 1
	ld.w $t0, $fp, -536
	addi.w $t1, $zero, 1
	slt $t2, $t1, $t0
	st.b $t2, $fp, -537
# %op123 = zext i1  %op122 to i32 
	ld.b $t0, $fp, -537
	st.w $t0, $fp, -544
# %op124 = icmp ne i32  %op123, 0
	ld.w $t0, $fp, -544
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label26
	addi.d $t2, $zero, 0
	b false_label26
true_label26:
	addi.d $t2, $zero, 1
false_label26:
	st.b $t2, $fp, -545
# br i1  %op124, label %label150, label %label143
	ld.b $t0, $fp, -545
	bnez $t0, .main_label150
	b .main_label143
.main_label125:
# %op126 = load i32 , i32 * %op40
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -552
# %op127 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -556
# %op128 = add i32  %op126, %op127
	ld.w $t0, $fp, -552
	ld.w $t1, $fp, -556
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -560
# %op129 = load i32 , i32 * %op40
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -564
# %op130 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -568
# %op131 = add i32  %op129, %op130
	ld.w $t0, $fp, -564
	ld.w $t1, $fp, -568
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -572
# %op132 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op128
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 440
	lu32i.d $t1, 0
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
	ori $t1, $t1, 440
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -560
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, array
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -584
# %op133 = load i32 , i32 * %op132
	ld.d $t0, $fp, -584
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -588
# %op134 = mul i32  1, -1
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -592
# %op135 = icmp ne i32  %op133, %op134
	ld.w $t0, $fp, -588
	ld.w $t1, $fp, -592
	bne  $t0, $t1, true_label27
	addi.d $t2, $zero, 0
	b false_label27
true_label27:
	addi.d $t2, $zero, 1
false_label27:
	st.b $t2, $fp, -593
# %op136 = zext i1  %op135 to i32 
	ld.b $t0, $fp, -593
	st.w $t0, $fp, -600
# %op137 = icmp ne i32  %op136, 0
	ld.w $t0, $fp, -600
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label28
	addi.d $t2, $zero, 0
	b false_label28
true_label28:
	addi.d $t2, $zero, 1
false_label28:
	st.b $t2, $fp, -601
# br i1  %op137, label %label115, label %label120
	ld.b $t0, $fp, -601
	bnez $t0, .main_label115
	b .main_label120
.main_label138:
# %op139 = load i32 , i32 * %op40
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -608
# %op140 = load i32 , i32 * %op40
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -612
# %op141 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -616
# %op142 = sub i32  %op140, %op141
	ld.w $t0, $fp, -612
	ld.w $t1, $fp, -616
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -620
# call void @mmerge(i32  %op139, i32  %op142)
	ld.w $a0, $fp, -608
	ld.w $a1, $fp, -620
	bl mmerge
# br label %label143
	b .main_label143
.main_label143:
# %op144 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 440
	lu32i.d $t1, 0
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
	ori $t1, $t1, 440
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, 0
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, array
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -632
# %op145 = load i32 , i32 * %op144
	ld.d $t0, $fp, -632
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -636
# %op146 = mul i32  1, -1
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -640
# %op147 = icmp ne i32  %op145, %op146
	ld.w $t0, $fp, -636
	ld.w $t1, $fp, -640
	bne  $t0, $t1, true_label29
	addi.d $t2, $zero, 0
	b false_label29
true_label29:
	addi.d $t2, $zero, 1
false_label29:
	st.b $t2, $fp, -641
# %op148 = zext i1  %op147 to i32 
	ld.b $t0, $fp, -641
	st.w $t0, $fp, -648
# %op149 = icmp ne i32  %op148, 0
	ld.w $t0, $fp, -648
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label30
	addi.d $t2, $zero, 0
	b false_label30
true_label30:
	addi.d $t2, $zero, 1
false_label30:
	st.b $t2, $fp, -649
# br i1  %op149, label %label177, label %label169
	ld.b $t0, $fp, -649
	bnez $t0, .main_label177
	b .main_label169
.main_label150:
# %op151 = load i32 , i32 * %op40
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -656
# %op152 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -660
# %op153 = sub i32  %op151, %op152
	ld.w $t0, $fp, -656
	ld.w $t1, $fp, -660
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -664
# %op154 = load i32 , i32 * %op40
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -668
# %op155 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -672
# %op156 = sub i32  %op154, %op155
	ld.w $t0, $fp, -668
	ld.w $t1, $fp, -672
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -676
# %op157 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op153
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 440
	lu32i.d $t1, 0
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
	ori $t1, $t1, 440
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -664
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, array
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -688
# %op158 = load i32 , i32 * %op157
	ld.d $t0, $fp, -688
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -692
# %op159 = mul i32  1, -1
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -696
# %op160 = icmp ne i32  %op158, %op159
	ld.w $t0, $fp, -692
	ld.w $t1, $fp, -696
	bne  $t0, $t1, true_label31
	addi.d $t2, $zero, 0
	b false_label31
true_label31:
	addi.d $t2, $zero, 1
false_label31:
	st.b $t2, $fp, -697
# %op161 = zext i1  %op160 to i32 
	ld.b $t0, $fp, -697
	st.w $t0, $fp, -704
# %op162 = icmp ne i32  %op161, 0
	ld.w $t0, $fp, -704
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label32
	addi.d $t2, $zero, 0
	b false_label32
true_label32:
	addi.d $t2, $zero, 1
false_label32:
	st.b $t2, $fp, -705
# br i1  %op162, label %label138, label %label143
	ld.b $t0, $fp, -705
	bnez $t0, .main_label138
	b .main_label143
.main_label163:
# store i32  1, i32 * %op11
	ld.d $t0, $fp, -120
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op164 = load i32 , i32 * %op10
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -712
# %op165 = add i32  %op164, 1
	ld.w $t0, $fp, -712
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -716
# %op166 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3364
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -728
# store i32  %op165, i32 * %op166
	ld.d $t0, $fp, -728
	ld.w $t1, $fp, -716
	st.w $t1, $t0, 0
# %op167 = load i32 , i32 * %op166
	ld.d $t0, $fp, -728
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -736
# call void @putint(i32  %op167)
	ld.w $a0, $fp, -736
	bl putint
# %op168 = trunc i32  10 to i8 
	addi.w $t0, $zero, 10
	andi $t1, $t0, 255
	st.b $t1, $fp, -737
# call void @putch(i8  %op168)
	ld.b $a0, $fp, -737
	bl putch
# br label %label169
	b .main_label169
.main_label169:
# br label %label49
	b .main_label49
.main_label170:
# %op171 = call i32  @findfa(i32  0)
	addi.w $a0, $zero, 0
	bl findfa
	st.w $a0, $fp, -744
# %op172 = load i32 , i32 * %op17
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -748
# %op173 = call i32  @findfa(i32  %op172)
	ld.w $a0, $fp, -748
	bl findfa
	st.w $a0, $fp, -752
# %op174 = icmp eq i32  %op171, %op173
	ld.w $t0, $fp, -744
	ld.w $t1, $fp, -752
	beq  $t0, $t1, true_label33
	addi.d $t2, $zero, 0
	b false_label33
true_label33:
	addi.d $t2, $zero, 1
false_label33:
	st.b $t2, $fp, -753
# %op175 = zext i1  %op174 to i32 
	ld.b $t0, $fp, -753
	st.w $t0, $fp, -760
# %op176 = icmp ne i32  %op175, 0
	ld.w $t0, $fp, -760
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label34
	addi.d $t2, $zero, 0
	b false_label34
true_label34:
	addi.d $t2, $zero, 1
false_label34:
	st.b $t2, $fp, -761
# br i1  %op176, label %label163, label %label169
	ld.b $t0, $fp, -761
	bnez $t0, .main_label163
	b .main_label169
.main_label177:
# %op178 = load i32 , i32 * %op17
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -768
# %op179 = load i32 , i32 * %op17
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -772
# %op180 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op178
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 440
	lu32i.d $t1, 0
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
	ori $t1, $t1, 440
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -768
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, array
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -784
# %op181 = load i32 , i32 * %op180
	ld.d $t0, $fp, -784
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -788
# %op182 = mul i32  1, -1
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -792
# %op183 = icmp ne i32  %op181, %op182
	ld.w $t0, $fp, -788
	ld.w $t1, $fp, -792
	bne  $t0, $t1, true_label35
	addi.d $t2, $zero, 0
	b false_label35
true_label35:
	addi.d $t2, $zero, 1
false_label35:
	st.b $t2, $fp, -793
# %op184 = zext i1  %op183 to i32 
	ld.b $t0, $fp, -793
	st.w $t0, $fp, -800
# %op185 = icmp ne i32  %op184, 0
	ld.w $t0, $fp, -800
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label36
	addi.d $t2, $zero, 0
	b false_label36
true_label36:
	addi.d $t2, $zero, 1
false_label36:
	st.b $t2, $fp, -801
# br i1  %op185, label %label170, label %label169
	ld.b $t0, $fp, -801
	bnez $t0, .main_label170
	b .main_label169
.main_label186:
# %op187 = mul i32  1, -1
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -808
# call void @putint(i32  %op187)
	ld.w $a0, $fp, -808
	bl putint
# %op188 = trunc i32  10 to i8 
	addi.w $t0, $zero, 10
	andi $t1, $t0, 255
	st.b $t1, $fp, -809
# call void @putch(i8  %op188)
	ld.b $a0, $fp, -809
	bl putch
# br label %label189
	b .main_label189
.main_label189:
# br label %label4
	b .main_label4
main_ret:
	addi.d $sp, $sp, 816
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

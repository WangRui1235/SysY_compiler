	.text
	.globl func1
	.type func1, @function
func1:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -128
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
	st.w $a2, $fp, -28
.func1_label_entry:
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
# %op6 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op7 = icmp eq i32  %op6, 0
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -81
# %op8 = zext i1  %op7 to i32 
	ld.b $t0, $fp, -81
	st.w $t0, $fp, -88
# %op9 = icmp ne i32  %op8, 0
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -89
# br i1  %op9, label %label10, label %label14
	ld.b $t0, $fp, -89
	bnez $t0, .func1_label10
	b .func1_label14
.func1_label10:
# %op11 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op12 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op13 = mul i32  %op11, %op12
	ld.w $t0, $fp, -96
	ld.w $t1, $fp, -100
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# ret i32  %op13
	ld.w $a0, $fp, -104
	b func1_ret
.func1_label14:
# %op15 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op16 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op17 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op18 = sub i32  %op16, %op17
	ld.w $t0, $fp, -112
	ld.w $t1, $fp, -116
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# %op19 = call i32  @func1(i32  %op15, i32  %op18, i32  0)
	ld.w $a0, $fp, -108
	ld.w $a1, $fp, -120
	addi.w $a2, $zero, 0
	bl func1
	st.w $a0, $fp, -124
# ret i32  %op19
	ld.w $a0, $fp, -124
	b func1_ret
func1_ret:
	addi.d $sp, $sp, 128
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl func2
	.type func2, @function
func2:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -80
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.func2_label_entry:
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
# %op4 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -57
# br i1  %op5, label %label6, label %label11
	ld.b $t0, $fp, -57
	bnez $t0, .func2_label6
	b .func2_label11
.func2_label6:
# %op7 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op8 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op9 = srem i32  %op7, %op8
	ld.w $t0, $fp, -64
	ld.w $t1, $fp, -68
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -72
# %op10 = call i32  @func2(i32  %op9, i32  0)
	ld.w $a0, $fp, -72
	addi.w $a1, $zero, 0
	bl func2
	st.w $a0, $fp, -76
# ret i32  %op10
	ld.w $a0, $fp, -76
	b func2_ret
.func2_label11:
# %op12 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# ret i32  %op12
	ld.w $a0, $fp, -80
	b func2_ret
func2_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl func3
	.type func3, @function
func3:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -96
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.func3_label_entry:
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
# %op4 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op5 = icmp eq i32  %op4, 0
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -57
# %op6 = zext i1  %op5 to i32 
	ld.b $t0, $fp, -57
	st.w $t0, $fp, -64
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -65
# br i1  %op7, label %label8, label %label11
	ld.b $t0, $fp, -65
	bnez $t0, .func3_label8
	b .func3_label11
.func3_label8:
# %op9 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op10 = add i32  %op9, 1
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -76
# ret i32  %op10
	ld.w $a0, $fp, -76
	b func3_ret
.func3_label11:
# %op12 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op13 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op14 = add i32  %op12, %op13
	ld.w $t0, $fp, -80
	ld.w $t1, $fp, -84
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -88
# %op15 = call i32  @func3(i32  %op14, i32  0)
	ld.w $a0, $fp, -88
	addi.w $a1, $zero, 0
	bl func3
	st.w $a0, $fp, -92
# ret i32  %op15
	ld.w $a0, $fp, -92
	b func3_ret
func3_ret:
	addi.d $sp, $sp, 96
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl func4
	.type func4, @function
func4:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -96
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
	st.w $a2, $fp, -28
.func4_label_entry:
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
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -81
# br i1  %op7, label %label8, label %label10
	ld.b $t0, $fp, -81
	bnez $t0, .func4_label8
	b .func4_label10
.func4_label8:
# %op9 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# ret i32  %op9
	ld.w $a0, $fp, -88
	b func4_ret
.func4_label10:
# %op11 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# ret i32  %op11
	ld.w $a0, $fp, -92
	b func4_ret
func4_ret:
	addi.d $sp, $sp, 96
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl func5
	.type func5, @function
func5:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
	st.w $a0, $fp, -20
.func5_label_entry:
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
# %op3 = mul i32  %op2, -1
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -44
# ret i32  %op3
	ld.w $a0, $fp, -44
	b func5_ret
func5_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl func6
	.type func6, @function
func6:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -80
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.func6_label_entry:
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
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -57
# br i1  %op5, label %label8, label %label7
	ld.b $t0, $fp, -57
	bnez $t0, .func6_label8
	b .func6_label7
.func6_label6:
# ret i32  1
	addi.w $a0, $zero, 1
	b func6_ret
.func6_label7:
# ret i32  0
	addi.w $a0, $zero, 0
	b func6_ret
.func6_label8:
# %op9 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op10 = icmp ne i32  %op9, 0
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -65
# br i1  %op10, label %label6, label %label7
	ld.b $t0, $fp, -65
	bnez $t0, .func6_label6
	b .func6_label7
func6_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl func7
	.type func7, @function
func7:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
	st.w $a0, $fp, -20
.func7_label_entry:
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
# %op3 = icmp eq i32  %op2, 0
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -41
# br i1  %op3, label %label4, label %label5
	ld.b $t0, $fp, -41
	bnez $t0, .func7_label4
	b .func7_label5
.func7_label4:
# ret i32  1
	addi.w $a0, $zero, 1
	b func7_ret
.func7_label5:
# ret i32  0
	addi.w $a0, $zero, 0
	b func7_ret
func7_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -672
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
# %op2 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -40
# %op3 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -48
# store i32  %op2, i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -40
	st.w $t1, $t0, 0
# %op4 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -56
# %op5 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -64
# store i32  %op4, i32 * %op5
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -56
	st.w $t1, $t0, 0
# %op6 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -72
# %op7 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -80
# store i32  %op6, i32 * %op7
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -72
	st.w $t1, $t0, 0
# %op8 = alloca [10 x i32 ]
	lu12i.w $t0, -1
	ori $t0, $t0, 3960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -96
# %op9 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -144
# store i32  0, i32 * %op9
	ld.d $t0, $fp, -144
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label10
	b .main_label10
.main_label10:
# %op11 = load i32 , i32 * %op9
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op12 = icmp slt i32  %op11, 10
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 10
	slt $t2, $t0, $t1
	st.b $t2, $fp, -153
# %op13 = zext i1  %op12 to i32 
	ld.b $t0, $fp, -153
	st.w $t0, $fp, -160
# %op14 = icmp ne i32  %op13, 0
	ld.w $t0, $fp, -160
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -161
# br i1  %op14, label %label15, label %label22
	ld.b $t0, $fp, -161
	bnez $t0, .main_label15
	b .main_label22
.main_label15:
# %op16 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -168
# %op17 = load i32 , i32 * %op9
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op18 = load i32 , i32 * %op9
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op19 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  %op17
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
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -184
# store i32  %op16, i32 * %op19
	ld.d $t0, $fp, -184
	ld.w $t1, $fp, -168
	st.w $t1, $t0, 0
# %op20 = load i32 , i32 * %op9
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op21 = add i32  %op20, 1
	ld.w $t0, $fp, -188
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -192
# store i32  %op21, i32 * %op9
	ld.d $t0, $fp, -144
	ld.w $t1, $fp, -192
	st.w $t1, $t0, 0
# br label %label10
	b .main_label10
.main_label22:
# %op23 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op24 = call i32  @func7(i32  %op23)
	ld.w $a0, $fp, -196
	bl func7
	st.w $a0, $fp, -200
# %op25 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op26 = call i32  @func5(i32  %op25)
	ld.w $a0, $fp, -204
	bl func5
	st.w $a0, $fp, -208
# %op27 = call i32  @func6(i32  %op24, i32  %op26)
	ld.w $a0, $fp, -200
	ld.w $a1, $fp, -208
	bl func6
	st.w $a0, $fp, -212
# %op28 = load i32 , i32 * %op5
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -216
# %op29 = call i32  @func2(i32  %op27, i32  %op28)
	ld.w $a0, $fp, -212
	ld.w $a1, $fp, -216
	bl func2
	st.w $a0, $fp, -220
# %op30 = load i32 , i32 * %op7
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -224
# %op31 = call i32  @func3(i32  %op29, i32  %op30)
	ld.w $a0, $fp, -220
	ld.w $a1, $fp, -224
	bl func3
	st.w $a0, $fp, -228
# %op32 = call i32  @func5(i32  %op31)
	ld.w $a0, $fp, -228
	bl func5
	st.w $a0, $fp, -232
# %op33 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  0
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
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -240
# %op34 = load i32 , i32 * %op33
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op35 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  1
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
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -256
# %op36 = load i32 , i32 * %op35
	ld.d $t0, $fp, -256
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# %op37 = call i32  @func5(i32  %op36)
	ld.w $a0, $fp, -260
	bl func5
	st.w $a0, $fp, -264
# %op38 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  2
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
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -272
# %op39 = load i32 , i32 * %op38
	ld.d $t0, $fp, -272
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op40 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  3
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
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -288
# %op41 = load i32 , i32 * %op40
	ld.d $t0, $fp, -288
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# %op42 = call i32  @func7(i32  %op41)
	ld.w $a0, $fp, -292
	bl func7
	st.w $a0, $fp, -296
# %op43 = call i32  @func6(i32  %op39, i32  %op42)
	ld.w $a0, $fp, -276
	ld.w $a1, $fp, -296
	bl func6
	st.w $a0, $fp, -300
# %op44 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  4
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
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -312
# %op45 = load i32 , i32 * %op44
	ld.d $t0, $fp, -312
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op46 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  5
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
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -328
# %op47 = load i32 , i32 * %op46
	ld.d $t0, $fp, -328
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op48 = call i32  @func7(i32  %op47)
	ld.w $a0, $fp, -332
	bl func7
	st.w $a0, $fp, -336
# %op49 = call i32  @func2(i32  %op45, i32  %op48)
	ld.w $a0, $fp, -316
	ld.w $a1, $fp, -336
	bl func2
	st.w $a0, $fp, -340
# %op50 = call i32  @func4(i32  %op37, i32  %op43, i32  %op49)
	ld.w $a0, $fp, -264
	ld.w $a1, $fp, -300
	ld.w $a2, $fp, -340
	bl func4
	st.w $a0, $fp, -344
# %op51 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  6
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
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -352
# %op52 = load i32 , i32 * %op51
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op53 = call i32  @func3(i32  %op50, i32  %op52)
	ld.w $a0, $fp, -344
	ld.w $a1, $fp, -356
	bl func3
	st.w $a0, $fp, -360
# %op54 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  7
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
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -368
# %op55 = load i32 , i32 * %op54
	ld.d $t0, $fp, -368
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -372
# %op56 = call i32  @func2(i32  %op53, i32  %op55)
	ld.w $a0, $fp, -360
	ld.w $a1, $fp, -372
	bl func2
	st.w $a0, $fp, -376
# %op57 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  8
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
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -384
# %op58 = load i32 , i32 * %op57
	ld.d $t0, $fp, -384
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -388
# %op59 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  9
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
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -400
# %op60 = load i32 , i32 * %op59
	ld.d $t0, $fp, -400
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -404
# %op61 = call i32  @func7(i32  %op60)
	ld.w $a0, $fp, -404
	bl func7
	st.w $a0, $fp, -408
# %op62 = call i32  @func3(i32  %op58, i32  %op61)
	ld.w $a0, $fp, -388
	ld.w $a1, $fp, -408
	bl func3
	st.w $a0, $fp, -412
# %op63 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -416
# %op64 = call i32  @func1(i32  %op56, i32  %op62, i32  %op63)
	ld.w $a0, $fp, -376
	ld.w $a1, $fp, -412
	ld.w $a2, $fp, -416
	bl func1
	st.w $a0, $fp, -420
# %op65 = call i32  @func4(i32  %op32, i32  %op34, i32  %op64)
	ld.w $a0, $fp, -232
	ld.w $a1, $fp, -244
	ld.w $a2, $fp, -420
	bl func4
	st.w $a0, $fp, -424
# %op66 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -428
# %op67 = load i32 , i32 * %op5
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -432
# %op68 = call i32  @func7(i32  %op67)
	ld.w $a0, $fp, -432
	bl func7
	st.w $a0, $fp, -436
# %op69 = load i32 , i32 * %op7
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -440
# %op70 = call i32  @func3(i32  %op68, i32  %op69)
	ld.w $a0, $fp, -436
	ld.w $a1, $fp, -440
	bl func3
	st.w $a0, $fp, -444
# %op71 = call i32  @func2(i32  %op66, i32  %op70)
	ld.w $a0, $fp, -428
	ld.w $a1, $fp, -444
	bl func2
	st.w $a0, $fp, -448
# %op72 = call i32  @func3(i32  %op65, i32  %op71)
	ld.w $a0, $fp, -424
	ld.w $a1, $fp, -448
	bl func3
	st.w $a0, $fp, -452
# %op73 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  0
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
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -464
# %op74 = load i32 , i32 * %op73
	ld.d $t0, $fp, -464
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -468
# %op75 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  1
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
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -480
# %op76 = load i32 , i32 * %op75
	ld.d $t0, $fp, -480
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -484
# %op77 = call i32  @func1(i32  %op72, i32  %op74, i32  %op76)
	ld.w $a0, $fp, -452
	ld.w $a1, $fp, -468
	ld.w $a2, $fp, -484
	bl func1
	st.w $a0, $fp, -488
# %op78 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  2
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
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -496
# %op79 = load i32 , i32 * %op78
	ld.d $t0, $fp, -496
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -500
# %op80 = call i32  @func2(i32  %op77, i32  %op79)
	ld.w $a0, $fp, -488
	ld.w $a1, $fp, -500
	bl func2
	st.w $a0, $fp, -504
# %op81 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  3
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
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -512
# %op82 = load i32 , i32 * %op81
	ld.d $t0, $fp, -512
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -516
# %op83 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  4
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
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -528
# %op84 = load i32 , i32 * %op83
	ld.d $t0, $fp, -528
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -532
# %op85 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  5
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
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -544
# %op86 = load i32 , i32 * %op85
	ld.d $t0, $fp, -544
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -548
# %op87 = call i32  @func5(i32  %op86)
	ld.w $a0, $fp, -548
	bl func5
	st.w $a0, $fp, -552
# %op88 = call i32  @func3(i32  %op84, i32  %op87)
	ld.w $a0, $fp, -532
	ld.w $a1, $fp, -552
	bl func3
	st.w $a0, $fp, -556
# %op89 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  6
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
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -568
# %op90 = load i32 , i32 * %op89
	ld.d $t0, $fp, -568
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -572
# %op91 = call i32  @func5(i32  %op90)
	ld.w $a0, $fp, -572
	bl func5
	st.w $a0, $fp, -576
# %op92 = call i32  @func2(i32  %op88, i32  %op91)
	ld.w $a0, $fp, -556
	ld.w $a1, $fp, -576
	bl func2
	st.w $a0, $fp, -580
# %op93 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  7
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
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -592
# %op94 = load i32 , i32 * %op93
	ld.d $t0, $fp, -592
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -596
# %op95 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  8
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
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -608
# %op96 = load i32 , i32 * %op95
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -612
# %op97 = call i32  @func7(i32  %op96)
	ld.w $a0, $fp, -612
	bl func7
	st.w $a0, $fp, -616
# %op98 = call i32  @func1(i32  %op92, i32  %op94, i32  %op97)
	ld.w $a0, $fp, -580
	ld.w $a1, $fp, -596
	ld.w $a2, $fp, -616
	bl func1
	st.w $a0, $fp, -620
# %op99 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  9
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
	ld.d $t1, $fp, -96
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -632
# %op100 = load i32 , i32 * %op99
	ld.d $t0, $fp, -632
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -636
# %op101 = call i32  @func5(i32  %op100)
	ld.w $a0, $fp, -636
	bl func5
	st.w $a0, $fp, -640
# %op102 = call i32  @func2(i32  %op98, i32  %op101)
	ld.w $a0, $fp, -620
	ld.w $a1, $fp, -640
	bl func2
	st.w $a0, $fp, -644
# %op103 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -648
# %op104 = call i32  @func3(i32  %op102, i32  %op103)
	ld.w $a0, $fp, -644
	ld.w $a1, $fp, -648
	bl func3
	st.w $a0, $fp, -652
# %op105 = call i32  @func1(i32  %op80, i32  %op82, i32  %op104)
	ld.w $a0, $fp, -504
	ld.w $a1, $fp, -516
	ld.w $a2, $fp, -652
	bl func1
	st.w $a0, $fp, -656
# %op106 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3428
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -664
# store i32  %op105, i32 * %op106
	ld.d $t0, $fp, -664
	ld.w $t1, $fp, -656
	st.w $t1, $t0, 0
# %op107 = load i32 , i32 * %op106
	ld.d $t0, $fp, -664
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -672
# ret i32  %op107
	ld.w $a0, $fp, -672
	b main_ret
main_ret:
	addi.d $sp, $sp, 672
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl g
	.data
	.type g, @object
	.size g, 4
g:
	.word 0
	.space 4
	.text
	.globl func
	.type func, @function
func:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -64
	st.w $a0, $fp, -20
.func_label_entry:
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
# %op2 = load i32 , i32 * @g
	la.local $t0, g
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op3 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# %op4 = add i32  %op2, %op3
	ld.w $t0, $fp, -40
	ld.w $t1, $fp, -44
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -48
# store i32  %op4, i32 * @g
	la.local $t0, g
	ld.w $t1, $fp, -48
	st.w $t1, $t0, 0
# %op5 = load i32 , i32 * @g
	la.local $t0, g
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# call void @putint(i32  %op5)
	ld.w $a0, $fp, -52
	bl putint
# %op6 = load i32 , i32 * @g
	la.local $t0, g
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# ret i32  %op6
	ld.w $a0, $fp, -56
	b func_ret
func_ret:
	addi.d $sp, $sp, 64
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
# %op1 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -32
# store i32  %op1, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -32
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -36
# %op3 = icmp sgt i32  %op2, 10
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 10
	slt $t2, $t1, $t0
	st.b $t2, $fp, -37
# %op4 = zext i1  %op3 to i32 
	ld.b $t0, $fp, -37
	st.w $t0, $fp, -44
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -45
# br i1  %op5, label %label14, label %label7
	ld.b $t0, $fp, -45
	bnez $t0, .main_label14
	b .main_label7
.main_label6:
# store i32  1, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label8
	b .main_label8
.main_label7:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label8
	b .main_label8
.main_label8:
# %op9 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -52
# store i32  %op9, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -52
	st.w $t1, $t0, 0
# %op10 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op11 = icmp sgt i32  %op10, 11
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 11
	slt $t2, $t1, $t0
	st.b $t2, $fp, -57
# %op12 = zext i1  %op11 to i32 
	ld.b $t0, $fp, -57
	st.w $t0, $fp, -64
# %op13 = icmp ne i32  %op12, 0
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -65
# br i1  %op13, label %label26, label %label19
	ld.b $t0, $fp, -65
	bnez $t0, .main_label26
	b .main_label19
.main_label14:
# %op15 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op16 = call i32  @func(i32  %op15)
	ld.w $a0, $fp, -72
	bl func
	st.w $a0, $fp, -76
# %op17 = icmp ne i32  %op16, 0
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -77
# br i1  %op17, label %label6, label %label7
	ld.b $t0, $fp, -77
	bnez $t0, .main_label6
	b .main_label7
.main_label18:
# store i32  1, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label20
	b .main_label20
.main_label19:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label20
	b .main_label20
.main_label20:
# %op21 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -84
# store i32  %op21, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -84
	st.w $t1, $t0, 0
# %op22 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op23 = icmp sle i32  %op22, 99
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 99
	bge  $t1, $t0, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -89
# %op24 = zext i1  %op23 to i32 
	ld.b $t0, $fp, -89
	st.w $t0, $fp, -96
# %op25 = icmp ne i32  %op24, 0
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -97
# br i1  %op25, label %label30, label %label38
	ld.b $t0, $fp, -97
	bnez $t0, .main_label30
	b .main_label38
.main_label26:
# %op27 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op28 = call i32  @func(i32  %op27)
	ld.w $a0, $fp, -104
	bl func
	st.w $a0, $fp, -108
# %op29 = icmp ne i32  %op28, 0
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -109
# br i1  %op29, label %label18, label %label19
	ld.b $t0, $fp, -109
	bnez $t0, .main_label18
	b .main_label19
.main_label30:
# store i32  1, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label32
	b .main_label32
.main_label31:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label32
	b .main_label32
.main_label32:
# %op33 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -116
# store i32  %op33, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -116
	st.w $t1, $t0, 0
# %op34 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -120
# %op35 = icmp sle i32  %op34, 100
	ld.w $t0, $fp, -120
	addi.w $t1, $zero, 100
	bge  $t1, $t0, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -121
# %op36 = zext i1  %op35 to i32 
	ld.b $t0, $fp, -121
	st.w $t0, $fp, -128
# %op37 = icmp ne i32  %op36, 0
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -129
# br i1  %op37, label %label42, label %label47
	ld.b $t0, $fp, -129
	bnez $t0, .main_label42
	b .main_label47
.main_label38:
# %op39 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# %op40 = call i32  @func(i32  %op39)
	ld.w $a0, $fp, -136
	bl func
	st.w $a0, $fp, -140
# %op41 = icmp ne i32  %op40, 0
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -141
# br i1  %op41, label %label30, label %label31
	ld.b $t0, $fp, -141
	bnez $t0, .main_label30
	b .main_label31
.main_label42:
# store i32  1, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label44
	b .main_label44
.main_label43:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label44
	b .main_label44
.main_label44:
# %op45 = call i32  @func(i32  99)
	addi.w $a0, $zero, 99
	bl func
	st.w $a0, $fp, -148
# %op46 = icmp eq i32  %op45, 0
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -149
# br i1  %op46, label %label54, label %label52
	ld.b $t0, $fp, -149
	bnez $t0, .main_label54
	b .main_label52
.main_label47:
# %op48 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op49 = call i32  @func(i32  %op48)
	ld.w $a0, $fp, -156
	bl func
	st.w $a0, $fp, -160
# %op50 = icmp ne i32  %op49, 0
	ld.w $t0, $fp, -160
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -161
# br i1  %op50, label %label42, label %label43
	ld.b $t0, $fp, -161
	bnez $t0, .main_label42
	b .main_label43
.main_label51:
# store i32  1, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label53
	b .main_label53
.main_label52:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label53
	b .main_label53
.main_label53:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
.main_label54:
# %op55 = call i32  @func(i32  100)
	addi.w $a0, $zero, 100
	bl func
	st.w $a0, $fp, -168
# %op56 = icmp ne i32  %op55, 0
	ld.w $t0, $fp, -168
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -169
# br i1  %op56, label %label51, label %label52
	ld.b $t0, $fp, -169
	bnez $t0, .main_label51
	b .main_label52
main_ret:
	addi.d $sp, $sp, 176
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

	.text
	.globl ifElseIf
	.type ifElseIf, @function
ifElseIf:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -176
.ifElseIf_label_entry:
# %op0 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -24
# store i32  5, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op1 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -40
# store i32  10, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op3 = icmp eq i32  %op2, 6
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 6
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -49
# %op4 = zext i1  %op3 to i32 
	ld.b $t0, $fp, -49
	st.w $t0, $fp, -56
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -57
# br i1  %op5, label %label6, label %label15
	ld.b $t0, $fp, -57
	bnez $t0, .ifElseIf_label6
	b .ifElseIf_label15
.ifElseIf_label6:
# %op7 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# ret i32  %op7
	ld.w $a0, $fp, -64
	b ifElseIf_ret
.ifElseIf_label8:
# %op9 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op10 = icmp eq i32  %op9, 10
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 10
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -69
# %op11 = zext i1  %op10 to i32 
	ld.b $t0, $fp, -69
	st.w $t0, $fp, -76
# %op12 = icmp ne i32  %op11, 0
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -77
# br i1  %op12, label %label27, label %label21
	ld.b $t0, $fp, -77
	bnez $t0, .ifElseIf_label27
	b .ifElseIf_label21
.ifElseIf_label13:
# %op14 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# ret i32  %op14
	ld.w $a0, $fp, -84
	b ifElseIf_ret
.ifElseIf_label15:
# %op16 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op17 = icmp eq i32  %op16, 11
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 11
	beq  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -89
# %op18 = zext i1  %op17 to i32 
	ld.b $t0, $fp, -89
	st.w $t0, $fp, -96
# %op19 = icmp ne i32  %op18, 0
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -97
# br i1  %op19, label %label6, label %label8
	ld.b $t0, $fp, -97
	bnez $t0, .ifElseIf_label6
	b .ifElseIf_label8
.ifElseIf_label20:
# store i32  25, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 25
	st.w $t1, $t0, 0
# br label %label26
	b .ifElseIf_label26
.ifElseIf_label21:
# %op22 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op23 = icmp eq i32  %op22, 10
	ld.w $t0, $fp, -104
	addi.w $t1, $zero, 10
	beq  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -105
# %op24 = zext i1  %op23 to i32 
	ld.b $t0, $fp, -105
	st.w $t0, $fp, -112
# %op25 = icmp ne i32  %op24, 0
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -113
# br i1  %op25, label %label39, label %label35
	ld.b $t0, $fp, -113
	bnez $t0, .ifElseIf_label39
	b .ifElseIf_label35
.ifElseIf_label26:
# br label %label13
	b .ifElseIf_label13
.ifElseIf_label27:
# %op28 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -120
# %op29 = icmp eq i32  %op28, 1
	ld.w $t0, $fp, -120
	addi.w $t1, $zero, 1
	beq  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -121
# %op30 = zext i1  %op29 to i32 
	ld.b $t0, $fp, -121
	st.w $t0, $fp, -128
# %op31 = icmp ne i32  %op30, 0
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -129
# br i1  %op31, label %label20, label %label21
	ld.b $t0, $fp, -129
	bnez $t0, .ifElseIf_label20
	b .ifElseIf_label21
.ifElseIf_label32:
# %op33 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# %op34 = add i32  %op33, 15
	ld.w $t0, $fp, -136
	addi.w $t1, $zero, 15
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -140
# store i32  %op34, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -140
	st.w $t1, $t0, 0
# br label %label38
	b .ifElseIf_label38
.ifElseIf_label35:
# %op36 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op37 = mul i32  %op36, -1
	ld.w $t0, $fp, -144
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -148
# store i32  %op37, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -148
	st.w $t1, $t0, 0
# br label %label38
	b .ifElseIf_label38
.ifElseIf_label38:
# br label %label26
	b .ifElseIf_label26
.ifElseIf_label39:
# %op40 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op41 = mul i32  5, -1
	addi.w $t0, $zero, 5
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# %op42 = icmp eq i32  %op40, %op41
	ld.w $t0, $fp, -152
	ld.w $t1, $fp, -156
	beq  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -157
# %op43 = zext i1  %op42 to i32 
	ld.b $t0, $fp, -157
	st.w $t0, $fp, -164
# %op44 = icmp ne i32  %op43, 0
	ld.w $t0, $fp, -164
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -165
# br i1  %op44, label %label32, label %label35
	ld.b $t0, $fp, -165
	bnez $t0, .ifElseIf_label32
	b .ifElseIf_label35
ifElseIf_ret:
	addi.d $sp, $sp, 176
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -32
.main_label_entry:
# %op0 = call i32  @ifElseIf()
	bl ifElseIf
	st.w $a0, $fp, -20
# call void @putint(i32  %op0)
	ld.w $a0, $fp, -20
	bl putint
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl ascii_0
	.data
	.type ascii_0, @object
	.size ascii_0, 4
ascii_0:
	.word 48
	.space 4
	.text
	.globl my_getint
	.type my_getint, @function
my_getint:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -160
.my_getint_label_entry:
# %op0 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -24
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -40
# br label %label2
	b .my_getint_label2
.my_getint_label2:
# %op3 = icmp ne i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -45
# br i1  %op3, label %label4, label %label13
	ld.b $t0, $fp, -45
	bnez $t0, .my_getint_label4
	b .my_getint_label13
.my_getint_label4:
# %op5 = call i8  @getch()
	bl getch
	st.b $a0, $fp, -46
# %op6 = load i32 , i32 * @ascii_0
	la.local $t0, ascii_0
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# %op7 = zext i8  %op5 to i32 
	ld.b $t0, $fp, -46
	st.w $t0, $fp, -56
# %op8 = sub i32  %op7, %op6
	ld.w $t0, $fp, -56
	ld.w $t1, $fp, -52
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# store i32  %op8, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -60
	st.w $t1, $t0, 0
# %op9 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op10 = icmp slt i32  %op9, 0
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	st.b $t2, $fp, -65
# %op11 = zext i1  %op10 to i32 
	ld.b $t0, $fp, -65
	st.w $t0, $fp, -72
# %op12 = icmp ne i32  %op11, 0
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -73
# br i1  %op12, label %label15, label %label17
	ld.b $t0, $fp, -73
	bnez $t0, .my_getint_label15
	b .my_getint_label17
.my_getint_label13:
# %op14 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# store i32  %op14, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -80
	st.w $t1, $t0, 0
# br label %label22
	b .my_getint_label22
.my_getint_label15:
# br label %label2
	b .my_getint_label2
.my_getint_label16:
# br label %label13
	b .my_getint_label13
.my_getint_label17:
# %op18 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op19 = icmp sgt i32  %op18, 9
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 9
	slt $t2, $t1, $t0
	st.b $t2, $fp, -85
# %op20 = zext i1  %op19 to i32 
	ld.b $t0, $fp, -85
	st.w $t0, $fp, -92
# %op21 = icmp ne i32  %op20, 0
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -93
# br i1  %op21, label %label15, label %label16
	ld.b $t0, $fp, -93
	bnez $t0, .my_getint_label15
	b .my_getint_label16
.my_getint_label22:
# %op23 = icmp ne i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -94
# br i1  %op23, label %label24, label %label33
	ld.b $t0, $fp, -94
	bnez $t0, .my_getint_label24
	b .my_getint_label33
.my_getint_label24:
# %op25 = call i8  @getch()
	bl getch
	st.b $a0, $fp, -95
# %op26 = load i32 , i32 * @ascii_0
	la.local $t0, ascii_0
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op27 = zext i8  %op25 to i32 
	ld.b $t0, $fp, -95
	st.w $t0, $fp, -104
# %op28 = sub i32  %op27, %op26
	ld.w $t0, $fp, -104
	ld.w $t1, $fp, -100
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -108
# store i32  %op28, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -108
	st.w $t1, $t0, 0
# %op29 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op30 = icmp sge i32  %op29, 0
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 0
	bge  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -113
# %op31 = zext i1  %op30 to i32 
	ld.b $t0, $fp, -113
	st.w $t0, $fp, -120
# %op32 = icmp ne i32  %op31, 0
	ld.w $t0, $fp, -120
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -121
# br i1  %op32, label %label42, label %label40
	ld.b $t0, $fp, -121
	bnez $t0, .my_getint_label42
	b .my_getint_label40
.my_getint_label33:
# %op34 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# ret i32  %op34
	ld.w $a0, $fp, -128
	b my_getint_ret
.my_getint_label35:
# %op36 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op37 = mul i32  %op36, 10
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, 10
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -136
# %op38 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op39 = add i32  %op37, %op38
	ld.w $t0, $fp, -136
	ld.w $t1, $fp, -140
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -144
# store i32  %op39, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -144
	st.w $t1, $t0, 0
# br label %label41
	b .my_getint_label41
.my_getint_label40:
# br label %label33
	b .my_getint_label33
.my_getint_label41:
# br label %label22
	b .my_getint_label22
.my_getint_label42:
# %op43 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op44 = icmp sle i32  %op43, 9
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 9
	bge  $t1, $t0, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -149
# %op45 = zext i1  %op44 to i32 
	ld.b $t0, $fp, -149
	st.w $t0, $fp, -156
# %op46 = icmp ne i32  %op45, 0
	ld.w $t0, $fp, -156
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -157
# br i1  %op46, label %label35, label %label40
	ld.b $t0, $fp, -157
	bnez $t0, .my_getint_label35
	b .my_getint_label40
my_getint_ret:
	addi.d $sp, $sp, 160
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl my_putint
	.type my_putint, @function
my_putint:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -240
	st.w $a0, $fp, -20
.my_putint_label_entry:
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
# %op2 = alloca [16 x i32 ]
	lu12i.w $t0, -1
	ori $t0, $t0, 3984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -48
# %op3 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3972
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -120
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -120
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label4
	b .my_putint_label4
.my_putint_label4:
# %op5 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op6 = icmp sgt i32  %op5, 0
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -129
# %op7 = zext i1  %op6 to i32 
	ld.b $t0, $fp, -129
	st.w $t0, $fp, -136
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -136
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -137
# br i1  %op8, label %label9, label %label21
	ld.b $t0, $fp, -137
	bnez $t0, .my_putint_label9
	b .my_putint_label21
.my_putint_label9:
# %op10 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op11 = srem i32  %op10, 10
	ld.w $t0, $fp, -144
	addi.w $t1, $zero, 10
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -148
# %op12 = load i32 , i32 * @ascii_0
	la.local $t0, ascii_0
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op13 = add i32  %op11, %op12
	ld.w $t0, $fp, -148
	ld.w $t1, $fp, -152
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# %op14 = load i32 , i32 * %op3
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op15 = load i32 , i32 * %op3
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op16 = getelementptr [16 x i32 ], [16 x i32 ]* %op2, i32  0, i32  %op14
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 64
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
	ori $t1, $t1, 64
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -160
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -48
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -176
# store i32  %op13, i32 * %op16
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -156
	st.w $t1, $t0, 0
# %op17 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op18 = sdiv i32  %op17, 10
	ld.w $t0, $fp, -180
	addi.w $t1, $zero, 10
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -184
# store i32  %op18, i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -184
	st.w $t1, $t0, 0
# %op19 = load i32 , i32 * %op3
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op20 = add i32  %op19, 1
	ld.w $t0, $fp, -188
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -192
# store i32  %op20, i32 * %op3
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -192
	st.w $t1, $t0, 0
# br label %label4
	b .my_putint_label4
.my_putint_label21:
# br label %label22
	b .my_putint_label22
.my_putint_label22:
# %op23 = load i32 , i32 * %op3
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op24 = icmp sgt i32  %op23, 0
	ld.w $t0, $fp, -196
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -197
# %op25 = zext i1  %op24 to i32 
	ld.b $t0, $fp, -197
	st.w $t0, $fp, -204
# %op26 = icmp ne i32  %op25, 0
	ld.w $t0, $fp, -204
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -205
# br i1  %op26, label %label27, label %label35
	ld.b $t0, $fp, -205
	bnez $t0, .my_putint_label27
	b .my_putint_label35
.my_putint_label27:
# %op28 = load i32 , i32 * %op3
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op29 = sub i32  %op28, 1
	ld.w $t0, $fp, -212
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -216
# store i32  %op29, i32 * %op3
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -216
	st.w $t1, $t0, 0
# %op30 = load i32 , i32 * %op3
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# %op31 = load i32 , i32 * %op3
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -224
# %op32 = getelementptr [16 x i32 ], [16 x i32 ]* %op2, i32  0, i32  %op30
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 64
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
	ori $t1, $t1, 64
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -220
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -48
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -232
# %op33 = load i32 , i32 * %op32
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# %op34 = trunc i32  %op33 to i8 
	ld.w $t0, $fp, -236
	andi $t1, $t0, 255
	st.b $t1, $fp, -237
# call void @putch(i8  %op34)
	ld.b $a0, $fp, -237
	bl putch
# br label %label22
	b .my_putint_label22
.my_putint_label35:
# ret void
	addi.d $a0, $zero, 0
	b my_putint_ret
my_putint_ret:
	addi.d $sp, $sp, 240
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -96
.main_label_entry:
# %op0 = call i32  @my_getint()
	bl my_getint
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
# br label %label2
	b .main_label2
.main_label2:
# %op3 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op4 = icmp sgt i32  %op3, 0
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -41
# %op5 = zext i1  %op4 to i32 
	ld.b $t0, $fp, -41
	st.w $t0, $fp, -48
# %op6 = icmp ne i32  %op5, 0
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -49
# br i1  %op6, label %label7, label %label14
	ld.b $t0, $fp, -49
	bnez $t0, .main_label7
	b .main_label14
.main_label7:
# %op8 = call i32  @my_getint()
	bl my_getint
	st.w $a0, $fp, -56
# %op9 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -64
# store i32  %op8, i32 * %op9
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -56
	st.w $t1, $t0, 0
# %op10 = load i32 , i32 * %op9
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# call void @my_putint(i32  %op10)
	ld.w $a0, $fp, -72
	bl my_putint
# %op11 = trunc i32  10 to i8 
	addi.w $t0, $zero, 10
	andi $t1, $t0, 255
	st.b $t1, $fp, -73
# call void @putch(i8  %op11)
	ld.b $a0, $fp, -73
	bl putch
# %op12 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op13 = sub i32  %op12, 1
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -84
# store i32  %op13, i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -84
	st.w $t1, $t0, 0
# br label %label2
	b .main_label2
.main_label14:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 96
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl SHIFT_TABLE
	.data
	.type SHIFT_TABLE, @object
	.size SHIFT_TABLE, 64
SHIFT_TABLE:
	.long 1
	.long 2
	.long 4
	.long 8
	.long 16
	.long 32
	.long 64
	.long 128
	.long 256
	.long 512
	.long 1024
	.long 2048
	.long 4096
	.long 8192
	.long 16384
	.long 32768
	.space 64
	.text
	.globl long_func
	.type long_func, @function
long_func:
	lu12i.w $t0, 2
	ori $t0, $t0, 4016
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	sub.d $sp, $sp, $t0
	add.d $fp, $sp, $t0
.long_func_label_entry:
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
# %op4 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -88
# %op5 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -104
# store i32  2, i32 * %op5
	ld.d $t0, $fp, -104
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op6 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3972
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -120
# store i32  0, i32 * %op6
	ld.d $t0, $fp, -120
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op7 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -136
# store i32  1, i32 * %op7
	ld.d $t0, $fp, -136
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label8
	b .long_func_label8
.long_func_label8:
# %op9 = load i32 , i32 * %op6
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op10 = icmp sgt i32  %op9, 0
	ld.w $t0, $fp, -144
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -145
# %op11 = zext i1  %op10 to i32 
	ld.b $t0, $fp, -145
	st.w $t0, $fp, -152
# %op12 = icmp ne i32  %op11, 0
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -153
# br i1  %op12, label %label13, label %label15
	ld.b $t0, $fp, -153
	bnez $t0, .long_func_label13
	b .long_func_label15
.long_func_label13:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op14 = load i32 , i32 * %op6
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# store i32  %op14, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -160
	st.w $t1, $t0, 0
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label22
	b .long_func_label22
.long_func_label15:
# %op16 = load i32 , i32 * %op7
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# store i32  %op16, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -164
	st.w $t1, $t0, 0
# %op17 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# call void @putint(i32  %op17)
	ld.w $a0, $fp, -168
	bl putint
# %op18 = trunc i32  10 to i8 
	addi.w $t0, $zero, 10
	andi $t1, $t0, 255
	st.b $t1, $fp, -169
# call void @putch(i8  %op18)
	ld.b $a0, $fp, -169
	bl putch
# %op19 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3908
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -184
# store i32  2, i32 * %op19
	ld.d $t0, $fp, -184
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op20 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -200
# store i32  1, i32 * %op20
	ld.d $t0, $fp, -200
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op21 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -216
# store i32  1, i32 * %op21
	ld.d $t0, $fp, -216
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label841
	b .long_func_label841
.long_func_label22:
# %op23 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -224
# %op24 = icmp slt i32  %op23, 16
	ld.w $t0, $fp, -224
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -225
# %op25 = zext i1  %op24 to i32 
	ld.b $t0, $fp, -225
	st.w $t0, $fp, -232
# %op26 = icmp ne i32  %op25, 0
	ld.w $t0, $fp, -232
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -233
# br i1  %op26, label %label27, label %label31
	ld.b $t0, $fp, -233
	bnez $t0, .long_func_label27
	b .long_func_label31
.long_func_label27:
# %op28 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -240
# %op29 = srem i32  %op28, 2
	ld.w $t0, $fp, -240
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -244
# %op30 = icmp ne i32  %op29, 0
	ld.w $t0, $fp, -244
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -245
# br i1  %op30, label %label49, label %label42
	ld.b $t0, $fp, -245
	bnez $t0, .long_func_label49
	b .long_func_label42
.long_func_label31:
# %op32 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# %op33 = icmp ne i32  %op32, 0
	ld.w $t0, $fp, -252
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -253
# br i1  %op33, label %label53, label %label59
	ld.b $t0, $fp, -253
	bnez $t0, .long_func_label53
	b .long_func_label59
.long_func_label34:
# %op35 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# %op36 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -264
# %op37 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# %op38 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op36
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
	ld.w $t1, $fp, -264
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -280
# %op39 = load i32 , i32 * %op38
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# %op40 = mul i32  1, %op39
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -284
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -288
# %op41 = add i32  %op35, %op40
	ld.w $t0, $fp, -260
	ld.w $t1, $fp, -288
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -292
# store i32  %op41, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -292
	st.w $t1, $t0, 0
# br label %label42
	b .long_func_label42
.long_func_label42:
# %op43 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -296
# %op44 = sdiv i32  %op43, 2
	ld.w $t0, $fp, -296
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -300
# store i32  %op44, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -300
	st.w $t1, $t0, 0
# %op45 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -304
# %op46 = sdiv i32  %op45, 2
	ld.w $t0, $fp, -304
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -308
# store i32  %op46, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -308
	st.w $t1, $t0, 0
# %op47 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -312
# %op48 = add i32  %op47, 1
	ld.w $t0, $fp, -312
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -316
# store i32  %op48, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -316
	st.w $t1, $t0, 0
# br label %label22
	b .long_func_label22
.long_func_label49:
# %op50 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -320
# %op51 = srem i32  %op50, 2
	ld.w $t0, $fp, -320
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -324
# %op52 = icmp ne i32  %op51, 0
	ld.w $t0, $fp, -324
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -325
# br i1  %op52, label %label34, label %label42
	ld.b $t0, $fp, -325
	bnez $t0, .long_func_label34
	b .long_func_label42
.long_func_label53:
# %op54 = load i32 , i32 * %op7
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op55 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3748
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -344
# store i32  %op54, i32 * %op55
	ld.d $t0, $fp, -344
	ld.w $t1, $fp, -332
	st.w $t1, $t0, 0
# %op56 = load i32 , i32 * %op5
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -352
# %op57 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3732
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -360
# store i32  %op56, i32 * %op57
	ld.d $t0, $fp, -360
	ld.w $t1, $fp, -352
	st.w $t1, $t0, 0
# %op58 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3716
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -376
# store i32  0, i32 * %op58
	ld.d $t0, $fp, -376
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label65
	b .long_func_label65
.long_func_label59:
# %op60 = load i32 , i32 * %op5
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -384
# %op61 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3700
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -392
# store i32  %op60, i32 * %op61
	ld.d $t0, $fp, -392
	ld.w $t1, $fp, -384
	st.w $t1, $t0, 0
# %op62 = load i32 , i32 * %op5
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -400
# %op63 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3684
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -408
# store i32  %op62, i32 * %op63
	ld.d $t0, $fp, -408
	ld.w $t1, $fp, -400
	st.w $t1, $t0, 0
# %op64 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3668
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -424
# store i32  0, i32 * %op64
	ld.d $t0, $fp, -424
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label426
	b .long_func_label426
.long_func_label65:
# %op66 = load i32 , i32 * %op57
	ld.d $t0, $fp, -360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -432
# %op67 = icmp ne i32  %op66, 0
	ld.w $t0, $fp, -432
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -433
# br i1  %op67, label %label68, label %label70
	ld.b $t0, $fp, -433
	bnez $t0, .long_func_label68
	b .long_func_label70
.long_func_label68:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op69 = load i32 , i32 * %op57
	ld.d $t0, $fp, -360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -440
# store i32  %op69, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -440
	st.w $t1, $t0, 0
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label73
	b .long_func_label73
.long_func_label70:
# %op71 = load i32 , i32 * %op58
	ld.d $t0, $fp, -376
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -444
# store i32  %op71, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -444
	st.w $t1, $t0, 0
# %op72 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -448
# store i32  %op72, i32 * %op7
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -448
	st.w $t1, $t0, 0
# br label %label59
	b .long_func_label59
.long_func_label73:
# %op74 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -452
# %op75 = icmp slt i32  %op74, 16
	ld.w $t0, $fp, -452
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -453
# %op76 = zext i1  %op75 to i32 
	ld.b $t0, $fp, -453
	st.w $t0, $fp, -460
# %op77 = icmp ne i32  %op76, 0
	ld.w $t0, $fp, -460
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -461
# br i1  %op77, label %label78, label %label82
	ld.b $t0, $fp, -461
	bnez $t0, .long_func_label78
	b .long_func_label82
.long_func_label78:
# %op79 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -468
# %op80 = srem i32  %op79, 2
	ld.w $t0, $fp, -468
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -472
# %op81 = icmp ne i32  %op80, 0
	ld.w $t0, $fp, -472
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -473
# br i1  %op81, label %label100, label %label93
	ld.b $t0, $fp, -473
	bnez $t0, .long_func_label100
	b .long_func_label93
.long_func_label82:
# %op83 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -480
# %op84 = icmp ne i32  %op83, 0
	ld.w $t0, $fp, -480
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -481
# br i1  %op84, label %label104, label %label110
	ld.b $t0, $fp, -481
	bnez $t0, .long_func_label104
	b .long_func_label110
.long_func_label85:
# %op86 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -488
# %op87 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -492
# %op88 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -496
# %op89 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op87
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
	ld.w $t1, $fp, -492
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -504
# %op90 = load i32 , i32 * %op89
	ld.d $t0, $fp, -504
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -508
# %op91 = mul i32  1, %op90
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -508
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -512
# %op92 = add i32  %op86, %op91
	ld.w $t0, $fp, -488
	ld.w $t1, $fp, -512
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -516
# store i32  %op92, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -516
	st.w $t1, $t0, 0
# br label %label93
	b .long_func_label93
.long_func_label93:
# %op94 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -520
# %op95 = sdiv i32  %op94, 2
	ld.w $t0, $fp, -520
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -524
# store i32  %op95, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -524
	st.w $t1, $t0, 0
# %op96 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -528
# %op97 = sdiv i32  %op96, 2
	ld.w $t0, $fp, -528
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -532
# store i32  %op97, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -532
	st.w $t1, $t0, 0
# %op98 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -536
# %op99 = add i32  %op98, 1
	ld.w $t0, $fp, -536
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -540
# store i32  %op99, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -540
	st.w $t1, $t0, 0
# br label %label73
	b .long_func_label73
.long_func_label100:
# %op101 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -544
# %op102 = srem i32  %op101, 2
	ld.w $t0, $fp, -544
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -548
# %op103 = icmp ne i32  %op102, 0
	ld.w $t0, $fp, -548
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -549
# br i1  %op103, label %label85, label %label93
	ld.b $t0, $fp, -549
	bnez $t0, .long_func_label85
	b .long_func_label93
.long_func_label104:
# %op105 = load i32 , i32 * %op58
	ld.d $t0, $fp, -376
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -556
# %op106 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3524
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -568
# store i32  %op105, i32 * %op106
	ld.d $t0, $fp, -568
	ld.w $t1, $fp, -556
	st.w $t1, $t0, 0
# %op107 = load i32 , i32 * %op55
	ld.d $t0, $fp, -344
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -576
# %op108 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -584
# store i32  %op107, i32 * %op108
	ld.d $t0, $fp, -584
	ld.w $t1, $fp, -576
	st.w $t1, $t0, 0
# %op109 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3492
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -600
# br label %label116
	b .long_func_label116
.long_func_label110:
# %op111 = load i32 , i32 * %op55
	ld.d $t0, $fp, -344
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -608
# %op112 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3476
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -616
# store i32  %op111, i32 * %op112
	ld.d $t0, $fp, -616
	ld.w $t1, $fp, -608
	st.w $t1, $t0, 0
# %op113 = load i32 , i32 * %op55
	ld.d $t0, $fp, -344
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -624
# %op114 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3460
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -632
# store i32  %op113, i32 * %op114
	ld.d $t0, $fp, -632
	ld.w $t1, $fp, -624
	st.w $t1, $t0, 0
# %op115 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3444
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -648
# br label %label244
	b .long_func_label244
.long_func_label116:
# %op117 = load i32 , i32 * %op108
	ld.d $t0, $fp, -584
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -656
# %op118 = icmp ne i32  %op117, 0
	ld.w $t0, $fp, -656
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -657
# br i1  %op118, label %label119, label %label122
	ld.b $t0, $fp, -657
	bnez $t0, .long_func_label119
	b .long_func_label122
.long_func_label119:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op120 = load i32 , i32 * %op106
	ld.d $t0, $fp, -568
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -664
# store i32  %op120, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -664
	st.w $t1, $t0, 0
# %op121 = load i32 , i32 * %op108
	ld.d $t0, $fp, -584
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -668
# store i32  %op121, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -668
	st.w $t1, $t0, 0
# br label %label125
	b .long_func_label125
.long_func_label122:
# %op123 = load i32 , i32 * %op106
	ld.d $t0, $fp, -568
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -672
# store i32  %op123, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -672
	st.w $t1, $t0, 0
# %op124 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -676
# store i32  %op124, i32 * %op58
	ld.d $t0, $fp, -376
	ld.w $t1, $fp, -676
	st.w $t1, $t0, 0
# br label %label110
	b .long_func_label110
.long_func_label125:
# %op126 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -680
# %op127 = icmp slt i32  %op126, 16
	ld.w $t0, $fp, -680
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -681
# %op128 = zext i1  %op127 to i32 
	ld.b $t0, $fp, -681
	st.w $t0, $fp, -688
# %op129 = icmp ne i32  %op128, 0
	ld.w $t0, $fp, -688
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -689
# br i1  %op129, label %label130, label %label134
	ld.b $t0, $fp, -689
	bnez $t0, .long_func_label130
	b .long_func_label134
.long_func_label130:
# %op131 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -696
# %op132 = srem i32  %op131, 2
	ld.w $t0, $fp, -696
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -700
# %op133 = icmp ne i32  %op132, 0
	ld.w $t0, $fp, -700
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label16
	addi.d $t2, $zero, 0
	b false_label16
true_label16:
	addi.d $t2, $zero, 1
false_label16:
	st.b $t2, $fp, -701
# br i1  %op133, label %label138, label %label144
	ld.b $t0, $fp, -701
	bnez $t0, .long_func_label138
	b .long_func_label144
.long_func_label134:
# %op135 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -708
# store i32  %op135, i32 * %op109
	ld.d $t0, $fp, -600
	ld.w $t1, $fp, -708
	st.w $t1, $t0, 0
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op136 = load i32 , i32 * %op106
	ld.d $t0, $fp, -568
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -712
# store i32  %op136, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -712
	st.w $t1, $t0, 0
# %op137 = load i32 , i32 * %op108
	ld.d $t0, $fp, -584
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -716
# store i32  %op137, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -716
	st.w $t1, $t0, 0
# br label %label173
	b .long_func_label173
.long_func_label138:
# %op139 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -720
# %op140 = srem i32  %op139, 2
	ld.w $t0, $fp, -720
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -724
# %op141 = icmp eq i32  %op140, 0
	ld.w $t0, $fp, -724
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	st.b $t2, $fp, -725
# %op142 = zext i1  %op141 to i32 
	ld.b $t0, $fp, -725
	st.w $t0, $fp, -732
# %op143 = icmp ne i32  %op142, 0
	ld.w $t0, $fp, -732
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label18
	addi.d $t2, $zero, 0
	b false_label18
true_label18:
	addi.d $t2, $zero, 1
false_label18:
	st.b $t2, $fp, -733
# br i1  %op143, label %label155, label %label163
	ld.b $t0, $fp, -733
	bnez $t0, .long_func_label155
	b .long_func_label163
.long_func_label144:
# %op145 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -740
# %op146 = srem i32  %op145, 2
	ld.w $t0, $fp, -740
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -744
# %op147 = icmp ne i32  %op146, 0
	ld.w $t0, $fp, -744
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	st.b $t2, $fp, -745
# br i1  %op147, label %label164, label %label172
	ld.b $t0, $fp, -745
	bnez $t0, .long_func_label164
	b .long_func_label172
.long_func_label148:
# %op149 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -752
# %op150 = sdiv i32  %op149, 2
	ld.w $t0, $fp, -752
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -756
# store i32  %op150, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -756
	st.w $t1, $t0, 0
# %op151 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -760
# %op152 = sdiv i32  %op151, 2
	ld.w $t0, $fp, -760
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -764
# store i32  %op152, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -764
	st.w $t1, $t0, 0
# %op153 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -768
# %op154 = add i32  %op153, 1
	ld.w $t0, $fp, -768
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -772
# store i32  %op154, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -772
	st.w $t1, $t0, 0
# br label %label125
	b .long_func_label125
.long_func_label155:
# %op156 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -776
# %op157 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -780
# %op158 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -784
# %op159 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op157
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
	ld.w $t1, $fp, -780
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -792
# %op160 = load i32 , i32 * %op159
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -796
# %op161 = mul i32  1, %op160
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -796
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -800
# %op162 = add i32  %op156, %op161
	ld.w $t0, $fp, -776
	ld.w $t1, $fp, -800
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -804
# store i32  %op162, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -804
	st.w $t1, $t0, 0
# br label %label163
	b .long_func_label163
.long_func_label163:
# br label %label148
	b .long_func_label148
.long_func_label164:
# %op165 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -808
# %op166 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -812
# %op167 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -816
# %op168 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op166
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
	ld.w $t1, $fp, -812
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -824
# %op169 = load i32 , i32 * %op168
	ld.d $t0, $fp, -824
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -828
# %op170 = mul i32  1, %op169
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -828
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -832
# %op171 = add i32  %op165, %op170
	ld.w $t0, $fp, -808
	ld.w $t1, $fp, -832
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -836
# store i32  %op171, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -836
	st.w $t1, $t0, 0
# br label %label172
	b .long_func_label172
.long_func_label172:
# br label %label148
	b .long_func_label148
.long_func_label173:
# %op174 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -840
# %op175 = icmp slt i32  %op174, 16
	ld.w $t0, $fp, -840
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -841
# %op176 = zext i1  %op175 to i32 
	ld.b $t0, $fp, -841
	st.w $t0, $fp, -848
# %op177 = icmp ne i32  %op176, 0
	ld.w $t0, $fp, -848
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label21
	addi.d $t2, $zero, 0
	b false_label21
true_label21:
	addi.d $t2, $zero, 1
false_label21:
	st.b $t2, $fp, -849
# br i1  %op177, label %label178, label %label182
	ld.b $t0, $fp, -849
	bnez $t0, .long_func_label178
	b .long_func_label182
.long_func_label178:
# %op179 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -856
# %op180 = srem i32  %op179, 2
	ld.w $t0, $fp, -856
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -860
# %op181 = icmp ne i32  %op180, 0
	ld.w $t0, $fp, -860
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label22
	addi.d $t2, $zero, 0
	b false_label22
true_label22:
	addi.d $t2, $zero, 1
false_label22:
	st.b $t2, $fp, -861
# br i1  %op181, label %label202, label %label195
	ld.b $t0, $fp, -861
	bnez $t0, .long_func_label202
	b .long_func_label195
.long_func_label182:
# %op183 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -868
# store i32  %op183, i32 * %op108
	ld.d $t0, $fp, -584
	ld.w $t1, $fp, -868
	st.w $t1, $t0, 0
# %op184 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	st.b $t2, $fp, -869
# %op185 = zext i1  %op184 to i32 
	ld.b $t0, $fp, -869
	st.w $t0, $fp, -876
# %op186 = icmp ne i32  %op185, 0
	ld.w $t0, $fp, -876
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label24
	addi.d $t2, $zero, 0
	b false_label24
true_label24:
	addi.d $t2, $zero, 1
false_label24:
	st.b $t2, $fp, -877
# br i1  %op186, label %label206, label %label207
	ld.b $t0, $fp, -877
	bnez $t0, .long_func_label206
	b .long_func_label207
.long_func_label187:
# %op188 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -884
# %op189 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -888
# %op190 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -892
# %op191 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op189
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
	ld.w $t1, $fp, -888
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -904
# %op192 = load i32 , i32 * %op191
	ld.d $t0, $fp, -904
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -908
# %op193 = mul i32  1, %op192
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -908
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -912
# %op194 = add i32  %op188, %op193
	ld.w $t0, $fp, -884
	ld.w $t1, $fp, -912
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -916
# store i32  %op194, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -916
	st.w $t1, $t0, 0
# br label %label195
	b .long_func_label195
.long_func_label195:
# %op196 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -920
# %op197 = sdiv i32  %op196, 2
	ld.w $t0, $fp, -920
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -924
# store i32  %op197, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -924
	st.w $t1, $t0, 0
# %op198 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -928
# %op199 = sdiv i32  %op198, 2
	ld.w $t0, $fp, -928
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -932
# store i32  %op199, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -932
	st.w $t1, $t0, 0
# %op200 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -936
# %op201 = add i32  %op200, 1
	ld.w $t0, $fp, -936
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -940
# store i32  %op201, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -940
	st.w $t1, $t0, 0
# br label %label173
	b .long_func_label173
.long_func_label202:
# %op203 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -944
# %op204 = srem i32  %op203, 2
	ld.w $t0, $fp, -944
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -948
# %op205 = icmp ne i32  %op204, 0
	ld.w $t0, $fp, -948
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label25
	addi.d $t2, $zero, 0
	b false_label25
true_label25:
	addi.d $t2, $zero, 1
false_label25:
	st.b $t2, $fp, -949
# br i1  %op205, label %label187, label %label195
	ld.b $t0, $fp, -949
	bnez $t0, .long_func_label187
	b .long_func_label195
.long_func_label206:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label212
	b .long_func_label212
.long_func_label207:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op208 = load i32 , i32 * %op108
	ld.d $t0, $fp, -584
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -956
# %op209 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
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
	lu12i.w $t1, 0
	ori $t1, $t1, 1
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -968
# %op210 = load i32 , i32 * %op209
	ld.d $t0, $fp, -968
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -972
# %op211 = mul i32  %op208, %op210
	ld.w $t0, $fp, -956
	ld.w $t1, $fp, -972
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -976
# store i32  %op211, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -976
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label215
	b .long_func_label215
.long_func_label212:
# %op213 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -980
# store i32  %op213, i32 * %op108
	ld.d $t0, $fp, -584
	ld.w $t1, $fp, -980
	st.w $t1, $t0, 0
# %op214 = load i32 , i32 * %op109
	ld.d $t0, $fp, -600
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -984
# store i32  %op214, i32 * %op106
	ld.d $t0, $fp, -568
	ld.w $t1, $fp, -984
	st.w $t1, $t0, 0
# br label %label116
	b .long_func_label116
.long_func_label215:
# %op216 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -988
# %op217 = icmp slt i32  %op216, 16
	ld.w $t0, $fp, -988
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -989
# %op218 = zext i1  %op217 to i32 
	ld.b $t0, $fp, -989
	st.w $t0, $fp, -996
# %op219 = icmp ne i32  %op218, 0
	ld.w $t0, $fp, -996
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label27
	addi.d $t2, $zero, 0
	b false_label27
true_label27:
	addi.d $t2, $zero, 1
false_label27:
	st.b $t2, $fp, -997
# br i1  %op219, label %label220, label %label224
	ld.b $t0, $fp, -997
	bnez $t0, .long_func_label220
	b .long_func_label224
.long_func_label220:
# %op221 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1004
# %op222 = srem i32  %op221, 2
	ld.w $t0, $fp, -1004
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1008
# %op223 = icmp ne i32  %op222, 0
	ld.w $t0, $fp, -1008
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label28
	addi.d $t2, $zero, 0
	b false_label28
true_label28:
	addi.d $t2, $zero, 1
false_label28:
	st.b $t2, $fp, -1009
# br i1  %op223, label %label240, label %label233
	ld.b $t0, $fp, -1009
	bnez $t0, .long_func_label240
	b .long_func_label233
.long_func_label224:
# br label %label212
	b .long_func_label212
.long_func_label225:
# %op226 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1016
# %op227 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1020
# %op228 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1024
# %op229 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op227
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
	ld.w $t1, $fp, -1020
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1032
# %op230 = load i32 , i32 * %op229
	ld.d $t0, $fp, -1032
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1036
# %op231 = mul i32  1, %op230
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1036
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1040
# %op232 = add i32  %op226, %op231
	ld.w $t0, $fp, -1016
	ld.w $t1, $fp, -1040
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1044
# store i32  %op232, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -1044
	st.w $t1, $t0, 0
# br label %label233
	b .long_func_label233
.long_func_label233:
# %op234 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1048
# %op235 = sdiv i32  %op234, 2
	ld.w $t0, $fp, -1048
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1052
# store i32  %op235, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1052
	st.w $t1, $t0, 0
# %op236 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1056
# %op237 = sdiv i32  %op236, 2
	ld.w $t0, $fp, -1056
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1060
# store i32  %op237, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -1060
	st.w $t1, $t0, 0
# %op238 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1064
# %op239 = add i32  %op238, 1
	ld.w $t0, $fp, -1064
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1068
# store i32  %op239, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -1068
	st.w $t1, $t0, 0
# br label %label215
	b .long_func_label215
.long_func_label240:
# %op241 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1072
# %op242 = srem i32  %op241, 2
	ld.w $t0, $fp, -1072
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1076
# %op243 = icmp ne i32  %op242, 0
	ld.w $t0, $fp, -1076
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label29
	addi.d $t2, $zero, 0
	b false_label29
true_label29:
	addi.d $t2, $zero, 1
false_label29:
	st.b $t2, $fp, -1077
# br i1  %op243, label %label225, label %label233
	ld.b $t0, $fp, -1077
	bnez $t0, .long_func_label225
	b .long_func_label233
.long_func_label244:
# %op245 = load i32 , i32 * %op114
	ld.d $t0, $fp, -632
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1084
# %op246 = icmp ne i32  %op245, 0
	ld.w $t0, $fp, -1084
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label30
	addi.d $t2, $zero, 0
	b false_label30
true_label30:
	addi.d $t2, $zero, 1
false_label30:
	st.b $t2, $fp, -1085
# br i1  %op246, label %label247, label %label250
	ld.b $t0, $fp, -1085
	bnez $t0, .long_func_label247
	b .long_func_label250
.long_func_label247:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op248 = load i32 , i32 * %op112
	ld.d $t0, $fp, -616
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1092
# store i32  %op248, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1092
	st.w $t1, $t0, 0
# %op249 = load i32 , i32 * %op114
	ld.d $t0, $fp, -632
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1096
# store i32  %op249, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -1096
	st.w $t1, $t0, 0
# br label %label258
	b .long_func_label258
.long_func_label250:
# %op251 = load i32 , i32 * %op112
	ld.d $t0, $fp, -616
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1100
# store i32  %op251, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -1100
	st.w $t1, $t0, 0
# %op252 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1104
# store i32  %op252, i32 * %op55
	ld.d $t0, $fp, -344
	ld.w $t1, $fp, -1104
	st.w $t1, $t0, 0
# %op253 = load i32 , i32 * %op57
	ld.d $t0, $fp, -360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1108
# store i32  %op253, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1108
	st.w $t1, $t0, 0
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op254 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1112
# %op255 = icmp sge i32  %op254, 15
	ld.w $t0, $fp, -1112
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label31
	addi.d $t2, $zero, 0
	b false_label31
true_label31:
	addi.d $t2, $zero, 1
false_label31:
	st.b $t2, $fp, -1113
# %op256 = zext i1  %op255 to i32 
	ld.b $t0, $fp, -1113
	st.w $t0, $fp, -1120
# %op257 = icmp ne i32  %op256, 0
	ld.w $t0, $fp, -1120
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label32
	addi.d $t2, $zero, 0
	b false_label32
true_label32:
	addi.d $t2, $zero, 1
false_label32:
	st.b $t2, $fp, -1121
# br i1  %op257, label %label377, label %label382
	ld.b $t0, $fp, -1121
	bnez $t0, .long_func_label377
	b .long_func_label382
.long_func_label258:
# %op259 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1128
# %op260 = icmp slt i32  %op259, 16
	ld.w $t0, $fp, -1128
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1129
# %op261 = zext i1  %op260 to i32 
	ld.b $t0, $fp, -1129
	st.w $t0, $fp, -1136
# %op262 = icmp ne i32  %op261, 0
	ld.w $t0, $fp, -1136
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label34
	addi.d $t2, $zero, 0
	b false_label34
true_label34:
	addi.d $t2, $zero, 1
false_label34:
	st.b $t2, $fp, -1137
# br i1  %op262, label %label263, label %label267
	ld.b $t0, $fp, -1137
	bnez $t0, .long_func_label263
	b .long_func_label267
.long_func_label263:
# %op264 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1144
# %op265 = srem i32  %op264, 2
	ld.w $t0, $fp, -1144
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1148
# %op266 = icmp ne i32  %op265, 0
	ld.w $t0, $fp, -1148
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label35
	addi.d $t2, $zero, 0
	b false_label35
true_label35:
	addi.d $t2, $zero, 1
false_label35:
	st.b $t2, $fp, -1149
# br i1  %op266, label %label271, label %label277
	ld.b $t0, $fp, -1149
	bnez $t0, .long_func_label271
	b .long_func_label277
.long_func_label267:
# %op268 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1156
# store i32  %op268, i32 * %op115
	ld.d $t0, $fp, -648
	ld.w $t1, $fp, -1156
	st.w $t1, $t0, 0
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op269 = load i32 , i32 * %op112
	ld.d $t0, $fp, -616
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1160
# store i32  %op269, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1160
	st.w $t1, $t0, 0
# %op270 = load i32 , i32 * %op114
	ld.d $t0, $fp, -632
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1164
# store i32  %op270, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -1164
	st.w $t1, $t0, 0
# br label %label306
	b .long_func_label306
.long_func_label271:
# %op272 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1168
# %op273 = srem i32  %op272, 2
	ld.w $t0, $fp, -1168
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1172
# %op274 = icmp eq i32  %op273, 0
	ld.w $t0, $fp, -1172
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label36
	addi.d $t2, $zero, 0
	b false_label36
true_label36:
	addi.d $t2, $zero, 1
false_label36:
	st.b $t2, $fp, -1173
# %op275 = zext i1  %op274 to i32 
	ld.b $t0, $fp, -1173
	st.w $t0, $fp, -1180
# %op276 = icmp ne i32  %op275, 0
	ld.w $t0, $fp, -1180
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label37
	addi.d $t2, $zero, 0
	b false_label37
true_label37:
	addi.d $t2, $zero, 1
false_label37:
	st.b $t2, $fp, -1181
# br i1  %op276, label %label288, label %label296
	ld.b $t0, $fp, -1181
	bnez $t0, .long_func_label288
	b .long_func_label296
.long_func_label277:
# %op278 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1188
# %op279 = srem i32  %op278, 2
	ld.w $t0, $fp, -1188
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1192
# %op280 = icmp ne i32  %op279, 0
	ld.w $t0, $fp, -1192
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label38
	addi.d $t2, $zero, 0
	b false_label38
true_label38:
	addi.d $t2, $zero, 1
false_label38:
	st.b $t2, $fp, -1193
# br i1  %op280, label %label297, label %label305
	ld.b $t0, $fp, -1193
	bnez $t0, .long_func_label297
	b .long_func_label305
.long_func_label281:
# %op282 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1200
# %op283 = sdiv i32  %op282, 2
	ld.w $t0, $fp, -1200
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1204
# store i32  %op283, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1204
	st.w $t1, $t0, 0
# %op284 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1208
# %op285 = sdiv i32  %op284, 2
	ld.w $t0, $fp, -1208
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1212
# store i32  %op285, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -1212
	st.w $t1, $t0, 0
# %op286 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1216
# %op287 = add i32  %op286, 1
	ld.w $t0, $fp, -1216
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1220
# store i32  %op287, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -1220
	st.w $t1, $t0, 0
# br label %label258
	b .long_func_label258
.long_func_label288:
# %op289 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1224
# %op290 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1228
# %op291 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1232
# %op292 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op290
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
	ld.w $t1, $fp, -1228
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1240
# %op293 = load i32 , i32 * %op292
	ld.d $t0, $fp, -1240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1244
# %op294 = mul i32  1, %op293
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1244
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1248
# %op295 = add i32  %op289, %op294
	ld.w $t0, $fp, -1224
	ld.w $t1, $fp, -1248
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1252
# store i32  %op295, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -1252
	st.w $t1, $t0, 0
# br label %label296
	b .long_func_label296
.long_func_label296:
# br label %label281
	b .long_func_label281
.long_func_label297:
# %op298 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1256
# %op299 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1260
# %op300 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1264
# %op301 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op299
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
	ld.w $t1, $fp, -1260
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1272
# %op302 = load i32 , i32 * %op301
	ld.d $t0, $fp, -1272
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1276
# %op303 = mul i32  1, %op302
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1276
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1280
# %op304 = add i32  %op298, %op303
	ld.w $t0, $fp, -1256
	ld.w $t1, $fp, -1280
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1284
# store i32  %op304, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -1284
	st.w $t1, $t0, 0
# br label %label305
	b .long_func_label305
.long_func_label305:
# br label %label281
	b .long_func_label281
.long_func_label306:
# %op307 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1288
# %op308 = icmp slt i32  %op307, 16
	ld.w $t0, $fp, -1288
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1289
# %op309 = zext i1  %op308 to i32 
	ld.b $t0, $fp, -1289
	st.w $t0, $fp, -1296
# %op310 = icmp ne i32  %op309, 0
	ld.w $t0, $fp, -1296
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label40
	addi.d $t2, $zero, 0
	b false_label40
true_label40:
	addi.d $t2, $zero, 1
false_label40:
	st.b $t2, $fp, -1297
# br i1  %op310, label %label311, label %label315
	ld.b $t0, $fp, -1297
	bnez $t0, .long_func_label311
	b .long_func_label315
.long_func_label311:
# %op312 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1304
# %op313 = srem i32  %op312, 2
	ld.w $t0, $fp, -1304
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1308
# %op314 = icmp ne i32  %op313, 0
	ld.w $t0, $fp, -1308
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label41
	addi.d $t2, $zero, 0
	b false_label41
true_label41:
	addi.d $t2, $zero, 1
false_label41:
	st.b $t2, $fp, -1309
# br i1  %op314, label %label335, label %label328
	ld.b $t0, $fp, -1309
	bnez $t0, .long_func_label335
	b .long_func_label328
.long_func_label315:
# %op316 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1316
# store i32  %op316, i32 * %op114
	ld.d $t0, $fp, -632
	ld.w $t1, $fp, -1316
	st.w $t1, $t0, 0
# %op317 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	st.b $t2, $fp, -1317
# %op318 = zext i1  %op317 to i32 
	ld.b $t0, $fp, -1317
	st.w $t0, $fp, -1324
# %op319 = icmp ne i32  %op318, 0
	ld.w $t0, $fp, -1324
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label43
	addi.d $t2, $zero, 0
	b false_label43
true_label43:
	addi.d $t2, $zero, 1
false_label43:
	st.b $t2, $fp, -1325
# br i1  %op319, label %label339, label %label340
	ld.b $t0, $fp, -1325
	bnez $t0, .long_func_label339
	b .long_func_label340
.long_func_label320:
# %op321 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1332
# %op322 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1336
# %op323 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1340
# %op324 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op322
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
	ld.w $t1, $fp, -1336
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1352
# %op325 = load i32 , i32 * %op324
	ld.d $t0, $fp, -1352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1356
# %op326 = mul i32  1, %op325
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1356
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1360
# %op327 = add i32  %op321, %op326
	ld.w $t0, $fp, -1332
	ld.w $t1, $fp, -1360
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1364
# store i32  %op327, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -1364
	st.w $t1, $t0, 0
# br label %label328
	b .long_func_label328
.long_func_label328:
# %op329 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1368
# %op330 = sdiv i32  %op329, 2
	ld.w $t0, $fp, -1368
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1372
# store i32  %op330, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1372
	st.w $t1, $t0, 0
# %op331 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1376
# %op332 = sdiv i32  %op331, 2
	ld.w $t0, $fp, -1376
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1380
# store i32  %op332, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -1380
	st.w $t1, $t0, 0
# %op333 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1384
# %op334 = add i32  %op333, 1
	ld.w $t0, $fp, -1384
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1388
# store i32  %op334, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -1388
	st.w $t1, $t0, 0
# br label %label306
	b .long_func_label306
.long_func_label335:
# %op336 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1392
# %op337 = srem i32  %op336, 2
	ld.w $t0, $fp, -1392
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1396
# %op338 = icmp ne i32  %op337, 0
	ld.w $t0, $fp, -1396
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label44
	addi.d $t2, $zero, 0
	b false_label44
true_label44:
	addi.d $t2, $zero, 1
false_label44:
	st.b $t2, $fp, -1397
# br i1  %op338, label %label320, label %label328
	ld.b $t0, $fp, -1397
	bnez $t0, .long_func_label320
	b .long_func_label328
.long_func_label339:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label345
	b .long_func_label345
.long_func_label340:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op341 = load i32 , i32 * %op114
	ld.d $t0, $fp, -632
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1404
# %op342 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
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
	lu12i.w $t1, 0
	ori $t1, $t1, 1
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1416
# %op343 = load i32 , i32 * %op342
	ld.d $t0, $fp, -1416
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1420
# %op344 = mul i32  %op341, %op343
	ld.w $t0, $fp, -1404
	ld.w $t1, $fp, -1420
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1424
# store i32  %op344, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1424
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label348
	b .long_func_label348
.long_func_label345:
# %op346 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1428
# store i32  %op346, i32 * %op114
	ld.d $t0, $fp, -632
	ld.w $t1, $fp, -1428
	st.w $t1, $t0, 0
# %op347 = load i32 , i32 * %op115
	ld.d $t0, $fp, -648
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1432
# store i32  %op347, i32 * %op112
	ld.d $t0, $fp, -616
	ld.w $t1, $fp, -1432
	st.w $t1, $t0, 0
# br label %label244
	b .long_func_label244
.long_func_label348:
# %op349 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1436
# %op350 = icmp slt i32  %op349, 16
	ld.w $t0, $fp, -1436
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1437
# %op351 = zext i1  %op350 to i32 
	ld.b $t0, $fp, -1437
	st.w $t0, $fp, -1444
# %op352 = icmp ne i32  %op351, 0
	ld.w $t0, $fp, -1444
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label46
	addi.d $t2, $zero, 0
	b false_label46
true_label46:
	addi.d $t2, $zero, 1
false_label46:
	st.b $t2, $fp, -1445
# br i1  %op352, label %label353, label %label357
	ld.b $t0, $fp, -1445
	bnez $t0, .long_func_label353
	b .long_func_label357
.long_func_label353:
# %op354 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1452
# %op355 = srem i32  %op354, 2
	ld.w $t0, $fp, -1452
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1456
# %op356 = icmp ne i32  %op355, 0
	ld.w $t0, $fp, -1456
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label47
	addi.d $t2, $zero, 0
	b false_label47
true_label47:
	addi.d $t2, $zero, 1
false_label47:
	st.b $t2, $fp, -1457
# br i1  %op356, label %label373, label %label366
	ld.b $t0, $fp, -1457
	bnez $t0, .long_func_label373
	b .long_func_label366
.long_func_label357:
# br label %label345
	b .long_func_label345
.long_func_label358:
# %op359 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1464
# %op360 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1468
# %op361 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1472
# %op362 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op360
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
	ld.w $t1, $fp, -1468
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1480
# %op363 = load i32 , i32 * %op362
	ld.d $t0, $fp, -1480
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1484
# %op364 = mul i32  1, %op363
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1484
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1488
# %op365 = add i32  %op359, %op364
	ld.w $t0, $fp, -1464
	ld.w $t1, $fp, -1488
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1492
# store i32  %op365, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -1492
	st.w $t1, $t0, 0
# br label %label366
	b .long_func_label366
.long_func_label366:
# %op367 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1496
# %op368 = sdiv i32  %op367, 2
	ld.w $t0, $fp, -1496
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1500
# store i32  %op368, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1500
	st.w $t1, $t0, 0
# %op369 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1504
# %op370 = sdiv i32  %op369, 2
	ld.w $t0, $fp, -1504
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1508
# store i32  %op370, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -1508
	st.w $t1, $t0, 0
# %op371 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1512
# %op372 = add i32  %op371, 1
	ld.w $t0, $fp, -1512
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1516
# store i32  %op372, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -1516
	st.w $t1, $t0, 0
# br label %label348
	b .long_func_label348
.long_func_label373:
# %op374 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1520
# %op375 = srem i32  %op374, 2
	ld.w $t0, $fp, -1520
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1524
# %op376 = icmp ne i32  %op375, 0
	ld.w $t0, $fp, -1524
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label48
	addi.d $t2, $zero, 0
	b false_label48
true_label48:
	addi.d $t2, $zero, 1
false_label48:
	st.b $t2, $fp, -1525
# br i1  %op376, label %label358, label %label366
	ld.b $t0, $fp, -1525
	bnez $t0, .long_func_label358
	b .long_func_label366
.long_func_label377:
# %op378 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1532
# %op379 = icmp slt i32  %op378, 0
	ld.w $t0, $fp, -1532
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1533
# %op380 = zext i1  %op379 to i32 
	ld.b $t0, $fp, -1533
	st.w $t0, $fp, -1540
# %op381 = icmp ne i32  %op380, 0
	ld.w $t0, $fp, -1540
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label50
	addi.d $t2, $zero, 0
	b false_label50
true_label50:
	addi.d $t2, $zero, 1
false_label50:
	st.b $t2, $fp, -1541
# br i1  %op381, label %label389, label %label390
	ld.b $t0, $fp, -1541
	bnez $t0, .long_func_label389
	b .long_func_label390
.long_func_label382:
# %op383 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1548
# %op384 = icmp sgt i32  %op383, 0
	ld.w $t0, $fp, -1548
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -1549
# %op385 = zext i1  %op384 to i32 
	ld.b $t0, $fp, -1549
	st.w $t0, $fp, -1556
# %op386 = icmp ne i32  %op385, 0
	ld.w $t0, $fp, -1556
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label52
	addi.d $t2, $zero, 0
	b false_label52
true_label52:
	addi.d $t2, $zero, 1
false_label52:
	st.b $t2, $fp, -1557
# br i1  %op386, label %label392, label %label397
	ld.b $t0, $fp, -1557
	bnez $t0, .long_func_label392
	b .long_func_label397
.long_func_label387:
# %op388 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1564
# store i32  %op388, i32 * %op57
	ld.d $t0, $fp, -360
	ld.w $t1, $fp, -1564
	st.w $t1, $t0, 0
# br label %label65
	b .long_func_label65
.long_func_label389:
# store i32  65535, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label391
	b .long_func_label391
.long_func_label390:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label391
	b .long_func_label391
.long_func_label391:
# br label %label387
	b .long_func_label387
.long_func_label392:
# %op393 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1568
# %op394 = icmp sgt i32  %op393, 32767
	ld.w $t0, $fp, -1568
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	st.b $t2, $fp, -1569
# %op395 = zext i1  %op394 to i32 
	ld.b $t0, $fp, -1569
	st.w $t0, $fp, -1576
# %op396 = icmp ne i32  %op395, 0
	ld.w $t0, $fp, -1576
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label54
	addi.d $t2, $zero, 0
	b false_label54
true_label54:
	addi.d $t2, $zero, 1
false_label54:
	st.b $t2, $fp, -1577
# br i1  %op396, label %label400, label %label418
	ld.b $t0, $fp, -1577
	bnez $t0, .long_func_label400
	b .long_func_label418
.long_func_label397:
# %op398 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1584
# store i32  %op398, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -1584
	st.w $t1, $t0, 0
# br label %label399
	b .long_func_label399
.long_func_label399:
# br label %label387
	b .long_func_label387
.long_func_label400:
# %op401 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1588
# %op402 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1592
# %op403 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1596
# %op404 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op402
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
	ld.w $t1, $fp, -1592
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1608
# %op405 = load i32 , i32 * %op404
	ld.d $t0, $fp, -1608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1612
# %op406 = sdiv i32  %op401, %op405
	ld.w $t0, $fp, -1588
	ld.w $t1, $fp, -1612
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1616
# store i32  %op406, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1616
	st.w $t1, $t0, 0
# %op407 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1620
# %op408 = add i32  %op407, 65536
	ld.w $t0, $fp, -1620
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1624
# %op409 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1628
# %op410 = sub i32  15, %op409
	addi.w $t0, $zero, 15
	ld.w $t1, $fp, -1628
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1632
# %op411 = add i32  %op410, 1
	ld.w $t0, $fp, -1632
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1636
# %op412 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1640
# %op413 = sub i32  15, %op412
	addi.w $t0, $zero, 15
	ld.w $t1, $fp, -1640
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1644
# %op414 = add i32  %op413, 1
	ld.w $t0, $fp, -1644
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1648
# %op415 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op411
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
	ld.w $t1, $fp, -1636
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1656
# %op416 = load i32 , i32 * %op415
	ld.d $t0, $fp, -1656
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1660
# %op417 = sub i32  %op408, %op416
	ld.w $t0, $fp, -1624
	ld.w $t1, $fp, -1660
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1664
# store i32  %op417, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -1664
	st.w $t1, $t0, 0
# br label %label425
	b .long_func_label425
.long_func_label418:
# %op419 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1668
# %op420 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1672
# %op421 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1676
# %op422 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op420
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
	ld.w $t1, $fp, -1672
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1688
# %op423 = load i32 , i32 * %op422
	ld.d $t0, $fp, -1688
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1692
# %op424 = sdiv i32  %op419, %op423
	ld.w $t0, $fp, -1668
	ld.w $t1, $fp, -1692
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1696
# store i32  %op424, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -1696
	st.w $t1, $t0, 0
# br label %label425
	b .long_func_label425
.long_func_label425:
# br label %label399
	b .long_func_label399
.long_func_label426:
# %op427 = load i32 , i32 * %op63
	ld.d $t0, $fp, -408
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1700
# %op428 = icmp ne i32  %op427, 0
	ld.w $t0, $fp, -1700
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label55
	addi.d $t2, $zero, 0
	b false_label55
true_label55:
	addi.d $t2, $zero, 1
false_label55:
	st.b $t2, $fp, -1701
# br i1  %op428, label %label429, label %label431
	ld.b $t0, $fp, -1701
	bnez $t0, .long_func_label429
	b .long_func_label431
.long_func_label429:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op430 = load i32 , i32 * %op63
	ld.d $t0, $fp, -408
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1708
# store i32  %op430, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1708
	st.w $t1, $t0, 0
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label439
	b .long_func_label439
.long_func_label431:
# %op432 = load i32 , i32 * %op64
	ld.d $t0, $fp, -424
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1712
# store i32  %op432, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -1712
	st.w $t1, $t0, 0
# %op433 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1716
# store i32  %op433, i32 * %op5
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -1716
	st.w $t1, $t0, 0
# %op434 = load i32 , i32 * %op6
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1720
# store i32  %op434, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1720
	st.w $t1, $t0, 0
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op435 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1724
# %op436 = icmp sge i32  %op435, 15
	ld.w $t0, $fp, -1724
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label56
	addi.d $t2, $zero, 0
	b false_label56
true_label56:
	addi.d $t2, $zero, 1
false_label56:
	st.b $t2, $fp, -1725
# %op437 = zext i1  %op436 to i32 
	ld.b $t0, $fp, -1725
	st.w $t0, $fp, -1732
# %op438 = icmp ne i32  %op437, 0
	ld.w $t0, $fp, -1732
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label57
	addi.d $t2, $zero, 0
	b false_label57
true_label57:
	addi.d $t2, $zero, 1
false_label57:
	st.b $t2, $fp, -1733
# br i1  %op438, label %label792, label %label797
	ld.b $t0, $fp, -1733
	bnez $t0, .long_func_label792
	b .long_func_label797
.long_func_label439:
# %op440 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1740
# %op441 = icmp slt i32  %op440, 16
	ld.w $t0, $fp, -1740
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1741
# %op442 = zext i1  %op441 to i32 
	ld.b $t0, $fp, -1741
	st.w $t0, $fp, -1748
# %op443 = icmp ne i32  %op442, 0
	ld.w $t0, $fp, -1748
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label59
	addi.d $t2, $zero, 0
	b false_label59
true_label59:
	addi.d $t2, $zero, 1
false_label59:
	st.b $t2, $fp, -1749
# br i1  %op443, label %label444, label %label448
	ld.b $t0, $fp, -1749
	bnez $t0, .long_func_label444
	b .long_func_label448
.long_func_label444:
# %op445 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1756
# %op446 = srem i32  %op445, 2
	ld.w $t0, $fp, -1756
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1760
# %op447 = icmp ne i32  %op446, 0
	ld.w $t0, $fp, -1760
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label60
	addi.d $t2, $zero, 0
	b false_label60
true_label60:
	addi.d $t2, $zero, 1
false_label60:
	st.b $t2, $fp, -1761
# br i1  %op447, label %label466, label %label459
	ld.b $t0, $fp, -1761
	bnez $t0, .long_func_label466
	b .long_func_label459
.long_func_label448:
# %op449 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1768
# %op450 = icmp ne i32  %op449, 0
	ld.w $t0, $fp, -1768
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label61
	addi.d $t2, $zero, 0
	b false_label61
true_label61:
	addi.d $t2, $zero, 1
false_label61:
	st.b $t2, $fp, -1769
# br i1  %op450, label %label470, label %label476
	ld.b $t0, $fp, -1769
	bnez $t0, .long_func_label470
	b .long_func_label476
.long_func_label451:
# %op452 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1776
# %op453 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1780
# %op454 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1784
# %op455 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op453
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
	ld.w $t1, $fp, -1780
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1792
# %op456 = load i32 , i32 * %op455
	ld.d $t0, $fp, -1792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1796
# %op457 = mul i32  1, %op456
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1796
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1800
# %op458 = add i32  %op452, %op457
	ld.w $t0, $fp, -1776
	ld.w $t1, $fp, -1800
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1804
# store i32  %op458, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -1804
	st.w $t1, $t0, 0
# br label %label459
	b .long_func_label459
.long_func_label459:
# %op460 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1808
# %op461 = sdiv i32  %op460, 2
	ld.w $t0, $fp, -1808
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1812
# store i32  %op461, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1812
	st.w $t1, $t0, 0
# %op462 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1816
# %op463 = sdiv i32  %op462, 2
	ld.w $t0, $fp, -1816
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1820
# store i32  %op463, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -1820
	st.w $t1, $t0, 0
# %op464 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1824
# %op465 = add i32  %op464, 1
	ld.w $t0, $fp, -1824
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1828
# store i32  %op465, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -1828
	st.w $t1, $t0, 0
# br label %label439
	b .long_func_label439
.long_func_label466:
# %op467 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1832
# %op468 = srem i32  %op467, 2
	ld.w $t0, $fp, -1832
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1836
# %op469 = icmp ne i32  %op468, 0
	ld.w $t0, $fp, -1836
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label62
	addi.d $t2, $zero, 0
	b false_label62
true_label62:
	addi.d $t2, $zero, 1
false_label62:
	st.b $t2, $fp, -1837
# br i1  %op469, label %label451, label %label459
	ld.b $t0, $fp, -1837
	bnez $t0, .long_func_label451
	b .long_func_label459
.long_func_label470:
# %op471 = load i32 , i32 * %op64
	ld.d $t0, $fp, -424
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1844
# %op472 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 2236
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -1856
# store i32  %op471, i32 * %op472
	ld.d $t0, $fp, -1856
	ld.w $t1, $fp, -1844
	st.w $t1, $t0, 0
# %op473 = load i32 , i32 * %op61
	ld.d $t0, $fp, -392
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1864
# %op474 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 2220
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -1872
# store i32  %op473, i32 * %op474
	ld.d $t0, $fp, -1872
	ld.w $t1, $fp, -1864
	st.w $t1, $t0, 0
# %op475 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 2204
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -1888
# br label %label482
	b .long_func_label482
.long_func_label476:
# %op477 = load i32 , i32 * %op61
	ld.d $t0, $fp, -392
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1896
# %op478 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 2188
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -1904
# store i32  %op477, i32 * %op478
	ld.d $t0, $fp, -1904
	ld.w $t1, $fp, -1896
	st.w $t1, $t0, 0
# %op479 = load i32 , i32 * %op61
	ld.d $t0, $fp, -392
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1912
# %op480 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 2172
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -1920
# store i32  %op479, i32 * %op480
	ld.d $t0, $fp, -1920
	ld.w $t1, $fp, -1912
	st.w $t1, $t0, 0
# %op481 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 2156
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -1936
# br label %label610
	b .long_func_label610
.long_func_label482:
# %op483 = load i32 , i32 * %op474
	ld.d $t0, $fp, -1872
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1944
# %op484 = icmp ne i32  %op483, 0
	ld.w $t0, $fp, -1944
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label63
	addi.d $t2, $zero, 0
	b false_label63
true_label63:
	addi.d $t2, $zero, 1
false_label63:
	st.b $t2, $fp, -1945
# br i1  %op484, label %label485, label %label488
	ld.b $t0, $fp, -1945
	bnez $t0, .long_func_label485
	b .long_func_label488
.long_func_label485:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op486 = load i32 , i32 * %op472
	ld.d $t0, $fp, -1856
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1952
# store i32  %op486, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1952
	st.w $t1, $t0, 0
# %op487 = load i32 , i32 * %op474
	ld.d $t0, $fp, -1872
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1956
# store i32  %op487, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -1956
	st.w $t1, $t0, 0
# br label %label491
	b .long_func_label491
.long_func_label488:
# %op489 = load i32 , i32 * %op472
	ld.d $t0, $fp, -1856
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1960
# store i32  %op489, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -1960
	st.w $t1, $t0, 0
# %op490 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1964
# store i32  %op490, i32 * %op64
	ld.d $t0, $fp, -424
	ld.w $t1, $fp, -1964
	st.w $t1, $t0, 0
# br label %label476
	b .long_func_label476
.long_func_label491:
# %op492 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1968
# %op493 = icmp slt i32  %op492, 16
	ld.w $t0, $fp, -1968
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1969
# %op494 = zext i1  %op493 to i32 
	ld.b $t0, $fp, -1969
	st.w $t0, $fp, -1976
# %op495 = icmp ne i32  %op494, 0
	ld.w $t0, $fp, -1976
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label65
	addi.d $t2, $zero, 0
	b false_label65
true_label65:
	addi.d $t2, $zero, 1
false_label65:
	st.b $t2, $fp, -1977
# br i1  %op495, label %label496, label %label500
	ld.b $t0, $fp, -1977
	bnez $t0, .long_func_label496
	b .long_func_label500
.long_func_label496:
# %op497 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1984
# %op498 = srem i32  %op497, 2
	ld.w $t0, $fp, -1984
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1988
# %op499 = icmp ne i32  %op498, 0
	ld.w $t0, $fp, -1988
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label66
	addi.d $t2, $zero, 0
	b false_label66
true_label66:
	addi.d $t2, $zero, 1
false_label66:
	st.b $t2, $fp, -1989
# br i1  %op499, label %label504, label %label510
	ld.b $t0, $fp, -1989
	bnez $t0, .long_func_label504
	b .long_func_label510
.long_func_label500:
# %op501 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1996
# store i32  %op501, i32 * %op475
	ld.d $t0, $fp, -1888
	ld.w $t1, $fp, -1996
	st.w $t1, $t0, 0
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op502 = load i32 , i32 * %op472
	ld.d $t0, $fp, -1856
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2000
# store i32  %op502, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -2000
	st.w $t1, $t0, 0
# %op503 = load i32 , i32 * %op474
	ld.d $t0, $fp, -1872
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2004
# store i32  %op503, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -2004
	st.w $t1, $t0, 0
# br label %label539
	b .long_func_label539
.long_func_label504:
# %op505 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2008
# %op506 = srem i32  %op505, 2
	ld.w $t0, $fp, -2008
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -2012
# %op507 = icmp eq i32  %op506, 0
	ld.w $t0, $fp, -2012
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label67
	addi.d $t2, $zero, 0
	b false_label67
true_label67:
	addi.d $t2, $zero, 1
false_label67:
	st.b $t2, $fp, -2013
# %op508 = zext i1  %op507 to i32 
	ld.b $t0, $fp, -2013
	st.w $t0, $fp, -2020
# %op509 = icmp ne i32  %op508, 0
	ld.w $t0, $fp, -2020
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label68
	addi.d $t2, $zero, 0
	b false_label68
true_label68:
	addi.d $t2, $zero, 1
false_label68:
	st.b $t2, $fp, -2021
# br i1  %op509, label %label521, label %label529
	ld.b $t0, $fp, -2021
	bnez $t0, .long_func_label521
	b .long_func_label529
.long_func_label510:
# %op511 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2028
# %op512 = srem i32  %op511, 2
	ld.w $t0, $fp, -2028
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -2032
# %op513 = icmp ne i32  %op512, 0
	ld.w $t0, $fp, -2032
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label69
	addi.d $t2, $zero, 0
	b false_label69
true_label69:
	addi.d $t2, $zero, 1
false_label69:
	st.b $t2, $fp, -2033
# br i1  %op513, label %label530, label %label538
	ld.b $t0, $fp, -2033
	bnez $t0, .long_func_label530
	b .long_func_label538
.long_func_label514:
# %op515 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2040
# %op516 = sdiv i32  %op515, 2
	ld.w $t0, $fp, -2040
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -2044
# store i32  %op516, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -2044
	st.w $t1, $t0, 0
# %op517 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2048
# %op518 = sdiv i32  %op517, 2
	ld.w $t0, $fp, -2048
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op518, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 2044
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op519 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op520 = add i32  %op519, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op520, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 2036
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label491
	b .long_func_label491
.long_func_label521:
# %op522 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op523 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op524 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op525 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op523
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
	lu12i.w $t1, -1
	ori $t1, $t1, 2028
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op526 = load i32 , i32 * %op525
	lu12i.w $t0, -1
	ori $t0, $t0, 2016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op527 = mul i32  1, %op526
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 2012
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op528 = add i32  %op522, %op527
	lu12i.w $t0, -1
	ori $t0, $t0, 2032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 2008
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op528, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 2004
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label529
	b .long_func_label529
.long_func_label529:
# br label %label514
	b .long_func_label514
.long_func_label530:
# %op531 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op532 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op533 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op534 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op532
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
	lu12i.w $t1, -1
	ori $t1, $t1, 1996
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op535 = load i32 , i32 * %op534
	lu12i.w $t0, -1
	ori $t0, $t0, 1984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op536 = mul i32  1, %op535
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 1980
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op537 = add i32  %op531, %op536
	lu12i.w $t0, -1
	ori $t0, $t0, 2000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1976
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op537, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 1972
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label538
	b .long_func_label538
.long_func_label538:
# br label %label514
	b .long_func_label514
.long_func_label539:
# %op540 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op541 = icmp slt i32  %op540, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 1968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1967
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op542 = zext i1  %op541 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1967
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op543 = icmp ne i32  %op542, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label71
	addi.d $t2, $zero, 0
	b false_label71
true_label71:
	addi.d $t2, $zero, 1
false_label71:
	lu12i.w $t8, -1
	ori $t8, $t8, 1959
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op543, label %label544, label %label548
	lu12i.w $t0, -1
	ori $t0, $t0, 1959
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label544
	b .long_func_label548
.long_func_label544:
# %op545 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op546 = srem i32  %op545, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op547 = icmp ne i32  %op546, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label72
	addi.d $t2, $zero, 0
	b false_label72
true_label72:
	addi.d $t2, $zero, 1
false_label72:
	lu12i.w $t8, -1
	ori $t8, $t8, 1947
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op547, label %label568, label %label561
	lu12i.w $t0, -1
	ori $t0, $t0, 1947
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label568
	b .long_func_label561
.long_func_label548:
# %op549 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op549, i32 * %op474
	ld.d $t0, $fp, -1872
	lu12i.w $t1, -1
	ori $t1, $t1, 1940
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op550 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1939
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op551 = zext i1  %op550 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1939
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op552 = icmp ne i32  %op551, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label74
	addi.d $t2, $zero, 0
	b false_label74
true_label74:
	addi.d $t2, $zero, 1
false_label74:
	lu12i.w $t8, -1
	ori $t8, $t8, 1931
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op552, label %label572, label %label573
	lu12i.w $t0, -1
	ori $t0, $t0, 1931
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label572
	b .long_func_label573
.long_func_label553:
# %op554 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op555 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op556 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op557 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op555
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
	lu12i.w $t1, -1
	ori $t1, $t1, 1920
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op558 = load i32 , i32 * %op557
	lu12i.w $t0, -1
	ori $t0, $t0, 1904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op559 = mul i32  1, %op558
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 1900
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op560 = add i32  %op554, %op559
	lu12i.w $t0, -1
	ori $t0, $t0, 1924
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1896
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op560, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 1892
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label561
	b .long_func_label561
.long_func_label561:
# %op562 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op563 = sdiv i32  %op562, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op563, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 1884
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op564 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op565 = sdiv i32  %op564, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op565, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 1876
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op566 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op567 = add i32  %op566, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op567, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 1868
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label539
	b .long_func_label539
.long_func_label568:
# %op569 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op570 = srem i32  %op569, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op571 = icmp ne i32  %op570, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label75
	addi.d $t2, $zero, 0
	b false_label75
true_label75:
	addi.d $t2, $zero, 1
false_label75:
	lu12i.w $t8, -1
	ori $t8, $t8, 1859
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op571, label %label553, label %label561
	lu12i.w $t0, -1
	ori $t0, $t0, 1859
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label553
	b .long_func_label561
.long_func_label572:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label578
	b .long_func_label578
.long_func_label573:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op574 = load i32 , i32 * %op474
	ld.d $t0, $fp, -1872
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op575 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
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
	lu12i.w $t1, 0
	ori $t1, $t1, 1
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op576 = load i32 , i32 * %op575
	lu12i.w $t0, -1
	ori $t0, $t0, 1840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op577 = mul i32  %op574, %op576
	lu12i.w $t0, -1
	ori $t0, $t0, 1852
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1836
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op577, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 1832
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label581
	b .long_func_label581
.long_func_label578:
# %op579 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op579, i32 * %op474
	ld.d $t0, $fp, -1872
	lu12i.w $t1, -1
	ori $t1, $t1, 1828
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op580 = load i32 , i32 * %op475
	ld.d $t0, $fp, -1888
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op580, i32 * %op472
	ld.d $t0, $fp, -1856
	lu12i.w $t1, -1
	ori $t1, $t1, 1824
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label482
	b .long_func_label482
.long_func_label581:
# %op582 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op583 = icmp slt i32  %op582, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 1820
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1819
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op584 = zext i1  %op583 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1819
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op585 = icmp ne i32  %op584, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label77
	addi.d $t2, $zero, 0
	b false_label77
true_label77:
	addi.d $t2, $zero, 1
false_label77:
	lu12i.w $t8, -1
	ori $t8, $t8, 1811
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op585, label %label586, label %label590
	lu12i.w $t0, -1
	ori $t0, $t0, 1811
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label586
	b .long_func_label590
.long_func_label586:
# %op587 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op588 = srem i32  %op587, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1804
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op589 = icmp ne i32  %op588, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label78
	addi.d $t2, $zero, 0
	b false_label78
true_label78:
	addi.d $t2, $zero, 1
false_label78:
	lu12i.w $t8, -1
	ori $t8, $t8, 1799
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op589, label %label606, label %label599
	lu12i.w $t0, -1
	ori $t0, $t0, 1799
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label606
	b .long_func_label599
.long_func_label590:
# br label %label578
	b .long_func_label578
.long_func_label591:
# %op592 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op593 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op594 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op595 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op593
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
	lu12i.w $t1, -1
	ori $t1, $t1, 1788
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op596 = load i32 , i32 * %op595
	lu12i.w $t0, -1
	ori $t0, $t0, 1776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op597 = mul i32  1, %op596
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 1772
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op598 = add i32  %op592, %op597
	lu12i.w $t0, -1
	ori $t0, $t0, 1792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1768
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op598, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 1764
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label599
	b .long_func_label599
.long_func_label599:
# %op600 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op601 = sdiv i32  %op600, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op601, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 1756
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op602 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op603 = sdiv i32  %op602, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op603, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 1748
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op604 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op605 = add i32  %op604, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op605, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 1740
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label581
	b .long_func_label581
.long_func_label606:
# %op607 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op608 = srem i32  %op607, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op609 = icmp ne i32  %op608, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1732
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label79
	addi.d $t2, $zero, 0
	b false_label79
true_label79:
	addi.d $t2, $zero, 1
false_label79:
	lu12i.w $t8, -1
	ori $t8, $t8, 1731
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op609, label %label591, label %label599
	lu12i.w $t0, -1
	ori $t0, $t0, 1731
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label591
	b .long_func_label599
.long_func_label610:
# %op611 = load i32 , i32 * %op480
	ld.d $t0, $fp, -1920
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op612 = icmp ne i32  %op611, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1724
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label80
	addi.d $t2, $zero, 0
	b false_label80
true_label80:
	addi.d $t2, $zero, 1
false_label80:
	lu12i.w $t8, -1
	ori $t8, $t8, 1723
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op612, label %label613, label %label616
	lu12i.w $t0, -1
	ori $t0, $t0, 1723
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label613
	b .long_func_label616
.long_func_label613:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op614 = load i32 , i32 * %op478
	ld.d $t0, $fp, -1904
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op614, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 1716
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op615 = load i32 , i32 * %op480
	ld.d $t0, $fp, -1920
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op615, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 1712
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label624
	b .long_func_label624
.long_func_label616:
# %op617 = load i32 , i32 * %op478
	ld.d $t0, $fp, -1904
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op617, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 1708
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op618 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op618, i32 * %op61
	ld.d $t0, $fp, -392
	lu12i.w $t1, -1
	ori $t1, $t1, 1704
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op619 = load i32 , i32 * %op63
	ld.d $t0, $fp, -408
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op619, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 1700
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op620 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op621 = icmp sge i32  %op620, 15
	lu12i.w $t0, -1
	ori $t0, $t0, 1696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label81
	addi.d $t2, $zero, 0
	b false_label81
true_label81:
	addi.d $t2, $zero, 1
false_label81:
	lu12i.w $t8, -1
	ori $t8, $t8, 1695
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op622 = zext i1  %op621 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1695
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op623 = icmp ne i32  %op622, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label82
	addi.d $t2, $zero, 0
	b false_label82
true_label82:
	addi.d $t2, $zero, 1
false_label82:
	lu12i.w $t8, -1
	ori $t8, $t8, 1687
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op623, label %label743, label %label748
	lu12i.w $t0, -1
	ori $t0, $t0, 1687
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label743
	b .long_func_label748
.long_func_label624:
# %op625 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op626 = icmp slt i32  %op625, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 1680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1679
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op627 = zext i1  %op626 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1679
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op628 = icmp ne i32  %op627, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label84
	addi.d $t2, $zero, 0
	b false_label84
true_label84:
	addi.d $t2, $zero, 1
false_label84:
	lu12i.w $t8, -1
	ori $t8, $t8, 1671
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op628, label %label629, label %label633
	lu12i.w $t0, -1
	ori $t0, $t0, 1671
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label629
	b .long_func_label633
.long_func_label629:
# %op630 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op631 = srem i32  %op630, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op632 = icmp ne i32  %op631, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1660
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label85
	addi.d $t2, $zero, 0
	b false_label85
true_label85:
	addi.d $t2, $zero, 1
false_label85:
	lu12i.w $t8, -1
	ori $t8, $t8, 1659
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op632, label %label637, label %label643
	lu12i.w $t0, -1
	ori $t0, $t0, 1659
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label637
	b .long_func_label643
.long_func_label633:
# %op634 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1652
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op634, i32 * %op481
	ld.d $t0, $fp, -1936
	lu12i.w $t1, -1
	ori $t1, $t1, 1652
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op635 = load i32 , i32 * %op478
	ld.d $t0, $fp, -1904
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op635, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 1648
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op636 = load i32 , i32 * %op480
	ld.d $t0, $fp, -1920
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op636, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 1644
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label672
	b .long_func_label672
.long_func_label637:
# %op638 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op639 = srem i32  %op638, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1636
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op640 = icmp eq i32  %op639, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1636
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label86
	addi.d $t2, $zero, 0
	b false_label86
true_label86:
	addi.d $t2, $zero, 1
false_label86:
	lu12i.w $t8, -1
	ori $t8, $t8, 1635
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op641 = zext i1  %op640 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1635
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op642 = icmp ne i32  %op641, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1628
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label87
	addi.d $t2, $zero, 0
	b false_label87
true_label87:
	addi.d $t2, $zero, 1
false_label87:
	lu12i.w $t8, -1
	ori $t8, $t8, 1627
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op642, label %label654, label %label662
	lu12i.w $t0, -1
	ori $t0, $t0, 1627
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label654
	b .long_func_label662
.long_func_label643:
# %op644 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op645 = srem i32  %op644, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op646 = icmp ne i32  %op645, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label88
	addi.d $t2, $zero, 0
	b false_label88
true_label88:
	addi.d $t2, $zero, 1
false_label88:
	lu12i.w $t8, -1
	ori $t8, $t8, 1615
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op646, label %label663, label %label671
	lu12i.w $t0, -1
	ori $t0, $t0, 1615
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label663
	b .long_func_label671
.long_func_label647:
# %op648 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op649 = sdiv i32  %op648, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op649, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 1604
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op650 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op651 = sdiv i32  %op650, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op651, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 1596
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op652 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op653 = add i32  %op652, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op653, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 1588
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label624
	b .long_func_label624
.long_func_label654:
# %op655 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op656 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op657 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op658 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op656
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
	lu12i.w $t1, -1
	ori $t1, $t1, 1580
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op659 = load i32 , i32 * %op658
	lu12i.w $t0, -1
	ori $t0, $t0, 1568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1564
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op660 = mul i32  1, %op659
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 1564
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op661 = add i32  %op655, %op660
	lu12i.w $t0, -1
	ori $t0, $t0, 1584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1560
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1556
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op661, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 1556
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label662
	b .long_func_label662
.long_func_label662:
# br label %label647
	b .long_func_label647
.long_func_label663:
# %op664 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op665 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1548
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op666 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op667 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op665
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
	lu12i.w $t1, -1
	ori $t1, $t1, 1548
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op668 = load i32 , i32 * %op667
	lu12i.w $t0, -1
	ori $t0, $t0, 1536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op669 = mul i32  1, %op668
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 1532
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op670 = add i32  %op664, %op669
	lu12i.w $t0, -1
	ori $t0, $t0, 1552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1528
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op670, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 1524
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label671
	b .long_func_label671
.long_func_label671:
# br label %label647
	b .long_func_label647
.long_func_label672:
# %op673 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op674 = icmp slt i32  %op673, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 1520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1519
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op675 = zext i1  %op674 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1519
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op676 = icmp ne i32  %op675, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label90
	addi.d $t2, $zero, 0
	b false_label90
true_label90:
	addi.d $t2, $zero, 1
false_label90:
	lu12i.w $t8, -1
	ori $t8, $t8, 1511
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op676, label %label677, label %label681
	lu12i.w $t0, -1
	ori $t0, $t0, 1511
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label677
	b .long_func_label681
.long_func_label677:
# %op678 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op679 = srem i32  %op678, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op680 = icmp ne i32  %op679, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label91
	addi.d $t2, $zero, 0
	b false_label91
true_label91:
	addi.d $t2, $zero, 1
false_label91:
	lu12i.w $t8, -1
	ori $t8, $t8, 1499
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op680, label %label701, label %label694
	lu12i.w $t0, -1
	ori $t0, $t0, 1499
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label701
	b .long_func_label694
.long_func_label681:
# %op682 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1492
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op682, i32 * %op480
	ld.d $t0, $fp, -1920
	lu12i.w $t1, -1
	ori $t1, $t1, 1492
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op683 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1491
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op684 = zext i1  %op683 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1491
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1484
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op685 = icmp ne i32  %op684, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1484
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label93
	addi.d $t2, $zero, 0
	b false_label93
true_label93:
	addi.d $t2, $zero, 1
false_label93:
	lu12i.w $t8, -1
	ori $t8, $t8, 1483
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op685, label %label705, label %label706
	lu12i.w $t0, -1
	ori $t0, $t0, 1483
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label705
	b .long_func_label706
.long_func_label686:
# %op687 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op688 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op689 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op690 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op688
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
	lu12i.w $t1, -1
	ori $t1, $t1, 1472
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op691 = load i32 , i32 * %op690
	lu12i.w $t0, -1
	ori $t0, $t0, 1456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1452
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op692 = mul i32  1, %op691
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 1452
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op693 = add i32  %op687, %op692
	lu12i.w $t0, -1
	ori $t0, $t0, 1476
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1448
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1444
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op693, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 1444
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label694
	b .long_func_label694
.long_func_label694:
# %op695 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op696 = sdiv i32  %op695, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op696, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 1436
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op697 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op698 = sdiv i32  %op697, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op698, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 1428
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op699 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op700 = add i32  %op699, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op700, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 1420
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label672
	b .long_func_label672
.long_func_label701:
# %op702 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op703 = srem i32  %op702, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op704 = icmp ne i32  %op703, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1412
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label94
	addi.d $t2, $zero, 0
	b false_label94
true_label94:
	addi.d $t2, $zero, 1
false_label94:
	lu12i.w $t8, -1
	ori $t8, $t8, 1411
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op704, label %label686, label %label694
	lu12i.w $t0, -1
	ori $t0, $t0, 1411
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label686
	b .long_func_label694
.long_func_label705:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label711
	b .long_func_label711
.long_func_label706:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op707 = load i32 , i32 * %op480
	ld.d $t0, $fp, -1920
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op708 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
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
	lu12i.w $t1, 0
	ori $t1, $t1, 1
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op709 = load i32 , i32 * %op708
	lu12i.w $t0, -1
	ori $t0, $t0, 1392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1388
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op710 = mul i32  %op707, %op709
	lu12i.w $t0, -1
	ori $t0, $t0, 1404
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1388
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op710, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 1384
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label714
	b .long_func_label714
.long_func_label711:
# %op712 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op712, i32 * %op480
	ld.d $t0, $fp, -1920
	lu12i.w $t1, -1
	ori $t1, $t1, 1380
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op713 = load i32 , i32 * %op481
	ld.d $t0, $fp, -1936
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op713, i32 * %op478
	ld.d $t0, $fp, -1904
	lu12i.w $t1, -1
	ori $t1, $t1, 1376
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label610
	b .long_func_label610
.long_func_label714:
# %op715 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op716 = icmp slt i32  %op715, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 1372
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1371
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op717 = zext i1  %op716 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1371
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op718 = icmp ne i32  %op717, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1364
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label96
	addi.d $t2, $zero, 0
	b false_label96
true_label96:
	addi.d $t2, $zero, 1
false_label96:
	lu12i.w $t8, -1
	ori $t8, $t8, 1363
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op718, label %label719, label %label723
	lu12i.w $t0, -1
	ori $t0, $t0, 1363
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label719
	b .long_func_label723
.long_func_label719:
# %op720 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op721 = srem i32  %op720, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1356
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op722 = icmp ne i32  %op721, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label97
	addi.d $t2, $zero, 0
	b false_label97
true_label97:
	addi.d $t2, $zero, 1
false_label97:
	lu12i.w $t8, -1
	ori $t8, $t8, 1351
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op722, label %label739, label %label732
	lu12i.w $t0, -1
	ori $t0, $t0, 1351
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label739
	b .long_func_label732
.long_func_label723:
# br label %label711
	b .long_func_label711
.long_func_label724:
# %op725 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op726 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1340
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op727 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op728 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op726
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
	lu12i.w $t1, -1
	ori $t1, $t1, 1340
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op729 = load i32 , i32 * %op728
	lu12i.w $t0, -1
	ori $t0, $t0, 1328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op730 = mul i32  1, %op729
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 1324
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op731 = add i32  %op725, %op730
	lu12i.w $t0, -1
	ori $t0, $t0, 1344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1320
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1316
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op731, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 1316
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label732
	b .long_func_label732
.long_func_label732:
# %op733 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op734 = sdiv i32  %op733, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op734, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 1308
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op735 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op736 = sdiv i32  %op735, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1300
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op736, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 1300
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op737 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op738 = add i32  %op737, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1292
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op738, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 1292
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label714
	b .long_func_label714
.long_func_label739:
# %op740 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op741 = srem i32  %op740, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1284
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op742 = icmp ne i32  %op741, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1284
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label98
	addi.d $t2, $zero, 0
	b false_label98
true_label98:
	addi.d $t2, $zero, 1
false_label98:
	lu12i.w $t8, -1
	ori $t8, $t8, 1283
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op742, label %label724, label %label732
	lu12i.w $t0, -1
	ori $t0, $t0, 1283
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label724
	b .long_func_label732
.long_func_label743:
# %op744 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1276
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op745 = icmp slt i32  %op744, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1276
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1275
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op746 = zext i1  %op745 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1275
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op747 = icmp ne i32  %op746, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1268
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label100
	addi.d $t2, $zero, 0
	b false_label100
true_label100:
	addi.d $t2, $zero, 1
false_label100:
	lu12i.w $t8, -1
	ori $t8, $t8, 1267
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op747, label %label755, label %label756
	lu12i.w $t0, -1
	ori $t0, $t0, 1267
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label755
	b .long_func_label756
.long_func_label748:
# %op749 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op750 = icmp sgt i32  %op749, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1260
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1259
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op751 = zext i1  %op750 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1259
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op752 = icmp ne i32  %op751, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1252
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label102
	addi.d $t2, $zero, 0
	b false_label102
true_label102:
	addi.d $t2, $zero, 1
false_label102:
	lu12i.w $t8, -1
	ori $t8, $t8, 1251
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op752, label %label758, label %label763
	lu12i.w $t0, -1
	ori $t0, $t0, 1251
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label758
	b .long_func_label763
.long_func_label753:
# %op754 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op754, i32 * %op63
	ld.d $t0, $fp, -408
	lu12i.w $t1, -1
	ori $t1, $t1, 1244
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label426
	b .long_func_label426
.long_func_label755:
# store i32  65535, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label757
	b .long_func_label757
.long_func_label756:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label757
	b .long_func_label757
.long_func_label757:
# br label %label753
	b .long_func_label753
.long_func_label758:
# %op759 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op760 = icmp sgt i32  %op759, 32767
	lu12i.w $t0, -1
	ori $t0, $t0, 1240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1239
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op761 = zext i1  %op760 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1239
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op762 = icmp ne i32  %op761, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label104
	addi.d $t2, $zero, 0
	b false_label104
true_label104:
	addi.d $t2, $zero, 1
false_label104:
	lu12i.w $t8, -1
	ori $t8, $t8, 1231
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op762, label %label766, label %label784
	lu12i.w $t0, -1
	ori $t0, $t0, 1231
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label766
	b .long_func_label784
.long_func_label763:
# %op764 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op764, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 1224
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label765
	b .long_func_label765
.long_func_label765:
# br label %label753
	b .long_func_label753
.long_func_label766:
# %op767 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op768 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op769 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1212
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op770 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op768
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
	lu12i.w $t1, -1
	ori $t1, $t1, 1216
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op771 = load i32 , i32 * %op770
	lu12i.w $t0, -1
	ori $t0, $t0, 1200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op772 = sdiv i32  %op767, %op771
	lu12i.w $t0, -1
	ori $t0, $t0, 1220
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1196
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op772, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 1192
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op773 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1188
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op774 = add i32  %op773, 65536
	lu12i.w $t0, -1
	ori $t0, $t0, 1188
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op775 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op776 = sub i32  15, %op775
	addi.w $t0, $zero, 15
	lu12i.w $t1, -1
	ori $t1, $t1, 1180
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op777 = add i32  %op776, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1172
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op778 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op779 = sub i32  15, %op778
	addi.w $t0, $zero, 15
	lu12i.w $t1, -1
	ori $t1, $t1, 1168
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op780 = add i32  %op779, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1164
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op781 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op777
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
	lu12i.w $t1, -1
	ori $t1, $t1, 1172
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op782 = load i32 , i32 * %op781
	lu12i.w $t0, -1
	ori $t0, $t0, 1152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op783 = sub i32  %op774, %op782
	lu12i.w $t0, -1
	ori $t0, $t0, 1184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1148
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op783, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 1144
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label791
	b .long_func_label791
.long_func_label784:
# %op785 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op786 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op787 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op788 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op786
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
	lu12i.w $t1, -1
	ori $t1, $t1, 1136
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op789 = load i32 , i32 * %op788
	lu12i.w $t0, -1
	ori $t0, $t0, 1120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1116
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op790 = sdiv i32  %op785, %op789
	lu12i.w $t0, -1
	ori $t0, $t0, 1140
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1116
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op790, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 1112
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label791
	b .long_func_label791
.long_func_label791:
# br label %label765
	b .long_func_label765
.long_func_label792:
# %op793 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1108
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op794 = icmp slt i32  %op793, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1108
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1107
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op795 = zext i1  %op794 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1107
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1100
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op796 = icmp ne i32  %op795, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1100
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label106
	addi.d $t2, $zero, 0
	b false_label106
true_label106:
	addi.d $t2, $zero, 1
false_label106:
	lu12i.w $t8, -1
	ori $t8, $t8, 1099
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op796, label %label804, label %label805
	lu12i.w $t0, -1
	ori $t0, $t0, 1099
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label804
	b .long_func_label805
.long_func_label797:
# %op798 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1092
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op799 = icmp sgt i32  %op798, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1092
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1091
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op800 = zext i1  %op799 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1091
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1084
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op801 = icmp ne i32  %op800, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1084
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label108
	addi.d $t2, $zero, 0
	b false_label108
true_label108:
	addi.d $t2, $zero, 1
false_label108:
	lu12i.w $t8, -1
	ori $t8, $t8, 1083
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op801, label %label807, label %label812
	lu12i.w $t0, -1
	ori $t0, $t0, 1083
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label807
	b .long_func_label812
.long_func_label802:
# %op803 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1076
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op803, i32 * %op6
	ld.d $t0, $fp, -120
	lu12i.w $t1, -1
	ori $t1, $t1, 1076
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label8
	b .long_func_label8
.long_func_label804:
# store i32  65535, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label806
	b .long_func_label806
.long_func_label805:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label806
	b .long_func_label806
.long_func_label806:
# br label %label802
	b .long_func_label802
.long_func_label807:
# %op808 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op809 = icmp sgt i32  %op808, 32767
	lu12i.w $t0, -1
	ori $t0, $t0, 1072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1071
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op810 = zext i1  %op809 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1071
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op811 = icmp ne i32  %op810, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label110
	addi.d $t2, $zero, 0
	b false_label110
true_label110:
	addi.d $t2, $zero, 1
false_label110:
	lu12i.w $t8, -1
	ori $t8, $t8, 1063
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op811, label %label815, label %label833
	lu12i.w $t0, -1
	ori $t0, $t0, 1063
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label815
	b .long_func_label833
.long_func_label812:
# %op813 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op813, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 1056
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label814
	b .long_func_label814
.long_func_label814:
# br label %label802
	b .long_func_label802
.long_func_label815:
# %op816 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op817 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op818 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op819 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op817
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
	lu12i.w $t1, -1
	ori $t1, $t1, 1048
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op820 = load i32 , i32 * %op819
	lu12i.w $t0, -1
	ori $t0, $t0, 1032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op821 = sdiv i32  %op816, %op820
	lu12i.w $t0, -1
	ori $t0, $t0, 1052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1028
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op821, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 1024
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op822 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op823 = add i32  %op822, 65536
	lu12i.w $t0, -1
	ori $t0, $t0, 1020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op824 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op825 = sub i32  15, %op824
	addi.w $t0, $zero, 15
	lu12i.w $t1, -1
	ori $t1, $t1, 1012
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op826 = add i32  %op825, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op827 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op828 = sub i32  15, %op827
	addi.w $t0, $zero, 15
	lu12i.w $t1, -1
	ori $t1, $t1, 1000
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op829 = add i32  %op828, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op830 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op826
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
	lu12i.w $t1, -1
	ori $t1, $t1, 1004
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op831 = load i32 , i32 * %op830
	lu12i.w $t0, -1
	ori $t0, $t0, 984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op832 = sub i32  %op823, %op831
	lu12i.w $t0, -1
	ori $t0, $t0, 1016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 980
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op832, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 976
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label840
	b .long_func_label840
.long_func_label833:
# %op834 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op835 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op836 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op837 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op835
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
	lu12i.w $t1, -1
	ori $t1, $t1, 968
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op838 = load i32 , i32 * %op837
	lu12i.w $t0, -1
	ori $t0, $t0, 952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op839 = sdiv i32  %op834, %op838
	lu12i.w $t0, -1
	ori $t0, $t0, 972
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 948
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op839, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 944
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label840
	b .long_func_label840
.long_func_label840:
# br label %label814
	b .long_func_label814
.long_func_label841:
# %op842 = load i32 , i32 * %op20
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op843 = icmp sgt i32  %op842, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 939
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op844 = zext i1  %op843 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 939
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op845 = icmp ne i32  %op844, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label112
	addi.d $t2, $zero, 0
	b false_label112
true_label112:
	addi.d $t2, $zero, 1
false_label112:
	lu12i.w $t8, -1
	ori $t8, $t8, 931
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op845, label %label846, label %label848
	lu12i.w $t0, -1
	ori $t0, $t0, 931
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label846
	b .long_func_label848
.long_func_label846:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op847 = load i32 , i32 * %op20
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op847, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 924
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label852
	b .long_func_label852
.long_func_label848:
# %op849 = load i32 , i32 * %op21
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op849, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 920
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op850 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# call void @putint(i32  %op850)
	lu12i.w $a0, -1
	ori $a0, $a0, 916
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	bl putint
# %op851 = trunc i32  10 to i8 
	addi.w $t0, $zero, 10
	andi $t1, $t0, 255
	lu12i.w $t8, -1
	ori $t8, $t8, 915
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t1, $t8, 0
# call void @putch(i8  %op851)
	lu12i.w $a0, -1
	ori $a0, $a0, 915
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.b $a0, $a0, 0
	bl putch
# store i32  2, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# br label %label1671
	b .long_func_label1671
.long_func_label852:
# %op853 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op854 = icmp slt i32  %op853, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 908
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 907
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op855 = zext i1  %op854 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 907
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op856 = icmp ne i32  %op855, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 900
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label114
	addi.d $t2, $zero, 0
	b false_label114
true_label114:
	addi.d $t2, $zero, 1
false_label114:
	lu12i.w $t8, -1
	ori $t8, $t8, 899
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op856, label %label857, label %label861
	lu12i.w $t0, -1
	ori $t0, $t0, 899
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label857
	b .long_func_label861
.long_func_label857:
# %op858 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op859 = srem i32  %op858, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op860 = icmp ne i32  %op859, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label115
	addi.d $t2, $zero, 0
	b false_label115
true_label115:
	addi.d $t2, $zero, 1
false_label115:
	lu12i.w $t8, -1
	ori $t8, $t8, 887
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op860, label %label879, label %label872
	lu12i.w $t0, -1
	ori $t0, $t0, 887
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label879
	b .long_func_label872
.long_func_label861:
# %op862 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op863 = icmp ne i32  %op862, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label116
	addi.d $t2, $zero, 0
	b false_label116
true_label116:
	addi.d $t2, $zero, 1
false_label116:
	lu12i.w $t8, -1
	ori $t8, $t8, 879
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op863, label %label883, label %label889
	lu12i.w $t0, -1
	ori $t0, $t0, 879
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label883
	b .long_func_label889
.long_func_label864:
# %op865 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op866 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op867 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op868 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op866
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
	lu12i.w $t1, -1
	ori $t1, $t1, 868
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op869 = load i32 , i32 * %op868
	lu12i.w $t0, -1
	ori $t0, $t0, 856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op870 = mul i32  1, %op869
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 852
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op871 = add i32  %op865, %op870
	lu12i.w $t0, -1
	ori $t0, $t0, 872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 848
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op871, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 844
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label872
	b .long_func_label872
.long_func_label872:
# %op873 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op874 = sdiv i32  %op873, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op874, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 836
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op875 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op876 = sdiv i32  %op875, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op876, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 828
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op877 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op878 = add i32  %op877, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op878, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 820
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label852
	b .long_func_label852
.long_func_label879:
# %op880 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op881 = srem i32  %op880, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op882 = icmp ne i32  %op881, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label117
	addi.d $t2, $zero, 0
	b false_label117
true_label117:
	addi.d $t2, $zero, 1
false_label117:
	lu12i.w $t8, -1
	ori $t8, $t8, 811
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op882, label %label864, label %label872
	lu12i.w $t0, -1
	ori $t0, $t0, 811
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label864
	b .long_func_label872
.long_func_label883:
# %op884 = load i32 , i32 * %op21
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op885 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 788
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op884, i32 * %op885
	lu12i.w $t0, -1
	ori $t0, $t0, 792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 804
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op886 = load i32 , i32 * %op19
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op887 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 772
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op886, i32 * %op887
	lu12i.w $t0, -1
	ori $t0, $t0, 776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 784
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op888 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 756
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  0, i32 * %op888
	lu12i.w $t0, -1
	ori $t0, $t0, 760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label895
	b .long_func_label895
.long_func_label889:
# %op890 = load i32 , i32 * %op19
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op891 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 740
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op890, i32 * %op891
	lu12i.w $t0, -1
	ori $t0, $t0, 744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 752
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op892 = load i32 , i32 * %op19
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op893 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 724
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op892, i32 * %op893
	lu12i.w $t0, -1
	ori $t0, $t0, 728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 736
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op894 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 708
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  0, i32 * %op894
	lu12i.w $t0, -1
	ori $t0, $t0, 712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label1256
	b .long_func_label1256
.long_func_label895:
# %op896 = load i32 , i32 * %op887
	lu12i.w $t0, -1
	ori $t0, $t0, 776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op897 = icmp ne i32  %op896, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label118
	addi.d $t2, $zero, 0
	b false_label118
true_label118:
	addi.d $t2, $zero, 1
false_label118:
	lu12i.w $t8, -1
	ori $t8, $t8, 703
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op897, label %label898, label %label900
	lu12i.w $t0, -1
	ori $t0, $t0, 703
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label898
	b .long_func_label900
.long_func_label898:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op899 = load i32 , i32 * %op887
	lu12i.w $t0, -1
	ori $t0, $t0, 776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op899, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 696
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label903
	b .long_func_label903
.long_func_label900:
# %op901 = load i32 , i32 * %op888
	lu12i.w $t0, -1
	ori $t0, $t0, 760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op901, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 692
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op902 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op902, i32 * %op21
	ld.d $t0, $fp, -216
	lu12i.w $t1, -1
	ori $t1, $t1, 688
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label889
	b .long_func_label889
.long_func_label903:
# %op904 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op905 = icmp slt i32  %op904, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 684
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 683
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op906 = zext i1  %op905 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 683
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op907 = icmp ne i32  %op906, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 676
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label120
	addi.d $t2, $zero, 0
	b false_label120
true_label120:
	addi.d $t2, $zero, 1
false_label120:
	lu12i.w $t8, -1
	ori $t8, $t8, 675
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op907, label %label908, label %label912
	lu12i.w $t0, -1
	ori $t0, $t0, 675
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label908
	b .long_func_label912
.long_func_label908:
# %op909 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op910 = srem i32  %op909, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 668
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op911 = icmp ne i32  %op910, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label121
	addi.d $t2, $zero, 0
	b false_label121
true_label121:
	addi.d $t2, $zero, 1
false_label121:
	lu12i.w $t8, -1
	ori $t8, $t8, 663
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op911, label %label930, label %label923
	lu12i.w $t0, -1
	ori $t0, $t0, 663
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label930
	b .long_func_label923
.long_func_label912:
# %op913 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op914 = icmp ne i32  %op913, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label122
	addi.d $t2, $zero, 0
	b false_label122
true_label122:
	addi.d $t2, $zero, 1
false_label122:
	lu12i.w $t8, -1
	ori $t8, $t8, 655
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op914, label %label934, label %label940
	lu12i.w $t0, -1
	ori $t0, $t0, 655
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label934
	b .long_func_label940
.long_func_label915:
# %op916 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op917 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op918 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op919 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op917
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
	lu12i.w $t1, -1
	ori $t1, $t1, 644
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op920 = load i32 , i32 * %op919
	lu12i.w $t0, -1
	ori $t0, $t0, 632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op921 = mul i32  1, %op920
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 628
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op922 = add i32  %op916, %op921
	lu12i.w $t0, -1
	ori $t0, $t0, 648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 624
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op922, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 620
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label923
	b .long_func_label923
.long_func_label923:
# %op924 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op925 = sdiv i32  %op924, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op925, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 612
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op926 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op927 = sdiv i32  %op926, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op927, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 604
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op928 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op929 = add i32  %op928, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op929, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 596
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label903
	b .long_func_label903
.long_func_label930:
# %op931 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op932 = srem i32  %op931, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op933 = icmp ne i32  %op932, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 588
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label123
	addi.d $t2, $zero, 0
	b false_label123
true_label123:
	addi.d $t2, $zero, 1
false_label123:
	lu12i.w $t8, -1
	ori $t8, $t8, 587
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op933, label %label915, label %label923
	lu12i.w $t0, -1
	ori $t0, $t0, 587
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label915
	b .long_func_label923
.long_func_label934:
# %op935 = load i32 , i32 * %op888
	lu12i.w $t0, -1
	ori $t0, $t0, 760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op936 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 564
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op935, i32 * %op936
	lu12i.w $t0, -1
	ori $t0, $t0, 568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 580
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op937 = load i32 , i32 * %op885
	lu12i.w $t0, -1
	ori $t0, $t0, 792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op938 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 548
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op937, i32 * %op938
	lu12i.w $t0, -1
	ori $t0, $t0, 552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 560
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op939 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 532
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# br label %label946
	b .long_func_label946
.long_func_label940:
# %op941 = load i32 , i32 * %op885
	lu12i.w $t0, -1
	ori $t0, $t0, 792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op942 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 516
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op941, i32 * %op942
	lu12i.w $t0, -1
	ori $t0, $t0, 520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 528
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op943 = load i32 , i32 * %op885
	lu12i.w $t0, -1
	ori $t0, $t0, 792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op944 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op943, i32 * %op944
	lu12i.w $t0, -1
	ori $t0, $t0, 504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 512
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op945 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 484
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# br label %label1074
	b .long_func_label1074
.long_func_label946:
# %op947 = load i32 , i32 * %op938
	lu12i.w $t0, -1
	ori $t0, $t0, 552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op948 = icmp ne i32  %op947, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label124
	addi.d $t2, $zero, 0
	b false_label124
true_label124:
	addi.d $t2, $zero, 1
false_label124:
	lu12i.w $t8, -1
	ori $t8, $t8, 479
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op948, label %label949, label %label952
	lu12i.w $t0, -1
	ori $t0, $t0, 479
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label949
	b .long_func_label952
.long_func_label949:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op950 = load i32 , i32 * %op936
	lu12i.w $t0, -1
	ori $t0, $t0, 568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op950, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 472
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op951 = load i32 , i32 * %op938
	lu12i.w $t0, -1
	ori $t0, $t0, 552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op951, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 468
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label955
	b .long_func_label955
.long_func_label952:
# %op953 = load i32 , i32 * %op936
	lu12i.w $t0, -1
	ori $t0, $t0, 568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op953, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 464
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op954 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 460
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op954, i32 * %op888
	lu12i.w $t0, -1
	ori $t0, $t0, 760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 460
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label940
	b .long_func_label940
.long_func_label955:
# %op956 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op957 = icmp slt i32  %op956, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 455
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op958 = zext i1  %op957 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 455
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op959 = icmp ne i32  %op958, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label126
	addi.d $t2, $zero, 0
	b false_label126
true_label126:
	addi.d $t2, $zero, 1
false_label126:
	lu12i.w $t8, -1
	ori $t8, $t8, 447
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op959, label %label960, label %label964
	lu12i.w $t0, -1
	ori $t0, $t0, 447
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label960
	b .long_func_label964
.long_func_label960:
# %op961 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op962 = srem i32  %op961, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op963 = icmp ne i32  %op962, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 436
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label127
	addi.d $t2, $zero, 0
	b false_label127
true_label127:
	addi.d $t2, $zero, 1
false_label127:
	lu12i.w $t8, -1
	ori $t8, $t8, 435
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op963, label %label968, label %label974
	lu12i.w $t0, -1
	ori $t0, $t0, 435
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label968
	b .long_func_label974
.long_func_label964:
# %op965 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op965, i32 * %op939
	lu12i.w $t0, -1
	ori $t0, $t0, 536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 428
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op966 = load i32 , i32 * %op936
	lu12i.w $t0, -1
	ori $t0, $t0, 568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op966, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 424
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op967 = load i32 , i32 * %op938
	lu12i.w $t0, -1
	ori $t0, $t0, 552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op967, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 420
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1003
	b .long_func_label1003
.long_func_label968:
# %op969 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op970 = srem i32  %op969, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op971 = icmp eq i32  %op970, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 412
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label128
	addi.d $t2, $zero, 0
	b false_label128
true_label128:
	addi.d $t2, $zero, 1
false_label128:
	lu12i.w $t8, -1
	ori $t8, $t8, 411
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op972 = zext i1  %op971 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 411
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op973 = icmp ne i32  %op972, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 404
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label129
	addi.d $t2, $zero, 0
	b false_label129
true_label129:
	addi.d $t2, $zero, 1
false_label129:
	lu12i.w $t8, -1
	ori $t8, $t8, 403
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op973, label %label985, label %label993
	lu12i.w $t0, -1
	ori $t0, $t0, 403
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label985
	b .long_func_label993
.long_func_label974:
# %op975 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 396
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op976 = srem i32  %op975, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 396
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op977 = icmp ne i32  %op976, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label130
	addi.d $t2, $zero, 0
	b false_label130
true_label130:
	addi.d $t2, $zero, 1
false_label130:
	lu12i.w $t8, -1
	ori $t8, $t8, 391
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op977, label %label994, label %label1002
	lu12i.w $t0, -1
	ori $t0, $t0, 391
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label994
	b .long_func_label1002
.long_func_label978:
# %op979 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op980 = sdiv i32  %op979, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op980, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 380
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op981 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op982 = sdiv i32  %op981, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op982, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 372
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op983 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op984 = add i32  %op983, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op984, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 364
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label955
	b .long_func_label955
.long_func_label985:
# %op986 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op987 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op988 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op989 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op987
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
	lu12i.w $t1, -1
	ori $t1, $t1, 356
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op990 = load i32 , i32 * %op989
	lu12i.w $t0, -1
	ori $t0, $t0, 344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 340
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op991 = mul i32  1, %op990
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 340
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op992 = add i32  %op986, %op991
	lu12i.w $t0, -1
	ori $t0, $t0, 360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 336
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 332
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op992, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 332
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label993
	b .long_func_label993
.long_func_label993:
# br label %label978
	b .long_func_label978
.long_func_label994:
# %op995 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op996 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op997 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op998 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op996
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
	lu12i.w $t1, -1
	ori $t1, $t1, 324
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op999 = load i32 , i32 * %op998
	lu12i.w $t0, -1
	ori $t0, $t0, 312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1000 = mul i32  1, %op999
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 308
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1001 = add i32  %op995, %op1000
	lu12i.w $t0, -1
	ori $t0, $t0, 328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 304
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 300
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1001, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 300
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1002
	b .long_func_label1002
.long_func_label1002:
# br label %label978
	b .long_func_label978
.long_func_label1003:
# %op1004 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1005 = icmp slt i32  %op1004, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 295
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1006 = zext i1  %op1005 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 295
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1007 = icmp ne i32  %op1006, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label132
	addi.d $t2, $zero, 0
	b false_label132
true_label132:
	addi.d $t2, $zero, 1
false_label132:
	lu12i.w $t8, -1
	ori $t8, $t8, 287
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1007, label %label1008, label %label1012
	lu12i.w $t0, -1
	ori $t0, $t0, 287
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1008
	b .long_func_label1012
.long_func_label1008:
# %op1009 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1010 = srem i32  %op1009, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 276
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1011 = icmp ne i32  %op1010, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 276
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label133
	addi.d $t2, $zero, 0
	b false_label133
true_label133:
	addi.d $t2, $zero, 1
false_label133:
	lu12i.w $t8, -1
	ori $t8, $t8, 275
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1011, label %label1032, label %label1025
	lu12i.w $t0, -1
	ori $t0, $t0, 275
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1032
	b .long_func_label1025
.long_func_label1012:
# %op1013 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1013, i32 * %op938
	lu12i.w $t0, -1
	ori $t0, $t0, 552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 268
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1014 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 267
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1015 = zext i1  %op1014 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 267
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1016 = icmp ne i32  %op1015, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 260
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label135
	addi.d $t2, $zero, 0
	b false_label135
true_label135:
	addi.d $t2, $zero, 1
false_label135:
	lu12i.w $t8, -1
	ori $t8, $t8, 259
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1016, label %label1036, label %label1037
	lu12i.w $t0, -1
	ori $t0, $t0, 259
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1036
	b .long_func_label1037
.long_func_label1017:
# %op1018 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1019 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1020 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1021 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1019
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
	lu12i.w $t1, -1
	ori $t1, $t1, 248
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1022 = load i32 , i32 * %op1021
	lu12i.w $t0, -1
	ori $t0, $t0, 232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1023 = mul i32  1, %op1022
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 228
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1024 = add i32  %op1018, %op1023
	lu12i.w $t0, -1
	ori $t0, $t0, 252
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 224
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1024, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 220
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1025
	b .long_func_label1025
.long_func_label1025:
# %op1026 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1027 = sdiv i32  %op1026, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 216
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 212
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1027, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 212
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1028 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1029 = sdiv i32  %op1028, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 204
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1029, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 204
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1030 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1031 = add i32  %op1030, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1031, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 196
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1003
	b .long_func_label1003
.long_func_label1032:
# %op1033 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1034 = srem i32  %op1033, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 188
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1035 = icmp ne i32  %op1034, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 188
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label136
	addi.d $t2, $zero, 0
	b false_label136
true_label136:
	addi.d $t2, $zero, 1
false_label136:
	lu12i.w $t8, -1
	ori $t8, $t8, 187
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1035, label %label1017, label %label1025
	lu12i.w $t0, -1
	ori $t0, $t0, 187
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1017
	b .long_func_label1025
.long_func_label1036:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label1042
	b .long_func_label1042
.long_func_label1037:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1038 = load i32 , i32 * %op938
	lu12i.w $t0, -1
	ori $t0, $t0, 552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1039 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
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
	lu12i.w $t1, 0
	ori $t1, $t1, 1
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1040 = load i32 , i32 * %op1039
	lu12i.w $t0, -1
	ori $t0, $t0, 168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1041 = mul i32  %op1038, %op1040
	lu12i.w $t0, -1
	ori $t0, $t0, 180
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 164
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1041, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 160
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label1045
	b .long_func_label1045
.long_func_label1042:
# %op1043 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1043, i32 * %op938
	lu12i.w $t0, -1
	ori $t0, $t0, 552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 156
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1044 = load i32 , i32 * %op939
	lu12i.w $t0, -1
	ori $t0, $t0, 536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1044, i32 * %op936
	lu12i.w $t0, -1
	ori $t0, $t0, 568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 152
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label946
	b .long_func_label946
.long_func_label1045:
# %op1046 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1047 = icmp slt i32  %op1046, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 148
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 147
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1048 = zext i1  %op1047 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 147
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1049 = icmp ne i32  %op1048, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 140
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label138
	addi.d $t2, $zero, 0
	b false_label138
true_label138:
	addi.d $t2, $zero, 1
false_label138:
	lu12i.w $t8, -1
	ori $t8, $t8, 139
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1049, label %label1050, label %label1054
	lu12i.w $t0, -1
	ori $t0, $t0, 139
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1050
	b .long_func_label1054
.long_func_label1050:
# %op1051 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1052 = srem i32  %op1051, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 132
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1053 = icmp ne i32  %op1052, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label139
	addi.d $t2, $zero, 0
	b false_label139
true_label139:
	addi.d $t2, $zero, 1
false_label139:
	lu12i.w $t8, -1
	ori $t8, $t8, 127
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1053, label %label1070, label %label1063
	lu12i.w $t0, -1
	ori $t0, $t0, 127
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1070
	b .long_func_label1063
.long_func_label1054:
# br label %label1042
	b .long_func_label1042
.long_func_label1055:
# %op1056 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1057 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 116
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1058 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1059 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1057
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
	lu12i.w $t1, -1
	ori $t1, $t1, 116
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1060 = load i32 , i32 * %op1059
	lu12i.w $t0, -1
	ori $t0, $t0, 104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 100
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1061 = mul i32  1, %op1060
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 100
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 96
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1062 = add i32  %op1056, %op1061
	lu12i.w $t0, -1
	ori $t0, $t0, 120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 96
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 92
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1062, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 92
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1063
	b .long_func_label1063
.long_func_label1063:
# %op1064 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 88
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1065 = sdiv i32  %op1064, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 88
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 84
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1065, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 84
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1066 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 80
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1067 = sdiv i32  %op1066, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 80
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 76
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1067, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 76
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1068 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 72
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1069 = add i32  %op1068, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 72
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 68
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1069, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 68
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1045
	b .long_func_label1045
.long_func_label1070:
# %op1071 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 64
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1072 = srem i32  %op1071, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 64
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 60
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1073 = icmp ne i32  %op1072, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 60
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label140
	addi.d $t2, $zero, 0
	b false_label140
true_label140:
	addi.d $t2, $zero, 1
false_label140:
	lu12i.w $t8, -1
	ori $t8, $t8, 59
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1073, label %label1055, label %label1063
	lu12i.w $t0, -1
	ori $t0, $t0, 59
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1055
	b .long_func_label1063
.long_func_label1074:
# %op1075 = load i32 , i32 * %op944
	lu12i.w $t0, -1
	ori $t0, $t0, 504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 52
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1076 = icmp ne i32  %op1075, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 52
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label141
	addi.d $t2, $zero, 0
	b false_label141
true_label141:
	addi.d $t2, $zero, 1
false_label141:
	lu12i.w $t8, -1
	ori $t8, $t8, 51
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1076, label %label1077, label %label1080
	lu12i.w $t0, -1
	ori $t0, $t0, 51
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1077
	b .long_func_label1080
.long_func_label1077:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1078 = load i32 , i32 * %op942
	lu12i.w $t0, -1
	ori $t0, $t0, 520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 44
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1078, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 44
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1079 = load i32 , i32 * %op944
	lu12i.w $t0, -1
	ori $t0, $t0, 504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 40
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1079, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 40
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1088
	b .long_func_label1088
.long_func_label1080:
# %op1081 = load i32 , i32 * %op942
	lu12i.w $t0, -1
	ori $t0, $t0, 520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 36
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1081, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 36
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1082 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 32
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1082, i32 * %op885
	lu12i.w $t0, -1
	ori $t0, $t0, 792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 32
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1083 = load i32 , i32 * %op887
	lu12i.w $t0, -1
	ori $t0, $t0, 776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 28
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1083, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 28
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op1084 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 24
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1085 = icmp sge i32  %op1084, 15
	lu12i.w $t0, -1
	ori $t0, $t0, 24
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label142
	addi.d $t2, $zero, 0
	b false_label142
true_label142:
	addi.d $t2, $zero, 1
false_label142:
	lu12i.w $t8, -1
	ori $t8, $t8, 23
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1086 = zext i1  %op1085 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 23
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 16
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1087 = icmp ne i32  %op1086, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 16
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label143
	addi.d $t2, $zero, 0
	b false_label143
true_label143:
	addi.d $t2, $zero, 1
false_label143:
	lu12i.w $t8, -1
	ori $t8, $t8, 15
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1087, label %label1207, label %label1212
	lu12i.w $t0, -1
	ori $t0, $t0, 15
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1207
	b .long_func_label1212
.long_func_label1088:
# %op1089 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 8
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1090 = icmp slt i32  %op1089, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 8
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 7
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1091 = zext i1  %op1090 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 7
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 0
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1092 = icmp ne i32  %op1091, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 0
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label145
	addi.d $t2, $zero, 0
	b false_label145
true_label145:
	addi.d $t2, $zero, 1
false_label145:
	lu12i.w $t8, -2
	ori $t8, $t8, 4095
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1092, label %label1093, label %label1097
	lu12i.w $t0, -2
	ori $t0, $t0, 4095
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1093
	b .long_func_label1097
.long_func_label1093:
# %op1094 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1095 = srem i32  %op1094, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 4088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4084
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1096 = icmp ne i32  %op1095, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4084
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label146
	addi.d $t2, $zero, 0
	b false_label146
true_label146:
	addi.d $t2, $zero, 1
false_label146:
	lu12i.w $t8, -2
	ori $t8, $t8, 4083
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1096, label %label1101, label %label1107
	lu12i.w $t0, -2
	ori $t0, $t0, 4083
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1101
	b .long_func_label1107
.long_func_label1097:
# %op1098 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4076
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1098, i32 * %op945
	lu12i.w $t0, -1
	ori $t0, $t0, 488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 4076
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1099 = load i32 , i32 * %op942
	lu12i.w $t0, -1
	ori $t0, $t0, 520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1099, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 4072
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1100 = load i32 , i32 * %op944
	lu12i.w $t0, -1
	ori $t0, $t0, 504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4068
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1100, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 4068
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1136
	b .long_func_label1136
.long_func_label1101:
# %op1102 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1103 = srem i32  %op1102, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 4064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1104 = icmp eq i32  %op1103, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label147
	addi.d $t2, $zero, 0
	b false_label147
true_label147:
	addi.d $t2, $zero, 1
false_label147:
	lu12i.w $t8, -2
	ori $t8, $t8, 4059
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1105 = zext i1  %op1104 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 4059
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1106 = icmp ne i32  %op1105, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label148
	addi.d $t2, $zero, 0
	b false_label148
true_label148:
	addi.d $t2, $zero, 1
false_label148:
	lu12i.w $t8, -2
	ori $t8, $t8, 4051
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1106, label %label1118, label %label1126
	lu12i.w $t0, -2
	ori $t0, $t0, 4051
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1118
	b .long_func_label1126
.long_func_label1107:
# %op1108 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1109 = srem i32  %op1108, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 4044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1110 = icmp ne i32  %op1109, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label149
	addi.d $t2, $zero, 0
	b false_label149
true_label149:
	addi.d $t2, $zero, 1
false_label149:
	lu12i.w $t8, -2
	ori $t8, $t8, 4039
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1110, label %label1127, label %label1135
	lu12i.w $t0, -2
	ori $t0, $t0, 4039
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1127
	b .long_func_label1135
.long_func_label1111:
# %op1112 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1113 = sdiv i32  %op1112, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 4032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1113, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 4028
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1114 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1115 = sdiv i32  %op1114, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 4024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1115, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 4020
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1116 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1117 = add i32  %op1116, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 4016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1117, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 4012
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1088
	b .long_func_label1088
.long_func_label1118:
# %op1119 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1120 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1121 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1122 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1120
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
	lu12i.w $t1, -2
	ori $t1, $t1, 4004
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1123 = load i32 , i32 * %op1122
	lu12i.w $t0, -2
	ori $t0, $t0, 3992
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
# %op1124 = mul i32  1, %op1123
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 3988
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1125 = add i32  %op1119, %op1124
	lu12i.w $t0, -2
	ori $t0, $t0, 4008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3984
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1125, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 3980
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1126
	b .long_func_label1126
.long_func_label1126:
# br label %label1111
	b .long_func_label1111
.long_func_label1127:
# %op1128 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1129 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1130 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1131 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1129
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
	lu12i.w $t1, -2
	ori $t1, $t1, 3972
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1132 = load i32 , i32 * %op1131
	lu12i.w $t0, -2
	ori $t0, $t0, 3960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1133 = mul i32  1, %op1132
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 3956
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1134 = add i32  %op1128, %op1133
	lu12i.w $t0, -2
	ori $t0, $t0, 3976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3952
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1134, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 3948
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1135
	b .long_func_label1135
.long_func_label1135:
# br label %label1111
	b .long_func_label1111
.long_func_label1136:
# %op1137 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1138 = icmp slt i32  %op1137, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 3944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3943
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1139 = zext i1  %op1138 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3943
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1140 = icmp ne i32  %op1139, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label151
	addi.d $t2, $zero, 0
	b false_label151
true_label151:
	addi.d $t2, $zero, 1
false_label151:
	lu12i.w $t8, -2
	ori $t8, $t8, 3935
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1140, label %label1141, label %label1145
	lu12i.w $t0, -2
	ori $t0, $t0, 3935
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1141
	b .long_func_label1145
.long_func_label1141:
# %op1142 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1143 = srem i32  %op1142, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1144 = icmp ne i32  %op1143, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3924
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label152
	addi.d $t2, $zero, 0
	b false_label152
true_label152:
	addi.d $t2, $zero, 1
false_label152:
	lu12i.w $t8, -2
	ori $t8, $t8, 3923
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1144, label %label1165, label %label1158
	lu12i.w $t0, -2
	ori $t0, $t0, 3923
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1165
	b .long_func_label1158
.long_func_label1145:
# %op1146 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1146, i32 * %op944
	lu12i.w $t0, -1
	ori $t0, $t0, 504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3916
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1147 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3915
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1148 = zext i1  %op1147 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3915
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1149 = icmp ne i32  %op1148, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3908
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label154
	addi.d $t2, $zero, 0
	b false_label154
true_label154:
	addi.d $t2, $zero, 1
false_label154:
	lu12i.w $t8, -2
	ori $t8, $t8, 3907
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1149, label %label1169, label %label1170
	lu12i.w $t0, -2
	ori $t0, $t0, 3907
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1169
	b .long_func_label1170
.long_func_label1150:
# %op1151 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1152 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1153 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1154 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1152
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
	lu12i.w $t1, -2
	ori $t1, $t1, 3896
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1155 = load i32 , i32 * %op1154
	lu12i.w $t0, -2
	ori $t0, $t0, 3880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1156 = mul i32  1, %op1155
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 3876
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1157 = add i32  %op1151, %op1156
	lu12i.w $t0, -2
	ori $t0, $t0, 3900
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3872
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1157, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 3868
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1158
	b .long_func_label1158
.long_func_label1158:
# %op1159 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1160 = sdiv i32  %op1159, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1160, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3860
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1161 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1162 = sdiv i32  %op1161, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1162, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 3852
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1163 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1164 = add i32  %op1163, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1164, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 3844
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1136
	b .long_func_label1136
.long_func_label1165:
# %op1166 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1167 = srem i32  %op1166, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1168 = icmp ne i32  %op1167, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3836
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label155
	addi.d $t2, $zero, 0
	b false_label155
true_label155:
	addi.d $t2, $zero, 1
false_label155:
	lu12i.w $t8, -2
	ori $t8, $t8, 3835
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1168, label %label1150, label %label1158
	lu12i.w $t0, -2
	ori $t0, $t0, 3835
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1150
	b .long_func_label1158
.long_func_label1169:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label1175
	b .long_func_label1175
.long_func_label1170:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1171 = load i32 , i32 * %op944
	lu12i.w $t0, -1
	ori $t0, $t0, 504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1172 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
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
	lu12i.w $t1, 0
	ori $t1, $t1, 1
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1173 = load i32 , i32 * %op1172
	lu12i.w $t0, -2
	ori $t0, $t0, 3816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1174 = mul i32  %op1171, %op1173
	lu12i.w $t0, -2
	ori $t0, $t0, 3828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3812
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1174, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3808
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label1178
	b .long_func_label1178
.long_func_label1175:
# %op1176 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1176, i32 * %op944
	lu12i.w $t0, -1
	ori $t0, $t0, 504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3804
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1177 = load i32 , i32 * %op945
	lu12i.w $t0, -1
	ori $t0, $t0, 488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1177, i32 * %op942
	lu12i.w $t0, -1
	ori $t0, $t0, 520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3800
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1074
	b .long_func_label1074
.long_func_label1178:
# %op1179 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1180 = icmp slt i32  %op1179, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 3796
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3795
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1181 = zext i1  %op1180 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3795
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1182 = icmp ne i32  %op1181, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3788
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label157
	addi.d $t2, $zero, 0
	b false_label157
true_label157:
	addi.d $t2, $zero, 1
false_label157:
	lu12i.w $t8, -2
	ori $t8, $t8, 3787
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1182, label %label1183, label %label1187
	lu12i.w $t0, -2
	ori $t0, $t0, 3787
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1183
	b .long_func_label1187
.long_func_label1183:
# %op1184 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1185 = srem i32  %op1184, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3780
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1186 = icmp ne i32  %op1185, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label158
	addi.d $t2, $zero, 0
	b false_label158
true_label158:
	addi.d $t2, $zero, 1
false_label158:
	lu12i.w $t8, -2
	ori $t8, $t8, 3775
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1186, label %label1203, label %label1196
	lu12i.w $t0, -2
	ori $t0, $t0, 3775
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1203
	b .long_func_label1196
.long_func_label1187:
# br label %label1175
	b .long_func_label1175
.long_func_label1188:
# %op1189 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1190 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1191 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1192 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1190
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
	lu12i.w $t1, -2
	ori $t1, $t1, 3764
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1193 = load i32 , i32 * %op1192
	lu12i.w $t0, -2
	ori $t0, $t0, 3752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1194 = mul i32  1, %op1193
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 3748
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1195 = add i32  %op1189, %op1194
	lu12i.w $t0, -2
	ori $t0, $t0, 3768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3744
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1195, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 3740
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1196
	b .long_func_label1196
.long_func_label1196:
# %op1197 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1198 = sdiv i32  %op1197, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1198, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3732
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1199 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1200 = sdiv i32  %op1199, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1200, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 3724
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1201 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1202 = add i32  %op1201, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1202, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 3716
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1178
	b .long_func_label1178
.long_func_label1203:
# %op1204 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1205 = srem i32  %op1204, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1206 = icmp ne i32  %op1205, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3708
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label159
	addi.d $t2, $zero, 0
	b false_label159
true_label159:
	addi.d $t2, $zero, 1
false_label159:
	lu12i.w $t8, -2
	ori $t8, $t8, 3707
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1206, label %label1188, label %label1196
	lu12i.w $t0, -2
	ori $t0, $t0, 3707
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1188
	b .long_func_label1196
.long_func_label1207:
# %op1208 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1209 = icmp slt i32  %op1208, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3700
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3699
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1210 = zext i1  %op1209 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3699
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1211 = icmp ne i32  %op1210, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3692
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label161
	addi.d $t2, $zero, 0
	b false_label161
true_label161:
	addi.d $t2, $zero, 1
false_label161:
	lu12i.w $t8, -2
	ori $t8, $t8, 3691
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1211, label %label1219, label %label1220
	lu12i.w $t0, -2
	ori $t0, $t0, 3691
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1219
	b .long_func_label1220
.long_func_label1212:
# %op1213 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1214 = icmp sgt i32  %op1213, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3684
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3683
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1215 = zext i1  %op1214 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3683
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1216 = icmp ne i32  %op1215, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3676
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label163
	addi.d $t2, $zero, 0
	b false_label163
true_label163:
	addi.d $t2, $zero, 1
false_label163:
	lu12i.w $t8, -2
	ori $t8, $t8, 3675
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1216, label %label1222, label %label1227
	lu12i.w $t0, -2
	ori $t0, $t0, 3675
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1222
	b .long_func_label1227
.long_func_label1217:
# %op1218 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1218, i32 * %op887
	lu12i.w $t0, -1
	ori $t0, $t0, 776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3668
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label895
	b .long_func_label895
.long_func_label1219:
# store i32  65535, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label1221
	b .long_func_label1221
.long_func_label1220:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label1221
	b .long_func_label1221
.long_func_label1221:
# br label %label1217
	b .long_func_label1217
.long_func_label1222:
# %op1223 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1224 = icmp sgt i32  %op1223, 32767
	lu12i.w $t0, -2
	ori $t0, $t0, 3664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3663
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1225 = zext i1  %op1224 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3663
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1226 = icmp ne i32  %op1225, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label165
	addi.d $t2, $zero, 0
	b false_label165
true_label165:
	addi.d $t2, $zero, 1
false_label165:
	lu12i.w $t8, -2
	ori $t8, $t8, 3655
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1226, label %label1230, label %label1248
	lu12i.w $t0, -2
	ori $t0, $t0, 3655
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1230
	b .long_func_label1248
.long_func_label1227:
# %op1228 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1228, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 3648
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1229
	b .long_func_label1229
.long_func_label1229:
# br label %label1217
	b .long_func_label1217
.long_func_label1230:
# %op1231 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1232 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1233 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3636
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1234 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1232
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
	lu12i.w $t1, -2
	ori $t1, $t1, 3640
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1235 = load i32 , i32 * %op1234
	lu12i.w $t0, -2
	ori $t0, $t0, 3624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1236 = sdiv i32  %op1231, %op1235
	lu12i.w $t0, -2
	ori $t0, $t0, 3644
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3620
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1236, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3616
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1237 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1238 = add i32  %op1237, 65536
	lu12i.w $t0, -2
	ori $t0, $t0, 3612
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1239 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1240 = sub i32  15, %op1239
	addi.w $t0, $zero, 15
	lu12i.w $t1, -2
	ori $t1, $t1, 3604
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1241 = add i32  %op1240, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1242 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1243 = sub i32  15, %op1242
	addi.w $t0, $zero, 15
	lu12i.w $t1, -2
	ori $t1, $t1, 3592
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1244 = add i32  %op1243, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3588
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1245 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1241
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
	lu12i.w $t1, -2
	ori $t1, $t1, 3596
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1246 = load i32 , i32 * %op1245
	lu12i.w $t0, -2
	ori $t0, $t0, 3576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3572
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1247 = sub i32  %op1238, %op1246
	lu12i.w $t0, -2
	ori $t0, $t0, 3608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3572
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1247, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 3568
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1255
	b .long_func_label1255
.long_func_label1248:
# %op1249 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3564
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1250 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1251 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3556
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1252 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1250
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
	lu12i.w $t1, -2
	ori $t1, $t1, 3560
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1253 = load i32 , i32 * %op1252
	lu12i.w $t0, -2
	ori $t0, $t0, 3544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1254 = sdiv i32  %op1249, %op1253
	lu12i.w $t0, -2
	ori $t0, $t0, 3564
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3540
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1254, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 3536
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1255
	b .long_func_label1255
.long_func_label1255:
# br label %label1229
	b .long_func_label1229
.long_func_label1256:
# %op1257 = load i32 , i32 * %op893
	lu12i.w $t0, -1
	ori $t0, $t0, 728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1258 = icmp ne i32  %op1257, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3532
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label166
	addi.d $t2, $zero, 0
	b false_label166
true_label166:
	addi.d $t2, $zero, 1
false_label166:
	lu12i.w $t8, -2
	ori $t8, $t8, 3531
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1258, label %label1259, label %label1261
	lu12i.w $t0, -2
	ori $t0, $t0, 3531
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1259
	b .long_func_label1261
.long_func_label1259:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1260 = load i32 , i32 * %op893
	lu12i.w $t0, -1
	ori $t0, $t0, 728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1260, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3524
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label1269
	b .long_func_label1269
.long_func_label1261:
# %op1262 = load i32 , i32 * %op894
	lu12i.w $t0, -1
	ori $t0, $t0, 712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1262, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 3520
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1263 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1263, i32 * %op19
	ld.d $t0, $fp, -184
	lu12i.w $t1, -2
	ori $t1, $t1, 3516
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1264 = load i32 , i32 * %op20
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1264, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3512
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op1265 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1266 = icmp sge i32  %op1265, 15
	lu12i.w $t0, -2
	ori $t0, $t0, 3508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label167
	addi.d $t2, $zero, 0
	b false_label167
true_label167:
	addi.d $t2, $zero, 1
false_label167:
	lu12i.w $t8, -2
	ori $t8, $t8, 3507
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1267 = zext i1  %op1266 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3507
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1268 = icmp ne i32  %op1267, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label168
	addi.d $t2, $zero, 0
	b false_label168
true_label168:
	addi.d $t2, $zero, 1
false_label168:
	lu12i.w $t8, -2
	ori $t8, $t8, 3499
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1268, label %label1622, label %label1627
	lu12i.w $t0, -2
	ori $t0, $t0, 3499
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1622
	b .long_func_label1627
.long_func_label1269:
# %op1270 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3492
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1271 = icmp slt i32  %op1270, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 3492
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3491
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1272 = zext i1  %op1271 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3491
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3484
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1273 = icmp ne i32  %op1272, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3484
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label170
	addi.d $t2, $zero, 0
	b false_label170
true_label170:
	addi.d $t2, $zero, 1
false_label170:
	lu12i.w $t8, -2
	ori $t8, $t8, 3483
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1273, label %label1274, label %label1278
	lu12i.w $t0, -2
	ori $t0, $t0, 3483
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1274
	b .long_func_label1278
.long_func_label1274:
# %op1275 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1276 = srem i32  %op1275, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3476
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1277 = icmp ne i32  %op1276, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3472
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label171
	addi.d $t2, $zero, 0
	b false_label171
true_label171:
	addi.d $t2, $zero, 1
false_label171:
	lu12i.w $t8, -2
	ori $t8, $t8, 3471
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1277, label %label1296, label %label1289
	lu12i.w $t0, -2
	ori $t0, $t0, 3471
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1296
	b .long_func_label1289
.long_func_label1278:
# %op1279 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1280 = icmp ne i32  %op1279, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label172
	addi.d $t2, $zero, 0
	b false_label172
true_label172:
	addi.d $t2, $zero, 1
false_label172:
	lu12i.w $t8, -2
	ori $t8, $t8, 3463
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1280, label %label1300, label %label1306
	lu12i.w $t0, -2
	ori $t0, $t0, 3463
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1300
	b .long_func_label1306
.long_func_label1281:
# %op1282 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1283 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3452
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1284 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1285 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1283
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
	lu12i.w $t1, -2
	ori $t1, $t1, 3452
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1286 = load i32 , i32 * %op1285
	lu12i.w $t0, -2
	ori $t0, $t0, 3440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1287 = mul i32  1, %op1286
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 3436
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1288 = add i32  %op1282, %op1287
	lu12i.w $t0, -2
	ori $t0, $t0, 3456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3432
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1288, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 3428
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1289
	b .long_func_label1289
.long_func_label1289:
# %op1290 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1291 = sdiv i32  %op1290, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1291, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3420
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1292 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1293 = sdiv i32  %op1292, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1293, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 3412
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1294 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1295 = add i32  %op1294, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1295, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 3404
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1269
	b .long_func_label1269
.long_func_label1296:
# %op1297 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1298 = srem i32  %op1297, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3400
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3396
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1299 = icmp ne i32  %op1298, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3396
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label173
	addi.d $t2, $zero, 0
	b false_label173
true_label173:
	addi.d $t2, $zero, 1
false_label173:
	lu12i.w $t8, -2
	ori $t8, $t8, 3395
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1299, label %label1281, label %label1289
	lu12i.w $t0, -2
	ori $t0, $t0, 3395
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1281
	b .long_func_label1289
.long_func_label1300:
# %op1301 = load i32 , i32 * %op894
	lu12i.w $t0, -1
	ori $t0, $t0, 712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3388
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1302 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3372
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op1301, i32 * %op1302
	lu12i.w $t0, -2
	ori $t0, $t0, 3376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3388
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1303 = load i32 , i32 * %op891
	lu12i.w $t0, -1
	ori $t0, $t0, 744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1304 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3356
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op1303, i32 * %op1304
	lu12i.w $t0, -2
	ori $t0, $t0, 3360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3368
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1305 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3340
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# br label %label1312
	b .long_func_label1312
.long_func_label1306:
# %op1307 = load i32 , i32 * %op891
	lu12i.w $t0, -1
	ori $t0, $t0, 744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1308 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3324
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op1307, i32 * %op1308
	lu12i.w $t0, -2
	ori $t0, $t0, 3328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3336
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1309 = load i32 , i32 * %op891
	lu12i.w $t0, -1
	ori $t0, $t0, 744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1310 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3308
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op1309, i32 * %op1310
	lu12i.w $t0, -2
	ori $t0, $t0, 3312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3320
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1311 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3292
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# br label %label1440
	b .long_func_label1440
.long_func_label1312:
# %op1313 = load i32 , i32 * %op1304
	lu12i.w $t0, -2
	ori $t0, $t0, 3360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1314 = icmp ne i32  %op1313, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label174
	addi.d $t2, $zero, 0
	b false_label174
true_label174:
	addi.d $t2, $zero, 1
false_label174:
	lu12i.w $t8, -2
	ori $t8, $t8, 3287
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1314, label %label1315, label %label1318
	lu12i.w $t0, -2
	ori $t0, $t0, 3287
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1315
	b .long_func_label1318
.long_func_label1315:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1316 = load i32 , i32 * %op1302
	lu12i.w $t0, -2
	ori $t0, $t0, 3376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1316, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3280
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1317 = load i32 , i32 * %op1304
	lu12i.w $t0, -2
	ori $t0, $t0, 3360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3276
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1317, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 3276
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1321
	b .long_func_label1321
.long_func_label1318:
# %op1319 = load i32 , i32 * %op1302
	lu12i.w $t0, -2
	ori $t0, $t0, 3376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1319, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 3272
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1320 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1320, i32 * %op894
	lu12i.w $t0, -1
	ori $t0, $t0, 712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3268
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1306
	b .long_func_label1306
.long_func_label1321:
# %op1322 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1323 = icmp slt i32  %op1322, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 3264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3263
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1324 = zext i1  %op1323 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3263
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1325 = icmp ne i32  %op1324, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label176
	addi.d $t2, $zero, 0
	b false_label176
true_label176:
	addi.d $t2, $zero, 1
false_label176:
	lu12i.w $t8, -2
	ori $t8, $t8, 3255
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1325, label %label1326, label %label1330
	lu12i.w $t0, -2
	ori $t0, $t0, 3255
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1326
	b .long_func_label1330
.long_func_label1326:
# %op1327 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1328 = srem i32  %op1327, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3248
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1329 = icmp ne i32  %op1328, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3244
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label177
	addi.d $t2, $zero, 0
	b false_label177
true_label177:
	addi.d $t2, $zero, 1
false_label177:
	lu12i.w $t8, -2
	ori $t8, $t8, 3243
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1329, label %label1334, label %label1340
	lu12i.w $t0, -2
	ori $t0, $t0, 3243
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1334
	b .long_func_label1340
.long_func_label1330:
# %op1331 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3236
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1331, i32 * %op1305
	lu12i.w $t0, -2
	ori $t0, $t0, 3344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3236
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1332 = load i32 , i32 * %op1302
	lu12i.w $t0, -2
	ori $t0, $t0, 3376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1332, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3232
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1333 = load i32 , i32 * %op1304
	lu12i.w $t0, -2
	ori $t0, $t0, 3360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1333, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 3228
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1369
	b .long_func_label1369
.long_func_label1334:
# %op1335 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1336 = srem i32  %op1335, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3224
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1337 = icmp eq i32  %op1336, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3220
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label178
	addi.d $t2, $zero, 0
	b false_label178
true_label178:
	addi.d $t2, $zero, 1
false_label178:
	lu12i.w $t8, -2
	ori $t8, $t8, 3219
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1338 = zext i1  %op1337 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3219
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3212
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1339 = icmp ne i32  %op1338, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3212
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label179
	addi.d $t2, $zero, 0
	b false_label179
true_label179:
	addi.d $t2, $zero, 1
false_label179:
	lu12i.w $t8, -2
	ori $t8, $t8, 3211
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1339, label %label1351, label %label1359
	lu12i.w $t0, -2
	ori $t0, $t0, 3211
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1351
	b .long_func_label1359
.long_func_label1340:
# %op1341 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3204
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1342 = srem i32  %op1341, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3204
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1343 = icmp ne i32  %op1342, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label180
	addi.d $t2, $zero, 0
	b false_label180
true_label180:
	addi.d $t2, $zero, 1
false_label180:
	lu12i.w $t8, -2
	ori $t8, $t8, 3199
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1343, label %label1360, label %label1368
	lu12i.w $t0, -2
	ori $t0, $t0, 3199
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1360
	b .long_func_label1368
.long_func_label1344:
# %op1345 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1346 = sdiv i32  %op1345, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3188
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1346, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3188
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1347 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1348 = sdiv i32  %op1347, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1348, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 3180
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1349 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1350 = add i32  %op1349, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3172
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1350, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 3172
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1321
	b .long_func_label1321
.long_func_label1351:
# %op1352 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1353 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1354 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1355 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1353
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
	lu12i.w $t1, -2
	ori $t1, $t1, 3164
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1356 = load i32 , i32 * %op1355
	lu12i.w $t0, -2
	ori $t0, $t0, 3152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1357 = mul i32  1, %op1356
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 3148
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1358 = add i32  %op1352, %op1357
	lu12i.w $t0, -2
	ori $t0, $t0, 3168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3144
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1358, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 3140
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1359
	b .long_func_label1359
.long_func_label1359:
# br label %label1344
	b .long_func_label1344
.long_func_label1360:
# %op1361 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1362 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1363 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1364 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1362
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
	lu12i.w $t1, -2
	ori $t1, $t1, 3132
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1365 = load i32 , i32 * %op1364
	lu12i.w $t0, -2
	ori $t0, $t0, 3120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3116
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1366 = mul i32  1, %op1365
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 3116
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1367 = add i32  %op1361, %op1366
	lu12i.w $t0, -2
	ori $t0, $t0, 3136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3112
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3108
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1367, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 3108
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1368
	b .long_func_label1368
.long_func_label1368:
# br label %label1344
	b .long_func_label1344
.long_func_label1369:
# %op1370 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1371 = icmp slt i32  %op1370, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 3104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3103
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1372 = zext i1  %op1371 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3103
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1373 = icmp ne i32  %op1372, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3096
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label182
	addi.d $t2, $zero, 0
	b false_label182
true_label182:
	addi.d $t2, $zero, 1
false_label182:
	lu12i.w $t8, -2
	ori $t8, $t8, 3095
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1373, label %label1374, label %label1378
	lu12i.w $t0, -2
	ori $t0, $t0, 3095
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1374
	b .long_func_label1378
.long_func_label1374:
# %op1375 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1376 = srem i32  %op1375, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3084
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1377 = icmp ne i32  %op1376, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3084
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label183
	addi.d $t2, $zero, 0
	b false_label183
true_label183:
	addi.d $t2, $zero, 1
false_label183:
	lu12i.w $t8, -2
	ori $t8, $t8, 3083
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1377, label %label1398, label %label1391
	lu12i.w $t0, -2
	ori $t0, $t0, 3083
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1398
	b .long_func_label1391
.long_func_label1378:
# %op1379 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3076
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1379, i32 * %op1304
	lu12i.w $t0, -2
	ori $t0, $t0, 3360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3076
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1380 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3075
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1381 = zext i1  %op1380 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3075
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3068
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1382 = icmp ne i32  %op1381, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label185
	addi.d $t2, $zero, 0
	b false_label185
true_label185:
	addi.d $t2, $zero, 1
false_label185:
	lu12i.w $t8, -2
	ori $t8, $t8, 3067
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1382, label %label1402, label %label1403
	lu12i.w $t0, -2
	ori $t0, $t0, 3067
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1402
	b .long_func_label1403
.long_func_label1383:
# %op1384 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1385 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1386 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1387 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1385
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
	lu12i.w $t1, -2
	ori $t1, $t1, 3056
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1388 = load i32 , i32 * %op1387
	lu12i.w $t0, -2
	ori $t0, $t0, 3040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1389 = mul i32  1, %op1388
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 3036
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1390 = add i32  %op1384, %op1389
	lu12i.w $t0, -2
	ori $t0, $t0, 3060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3032
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1390, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 3028
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1391
	b .long_func_label1391
.long_func_label1391:
# %op1392 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1393 = sdiv i32  %op1392, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1393, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3020
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1394 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1395 = sdiv i32  %op1394, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1395, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 3012
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1396 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1397 = add i32  %op1396, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1397, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 3004
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1369
	b .long_func_label1369
.long_func_label1398:
# %op1399 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1400 = srem i32  %op1399, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1401 = icmp ne i32  %op1400, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label186
	addi.d $t2, $zero, 0
	b false_label186
true_label186:
	addi.d $t2, $zero, 1
false_label186:
	lu12i.w $t8, -2
	ori $t8, $t8, 2995
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1401, label %label1383, label %label1391
	lu12i.w $t0, -2
	ori $t0, $t0, 2995
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1383
	b .long_func_label1391
.long_func_label1402:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label1408
	b .long_func_label1408
.long_func_label1403:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1404 = load i32 , i32 * %op1304
	lu12i.w $t0, -2
	ori $t0, $t0, 3360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1405 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
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
	lu12i.w $t1, 0
	ori $t1, $t1, 1
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1406 = load i32 , i32 * %op1405
	lu12i.w $t0, -2
	ori $t0, $t0, 2976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1407 = mul i32  %op1404, %op1406
	lu12i.w $t0, -2
	ori $t0, $t0, 2988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2972
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1407, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 2968
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label1411
	b .long_func_label1411
.long_func_label1408:
# %op1409 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1409, i32 * %op1304
	lu12i.w $t0, -2
	ori $t0, $t0, 3360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2964
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1410 = load i32 , i32 * %op1305
	lu12i.w $t0, -2
	ori $t0, $t0, 3344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1410, i32 * %op1302
	lu12i.w $t0, -2
	ori $t0, $t0, 3376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2960
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1312
	b .long_func_label1312
.long_func_label1411:
# %op1412 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1413 = icmp slt i32  %op1412, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 2956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2955
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1414 = zext i1  %op1413 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2955
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1415 = icmp ne i32  %op1414, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label188
	addi.d $t2, $zero, 0
	b false_label188
true_label188:
	addi.d $t2, $zero, 1
false_label188:
	lu12i.w $t8, -2
	ori $t8, $t8, 2947
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1415, label %label1416, label %label1420
	lu12i.w $t0, -2
	ori $t0, $t0, 2947
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1416
	b .long_func_label1420
.long_func_label1416:
# %op1417 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1418 = srem i32  %op1417, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1419 = icmp ne i32  %op1418, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label189
	addi.d $t2, $zero, 0
	b false_label189
true_label189:
	addi.d $t2, $zero, 1
false_label189:
	lu12i.w $t8, -2
	ori $t8, $t8, 2935
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1419, label %label1436, label %label1429
	lu12i.w $t0, -2
	ori $t0, $t0, 2935
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1436
	b .long_func_label1429
.long_func_label1420:
# br label %label1408
	b .long_func_label1408
.long_func_label1421:
# %op1422 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1423 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1424 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1425 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1423
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
	lu12i.w $t1, -2
	ori $t1, $t1, 2924
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1426 = load i32 , i32 * %op1425
	lu12i.w $t0, -2
	ori $t0, $t0, 2912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1427 = mul i32  1, %op1426
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 2908
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1428 = add i32  %op1422, %op1427
	lu12i.w $t0, -2
	ori $t0, $t0, 2928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2904
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1428, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 2900
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1429
	b .long_func_label1429
.long_func_label1429:
# %op1430 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1431 = sdiv i32  %op1430, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1431, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 2892
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1432 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1433 = sdiv i32  %op1432, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1433, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 2884
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1434 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1435 = add i32  %op1434, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1435, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 2876
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1411
	b .long_func_label1411
.long_func_label1436:
# %op1437 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1438 = srem i32  %op1437, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1439 = icmp ne i32  %op1438, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2868
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label190
	addi.d $t2, $zero, 0
	b false_label190
true_label190:
	addi.d $t2, $zero, 1
false_label190:
	lu12i.w $t8, -2
	ori $t8, $t8, 2867
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1439, label %label1421, label %label1429
	lu12i.w $t0, -2
	ori $t0, $t0, 2867
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1421
	b .long_func_label1429
.long_func_label1440:
# %op1441 = load i32 , i32 * %op1310
	lu12i.w $t0, -2
	ori $t0, $t0, 3312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1442 = icmp ne i32  %op1441, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label191
	addi.d $t2, $zero, 0
	b false_label191
true_label191:
	addi.d $t2, $zero, 1
false_label191:
	lu12i.w $t8, -2
	ori $t8, $t8, 2859
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1442, label %label1443, label %label1446
	lu12i.w $t0, -2
	ori $t0, $t0, 2859
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1443
	b .long_func_label1446
.long_func_label1443:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1444 = load i32 , i32 * %op1308
	lu12i.w $t0, -2
	ori $t0, $t0, 3328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1444, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 2852
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1445 = load i32 , i32 * %op1310
	lu12i.w $t0, -2
	ori $t0, $t0, 3312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1445, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 2848
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1454
	b .long_func_label1454
.long_func_label1446:
# %op1447 = load i32 , i32 * %op1308
	lu12i.w $t0, -2
	ori $t0, $t0, 3328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1447, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 2844
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1448 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1448, i32 * %op891
	lu12i.w $t0, -1
	ori $t0, $t0, 744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2840
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1449 = load i32 , i32 * %op893
	lu12i.w $t0, -1
	ori $t0, $t0, 728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1449, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 2836
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op1450 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1451 = icmp sge i32  %op1450, 15
	lu12i.w $t0, -2
	ori $t0, $t0, 2832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label192
	addi.d $t2, $zero, 0
	b false_label192
true_label192:
	addi.d $t2, $zero, 1
false_label192:
	lu12i.w $t8, -2
	ori $t8, $t8, 2831
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1452 = zext i1  %op1451 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2831
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1453 = icmp ne i32  %op1452, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label193
	addi.d $t2, $zero, 0
	b false_label193
true_label193:
	addi.d $t2, $zero, 1
false_label193:
	lu12i.w $t8, -2
	ori $t8, $t8, 2823
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1453, label %label1573, label %label1578
	lu12i.w $t0, -2
	ori $t0, $t0, 2823
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1573
	b .long_func_label1578
.long_func_label1454:
# %op1455 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1456 = icmp slt i32  %op1455, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 2816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2815
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1457 = zext i1  %op1456 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2815
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1458 = icmp ne i32  %op1457, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label195
	addi.d $t2, $zero, 0
	b false_label195
true_label195:
	addi.d $t2, $zero, 1
false_label195:
	lu12i.w $t8, -2
	ori $t8, $t8, 2807
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1458, label %label1459, label %label1463
	lu12i.w $t0, -2
	ori $t0, $t0, 2807
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1459
	b .long_func_label1463
.long_func_label1459:
# %op1460 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1461 = srem i32  %op1460, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1462 = icmp ne i32  %op1461, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2796
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label196
	addi.d $t2, $zero, 0
	b false_label196
true_label196:
	addi.d $t2, $zero, 1
false_label196:
	lu12i.w $t8, -2
	ori $t8, $t8, 2795
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1462, label %label1467, label %label1473
	lu12i.w $t0, -2
	ori $t0, $t0, 2795
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1467
	b .long_func_label1473
.long_func_label1463:
# %op1464 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1464, i32 * %op1311
	lu12i.w $t0, -2
	ori $t0, $t0, 3296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2788
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1465 = load i32 , i32 * %op1308
	lu12i.w $t0, -2
	ori $t0, $t0, 3328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1465, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 2784
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1466 = load i32 , i32 * %op1310
	lu12i.w $t0, -2
	ori $t0, $t0, 3312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1466, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 2780
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1502
	b .long_func_label1502
.long_func_label1467:
# %op1468 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1469 = srem i32  %op1468, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1470 = icmp eq i32  %op1469, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2772
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label197
	addi.d $t2, $zero, 0
	b false_label197
true_label197:
	addi.d $t2, $zero, 1
false_label197:
	lu12i.w $t8, -2
	ori $t8, $t8, 2771
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1471 = zext i1  %op1470 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2771
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1472 = icmp ne i32  %op1471, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2764
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label198
	addi.d $t2, $zero, 0
	b false_label198
true_label198:
	addi.d $t2, $zero, 1
false_label198:
	lu12i.w $t8, -2
	ori $t8, $t8, 2763
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1472, label %label1484, label %label1492
	lu12i.w $t0, -2
	ori $t0, $t0, 2763
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1484
	b .long_func_label1492
.long_func_label1473:
# %op1474 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1475 = srem i32  %op1474, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2756
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1476 = icmp ne i32  %op1475, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label199
	addi.d $t2, $zero, 0
	b false_label199
true_label199:
	addi.d $t2, $zero, 1
false_label199:
	lu12i.w $t8, -2
	ori $t8, $t8, 2751
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1476, label %label1493, label %label1501
	lu12i.w $t0, -2
	ori $t0, $t0, 2751
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1493
	b .long_func_label1501
.long_func_label1477:
# %op1478 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1479 = sdiv i32  %op1478, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1479, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 2740
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1480 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1481 = sdiv i32  %op1480, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1481, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 2732
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1482 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1483 = add i32  %op1482, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1483, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 2724
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1454
	b .long_func_label1454
.long_func_label1484:
# %op1485 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1486 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1487 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1488 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1486
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
	lu12i.w $t1, -2
	ori $t1, $t1, 2716
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1489 = load i32 , i32 * %op1488
	lu12i.w $t0, -2
	ori $t0, $t0, 2704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1490 = mul i32  1, %op1489
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 2700
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1491 = add i32  %op1485, %op1490
	lu12i.w $t0, -2
	ori $t0, $t0, 2720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2696
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1491, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 2692
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1492
	b .long_func_label1492
.long_func_label1492:
# br label %label1477
	b .long_func_label1477
.long_func_label1493:
# %op1494 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1495 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1496 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1497 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1495
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
	lu12i.w $t1, -2
	ori $t1, $t1, 2684
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1498 = load i32 , i32 * %op1497
	lu12i.w $t0, -2
	ori $t0, $t0, 2672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1499 = mul i32  1, %op1498
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 2668
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1500 = add i32  %op1494, %op1499
	lu12i.w $t0, -2
	ori $t0, $t0, 2688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2664
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1500, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 2660
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1501
	b .long_func_label1501
.long_func_label1501:
# br label %label1477
	b .long_func_label1477
.long_func_label1502:
# %op1503 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1504 = icmp slt i32  %op1503, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 2656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2655
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1505 = zext i1  %op1504 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2655
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1506 = icmp ne i32  %op1505, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label201
	addi.d $t2, $zero, 0
	b false_label201
true_label201:
	addi.d $t2, $zero, 1
false_label201:
	lu12i.w $t8, -2
	ori $t8, $t8, 2647
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1506, label %label1507, label %label1511
	lu12i.w $t0, -2
	ori $t0, $t0, 2647
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1507
	b .long_func_label1511
.long_func_label1507:
# %op1508 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1509 = srem i32  %op1508, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2636
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1510 = icmp ne i32  %op1509, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2636
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label202
	addi.d $t2, $zero, 0
	b false_label202
true_label202:
	addi.d $t2, $zero, 1
false_label202:
	lu12i.w $t8, -2
	ori $t8, $t8, 2635
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1510, label %label1531, label %label1524
	lu12i.w $t0, -2
	ori $t0, $t0, 2635
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1531
	b .long_func_label1524
.long_func_label1511:
# %op1512 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1512, i32 * %op1310
	lu12i.w $t0, -2
	ori $t0, $t0, 3312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2628
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1513 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2627
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1514 = zext i1  %op1513 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2627
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1515 = icmp ne i32  %op1514, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label204
	addi.d $t2, $zero, 0
	b false_label204
true_label204:
	addi.d $t2, $zero, 1
false_label204:
	lu12i.w $t8, -2
	ori $t8, $t8, 2619
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1515, label %label1535, label %label1536
	lu12i.w $t0, -2
	ori $t0, $t0, 2619
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1535
	b .long_func_label1536
.long_func_label1516:
# %op1517 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1518 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1519 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1520 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1518
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
	lu12i.w $t1, -2
	ori $t1, $t1, 2608
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1521 = load i32 , i32 * %op1520
	lu12i.w $t0, -2
	ori $t0, $t0, 2592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1522 = mul i32  1, %op1521
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 2588
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1523 = add i32  %op1517, %op1522
	lu12i.w $t0, -2
	ori $t0, $t0, 2612
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2584
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1523, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 2580
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1524
	b .long_func_label1524
.long_func_label1524:
# %op1525 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1526 = sdiv i32  %op1525, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2572
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1526, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 2572
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1527 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1528 = sdiv i32  %op1527, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2564
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1528, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 2564
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1529 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1530 = add i32  %op1529, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2556
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1530, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 2556
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1502
	b .long_func_label1502
.long_func_label1531:
# %op1532 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1533 = srem i32  %op1532, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2548
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1534 = icmp ne i32  %op1533, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2548
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label205
	addi.d $t2, $zero, 0
	b false_label205
true_label205:
	addi.d $t2, $zero, 1
false_label205:
	lu12i.w $t8, -2
	ori $t8, $t8, 2547
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1534, label %label1516, label %label1524
	lu12i.w $t0, -2
	ori $t0, $t0, 2547
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1516
	b .long_func_label1524
.long_func_label1535:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label1541
	b .long_func_label1541
.long_func_label1536:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1537 = load i32 , i32 * %op1310
	lu12i.w $t0, -2
	ori $t0, $t0, 3312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1538 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
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
	lu12i.w $t1, 0
	ori $t1, $t1, 1
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1539 = load i32 , i32 * %op1538
	lu12i.w $t0, -2
	ori $t0, $t0, 2528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1540 = mul i32  %op1537, %op1539
	lu12i.w $t0, -2
	ori $t0, $t0, 2540
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2524
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1540, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 2520
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label1544
	b .long_func_label1544
.long_func_label1541:
# %op1542 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1542, i32 * %op1310
	lu12i.w $t0, -2
	ori $t0, $t0, 3312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2516
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1543 = load i32 , i32 * %op1311
	lu12i.w $t0, -2
	ori $t0, $t0, 3296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1543, i32 * %op1308
	lu12i.w $t0, -2
	ori $t0, $t0, 3328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2512
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1440
	b .long_func_label1440
.long_func_label1544:
# %op1545 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1546 = icmp slt i32  %op1545, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 2508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2507
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1547 = zext i1  %op1546 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2507
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1548 = icmp ne i32  %op1547, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label207
	addi.d $t2, $zero, 0
	b false_label207
true_label207:
	addi.d $t2, $zero, 1
false_label207:
	lu12i.w $t8, -2
	ori $t8, $t8, 2499
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1548, label %label1549, label %label1553
	lu12i.w $t0, -2
	ori $t0, $t0, 2499
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1549
	b .long_func_label1553
.long_func_label1549:
# %op1550 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2492
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1551 = srem i32  %op1550, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2492
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1552 = icmp ne i32  %op1551, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label208
	addi.d $t2, $zero, 0
	b false_label208
true_label208:
	addi.d $t2, $zero, 1
false_label208:
	lu12i.w $t8, -2
	ori $t8, $t8, 2487
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1552, label %label1569, label %label1562
	lu12i.w $t0, -2
	ori $t0, $t0, 2487
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1569
	b .long_func_label1562
.long_func_label1553:
# br label %label1541
	b .long_func_label1541
.long_func_label1554:
# %op1555 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1556 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1557 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1558 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1556
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
	lu12i.w $t1, -2
	ori $t1, $t1, 2476
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1559 = load i32 , i32 * %op1558
	lu12i.w $t0, -2
	ori $t0, $t0, 2464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2460
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1560 = mul i32  1, %op1559
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 2460
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1561 = add i32  %op1555, %op1560
	lu12i.w $t0, -2
	ori $t0, $t0, 2480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2456
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2452
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1561, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 2452
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1562
	b .long_func_label1562
.long_func_label1562:
# %op1563 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1564 = sdiv i32  %op1563, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2444
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1564, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 2444
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1565 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1566 = sdiv i32  %op1565, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1566, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 2436
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1567 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1568 = add i32  %op1567, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1568, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 2428
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1544
	b .long_func_label1544
.long_func_label1569:
# %op1570 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1571 = srem i32  %op1570, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1572 = icmp ne i32  %op1571, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2420
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label209
	addi.d $t2, $zero, 0
	b false_label209
true_label209:
	addi.d $t2, $zero, 1
false_label209:
	lu12i.w $t8, -2
	ori $t8, $t8, 2419
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1572, label %label1554, label %label1562
	lu12i.w $t0, -2
	ori $t0, $t0, 2419
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1554
	b .long_func_label1562
.long_func_label1573:
# %op1574 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1575 = icmp slt i32  %op1574, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2412
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2411
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1576 = zext i1  %op1575 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2411
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1577 = icmp ne i32  %op1576, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2404
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label211
	addi.d $t2, $zero, 0
	b false_label211
true_label211:
	addi.d $t2, $zero, 1
false_label211:
	lu12i.w $t8, -2
	ori $t8, $t8, 2403
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1577, label %label1585, label %label1586
	lu12i.w $t0, -2
	ori $t0, $t0, 2403
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1585
	b .long_func_label1586
.long_func_label1578:
# %op1579 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2396
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1580 = icmp sgt i32  %op1579, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2396
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2395
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1581 = zext i1  %op1580 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2395
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2388
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1582 = icmp ne i32  %op1581, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2388
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label213
	addi.d $t2, $zero, 0
	b false_label213
true_label213:
	addi.d $t2, $zero, 1
false_label213:
	lu12i.w $t8, -2
	ori $t8, $t8, 2387
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1582, label %label1588, label %label1593
	lu12i.w $t0, -2
	ori $t0, $t0, 2387
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1588
	b .long_func_label1593
.long_func_label1583:
# %op1584 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1584, i32 * %op893
	lu12i.w $t0, -1
	ori $t0, $t0, 728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2380
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1256
	b .long_func_label1256
.long_func_label1585:
# store i32  65535, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label1587
	b .long_func_label1587
.long_func_label1586:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label1587
	b .long_func_label1587
.long_func_label1587:
# br label %label1583
	b .long_func_label1583
.long_func_label1588:
# %op1589 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1590 = icmp sgt i32  %op1589, 32767
	lu12i.w $t0, -2
	ori $t0, $t0, 2376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2375
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1591 = zext i1  %op1590 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2375
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1592 = icmp ne i32  %op1591, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label215
	addi.d $t2, $zero, 0
	b false_label215
true_label215:
	addi.d $t2, $zero, 1
false_label215:
	lu12i.w $t8, -2
	ori $t8, $t8, 2367
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1592, label %label1596, label %label1614
	lu12i.w $t0, -2
	ori $t0, $t0, 2367
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1596
	b .long_func_label1614
.long_func_label1593:
# %op1594 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1594, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 2360
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1595
	b .long_func_label1595
.long_func_label1595:
# br label %label1583
	b .long_func_label1583
.long_func_label1596:
# %op1597 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1598 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1599 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2348
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1600 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1598
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
	lu12i.w $t1, -2
	ori $t1, $t1, 2352
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1601 = load i32 , i32 * %op1600
	lu12i.w $t0, -2
	ori $t0, $t0, 2336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2332
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1602 = sdiv i32  %op1597, %op1601
	lu12i.w $t0, -2
	ori $t0, $t0, 2356
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2332
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1602, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 2328
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1603 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1604 = add i32  %op1603, 65536
	lu12i.w $t0, -2
	ori $t0, $t0, 2324
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1605 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2316
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1606 = sub i32  15, %op1605
	addi.w $t0, $zero, 15
	lu12i.w $t1, -2
	ori $t1, $t1, 2316
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1607 = add i32  %op1606, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1608 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1609 = sub i32  15, %op1608
	addi.w $t0, $zero, 15
	lu12i.w $t1, -2
	ori $t1, $t1, 2304
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2300
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1610 = add i32  %op1609, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2300
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1611 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1607
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
	lu12i.w $t1, -2
	ori $t1, $t1, 2308
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1612 = load i32 , i32 * %op1611
	lu12i.w $t0, -2
	ori $t0, $t0, 2288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2284
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1613 = sub i32  %op1604, %op1612
	lu12i.w $t0, -2
	ori $t0, $t0, 2320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2284
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1613, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 2280
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1621
	b .long_func_label1621
.long_func_label1614:
# %op1615 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2276
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1616 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1617 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1618 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1616
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
	lu12i.w $t1, -2
	ori $t1, $t1, 2272
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1619 = load i32 , i32 * %op1618
	lu12i.w $t0, -2
	ori $t0, $t0, 2256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1620 = sdiv i32  %op1615, %op1619
	lu12i.w $t0, -2
	ori $t0, $t0, 2276
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2252
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1620, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 2248
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1621
	b .long_func_label1621
.long_func_label1621:
# br label %label1595
	b .long_func_label1595
.long_func_label1622:
# %op1623 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1624 = icmp slt i32  %op1623, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2244
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2243
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1625 = zext i1  %op1624 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2243
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2236
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1626 = icmp ne i32  %op1625, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2236
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label217
	addi.d $t2, $zero, 0
	b false_label217
true_label217:
	addi.d $t2, $zero, 1
false_label217:
	lu12i.w $t8, -2
	ori $t8, $t8, 2235
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1626, label %label1634, label %label1635
	lu12i.w $t0, -2
	ori $t0, $t0, 2235
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1634
	b .long_func_label1635
.long_func_label1627:
# %op1628 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1629 = icmp sgt i32  %op1628, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2228
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2227
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1630 = zext i1  %op1629 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2227
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1631 = icmp ne i32  %op1630, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2220
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label219
	addi.d $t2, $zero, 0
	b false_label219
true_label219:
	addi.d $t2, $zero, 1
false_label219:
	lu12i.w $t8, -2
	ori $t8, $t8, 2219
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1631, label %label1637, label %label1642
	lu12i.w $t0, -2
	ori $t0, $t0, 2219
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1637
	b .long_func_label1642
.long_func_label1632:
# %op1633 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2212
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1633, i32 * %op20
	ld.d $t0, $fp, -200
	lu12i.w $t1, -2
	ori $t1, $t1, 2212
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label841
	b .long_func_label841
.long_func_label1634:
# store i32  65535, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label1636
	b .long_func_label1636
.long_func_label1635:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label1636
	b .long_func_label1636
.long_func_label1636:
# br label %label1632
	b .long_func_label1632
.long_func_label1637:
# %op1638 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1639 = icmp sgt i32  %op1638, 32767
	lu12i.w $t0, -2
	ori $t0, $t0, 2208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2207
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1640 = zext i1  %op1639 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2207
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1641 = icmp ne i32  %op1640, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label221
	addi.d $t2, $zero, 0
	b false_label221
true_label221:
	addi.d $t2, $zero, 1
false_label221:
	lu12i.w $t8, -2
	ori $t8, $t8, 2199
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1641, label %label1645, label %label1663
	lu12i.w $t0, -2
	ori $t0, $t0, 2199
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1645
	b .long_func_label1663
.long_func_label1642:
# %op1643 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1643, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 2192
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1644
	b .long_func_label1644
.long_func_label1644:
# br label %label1632
	b .long_func_label1632
.long_func_label1645:
# %op1646 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2188
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1647 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1648 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1649 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1647
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
	lu12i.w $t1, -2
	ori $t1, $t1, 2184
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1650 = load i32 , i32 * %op1649
	lu12i.w $t0, -2
	ori $t0, $t0, 2168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1651 = sdiv i32  %op1646, %op1650
	lu12i.w $t0, -2
	ori $t0, $t0, 2188
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2164
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1651, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 2160
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1652 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1653 = add i32  %op1652, 65536
	lu12i.w $t0, -2
	ori $t0, $t0, 2156
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1654 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1655 = sub i32  15, %op1654
	addi.w $t0, $zero, 15
	lu12i.w $t1, -2
	ori $t1, $t1, 2148
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1656 = add i32  %op1655, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1657 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1658 = sub i32  15, %op1657
	addi.w $t0, $zero, 15
	lu12i.w $t1, -2
	ori $t1, $t1, 2136
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1659 = add i32  %op1658, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2132
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1660 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1656
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
	lu12i.w $t1, -2
	ori $t1, $t1, 2140
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1661 = load i32 , i32 * %op1660
	lu12i.w $t0, -2
	ori $t0, $t0, 2120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2116
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1662 = sub i32  %op1653, %op1661
	lu12i.w $t0, -2
	ori $t0, $t0, 2152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2116
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1662, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 2112
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1670
	b .long_func_label1670
.long_func_label1663:
# %op1664 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2108
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1665 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1666 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2100
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1667 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1665
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
	lu12i.w $t1, -2
	ori $t1, $t1, 2104
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1668 = load i32 , i32 * %op1667
	lu12i.w $t0, -2
	ori $t0, $t0, 2088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2084
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1669 = sdiv i32  %op1664, %op1668
	lu12i.w $t0, -2
	ori $t0, $t0, 2108
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2084
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1669, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 2080
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1670
	b .long_func_label1670
.long_func_label1670:
# br label %label1644
	b .long_func_label1644
.long_func_label1671:
# %op1672 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2076
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1673 = icmp slt i32  %op1672, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 2076
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2075
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1674 = zext i1  %op1673 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2075
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2068
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1675 = icmp ne i32  %op1674, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label223
	addi.d $t2, $zero, 0
	b false_label223
true_label223:
	addi.d $t2, $zero, 1
false_label223:
	lu12i.w $t8, -2
	ori $t8, $t8, 2067
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1675, label %label1676, label %label1681
	lu12i.w $t0, -2
	ori $t0, $t0, 2067
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1676
	b .long_func_label1681
.long_func_label1676:
# %op1677 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  2, i32 * %op1677
	lu12i.w $t0, -2
	ori $t0, $t0, 2056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op1678 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1679 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op1678, i32 * %op1679
	lu12i.w $t0, -2
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2048
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1680 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  1, i32 * %op1680
	lu12i.w $t0, -2
	ori $t0, $t0, 2024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label1682
	b .long_func_label1682
.long_func_label1681:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2514
	b .long_func_label2514
.long_func_label1682:
# %op1683 = load i32 , i32 * %op1679
	lu12i.w $t0, -2
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1684 = icmp sgt i32  %op1683, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2015
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1685 = zext i1  %op1684 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2015
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1686 = icmp ne i32  %op1685, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label225
	addi.d $t2, $zero, 0
	b false_label225
true_label225:
	addi.d $t2, $zero, 1
false_label225:
	lu12i.w $t8, -2
	ori $t8, $t8, 2007
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1686, label %label1687, label %label1689
	lu12i.w $t0, -2
	ori $t0, $t0, 2007
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1687
	b .long_func_label1689
.long_func_label1687:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1688 = load i32 , i32 * %op1679
	lu12i.w $t0, -2
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1688, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 2000
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label1695
	b .long_func_label1695
.long_func_label1689:
# %op1690 = load i32 , i32 * %op1680
	lu12i.w $t0, -2
	ori $t0, $t0, 2024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1690, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 1996
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1691 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# call void @putint(i32  %op1691)
	lu12i.w $a0, -2
	ori $a0, $a0, 1992
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	bl putint
# %op1692 = trunc i32  10 to i8 
	addi.w $t0, $zero, 10
	andi $t1, $t0, 255
	lu12i.w $t8, -2
	ori $t8, $t8, 1991
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t1, $t8, 0
# call void @putch(i8  %op1692)
	lu12i.w $a0, -2
	ori $a0, $a0, 1991
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.b $a0, $a0, 0
	bl putch
# %op1693 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1694 = add i32  %op1693, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 1984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1694, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 1980
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1671
	b .long_func_label1671
.long_func_label1695:
# %op1696 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1697 = icmp slt i32  %op1696, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 1976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1975
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1698 = zext i1  %op1697 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1975
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1699 = icmp ne i32  %op1698, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label227
	addi.d $t2, $zero, 0
	b false_label227
true_label227:
	addi.d $t2, $zero, 1
false_label227:
	lu12i.w $t8, -2
	ori $t8, $t8, 1967
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1699, label %label1700, label %label1704
	lu12i.w $t0, -2
	ori $t0, $t0, 1967
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1700
	b .long_func_label1704
.long_func_label1700:
# %op1701 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1702 = srem i32  %op1701, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1703 = icmp ne i32  %op1702, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label228
	addi.d $t2, $zero, 0
	b false_label228
true_label228:
	addi.d $t2, $zero, 1
false_label228:
	lu12i.w $t8, -2
	ori $t8, $t8, 1955
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1703, label %label1722, label %label1715
	lu12i.w $t0, -2
	ori $t0, $t0, 1955
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1722
	b .long_func_label1715
.long_func_label1704:
# %op1705 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1706 = icmp ne i32  %op1705, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label229
	addi.d $t2, $zero, 0
	b false_label229
true_label229:
	addi.d $t2, $zero, 1
false_label229:
	lu12i.w $t8, -2
	ori $t8, $t8, 1947
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1706, label %label1726, label %label1732
	lu12i.w $t0, -2
	ori $t0, $t0, 1947
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1726
	b .long_func_label1732
.long_func_label1707:
# %op1708 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1709 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1710 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1711 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1709
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
	lu12i.w $t1, -2
	ori $t1, $t1, 1936
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1712 = load i32 , i32 * %op1711
	lu12i.w $t0, -2
	ori $t0, $t0, 1920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1713 = mul i32  1, %op1712
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 1916
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1714 = add i32  %op1708, %op1713
	lu12i.w $t0, -2
	ori $t0, $t0, 1940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1912
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1714, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 1908
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1715
	b .long_func_label1715
.long_func_label1715:
# %op1716 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1717 = sdiv i32  %op1716, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1717, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1900
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1718 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1719 = sdiv i32  %op1718, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1719, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 1892
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1720 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1721 = add i32  %op1720, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 1888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1721, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 1884
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1695
	b .long_func_label1695
.long_func_label1722:
# %op1723 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1724 = srem i32  %op1723, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1725 = icmp ne i32  %op1724, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label230
	addi.d $t2, $zero, 0
	b false_label230
true_label230:
	addi.d $t2, $zero, 1
false_label230:
	lu12i.w $t8, -2
	ori $t8, $t8, 1875
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1725, label %label1707, label %label1715
	lu12i.w $t0, -2
	ori $t0, $t0, 1875
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1707
	b .long_func_label1715
.long_func_label1726:
# %op1727 = load i32 , i32 * %op1680
	lu12i.w $t0, -2
	ori $t0, $t0, 2024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1728 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1852
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op1727, i32 * %op1728
	lu12i.w $t0, -2
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1868
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1729 = load i32 , i32 * %op1677
	lu12i.w $t0, -2
	ori $t0, $t0, 2056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1730 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1836
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op1729, i32 * %op1730
	lu12i.w $t0, -2
	ori $t0, $t0, 1840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1848
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1731 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1820
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  0, i32 * %op1731
	lu12i.w $t0, -2
	ori $t0, $t0, 1824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label1738
	b .long_func_label1738
.long_func_label1732:
# %op1733 = load i32 , i32 * %op1677
	lu12i.w $t0, -2
	ori $t0, $t0, 2056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1734 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1804
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op1733, i32 * %op1734
	lu12i.w $t0, -2
	ori $t0, $t0, 1808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1816
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1735 = load i32 , i32 * %op1677
	lu12i.w $t0, -2
	ori $t0, $t0, 2056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1736 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1788
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op1735, i32 * %op1736
	lu12i.w $t0, -2
	ori $t0, $t0, 1792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1800
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1737 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1772
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  0, i32 * %op1737
	lu12i.w $t0, -2
	ori $t0, $t0, 1776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2099
	b .long_func_label2099
.long_func_label1738:
# %op1739 = load i32 , i32 * %op1730
	lu12i.w $t0, -2
	ori $t0, $t0, 1840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1740 = icmp ne i32  %op1739, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label231
	addi.d $t2, $zero, 0
	b false_label231
true_label231:
	addi.d $t2, $zero, 1
false_label231:
	lu12i.w $t8, -2
	ori $t8, $t8, 1767
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1740, label %label1741, label %label1743
	lu12i.w $t0, -2
	ori $t0, $t0, 1767
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1741
	b .long_func_label1743
.long_func_label1741:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1742 = load i32 , i32 * %op1730
	lu12i.w $t0, -2
	ori $t0, $t0, 1840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1742, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1760
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label1746
	b .long_func_label1746
.long_func_label1743:
# %op1744 = load i32 , i32 * %op1731
	lu12i.w $t0, -2
	ori $t0, $t0, 1824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1744, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 1756
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1745 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1745, i32 * %op1680
	lu12i.w $t0, -2
	ori $t0, $t0, 2024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1752
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1732
	b .long_func_label1732
.long_func_label1746:
# %op1747 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1748 = icmp slt i32  %op1747, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 1748
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1747
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1749 = zext i1  %op1748 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1747
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1750 = icmp ne i32  %op1749, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1740
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label233
	addi.d $t2, $zero, 0
	b false_label233
true_label233:
	addi.d $t2, $zero, 1
false_label233:
	lu12i.w $t8, -2
	ori $t8, $t8, 1739
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1750, label %label1751, label %label1755
	lu12i.w $t0, -2
	ori $t0, $t0, 1739
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1751
	b .long_func_label1755
.long_func_label1751:
# %op1752 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1753 = srem i32  %op1752, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1732
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1754 = icmp ne i32  %op1753, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label234
	addi.d $t2, $zero, 0
	b false_label234
true_label234:
	addi.d $t2, $zero, 1
false_label234:
	lu12i.w $t8, -2
	ori $t8, $t8, 1727
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1754, label %label1773, label %label1766
	lu12i.w $t0, -2
	ori $t0, $t0, 1727
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1773
	b .long_func_label1766
.long_func_label1755:
# %op1756 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1757 = icmp ne i32  %op1756, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label235
	addi.d $t2, $zero, 0
	b false_label235
true_label235:
	addi.d $t2, $zero, 1
false_label235:
	lu12i.w $t8, -2
	ori $t8, $t8, 1719
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1757, label %label1777, label %label1783
	lu12i.w $t0, -2
	ori $t0, $t0, 1719
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1777
	b .long_func_label1783
.long_func_label1758:
# %op1759 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1760 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1761 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1762 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1760
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
	lu12i.w $t1, -2
	ori $t1, $t1, 1708
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1763 = load i32 , i32 * %op1762
	lu12i.w $t0, -2
	ori $t0, $t0, 1696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1764 = mul i32  1, %op1763
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 1692
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1765 = add i32  %op1759, %op1764
	lu12i.w $t0, -2
	ori $t0, $t0, 1712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1688
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1765, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 1684
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1766
	b .long_func_label1766
.long_func_label1766:
# %op1767 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1768 = sdiv i32  %op1767, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1768, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1676
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1769 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1770 = sdiv i32  %op1769, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1770, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 1668
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1771 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1772 = add i32  %op1771, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 1664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1772, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 1660
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1746
	b .long_func_label1746
.long_func_label1773:
# %op1774 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1775 = srem i32  %op1774, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1652
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1776 = icmp ne i32  %op1775, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1652
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label236
	addi.d $t2, $zero, 0
	b false_label236
true_label236:
	addi.d $t2, $zero, 1
false_label236:
	lu12i.w $t8, -2
	ori $t8, $t8, 1651
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1776, label %label1758, label %label1766
	lu12i.w $t0, -2
	ori $t0, $t0, 1651
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1758
	b .long_func_label1766
.long_func_label1777:
# %op1778 = load i32 , i32 * %op1731
	lu12i.w $t0, -2
	ori $t0, $t0, 1824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1779 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1628
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op1778, i32 * %op1779
	lu12i.w $t0, -2
	ori $t0, $t0, 1632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1644
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1780 = load i32 , i32 * %op1728
	lu12i.w $t0, -2
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1781 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1612
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op1780, i32 * %op1781
	lu12i.w $t0, -2
	ori $t0, $t0, 1616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1624
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1782 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1596
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# br label %label1789
	b .long_func_label1789
.long_func_label1783:
# %op1784 = load i32 , i32 * %op1728
	lu12i.w $t0, -2
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1785 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1580
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op1784, i32 * %op1785
	lu12i.w $t0, -2
	ori $t0, $t0, 1584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1592
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1786 = load i32 , i32 * %op1728
	lu12i.w $t0, -2
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1787 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1564
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op1786, i32 * %op1787
	lu12i.w $t0, -2
	ori $t0, $t0, 1568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1576
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1788 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1548
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# br label %label1917
	b .long_func_label1917
.long_func_label1789:
# %op1790 = load i32 , i32 * %op1781
	lu12i.w $t0, -2
	ori $t0, $t0, 1616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1791 = icmp ne i32  %op1790, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label237
	addi.d $t2, $zero, 0
	b false_label237
true_label237:
	addi.d $t2, $zero, 1
false_label237:
	lu12i.w $t8, -2
	ori $t8, $t8, 1543
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1791, label %label1792, label %label1795
	lu12i.w $t0, -2
	ori $t0, $t0, 1543
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1792
	b .long_func_label1795
.long_func_label1792:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1793 = load i32 , i32 * %op1779
	lu12i.w $t0, -2
	ori $t0, $t0, 1632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1793, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1536
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1794 = load i32 , i32 * %op1781
	lu12i.w $t0, -2
	ori $t0, $t0, 1616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1794, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 1532
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1798
	b .long_func_label1798
.long_func_label1795:
# %op1796 = load i32 , i32 * %op1779
	lu12i.w $t0, -2
	ori $t0, $t0, 1632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1796, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 1528
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1797 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1797, i32 * %op1731
	lu12i.w $t0, -2
	ori $t0, $t0, 1824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1524
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1783
	b .long_func_label1783
.long_func_label1798:
# %op1799 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1800 = icmp slt i32  %op1799, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 1520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1519
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1801 = zext i1  %op1800 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1519
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1802 = icmp ne i32  %op1801, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label239
	addi.d $t2, $zero, 0
	b false_label239
true_label239:
	addi.d $t2, $zero, 1
false_label239:
	lu12i.w $t8, -2
	ori $t8, $t8, 1511
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1802, label %label1803, label %label1807
	lu12i.w $t0, -2
	ori $t0, $t0, 1511
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1803
	b .long_func_label1807
.long_func_label1803:
# %op1804 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1805 = srem i32  %op1804, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1806 = icmp ne i32  %op1805, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label240
	addi.d $t2, $zero, 0
	b false_label240
true_label240:
	addi.d $t2, $zero, 1
false_label240:
	lu12i.w $t8, -2
	ori $t8, $t8, 1499
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1806, label %label1811, label %label1817
	lu12i.w $t0, -2
	ori $t0, $t0, 1499
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1811
	b .long_func_label1817
.long_func_label1807:
# %op1808 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1492
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1808, i32 * %op1782
	lu12i.w $t0, -2
	ori $t0, $t0, 1600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1492
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1809 = load i32 , i32 * %op1779
	lu12i.w $t0, -2
	ori $t0, $t0, 1632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1809, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1488
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1810 = load i32 , i32 * %op1781
	lu12i.w $t0, -2
	ori $t0, $t0, 1616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1484
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1810, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 1484
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1846
	b .long_func_label1846
.long_func_label1811:
# %op1812 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1813 = srem i32  %op1812, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1814 = icmp eq i32  %op1813, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1476
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label241
	addi.d $t2, $zero, 0
	b false_label241
true_label241:
	addi.d $t2, $zero, 1
false_label241:
	lu12i.w $t8, -2
	ori $t8, $t8, 1475
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1815 = zext i1  %op1814 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1475
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1816 = icmp ne i32  %op1815, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1468
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label242
	addi.d $t2, $zero, 0
	b false_label242
true_label242:
	addi.d $t2, $zero, 1
false_label242:
	lu12i.w $t8, -2
	ori $t8, $t8, 1467
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1816, label %label1828, label %label1836
	lu12i.w $t0, -2
	ori $t0, $t0, 1467
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1828
	b .long_func_label1836
.long_func_label1817:
# %op1818 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1460
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1819 = srem i32  %op1818, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1460
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1820 = icmp ne i32  %op1819, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label243
	addi.d $t2, $zero, 0
	b false_label243
true_label243:
	addi.d $t2, $zero, 1
false_label243:
	lu12i.w $t8, -2
	ori $t8, $t8, 1455
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1820, label %label1837, label %label1845
	lu12i.w $t0, -2
	ori $t0, $t0, 1455
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1837
	b .long_func_label1845
.long_func_label1821:
# %op1822 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1823 = sdiv i32  %op1822, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1444
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1823, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1444
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1824 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1825 = sdiv i32  %op1824, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1825, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 1436
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1826 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1827 = add i32  %op1826, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 1432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1827, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 1428
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1798
	b .long_func_label1798
.long_func_label1828:
# %op1829 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1830 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1831 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1832 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1830
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
	lu12i.w $t1, -2
	ori $t1, $t1, 1420
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1833 = load i32 , i32 * %op1832
	lu12i.w $t0, -2
	ori $t0, $t0, 1408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1834 = mul i32  1, %op1833
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 1404
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1835 = add i32  %op1829, %op1834
	lu12i.w $t0, -2
	ori $t0, $t0, 1424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1400
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1396
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1835, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 1396
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1836
	b .long_func_label1836
.long_func_label1836:
# br label %label1821
	b .long_func_label1821
.long_func_label1837:
# %op1838 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1839 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1388
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1840 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1841 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1839
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
	lu12i.w $t1, -2
	ori $t1, $t1, 1388
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1842 = load i32 , i32 * %op1841
	lu12i.w $t0, -2
	ori $t0, $t0, 1376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1843 = mul i32  1, %op1842
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 1372
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1844 = add i32  %op1838, %op1843
	lu12i.w $t0, -2
	ori $t0, $t0, 1392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1368
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1844, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 1364
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1845
	b .long_func_label1845
.long_func_label1845:
# br label %label1821
	b .long_func_label1821
.long_func_label1846:
# %op1847 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1848 = icmp slt i32  %op1847, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 1360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1359
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1849 = zext i1  %op1848 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1359
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1850 = icmp ne i32  %op1849, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label245
	addi.d $t2, $zero, 0
	b false_label245
true_label245:
	addi.d $t2, $zero, 1
false_label245:
	lu12i.w $t8, -2
	ori $t8, $t8, 1351
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1850, label %label1851, label %label1855
	lu12i.w $t0, -2
	ori $t0, $t0, 1351
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1851
	b .long_func_label1855
.long_func_label1851:
# %op1852 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1853 = srem i32  %op1852, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1340
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1854 = icmp ne i32  %op1853, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1340
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label246
	addi.d $t2, $zero, 0
	b false_label246
true_label246:
	addi.d $t2, $zero, 1
false_label246:
	lu12i.w $t8, -2
	ori $t8, $t8, 1339
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1854, label %label1875, label %label1868
	lu12i.w $t0, -2
	ori $t0, $t0, 1339
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1875
	b .long_func_label1868
.long_func_label1855:
# %op1856 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1332
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1856, i32 * %op1781
	lu12i.w $t0, -2
	ori $t0, $t0, 1616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1332
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1857 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1331
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1858 = zext i1  %op1857 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1331
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1859 = icmp ne i32  %op1858, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1324
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label248
	addi.d $t2, $zero, 0
	b false_label248
true_label248:
	addi.d $t2, $zero, 1
false_label248:
	lu12i.w $t8, -2
	ori $t8, $t8, 1323
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1859, label %label1879, label %label1880
	lu12i.w $t0, -2
	ori $t0, $t0, 1323
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1879
	b .long_func_label1880
.long_func_label1860:
# %op1861 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1316
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1862 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1863 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1864 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1862
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
	lu12i.w $t1, -2
	ori $t1, $t1, 1312
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1865 = load i32 , i32 * %op1864
	lu12i.w $t0, -2
	ori $t0, $t0, 1296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1292
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1866 = mul i32  1, %op1865
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 1292
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1867 = add i32  %op1861, %op1866
	lu12i.w $t0, -2
	ori $t0, $t0, 1316
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1288
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1284
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1867, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 1284
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1868
	b .long_func_label1868
.long_func_label1868:
# %op1869 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1870 = sdiv i32  %op1869, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1276
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1870, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1276
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1871 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1872 = sdiv i32  %op1871, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1872, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 1268
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1873 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1874 = add i32  %op1873, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 1264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1874, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 1260
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1846
	b .long_func_label1846
.long_func_label1875:
# %op1876 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1877 = srem i32  %op1876, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1878 = icmp ne i32  %op1877, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1252
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label249
	addi.d $t2, $zero, 0
	b false_label249
true_label249:
	addi.d $t2, $zero, 1
false_label249:
	lu12i.w $t8, -2
	ori $t8, $t8, 1251
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1878, label %label1860, label %label1868
	lu12i.w $t0, -2
	ori $t0, $t0, 1251
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1860
	b .long_func_label1868
.long_func_label1879:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label1885
	b .long_func_label1885
.long_func_label1880:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1881 = load i32 , i32 * %op1781
	lu12i.w $t0, -2
	ori $t0, $t0, 1616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1882 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
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
	lu12i.w $t1, 0
	ori $t1, $t1, 1
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1883 = load i32 , i32 * %op1882
	lu12i.w $t0, -2
	ori $t0, $t0, 1232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1884 = mul i32  %op1881, %op1883
	lu12i.w $t0, -2
	ori $t0, $t0, 1244
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1228
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1884, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1224
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label1888
	b .long_func_label1888
.long_func_label1885:
# %op1886 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1886, i32 * %op1781
	lu12i.w $t0, -2
	ori $t0, $t0, 1616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1220
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1887 = load i32 , i32 * %op1782
	lu12i.w $t0, -2
	ori $t0, $t0, 1600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1887, i32 * %op1779
	lu12i.w $t0, -2
	ori $t0, $t0, 1632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1216
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1789
	b .long_func_label1789
.long_func_label1888:
# %op1889 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1212
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1890 = icmp slt i32  %op1889, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 1212
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1211
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1891 = zext i1  %op1890 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1211
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1204
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1892 = icmp ne i32  %op1891, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1204
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label251
	addi.d $t2, $zero, 0
	b false_label251
true_label251:
	addi.d $t2, $zero, 1
false_label251:
	lu12i.w $t8, -2
	ori $t8, $t8, 1203
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1892, label %label1893, label %label1897
	lu12i.w $t0, -2
	ori $t0, $t0, 1203
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1893
	b .long_func_label1897
.long_func_label1893:
# %op1894 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1895 = srem i32  %op1894, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1196
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1896 = icmp ne i32  %op1895, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label252
	addi.d $t2, $zero, 0
	b false_label252
true_label252:
	addi.d $t2, $zero, 1
false_label252:
	lu12i.w $t8, -2
	ori $t8, $t8, 1191
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1896, label %label1913, label %label1906
	lu12i.w $t0, -2
	ori $t0, $t0, 1191
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1913
	b .long_func_label1906
.long_func_label1897:
# br label %label1885
	b .long_func_label1885
.long_func_label1898:
# %op1899 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1900 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1901 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1902 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1900
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
	lu12i.w $t1, -2
	ori $t1, $t1, 1180
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1903 = load i32 , i32 * %op1902
	lu12i.w $t0, -2
	ori $t0, $t0, 1168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1904 = mul i32  1, %op1903
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 1164
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1905 = add i32  %op1899, %op1904
	lu12i.w $t0, -2
	ori $t0, $t0, 1184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1160
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1905, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 1156
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1906
	b .long_func_label1906
.long_func_label1906:
# %op1907 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1908 = sdiv i32  %op1907, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1908, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1148
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1909 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1910 = sdiv i32  %op1909, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1910, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 1140
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1911 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1912 = add i32  %op1911, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 1136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1912, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 1132
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1888
	b .long_func_label1888
.long_func_label1913:
# %op1914 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1915 = srem i32  %op1914, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1124
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1916 = icmp ne i32  %op1915, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1124
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label253
	addi.d $t2, $zero, 0
	b false_label253
true_label253:
	addi.d $t2, $zero, 1
false_label253:
	lu12i.w $t8, -2
	ori $t8, $t8, 1123
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1916, label %label1898, label %label1906
	lu12i.w $t0, -2
	ori $t0, $t0, 1123
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1898
	b .long_func_label1906
.long_func_label1917:
# %op1918 = load i32 , i32 * %op1787
	lu12i.w $t0, -2
	ori $t0, $t0, 1568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1116
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1919 = icmp ne i32  %op1918, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1116
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label254
	addi.d $t2, $zero, 0
	b false_label254
true_label254:
	addi.d $t2, $zero, 1
false_label254:
	lu12i.w $t8, -2
	ori $t8, $t8, 1115
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1919, label %label1920, label %label1923
	lu12i.w $t0, -2
	ori $t0, $t0, 1115
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1920
	b .long_func_label1923
.long_func_label1920:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1921 = load i32 , i32 * %op1785
	lu12i.w $t0, -2
	ori $t0, $t0, 1584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1108
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1921, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1108
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1922 = load i32 , i32 * %op1787
	lu12i.w $t0, -2
	ori $t0, $t0, 1568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1922, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 1104
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1931
	b .long_func_label1931
.long_func_label1923:
# %op1924 = load i32 , i32 * %op1785
	lu12i.w $t0, -2
	ori $t0, $t0, 1584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1100
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1924, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 1100
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1925 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1925, i32 * %op1728
	lu12i.w $t0, -2
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1096
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1926 = load i32 , i32 * %op1730
	lu12i.w $t0, -2
	ori $t0, $t0, 1840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1092
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1926, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1092
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op1927 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1928 = icmp sge i32  %op1927, 15
	lu12i.w $t0, -2
	ori $t0, $t0, 1088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label255
	addi.d $t2, $zero, 0
	b false_label255
true_label255:
	addi.d $t2, $zero, 1
false_label255:
	lu12i.w $t8, -2
	ori $t8, $t8, 1087
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1929 = zext i1  %op1928 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1087
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1930 = icmp ne i32  %op1929, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label256
	addi.d $t2, $zero, 0
	b false_label256
true_label256:
	addi.d $t2, $zero, 1
false_label256:
	lu12i.w $t8, -2
	ori $t8, $t8, 1079
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1930, label %label2050, label %label2055
	lu12i.w $t0, -2
	ori $t0, $t0, 1079
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2050
	b .long_func_label2055
.long_func_label1931:
# %op1932 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1933 = icmp slt i32  %op1932, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 1072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1071
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1934 = zext i1  %op1933 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1071
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1935 = icmp ne i32  %op1934, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label258
	addi.d $t2, $zero, 0
	b false_label258
true_label258:
	addi.d $t2, $zero, 1
false_label258:
	lu12i.w $t8, -2
	ori $t8, $t8, 1063
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1935, label %label1936, label %label1940
	lu12i.w $t0, -2
	ori $t0, $t0, 1063
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1936
	b .long_func_label1940
.long_func_label1936:
# %op1937 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1938 = srem i32  %op1937, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1939 = icmp ne i32  %op1938, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label259
	addi.d $t2, $zero, 0
	b false_label259
true_label259:
	addi.d $t2, $zero, 1
false_label259:
	lu12i.w $t8, -2
	ori $t8, $t8, 1051
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1939, label %label1944, label %label1950
	lu12i.w $t0, -2
	ori $t0, $t0, 1051
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1944
	b .long_func_label1950
.long_func_label1940:
# %op1941 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1941, i32 * %op1788
	lu12i.w $t0, -2
	ori $t0, $t0, 1552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1044
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1942 = load i32 , i32 * %op1785
	lu12i.w $t0, -2
	ori $t0, $t0, 1584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1942, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1040
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1943 = load i32 , i32 * %op1787
	lu12i.w $t0, -2
	ori $t0, $t0, 1568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1943, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 1036
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1979
	b .long_func_label1979
.long_func_label1944:
# %op1945 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1946 = srem i32  %op1945, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1947 = icmp eq i32  %op1946, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label260
	addi.d $t2, $zero, 0
	b false_label260
true_label260:
	addi.d $t2, $zero, 1
false_label260:
	lu12i.w $t8, -2
	ori $t8, $t8, 1027
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1948 = zext i1  %op1947 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1027
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1949 = icmp ne i32  %op1948, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label261
	addi.d $t2, $zero, 0
	b false_label261
true_label261:
	addi.d $t2, $zero, 1
false_label261:
	lu12i.w $t8, -2
	ori $t8, $t8, 1019
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1949, label %label1961, label %label1969
	lu12i.w $t0, -2
	ori $t0, $t0, 1019
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1961
	b .long_func_label1969
.long_func_label1950:
# %op1951 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1952 = srem i32  %op1951, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1953 = icmp ne i32  %op1952, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label262
	addi.d $t2, $zero, 0
	b false_label262
true_label262:
	addi.d $t2, $zero, 1
false_label262:
	lu12i.w $t8, -2
	ori $t8, $t8, 1007
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1953, label %label1970, label %label1978
	lu12i.w $t0, -2
	ori $t0, $t0, 1007
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1970
	b .long_func_label1978
.long_func_label1954:
# %op1955 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1956 = sdiv i32  %op1955, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1956, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 996
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1957 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1958 = sdiv i32  %op1957, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1958, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 988
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1959 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1960 = add i32  %op1959, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1960, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 980
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1931
	b .long_func_label1931
.long_func_label1961:
# %op1962 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1963 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1964 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1965 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1963
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
	lu12i.w $t1, -2
	ori $t1, $t1, 972
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1966 = load i32 , i32 * %op1965
	lu12i.w $t0, -2
	ori $t0, $t0, 960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1967 = mul i32  1, %op1966
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 956
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1968 = add i32  %op1962, %op1967
	lu12i.w $t0, -2
	ori $t0, $t0, 976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 952
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1968, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 948
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1969
	b .long_func_label1969
.long_func_label1969:
# br label %label1954
	b .long_func_label1954
.long_func_label1970:
# %op1971 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1972 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1973 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1974 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1972
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
	lu12i.w $t1, -2
	ori $t1, $t1, 940
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1975 = load i32 , i32 * %op1974
	lu12i.w $t0, -2
	ori $t0, $t0, 928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1976 = mul i32  1, %op1975
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 924
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1977 = add i32  %op1971, %op1976
	lu12i.w $t0, -2
	ori $t0, $t0, 944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 920
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1977, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 916
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1978
	b .long_func_label1978
.long_func_label1978:
# br label %label1954
	b .long_func_label1954
.long_func_label1979:
# %op1980 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1981 = icmp slt i32  %op1980, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 911
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1982 = zext i1  %op1981 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 911
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1983 = icmp ne i32  %op1982, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label264
	addi.d $t2, $zero, 0
	b false_label264
true_label264:
	addi.d $t2, $zero, 1
false_label264:
	lu12i.w $t8, -2
	ori $t8, $t8, 903
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1983, label %label1984, label %label1988
	lu12i.w $t0, -2
	ori $t0, $t0, 903
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1984
	b .long_func_label1988
.long_func_label1984:
# %op1985 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1986 = srem i32  %op1985, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1987 = icmp ne i32  %op1986, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label265
	addi.d $t2, $zero, 0
	b false_label265
true_label265:
	addi.d $t2, $zero, 1
false_label265:
	lu12i.w $t8, -2
	ori $t8, $t8, 891
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1987, label %label2008, label %label2001
	lu12i.w $t0, -2
	ori $t0, $t0, 891
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2008
	b .long_func_label2001
.long_func_label1988:
# %op1989 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1989, i32 * %op1787
	lu12i.w $t0, -2
	ori $t0, $t0, 1568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 884
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1990 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 883
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1991 = zext i1  %op1990 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 883
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1992 = icmp ne i32  %op1991, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label267
	addi.d $t2, $zero, 0
	b false_label267
true_label267:
	addi.d $t2, $zero, 1
false_label267:
	lu12i.w $t8, -2
	ori $t8, $t8, 875
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1992, label %label2012, label %label2013
	lu12i.w $t0, -2
	ori $t0, $t0, 875
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2012
	b .long_func_label2013
.long_func_label1993:
# %op1994 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1995 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1996 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1997 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1995
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
	lu12i.w $t1, -2
	ori $t1, $t1, 864
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op1998 = load i32 , i32 * %op1997
	lu12i.w $t0, -2
	ori $t0, $t0, 848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1999 = mul i32  1, %op1998
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 844
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2000 = add i32  %op1994, %op1999
	lu12i.w $t0, -2
	ori $t0, $t0, 868
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 840
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2000, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 836
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2001
	b .long_func_label2001
.long_func_label2001:
# %op2002 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2003 = sdiv i32  %op2002, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2003, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 828
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2004 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2005 = sdiv i32  %op2004, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2005, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 820
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2006 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2007 = add i32  %op2006, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2007, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 812
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1979
	b .long_func_label1979
.long_func_label2008:
# %op2009 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2010 = srem i32  %op2009, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2011 = icmp ne i32  %op2010, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 804
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label268
	addi.d $t2, $zero, 0
	b false_label268
true_label268:
	addi.d $t2, $zero, 1
false_label268:
	lu12i.w $t8, -2
	ori $t8, $t8, 803
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2011, label %label1993, label %label2001
	lu12i.w $t0, -2
	ori $t0, $t0, 803
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1993
	b .long_func_label2001
.long_func_label2012:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2018
	b .long_func_label2018
.long_func_label2013:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2014 = load i32 , i32 * %op1787
	lu12i.w $t0, -2
	ori $t0, $t0, 1568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2015 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
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
	lu12i.w $t1, 0
	ori $t1, $t1, 1
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2016 = load i32 , i32 * %op2015
	lu12i.w $t0, -2
	ori $t0, $t0, 784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2017 = mul i32  %op2014, %op2016
	lu12i.w $t0, -2
	ori $t0, $t0, 796
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 780
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2017, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 776
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label2021
	b .long_func_label2021
.long_func_label2018:
# %op2019 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2019, i32 * %op1787
	lu12i.w $t0, -2
	ori $t0, $t0, 1568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 772
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2020 = load i32 , i32 * %op1788
	lu12i.w $t0, -2
	ori $t0, $t0, 1552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2020, i32 * %op1785
	lu12i.w $t0, -2
	ori $t0, $t0, 1584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 768
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1917
	b .long_func_label1917
.long_func_label2021:
# %op2022 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2023 = icmp slt i32  %op2022, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 764
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 763
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2024 = zext i1  %op2023 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 763
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2025 = icmp ne i32  %op2024, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 756
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label270
	addi.d $t2, $zero, 0
	b false_label270
true_label270:
	addi.d $t2, $zero, 1
false_label270:
	lu12i.w $t8, -2
	ori $t8, $t8, 755
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2025, label %label2026, label %label2030
	lu12i.w $t0, -2
	ori $t0, $t0, 755
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2026
	b .long_func_label2030
.long_func_label2026:
# %op2027 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2028 = srem i32  %op2027, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 748
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2029 = icmp ne i32  %op2028, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label271
	addi.d $t2, $zero, 0
	b false_label271
true_label271:
	addi.d $t2, $zero, 1
false_label271:
	lu12i.w $t8, -2
	ori $t8, $t8, 743
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2029, label %label2046, label %label2039
	lu12i.w $t0, -2
	ori $t0, $t0, 743
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2046
	b .long_func_label2039
.long_func_label2030:
# br label %label2018
	b .long_func_label2018
.long_func_label2031:
# %op2032 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2033 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2034 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2035 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2033
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
	lu12i.w $t1, -2
	ori $t1, $t1, 732
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2036 = load i32 , i32 * %op2035
	lu12i.w $t0, -2
	ori $t0, $t0, 720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2037 = mul i32  1, %op2036
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 716
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2038 = add i32  %op2032, %op2037
	lu12i.w $t0, -2
	ori $t0, $t0, 736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 712
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2038, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 708
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2039
	b .long_func_label2039
.long_func_label2039:
# %op2040 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2041 = sdiv i32  %op2040, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2041, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 700
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2042 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2043 = sdiv i32  %op2042, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2043, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 692
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2044 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2045 = add i32  %op2044, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2045, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 684
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2021
	b .long_func_label2021
.long_func_label2046:
# %op2047 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2048 = srem i32  %op2047, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2049 = icmp ne i32  %op2048, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 676
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label272
	addi.d $t2, $zero, 0
	b false_label272
true_label272:
	addi.d $t2, $zero, 1
false_label272:
	lu12i.w $t8, -2
	ori $t8, $t8, 675
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2049, label %label2031, label %label2039
	lu12i.w $t0, -2
	ori $t0, $t0, 675
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2031
	b .long_func_label2039
.long_func_label2050:
# %op2051 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2052 = icmp slt i32  %op2051, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 668
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 667
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2053 = zext i1  %op2052 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 667
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2054 = icmp ne i32  %op2053, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 660
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label274
	addi.d $t2, $zero, 0
	b false_label274
true_label274:
	addi.d $t2, $zero, 1
false_label274:
	lu12i.w $t8, -2
	ori $t8, $t8, 659
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2054, label %label2062, label %label2063
	lu12i.w $t0, -2
	ori $t0, $t0, 659
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2062
	b .long_func_label2063
.long_func_label2055:
# %op2056 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 652
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2057 = icmp sgt i32  %op2056, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 652
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 651
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2058 = zext i1  %op2057 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 651
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2059 = icmp ne i32  %op2058, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 644
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label276
	addi.d $t2, $zero, 0
	b false_label276
true_label276:
	addi.d $t2, $zero, 1
false_label276:
	lu12i.w $t8, -2
	ori $t8, $t8, 643
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2059, label %label2065, label %label2070
	lu12i.w $t0, -2
	ori $t0, $t0, 643
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2065
	b .long_func_label2070
.long_func_label2060:
# %op2061 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 636
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2061, i32 * %op1730
	lu12i.w $t0, -2
	ori $t0, $t0, 1840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 636
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1738
	b .long_func_label1738
.long_func_label2062:
# store i32  65535, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label2064
	b .long_func_label2064
.long_func_label2063:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2064
	b .long_func_label2064
.long_func_label2064:
# br label %label2060
	b .long_func_label2060
.long_func_label2065:
# %op2066 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2067 = icmp sgt i32  %op2066, 32767
	lu12i.w $t0, -2
	ori $t0, $t0, 632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 631
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2068 = zext i1  %op2067 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 631
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2069 = icmp ne i32  %op2068, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label278
	addi.d $t2, $zero, 0
	b false_label278
true_label278:
	addi.d $t2, $zero, 1
false_label278:
	lu12i.w $t8, -2
	ori $t8, $t8, 623
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2069, label %label2073, label %label2091
	lu12i.w $t0, -2
	ori $t0, $t0, 623
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2073
	b .long_func_label2091
.long_func_label2070:
# %op2071 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2071, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 616
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2072
	b .long_func_label2072
.long_func_label2072:
# br label %label2060
	b .long_func_label2060
.long_func_label2073:
# %op2074 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2075 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2076 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2077 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2075
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
	lu12i.w $t1, -2
	ori $t1, $t1, 608
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2078 = load i32 , i32 * %op2077
	lu12i.w $t0, -2
	ori $t0, $t0, 592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2079 = sdiv i32  %op2074, %op2078
	lu12i.w $t0, -2
	ori $t0, $t0, 612
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 588
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2079, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 584
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2080 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2081 = add i32  %op2080, 65536
	lu12i.w $t0, -2
	ori $t0, $t0, 580
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2082 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 572
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2083 = sub i32  15, %op2082
	addi.w $t0, $zero, 15
	lu12i.w $t1, -2
	ori $t1, $t1, 572
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2084 = add i32  %op2083, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 564
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2085 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2086 = sub i32  15, %op2085
	addi.w $t0, $zero, 15
	lu12i.w $t1, -2
	ori $t1, $t1, 560
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 556
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2087 = add i32  %op2086, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 556
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2088 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2084
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
	lu12i.w $t1, -2
	ori $t1, $t1, 564
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2089 = load i32 , i32 * %op2088
	lu12i.w $t0, -2
	ori $t0, $t0, 544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2090 = sub i32  %op2081, %op2089
	lu12i.w $t0, -2
	ori $t0, $t0, 576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 540
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2090, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 536
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2098
	b .long_func_label2098
.long_func_label2091:
# %op2092 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2093 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2094 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2095 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2093
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
	lu12i.w $t1, -2
	ori $t1, $t1, 528
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2096 = load i32 , i32 * %op2095
	lu12i.w $t0, -2
	ori $t0, $t0, 512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2097 = sdiv i32  %op2092, %op2096
	lu12i.w $t0, -2
	ori $t0, $t0, 532
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 508
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2097, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 504
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2098
	b .long_func_label2098
.long_func_label2098:
# br label %label2072
	b .long_func_label2072
.long_func_label2099:
# %op2100 = load i32 , i32 * %op1736
	lu12i.w $t0, -2
	ori $t0, $t0, 1792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2101 = icmp ne i32  %op2100, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label279
	addi.d $t2, $zero, 0
	b false_label279
true_label279:
	addi.d $t2, $zero, 1
false_label279:
	lu12i.w $t8, -2
	ori $t8, $t8, 499
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2101, label %label2102, label %label2104
	lu12i.w $t0, -2
	ori $t0, $t0, 499
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2102
	b .long_func_label2104
.long_func_label2102:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2103 = load i32 , i32 * %op1736
	lu12i.w $t0, -2
	ori $t0, $t0, 1792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 492
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2103, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 492
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label2112
	b .long_func_label2112
.long_func_label2104:
# %op2105 = load i32 , i32 * %op1737
	lu12i.w $t0, -2
	ori $t0, $t0, 1776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2105, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 488
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2106 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 484
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2106, i32 * %op1677
	lu12i.w $t0, -2
	ori $t0, $t0, 2056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 484
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2107 = load i32 , i32 * %op1679
	lu12i.w $t0, -2
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2107, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 480
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op2108 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2109 = icmp sge i32  %op2108, 15
	lu12i.w $t0, -2
	ori $t0, $t0, 476
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label280
	addi.d $t2, $zero, 0
	b false_label280
true_label280:
	addi.d $t2, $zero, 1
false_label280:
	lu12i.w $t8, -2
	ori $t8, $t8, 475
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2110 = zext i1  %op2109 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 475
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2111 = icmp ne i32  %op2110, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 468
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label281
	addi.d $t2, $zero, 0
	b false_label281
true_label281:
	addi.d $t2, $zero, 1
false_label281:
	lu12i.w $t8, -2
	ori $t8, $t8, 467
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2111, label %label2465, label %label2470
	lu12i.w $t0, -2
	ori $t0, $t0, 467
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2465
	b .long_func_label2470
.long_func_label2112:
# %op2113 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 460
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2114 = icmp slt i32  %op2113, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 460
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 459
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2115 = zext i1  %op2114 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 459
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 452
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2116 = icmp ne i32  %op2115, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 452
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label283
	addi.d $t2, $zero, 0
	b false_label283
true_label283:
	addi.d $t2, $zero, 1
false_label283:
	lu12i.w $t8, -2
	ori $t8, $t8, 451
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2116, label %label2117, label %label2121
	lu12i.w $t0, -2
	ori $t0, $t0, 451
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2117
	b .long_func_label2121
.long_func_label2117:
# %op2118 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 444
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2119 = srem i32  %op2118, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 444
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2120 = icmp ne i32  %op2119, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label284
	addi.d $t2, $zero, 0
	b false_label284
true_label284:
	addi.d $t2, $zero, 1
false_label284:
	lu12i.w $t8, -2
	ori $t8, $t8, 439
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2120, label %label2139, label %label2132
	lu12i.w $t0, -2
	ori $t0, $t0, 439
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2139
	b .long_func_label2132
.long_func_label2121:
# %op2122 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2123 = icmp ne i32  %op2122, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label285
	addi.d $t2, $zero, 0
	b false_label285
true_label285:
	addi.d $t2, $zero, 1
false_label285:
	lu12i.w $t8, -2
	ori $t8, $t8, 431
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2123, label %label2143, label %label2149
	lu12i.w $t0, -2
	ori $t0, $t0, 431
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2143
	b .long_func_label2149
.long_func_label2124:
# %op2125 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2126 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2127 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2128 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2126
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
	lu12i.w $t1, -2
	ori $t1, $t1, 420
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2129 = load i32 , i32 * %op2128
	lu12i.w $t0, -2
	ori $t0, $t0, 408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2130 = mul i32  1, %op2129
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 404
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2131 = add i32  %op2125, %op2130
	lu12i.w $t0, -2
	ori $t0, $t0, 424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 400
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 396
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2131, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 396
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2132
	b .long_func_label2132
.long_func_label2132:
# %op2133 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2134 = sdiv i32  %op2133, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 388
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2134, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 388
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2135 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2136 = sdiv i32  %op2135, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2136, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 380
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2137 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2138 = add i32  %op2137, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2138, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 372
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2112
	b .long_func_label2112
.long_func_label2139:
# %op2140 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2141 = srem i32  %op2140, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2142 = icmp ne i32  %op2141, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 364
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label286
	addi.d $t2, $zero, 0
	b false_label286
true_label286:
	addi.d $t2, $zero, 1
false_label286:
	lu12i.w $t8, -2
	ori $t8, $t8, 363
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2142, label %label2124, label %label2132
	lu12i.w $t0, -2
	ori $t0, $t0, 363
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2124
	b .long_func_label2132
.long_func_label2143:
# %op2144 = load i32 , i32 * %op1737
	lu12i.w $t0, -2
	ori $t0, $t0, 1776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2145 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 340
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op2144, i32 * %op2145
	lu12i.w $t0, -2
	ori $t0, $t0, 344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 356
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2146 = load i32 , i32 * %op1734
	lu12i.w $t0, -2
	ori $t0, $t0, 1808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2147 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 324
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op2146, i32 * %op2147
	lu12i.w $t0, -2
	ori $t0, $t0, 328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 336
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2148 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 308
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# br label %label2155
	b .long_func_label2155
.long_func_label2149:
# %op2150 = load i32 , i32 * %op1734
	lu12i.w $t0, -2
	ori $t0, $t0, 1808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2151 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 292
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op2150, i32 * %op2151
	lu12i.w $t0, -2
	ori $t0, $t0, 296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 304
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2152 = load i32 , i32 * %op1734
	lu12i.w $t0, -2
	ori $t0, $t0, 1808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2153 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 276
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op2152, i32 * %op2153
	lu12i.w $t0, -2
	ori $t0, $t0, 280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 288
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2154 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 260
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# br label %label2283
	b .long_func_label2283
.long_func_label2155:
# %op2156 = load i32 , i32 * %op2147
	lu12i.w $t0, -2
	ori $t0, $t0, 328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2157 = icmp ne i32  %op2156, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label287
	addi.d $t2, $zero, 0
	b false_label287
true_label287:
	addi.d $t2, $zero, 1
false_label287:
	lu12i.w $t8, -2
	ori $t8, $t8, 255
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2157, label %label2158, label %label2161
	lu12i.w $t0, -2
	ori $t0, $t0, 255
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2158
	b .long_func_label2161
.long_func_label2158:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2159 = load i32 , i32 * %op2145
	lu12i.w $t0, -2
	ori $t0, $t0, 344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2159, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 248
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2160 = load i32 , i32 * %op2147
	lu12i.w $t0, -2
	ori $t0, $t0, 328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2160, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 244
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2164
	b .long_func_label2164
.long_func_label2161:
# %op2162 = load i32 , i32 * %op2145
	lu12i.w $t0, -2
	ori $t0, $t0, 344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2162, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 240
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2163 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 236
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2163, i32 * %op1737
	lu12i.w $t0, -2
	ori $t0, $t0, 1776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 236
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2149
	b .long_func_label2149
.long_func_label2164:
# %op2165 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2166 = icmp slt i32  %op2165, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 231
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2167 = zext i1  %op2166 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 231
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2168 = icmp ne i32  %op2167, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 224
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label289
	addi.d $t2, $zero, 0
	b false_label289
true_label289:
	addi.d $t2, $zero, 1
false_label289:
	lu12i.w $t8, -2
	ori $t8, $t8, 223
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2168, label %label2169, label %label2173
	lu12i.w $t0, -2
	ori $t0, $t0, 223
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2169
	b .long_func_label2173
.long_func_label2169:
# %op2170 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2171 = srem i32  %op2170, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 216
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 212
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2172 = icmp ne i32  %op2171, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 212
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label290
	addi.d $t2, $zero, 0
	b false_label290
true_label290:
	addi.d $t2, $zero, 1
false_label290:
	lu12i.w $t8, -2
	ori $t8, $t8, 211
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2172, label %label2177, label %label2183
	lu12i.w $t0, -2
	ori $t0, $t0, 211
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2177
	b .long_func_label2183
.long_func_label2173:
# %op2174 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 204
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2174, i32 * %op2148
	lu12i.w $t0, -2
	ori $t0, $t0, 312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 204
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2175 = load i32 , i32 * %op2145
	lu12i.w $t0, -2
	ori $t0, $t0, 344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2175, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 200
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2176 = load i32 , i32 * %op2147
	lu12i.w $t0, -2
	ori $t0, $t0, 328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2176, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 196
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2212
	b .long_func_label2212
.long_func_label2177:
# %op2178 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2179 = srem i32  %op2178, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 188
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2180 = icmp eq i32  %op2179, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 188
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label291
	addi.d $t2, $zero, 0
	b false_label291
true_label291:
	addi.d $t2, $zero, 1
false_label291:
	lu12i.w $t8, -2
	ori $t8, $t8, 187
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2181 = zext i1  %op2180 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 187
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2182 = icmp ne i32  %op2181, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 180
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label292
	addi.d $t2, $zero, 0
	b false_label292
true_label292:
	addi.d $t2, $zero, 1
false_label292:
	lu12i.w $t8, -2
	ori $t8, $t8, 179
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2182, label %label2194, label %label2202
	lu12i.w $t0, -2
	ori $t0, $t0, 179
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2194
	b .long_func_label2202
.long_func_label2183:
# %op2184 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 172
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2185 = srem i32  %op2184, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 172
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2186 = icmp ne i32  %op2185, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label293
	addi.d $t2, $zero, 0
	b false_label293
true_label293:
	addi.d $t2, $zero, 1
false_label293:
	lu12i.w $t8, -2
	ori $t8, $t8, 167
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2186, label %label2203, label %label2211
	lu12i.w $t0, -2
	ori $t0, $t0, 167
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2203
	b .long_func_label2211
.long_func_label2187:
# %op2188 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2189 = sdiv i32  %op2188, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 160
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2189, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 156
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2190 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2191 = sdiv i32  %op2190, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2191, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 148
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2192 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2193 = add i32  %op2192, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2193, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 140
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2164
	b .long_func_label2164
.long_func_label2194:
# %op2195 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2196 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2197 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2198 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2196
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
	lu12i.w $t1, -2
	ori $t1, $t1, 132
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2199 = load i32 , i32 * %op2198
	lu12i.w $t0, -2
	ori $t0, $t0, 120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 116
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2200 = mul i32  1, %op2199
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 116
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2201 = add i32  %op2195, %op2200
	lu12i.w $t0, -2
	ori $t0, $t0, 136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 112
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 108
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2201, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 108
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2202
	b .long_func_label2202
.long_func_label2202:
# br label %label2187
	b .long_func_label2187
.long_func_label2203:
# %op2204 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2205 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 100
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2206 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 96
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2207 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2205
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
	lu12i.w $t1, -2
	ori $t1, $t1, 100
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 88
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2208 = load i32 , i32 * %op2207
	lu12i.w $t0, -2
	ori $t0, $t0, 88
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 84
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2209 = mul i32  1, %op2208
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 84
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 80
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2210 = add i32  %op2204, %op2209
	lu12i.w $t0, -2
	ori $t0, $t0, 104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 80
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 76
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2210, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 76
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2211
	b .long_func_label2211
.long_func_label2211:
# br label %label2187
	b .long_func_label2187
.long_func_label2212:
# %op2213 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 72
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2214 = icmp slt i32  %op2213, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 72
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 71
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2215 = zext i1  %op2214 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 71
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 64
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2216 = icmp ne i32  %op2215, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 64
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label295
	addi.d $t2, $zero, 0
	b false_label295
true_label295:
	addi.d $t2, $zero, 1
false_label295:
	lu12i.w $t8, -2
	ori $t8, $t8, 63
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2216, label %label2217, label %label2221
	lu12i.w $t0, -2
	ori $t0, $t0, 63
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2217
	b .long_func_label2221
.long_func_label2217:
# %op2218 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 56
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2219 = srem i32  %op2218, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 56
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 52
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2220 = icmp ne i32  %op2219, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 52
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label296
	addi.d $t2, $zero, 0
	b false_label296
true_label296:
	addi.d $t2, $zero, 1
false_label296:
	lu12i.w $t8, -2
	ori $t8, $t8, 51
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2220, label %label2241, label %label2234
	lu12i.w $t0, -2
	ori $t0, $t0, 51
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2241
	b .long_func_label2234
.long_func_label2221:
# %op2222 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 44
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2222, i32 * %op2147
	lu12i.w $t0, -2
	ori $t0, $t0, 328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 44
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2223 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 43
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2224 = zext i1  %op2223 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 43
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 36
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2225 = icmp ne i32  %op2224, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 36
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label298
	addi.d $t2, $zero, 0
	b false_label298
true_label298:
	addi.d $t2, $zero, 1
false_label298:
	lu12i.w $t8, -2
	ori $t8, $t8, 35
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2225, label %label2245, label %label2246
	lu12i.w $t0, -2
	ori $t0, $t0, 35
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2245
	b .long_func_label2246
.long_func_label2226:
# %op2227 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 28
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2228 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 24
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2229 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 20
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2230 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2228
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
	lu12i.w $t1, -2
	ori $t1, $t1, 24
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 8
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2231 = load i32 , i32 * %op2230
	lu12i.w $t0, -2
	ori $t0, $t0, 8
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2232 = mul i32  1, %op2231
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 4
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 0
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2233 = add i32  %op2227, %op2232
	lu12i.w $t0, -2
	ori $t0, $t0, 28
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 0
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4092
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2233, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 4092
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2234
	b .long_func_label2234
.long_func_label2234:
# %op2235 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2236 = sdiv i32  %op2235, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 4088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4084
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2236, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 4084
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2237 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2238 = sdiv i32  %op2237, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 4080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4076
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2238, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 4076
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2239 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2240 = add i32  %op2239, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 4072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4068
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2240, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 4068
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2212
	b .long_func_label2212
.long_func_label2241:
# %op2242 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2243 = srem i32  %op2242, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 4064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2244 = icmp ne i32  %op2243, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 4060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label299
	addi.d $t2, $zero, 0
	b false_label299
true_label299:
	addi.d $t2, $zero, 1
false_label299:
	lu12i.w $t8, -3
	ori $t8, $t8, 4059
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2244, label %label2226, label %label2234
	lu12i.w $t0, -3
	ori $t0, $t0, 4059
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2226
	b .long_func_label2234
.long_func_label2245:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2251
	b .long_func_label2251
.long_func_label2246:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2247 = load i32 , i32 * %op2147
	lu12i.w $t0, -2
	ori $t0, $t0, 328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2248 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
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
	lu12i.w $t1, 0
	ori $t1, $t1, 1
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2249 = load i32 , i32 * %op2248
	lu12i.w $t0, -3
	ori $t0, $t0, 4040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2250 = mul i32  %op2247, %op2249
	lu12i.w $t0, -3
	ori $t0, $t0, 4052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 4036
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2250, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 4032
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label2254
	b .long_func_label2254
.long_func_label2251:
# %op2252 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2252, i32 * %op2147
	lu12i.w $t0, -2
	ori $t0, $t0, 328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 4028
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2253 = load i32 , i32 * %op2148
	lu12i.w $t0, -2
	ori $t0, $t0, 312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2253, i32 * %op2145
	lu12i.w $t0, -2
	ori $t0, $t0, 344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 4024
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2155
	b .long_func_label2155
.long_func_label2254:
# %op2255 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2256 = icmp slt i32  %op2255, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 4020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4019
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2257 = zext i1  %op2256 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 4019
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2258 = icmp ne i32  %op2257, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 4012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label301
	addi.d $t2, $zero, 0
	b false_label301
true_label301:
	addi.d $t2, $zero, 1
false_label301:
	lu12i.w $t8, -3
	ori $t8, $t8, 4011
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2258, label %label2259, label %label2263
	lu12i.w $t0, -3
	ori $t0, $t0, 4011
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2259
	b .long_func_label2263
.long_func_label2259:
# %op2260 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2261 = srem i32  %op2260, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 4004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2262 = icmp ne i32  %op2261, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 4000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label302
	addi.d $t2, $zero, 0
	b false_label302
true_label302:
	addi.d $t2, $zero, 1
false_label302:
	lu12i.w $t8, -3
	ori $t8, $t8, 3999
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2262, label %label2279, label %label2272
	lu12i.w $t0, -3
	ori $t0, $t0, 3999
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2279
	b .long_func_label2272
.long_func_label2263:
# br label %label2251
	b .long_func_label2251
.long_func_label2264:
# %op2265 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2266 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2267 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2268 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2266
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
	lu12i.w $t1, -3
	ori $t1, $t1, 3988
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2269 = load i32 , i32 * %op2268
	lu12i.w $t0, -3
	ori $t0, $t0, 3976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2270 = mul i32  1, %op2269
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 3972
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2271 = add i32  %op2265, %op2270
	lu12i.w $t0, -3
	ori $t0, $t0, 3992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3968
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2271, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 3964
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2272
	b .long_func_label2272
.long_func_label2272:
# %op2273 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2274 = sdiv i32  %op2273, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2274, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 3956
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2275 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2276 = sdiv i32  %op2275, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2276, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 3948
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2277 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2278 = add i32  %op2277, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 3944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2278, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 3940
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2254
	b .long_func_label2254
.long_func_label2279:
# %op2280 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2281 = srem i32  %op2280, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2282 = icmp ne i32  %op2281, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label303
	addi.d $t2, $zero, 0
	b false_label303
true_label303:
	addi.d $t2, $zero, 1
false_label303:
	lu12i.w $t8, -3
	ori $t8, $t8, 3931
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2282, label %label2264, label %label2272
	lu12i.w $t0, -3
	ori $t0, $t0, 3931
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2264
	b .long_func_label2272
.long_func_label2283:
# %op2284 = load i32 , i32 * %op2153
	lu12i.w $t0, -2
	ori $t0, $t0, 280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2285 = icmp ne i32  %op2284, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3924
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label304
	addi.d $t2, $zero, 0
	b false_label304
true_label304:
	addi.d $t2, $zero, 1
false_label304:
	lu12i.w $t8, -3
	ori $t8, $t8, 3923
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2285, label %label2286, label %label2289
	lu12i.w $t0, -3
	ori $t0, $t0, 3923
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2286
	b .long_func_label2289
.long_func_label2286:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2287 = load i32 , i32 * %op2151
	lu12i.w $t0, -2
	ori $t0, $t0, 296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2287, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 3916
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2288 = load i32 , i32 * %op2153
	lu12i.w $t0, -2
	ori $t0, $t0, 280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2288, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 3912
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2297
	b .long_func_label2297
.long_func_label2289:
# %op2290 = load i32 , i32 * %op2151
	lu12i.w $t0, -2
	ori $t0, $t0, 296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2290, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 3908
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2291 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2291, i32 * %op1734
	lu12i.w $t0, -2
	ori $t0, $t0, 1808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3904
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2292 = load i32 , i32 * %op1736
	lu12i.w $t0, -2
	ori $t0, $t0, 1792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2292, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 3900
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op2293 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2294 = icmp sge i32  %op2293, 15
	lu12i.w $t0, -3
	ori $t0, $t0, 3896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label305
	addi.d $t2, $zero, 0
	b false_label305
true_label305:
	addi.d $t2, $zero, 1
false_label305:
	lu12i.w $t8, -3
	ori $t8, $t8, 3895
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2295 = zext i1  %op2294 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3895
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2296 = icmp ne i32  %op2295, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label306
	addi.d $t2, $zero, 0
	b false_label306
true_label306:
	addi.d $t2, $zero, 1
false_label306:
	lu12i.w $t8, -3
	ori $t8, $t8, 3887
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2296, label %label2416, label %label2421
	lu12i.w $t0, -3
	ori $t0, $t0, 3887
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2416
	b .long_func_label2421
.long_func_label2297:
# %op2298 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2299 = icmp slt i32  %op2298, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 3880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3879
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2300 = zext i1  %op2299 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3879
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2301 = icmp ne i32  %op2300, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label308
	addi.d $t2, $zero, 0
	b false_label308
true_label308:
	addi.d $t2, $zero, 1
false_label308:
	lu12i.w $t8, -3
	ori $t8, $t8, 3871
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2301, label %label2302, label %label2306
	lu12i.w $t0, -3
	ori $t0, $t0, 3871
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2302
	b .long_func_label2306
.long_func_label2302:
# %op2303 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2304 = srem i32  %op2303, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2305 = icmp ne i32  %op2304, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label309
	addi.d $t2, $zero, 0
	b false_label309
true_label309:
	addi.d $t2, $zero, 1
false_label309:
	lu12i.w $t8, -3
	ori $t8, $t8, 3859
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2305, label %label2310, label %label2316
	lu12i.w $t0, -3
	ori $t0, $t0, 3859
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2310
	b .long_func_label2316
.long_func_label2306:
# %op2307 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2307, i32 * %op2154
	lu12i.w $t0, -2
	ori $t0, $t0, 264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3852
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2308 = load i32 , i32 * %op2151
	lu12i.w $t0, -2
	ori $t0, $t0, 296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2308, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 3848
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2309 = load i32 , i32 * %op2153
	lu12i.w $t0, -2
	ori $t0, $t0, 280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2309, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 3844
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2345
	b .long_func_label2345
.long_func_label2310:
# %op2311 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2312 = srem i32  %op2311, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2313 = icmp eq i32  %op2312, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3836
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label310
	addi.d $t2, $zero, 0
	b false_label310
true_label310:
	addi.d $t2, $zero, 1
false_label310:
	lu12i.w $t8, -3
	ori $t8, $t8, 3835
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2314 = zext i1  %op2313 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3835
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2315 = icmp ne i32  %op2314, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label311
	addi.d $t2, $zero, 0
	b false_label311
true_label311:
	addi.d $t2, $zero, 1
false_label311:
	lu12i.w $t8, -3
	ori $t8, $t8, 3827
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2315, label %label2327, label %label2335
	lu12i.w $t0, -3
	ori $t0, $t0, 3827
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2327
	b .long_func_label2335
.long_func_label2316:
# %op2317 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2318 = srem i32  %op2317, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3820
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2319 = icmp ne i32  %op2318, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label312
	addi.d $t2, $zero, 0
	b false_label312
true_label312:
	addi.d $t2, $zero, 1
false_label312:
	lu12i.w $t8, -3
	ori $t8, $t8, 3815
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2319, label %label2336, label %label2344
	lu12i.w $t0, -3
	ori $t0, $t0, 3815
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2336
	b .long_func_label2344
.long_func_label2320:
# %op2321 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2322 = sdiv i32  %op2321, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2322, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 3804
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2323 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2324 = sdiv i32  %op2323, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2324, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 3796
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2325 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2326 = add i32  %op2325, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 3792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2326, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 3788
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2297
	b .long_func_label2297
.long_func_label2327:
# %op2328 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2329 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2330 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2331 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2329
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
	lu12i.w $t1, -3
	ori $t1, $t1, 3780
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2332 = load i32 , i32 * %op2331
	lu12i.w $t0, -3
	ori $t0, $t0, 3768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2333 = mul i32  1, %op2332
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 3764
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2334 = add i32  %op2328, %op2333
	lu12i.w $t0, -3
	ori $t0, $t0, 3784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3760
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2334, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 3756
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2335
	b .long_func_label2335
.long_func_label2335:
# br label %label2320
	b .long_func_label2320
.long_func_label2336:
# %op2337 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2338 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2339 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2340 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2338
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
	lu12i.w $t1, -3
	ori $t1, $t1, 3748
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2341 = load i32 , i32 * %op2340
	lu12i.w $t0, -3
	ori $t0, $t0, 3736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2342 = mul i32  1, %op2341
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 3732
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2343 = add i32  %op2337, %op2342
	lu12i.w $t0, -3
	ori $t0, $t0, 3752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3728
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2343, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 3724
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2344
	b .long_func_label2344
.long_func_label2344:
# br label %label2320
	b .long_func_label2320
.long_func_label2345:
# %op2346 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2347 = icmp slt i32  %op2346, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 3720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3719
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2348 = zext i1  %op2347 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3719
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2349 = icmp ne i32  %op2348, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label314
	addi.d $t2, $zero, 0
	b false_label314
true_label314:
	addi.d $t2, $zero, 1
false_label314:
	lu12i.w $t8, -3
	ori $t8, $t8, 3711
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2349, label %label2350, label %label2354
	lu12i.w $t0, -3
	ori $t0, $t0, 3711
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2350
	b .long_func_label2354
.long_func_label2350:
# %op2351 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2352 = srem i32  %op2351, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2353 = icmp ne i32  %op2352, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3700
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label315
	addi.d $t2, $zero, 0
	b false_label315
true_label315:
	addi.d $t2, $zero, 1
false_label315:
	lu12i.w $t8, -3
	ori $t8, $t8, 3699
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2353, label %label2374, label %label2367
	lu12i.w $t0, -3
	ori $t0, $t0, 3699
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2374
	b .long_func_label2367
.long_func_label2354:
# %op2355 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2355, i32 * %op2153
	lu12i.w $t0, -2
	ori $t0, $t0, 280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3692
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2356 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3691
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2357 = zext i1  %op2356 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3691
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2358 = icmp ne i32  %op2357, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3684
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label317
	addi.d $t2, $zero, 0
	b false_label317
true_label317:
	addi.d $t2, $zero, 1
false_label317:
	lu12i.w $t8, -3
	ori $t8, $t8, 3683
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2358, label %label2378, label %label2379
	lu12i.w $t0, -3
	ori $t0, $t0, 3683
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2378
	b .long_func_label2379
.long_func_label2359:
# %op2360 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2361 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2362 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2363 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2361
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
	lu12i.w $t1, -3
	ori $t1, $t1, 3672
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2364 = load i32 , i32 * %op2363
	lu12i.w $t0, -3
	ori $t0, $t0, 3656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3652
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2365 = mul i32  1, %op2364
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 3652
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2366 = add i32  %op2360, %op2365
	lu12i.w $t0, -3
	ori $t0, $t0, 3676
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3648
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2366, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 3644
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2367
	b .long_func_label2367
.long_func_label2367:
# %op2368 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2369 = sdiv i32  %op2368, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3636
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2369, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 3636
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2370 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2371 = sdiv i32  %op2370, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2371, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 3628
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2372 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2373 = add i32  %op2372, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 3624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2373, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 3620
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2345
	b .long_func_label2345
.long_func_label2374:
# %op2375 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2376 = srem i32  %op2375, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2377 = icmp ne i32  %op2376, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3612
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label318
	addi.d $t2, $zero, 0
	b false_label318
true_label318:
	addi.d $t2, $zero, 1
false_label318:
	lu12i.w $t8, -3
	ori $t8, $t8, 3611
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2377, label %label2359, label %label2367
	lu12i.w $t0, -3
	ori $t0, $t0, 3611
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2359
	b .long_func_label2367
.long_func_label2378:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2384
	b .long_func_label2384
.long_func_label2379:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2380 = load i32 , i32 * %op2153
	lu12i.w $t0, -2
	ori $t0, $t0, 280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2381 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
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
	lu12i.w $t1, 0
	ori $t1, $t1, 1
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2382 = load i32 , i32 * %op2381
	lu12i.w $t0, -3
	ori $t0, $t0, 3592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2383 = mul i32  %op2380, %op2382
	lu12i.w $t0, -3
	ori $t0, $t0, 3604
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3588
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2383, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 3584
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label2387
	b .long_func_label2387
.long_func_label2384:
# %op2385 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2385, i32 * %op2153
	lu12i.w $t0, -2
	ori $t0, $t0, 280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3580
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2386 = load i32 , i32 * %op2154
	lu12i.w $t0, -2
	ori $t0, $t0, 264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2386, i32 * %op2151
	lu12i.w $t0, -2
	ori $t0, $t0, 296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3576
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2283
	b .long_func_label2283
.long_func_label2387:
# %op2388 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3572
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2389 = icmp slt i32  %op2388, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 3572
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3571
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2390 = zext i1  %op2389 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3571
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3564
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2391 = icmp ne i32  %op2390, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3564
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label320
	addi.d $t2, $zero, 0
	b false_label320
true_label320:
	addi.d $t2, $zero, 1
false_label320:
	lu12i.w $t8, -3
	ori $t8, $t8, 3563
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2391, label %label2392, label %label2396
	lu12i.w $t0, -3
	ori $t0, $t0, 3563
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2392
	b .long_func_label2396
.long_func_label2392:
# %op2393 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3556
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2394 = srem i32  %op2393, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3556
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2395 = icmp ne i32  %op2394, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label321
	addi.d $t2, $zero, 0
	b false_label321
true_label321:
	addi.d $t2, $zero, 1
false_label321:
	lu12i.w $t8, -3
	ori $t8, $t8, 3551
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2395, label %label2412, label %label2405
	lu12i.w $t0, -3
	ori $t0, $t0, 3551
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2412
	b .long_func_label2405
.long_func_label2396:
# br label %label2384
	b .long_func_label2384
.long_func_label2397:
# %op2398 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2399 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2400 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2401 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2399
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
	lu12i.w $t1, -3
	ori $t1, $t1, 3540
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2402 = load i32 , i32 * %op2401
	lu12i.w $t0, -3
	ori $t0, $t0, 3528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2403 = mul i32  1, %op2402
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 3524
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2404 = add i32  %op2398, %op2403
	lu12i.w $t0, -3
	ori $t0, $t0, 3544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3520
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2404, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 3516
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2405
	b .long_func_label2405
.long_func_label2405:
# %op2406 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2407 = sdiv i32  %op2406, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2407, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 3508
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2408 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2409 = sdiv i32  %op2408, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2409, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 3500
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2410 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2411 = add i32  %op2410, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 3496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3492
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2411, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 3492
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2387
	b .long_func_label2387
.long_func_label2412:
# %op2413 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2414 = srem i32  %op2413, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3484
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2415 = icmp ne i32  %op2414, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3484
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label322
	addi.d $t2, $zero, 0
	b false_label322
true_label322:
	addi.d $t2, $zero, 1
false_label322:
	lu12i.w $t8, -3
	ori $t8, $t8, 3483
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2415, label %label2397, label %label2405
	lu12i.w $t0, -3
	ori $t0, $t0, 3483
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2397
	b .long_func_label2405
.long_func_label2416:
# %op2417 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2418 = icmp slt i32  %op2417, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3476
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3475
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2419 = zext i1  %op2418 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3475
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2420 = icmp ne i32  %op2419, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3468
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label324
	addi.d $t2, $zero, 0
	b false_label324
true_label324:
	addi.d $t2, $zero, 1
false_label324:
	lu12i.w $t8, -3
	ori $t8, $t8, 3467
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2420, label %label2428, label %label2429
	lu12i.w $t0, -3
	ori $t0, $t0, 3467
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2428
	b .long_func_label2429
.long_func_label2421:
# %op2422 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3460
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2423 = icmp sgt i32  %op2422, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3460
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3459
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2424 = zext i1  %op2423 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3459
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3452
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2425 = icmp ne i32  %op2424, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3452
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label326
	addi.d $t2, $zero, 0
	b false_label326
true_label326:
	addi.d $t2, $zero, 1
false_label326:
	lu12i.w $t8, -3
	ori $t8, $t8, 3451
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2425, label %label2431, label %label2436
	lu12i.w $t0, -3
	ori $t0, $t0, 3451
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2431
	b .long_func_label2436
.long_func_label2426:
# %op2427 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3444
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2427, i32 * %op1736
	lu12i.w $t0, -2
	ori $t0, $t0, 1792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3444
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2099
	b .long_func_label2099
.long_func_label2428:
# store i32  65535, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label2430
	b .long_func_label2430
.long_func_label2429:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2430
	b .long_func_label2430
.long_func_label2430:
# br label %label2426
	b .long_func_label2426
.long_func_label2431:
# %op2432 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2433 = icmp sgt i32  %op2432, 32767
	lu12i.w $t0, -3
	ori $t0, $t0, 3440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3439
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2434 = zext i1  %op2433 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3439
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2435 = icmp ne i32  %op2434, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label328
	addi.d $t2, $zero, 0
	b false_label328
true_label328:
	addi.d $t2, $zero, 1
false_label328:
	lu12i.w $t8, -3
	ori $t8, $t8, 3431
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2435, label %label2439, label %label2457
	lu12i.w $t0, -3
	ori $t0, $t0, 3431
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2439
	b .long_func_label2457
.long_func_label2436:
# %op2437 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2437, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 3424
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2438
	b .long_func_label2438
.long_func_label2438:
# br label %label2426
	b .long_func_label2426
.long_func_label2439:
# %op2440 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2441 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2442 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2443 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2441
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
	lu12i.w $t1, -3
	ori $t1, $t1, 3416
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2444 = load i32 , i32 * %op2443
	lu12i.w $t0, -3
	ori $t0, $t0, 3400
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3396
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2445 = sdiv i32  %op2440, %op2444
	lu12i.w $t0, -3
	ori $t0, $t0, 3420
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3396
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2445, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 3392
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2446 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3388
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2447 = add i32  %op2446, 65536
	lu12i.w $t0, -3
	ori $t0, $t0, 3388
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2448 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2449 = sub i32  15, %op2448
	addi.w $t0, $zero, 15
	lu12i.w $t1, -3
	ori $t1, $t1, 3380
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2450 = add i32  %op2449, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 3376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2451 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2452 = sub i32  15, %op2451
	addi.w $t0, $zero, 15
	lu12i.w $t1, -3
	ori $t1, $t1, 3368
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2453 = add i32  %op2452, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 3364
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2454 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2450
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
	lu12i.w $t1, -3
	ori $t1, $t1, 3372
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2455 = load i32 , i32 * %op2454
	lu12i.w $t0, -3
	ori $t0, $t0, 3352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3348
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2456 = sub i32  %op2447, %op2455
	lu12i.w $t0, -3
	ori $t0, $t0, 3384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3348
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2456, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 3344
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2464
	b .long_func_label2464
.long_func_label2457:
# %op2458 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3340
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2459 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2460 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3332
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2461 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2459
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
	lu12i.w $t1, -3
	ori $t1, $t1, 3336
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2462 = load i32 , i32 * %op2461
	lu12i.w $t0, -3
	ori $t0, $t0, 3320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3316
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2463 = sdiv i32  %op2458, %op2462
	lu12i.w $t0, -3
	ori $t0, $t0, 3340
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3316
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2463, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 3312
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2464
	b .long_func_label2464
.long_func_label2464:
# br label %label2438
	b .long_func_label2438
.long_func_label2465:
# %op2466 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2467 = icmp slt i32  %op2466, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3308
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3307
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2468 = zext i1  %op2467 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3307
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3300
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2469 = icmp ne i32  %op2468, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3300
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label330
	addi.d $t2, $zero, 0
	b false_label330
true_label330:
	addi.d $t2, $zero, 1
false_label330:
	lu12i.w $t8, -3
	ori $t8, $t8, 3299
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2469, label %label2477, label %label2478
	lu12i.w $t0, -3
	ori $t0, $t0, 3299
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2477
	b .long_func_label2478
.long_func_label2470:
# %op2471 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3292
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2472 = icmp sgt i32  %op2471, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3292
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3291
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2473 = zext i1  %op2472 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3291
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3284
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2474 = icmp ne i32  %op2473, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3284
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label332
	addi.d $t2, $zero, 0
	b false_label332
true_label332:
	addi.d $t2, $zero, 1
false_label332:
	lu12i.w $t8, -3
	ori $t8, $t8, 3283
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2474, label %label2480, label %label2485
	lu12i.w $t0, -3
	ori $t0, $t0, 3283
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2480
	b .long_func_label2485
.long_func_label2475:
# %op2476 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3276
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2476, i32 * %op1679
	lu12i.w $t0, -2
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3276
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1682
	b .long_func_label1682
.long_func_label2477:
# store i32  65535, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label2479
	b .long_func_label2479
.long_func_label2478:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2479
	b .long_func_label2479
.long_func_label2479:
# br label %label2475
	b .long_func_label2475
.long_func_label2480:
# %op2481 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2482 = icmp sgt i32  %op2481, 32767
	lu12i.w $t0, -3
	ori $t0, $t0, 3272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3271
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2483 = zext i1  %op2482 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3271
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2484 = icmp ne i32  %op2483, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label334
	addi.d $t2, $zero, 0
	b false_label334
true_label334:
	addi.d $t2, $zero, 1
false_label334:
	lu12i.w $t8, -3
	ori $t8, $t8, 3263
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2484, label %label2488, label %label2506
	lu12i.w $t0, -3
	ori $t0, $t0, 3263
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2488
	b .long_func_label2506
.long_func_label2485:
# %op2486 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2486, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 3256
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2487
	b .long_func_label2487
.long_func_label2487:
# br label %label2475
	b .long_func_label2475
.long_func_label2488:
# %op2489 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2490 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2491 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2492 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2490
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
	lu12i.w $t1, -3
	ori $t1, $t1, 3248
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2493 = load i32 , i32 * %op2492
	lu12i.w $t0, -3
	ori $t0, $t0, 3232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2494 = sdiv i32  %op2489, %op2493
	lu12i.w $t0, -3
	ori $t0, $t0, 3252
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3228
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2494, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 3224
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2495 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2496 = add i32  %op2495, 65536
	lu12i.w $t0, -3
	ori $t0, $t0, 3220
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2497 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3212
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2498 = sub i32  15, %op2497
	addi.w $t0, $zero, 15
	lu12i.w $t1, -3
	ori $t1, $t1, 3212
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2499 = add i32  %op2498, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 3208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3204
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2500 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2501 = sub i32  15, %op2500
	addi.w $t0, $zero, 15
	lu12i.w $t1, -3
	ori $t1, $t1, 3200
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2502 = add i32  %op2501, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 3196
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2503 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2499
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
	lu12i.w $t1, -3
	ori $t1, $t1, 3204
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2504 = load i32 , i32 * %op2503
	lu12i.w $t0, -3
	ori $t0, $t0, 3184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2505 = sub i32  %op2496, %op2504
	lu12i.w $t0, -3
	ori $t0, $t0, 3216
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3180
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2505, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 3176
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2513
	b .long_func_label2513
.long_func_label2506:
# %op2507 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3172
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2508 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2509 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2510 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2508
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
	lu12i.w $t1, -3
	ori $t1, $t1, 3168
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2511 = load i32 , i32 * %op2510
	lu12i.w $t0, -3
	ori $t0, $t0, 3152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2512 = sdiv i32  %op2507, %op2511
	lu12i.w $t0, -3
	ori $t0, $t0, 3172
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3148
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2512, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 3144
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2513
	b .long_func_label2513
.long_func_label2513:
# br label %label2487
	b .long_func_label2487
.long_func_label2514:
# %op2515 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2516 = icmp slt i32  %op2515, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 3140
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3139
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2517 = zext i1  %op2516 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3139
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2518 = icmp ne i32  %op2517, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3132
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label336
	addi.d $t2, $zero, 0
	b false_label336
true_label336:
	addi.d $t2, $zero, 1
false_label336:
	lu12i.w $t8, -3
	ori $t8, $t8, 3131
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2518, label %label2519, label %label2524
	lu12i.w $t0, -3
	ori $t0, $t0, 3131
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2519
	b .long_func_label2524
.long_func_label2519:
# %op2520 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3116
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  2, i32 * %op2520
	lu12i.w $t0, -3
	ori $t0, $t0, 3120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op2521 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2522 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3100
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op2521, i32 * %op2522
	lu12i.w $t0, -3
	ori $t0, $t0, 3104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3112
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2523 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3084
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  1, i32 * %op2523
	lu12i.w $t0, -3
	ori $t0, $t0, 3088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label2525
	b .long_func_label2525
.long_func_label2524:
# ret i32  0
	addi.w $a0, $zero, 0
	b long_func_ret
.long_func_label2525:
# %op2526 = load i32 , i32 * %op2522
	lu12i.w $t0, -3
	ori $t0, $t0, 3104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2527 = icmp sgt i32  %op2526, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3079
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2528 = zext i1  %op2527 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3079
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2529 = icmp ne i32  %op2528, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label338
	addi.d $t2, $zero, 0
	b false_label338
true_label338:
	addi.d $t2, $zero, 1
false_label338:
	lu12i.w $t8, -3
	ori $t8, $t8, 3071
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2529, label %label2530, label %label2532
	lu12i.w $t0, -3
	ori $t0, $t0, 3071
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2530
	b .long_func_label2532
.long_func_label2530:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2531 = load i32 , i32 * %op2522
	lu12i.w $t0, -3
	ori $t0, $t0, 3104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2531, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 3064
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label2542
	b .long_func_label2542
.long_func_label2532:
# %op2533 = load i32 , i32 * %op2523
	lu12i.w $t0, -3
	ori $t0, $t0, 3088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2533, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 3060
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2534 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2535 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2536 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2534
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
	lu12i.w $t1, -3
	ori $t1, $t1, 3056
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2537 = load i32 , i32 * %op2536
	lu12i.w $t0, -3
	ori $t0, $t0, 3040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2538 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2539 = icmp ne i32  %op2537, %op2538
	lu12i.w $t0, -3
	ori $t0, $t0, 3036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3032
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bne  $t0, $t1, true_label339
	addi.d $t2, $zero, 0
	b false_label339
true_label339:
	addi.d $t2, $zero, 1
false_label339:
	lu12i.w $t8, -3
	ori $t8, $t8, 3031
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2540 = zext i1  %op2539 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3031
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2541 = icmp ne i32  %op2540, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label340
	addi.d $t2, $zero, 0
	b false_label340
true_label340:
	addi.d $t2, $zero, 1
false_label340:
	lu12i.w $t8, -3
	ori $t8, $t8, 3023
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2541, label %label3361, label %label3362
	lu12i.w $t0, -3
	ori $t0, $t0, 3023
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3361
	b .long_func_label3362
.long_func_label2542:
# %op2543 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2544 = icmp slt i32  %op2543, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 3016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3015
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2545 = zext i1  %op2544 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3015
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2546 = icmp ne i32  %op2545, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label342
	addi.d $t2, $zero, 0
	b false_label342
true_label342:
	addi.d $t2, $zero, 1
false_label342:
	lu12i.w $t8, -3
	ori $t8, $t8, 3007
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2546, label %label2547, label %label2551
	lu12i.w $t0, -3
	ori $t0, $t0, 3007
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2547
	b .long_func_label2551
.long_func_label2547:
# %op2548 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2549 = srem i32  %op2548, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2550 = icmp ne i32  %op2549, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label343
	addi.d $t2, $zero, 0
	b false_label343
true_label343:
	addi.d $t2, $zero, 1
false_label343:
	lu12i.w $t8, -3
	ori $t8, $t8, 2995
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2550, label %label2569, label %label2562
	lu12i.w $t0, -3
	ori $t0, $t0, 2995
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2569
	b .long_func_label2562
.long_func_label2551:
# %op2552 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2553 = icmp ne i32  %op2552, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label344
	addi.d $t2, $zero, 0
	b false_label344
true_label344:
	addi.d $t2, $zero, 1
false_label344:
	lu12i.w $t8, -3
	ori $t8, $t8, 2987
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2553, label %label2573, label %label2579
	lu12i.w $t0, -3
	ori $t0, $t0, 2987
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2573
	b .long_func_label2579
.long_func_label2554:
# %op2555 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2556 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2557 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2558 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2556
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
	lu12i.w $t1, -3
	ori $t1, $t1, 2976
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2559 = load i32 , i32 * %op2558
	lu12i.w $t0, -3
	ori $t0, $t0, 2960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2560 = mul i32  1, %op2559
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 2956
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2561 = add i32  %op2555, %op2560
	lu12i.w $t0, -3
	ori $t0, $t0, 2980
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2952
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2561, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 2948
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2562
	b .long_func_label2562
.long_func_label2562:
# %op2563 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2564 = sdiv i32  %op2563, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2564, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2940
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2565 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2566 = sdiv i32  %op2565, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2566, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 2932
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2567 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2568 = add i32  %op2567, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 2928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2568, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 2924
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2542
	b .long_func_label2542
.long_func_label2569:
# %op2570 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2571 = srem i32  %op2570, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2572 = icmp ne i32  %op2571, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2916
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label345
	addi.d $t2, $zero, 0
	b false_label345
true_label345:
	addi.d $t2, $zero, 1
false_label345:
	lu12i.w $t8, -3
	ori $t8, $t8, 2915
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2572, label %label2554, label %label2562
	lu12i.w $t0, -3
	ori $t0, $t0, 2915
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2554
	b .long_func_label2562
.long_func_label2573:
# %op2574 = load i32 , i32 * %op2523
	lu12i.w $t0, -3
	ori $t0, $t0, 3088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2575 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 2896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op2574, i32 * %op2575
	lu12i.w $t0, -3
	ori $t0, $t0, 2896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2908
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2576 = load i32 , i32 * %op2520
	lu12i.w $t0, -3
	ori $t0, $t0, 3120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2577 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 2880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op2576, i32 * %op2577
	lu12i.w $t0, -3
	ori $t0, $t0, 2880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2888
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2578 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 2864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  0, i32 * %op2578
	lu12i.w $t0, -3
	ori $t0, $t0, 2864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2585
	b .long_func_label2585
.long_func_label2579:
# %op2580 = load i32 , i32 * %op2520
	lu12i.w $t0, -3
	ori $t0, $t0, 3120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2581 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2844
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 2848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op2580, i32 * %op2581
	lu12i.w $t0, -3
	ori $t0, $t0, 2848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2856
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2582 = load i32 , i32 * %op2520
	lu12i.w $t0, -3
	ori $t0, $t0, 3120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2583 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 2832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op2582, i32 * %op2583
	lu12i.w $t0, -3
	ori $t0, $t0, 2832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2840
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2584 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 2816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  0, i32 * %op2584
	lu12i.w $t0, -3
	ori $t0, $t0, 2816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2946
	b .long_func_label2946
.long_func_label2585:
# %op2586 = load i32 , i32 * %op2577
	lu12i.w $t0, -3
	ori $t0, $t0, 2880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2587 = icmp ne i32  %op2586, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label346
	addi.d $t2, $zero, 0
	b false_label346
true_label346:
	addi.d $t2, $zero, 1
false_label346:
	lu12i.w $t8, -3
	ori $t8, $t8, 2807
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2587, label %label2588, label %label2590
	lu12i.w $t0, -3
	ori $t0, $t0, 2807
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2588
	b .long_func_label2590
.long_func_label2588:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2589 = load i32 , i32 * %op2577
	lu12i.w $t0, -3
	ori $t0, $t0, 2880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2589, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2800
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label2593
	b .long_func_label2593
.long_func_label2590:
# %op2591 = load i32 , i32 * %op2578
	lu12i.w $t0, -3
	ori $t0, $t0, 2864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2591, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 2796
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2592 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2592, i32 * %op2523
	lu12i.w $t0, -3
	ori $t0, $t0, 3088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2792
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2579
	b .long_func_label2579
.long_func_label2593:
# %op2594 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2595 = icmp slt i32  %op2594, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 2788
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2787
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2596 = zext i1  %op2595 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2787
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2597 = icmp ne i32  %op2596, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2780
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label348
	addi.d $t2, $zero, 0
	b false_label348
true_label348:
	addi.d $t2, $zero, 1
false_label348:
	lu12i.w $t8, -3
	ori $t8, $t8, 2779
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2597, label %label2598, label %label2602
	lu12i.w $t0, -3
	ori $t0, $t0, 2779
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2598
	b .long_func_label2602
.long_func_label2598:
# %op2599 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2600 = srem i32  %op2599, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2772
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2601 = icmp ne i32  %op2600, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label349
	addi.d $t2, $zero, 0
	b false_label349
true_label349:
	addi.d $t2, $zero, 1
false_label349:
	lu12i.w $t8, -3
	ori $t8, $t8, 2767
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2601, label %label2620, label %label2613
	lu12i.w $t0, -3
	ori $t0, $t0, 2767
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2620
	b .long_func_label2613
.long_func_label2602:
# %op2603 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2604 = icmp ne i32  %op2603, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label350
	addi.d $t2, $zero, 0
	b false_label350
true_label350:
	addi.d $t2, $zero, 1
false_label350:
	lu12i.w $t8, -3
	ori $t8, $t8, 2759
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2604, label %label2624, label %label2630
	lu12i.w $t0, -3
	ori $t0, $t0, 2759
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2624
	b .long_func_label2630
.long_func_label2605:
# %op2606 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2607 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2608 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2609 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2607
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
	lu12i.w $t1, -3
	ori $t1, $t1, 2748
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2610 = load i32 , i32 * %op2609
	lu12i.w $t0, -3
	ori $t0, $t0, 2736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2611 = mul i32  1, %op2610
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 2732
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2612 = add i32  %op2606, %op2611
	lu12i.w $t0, -3
	ori $t0, $t0, 2752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2728
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2612, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 2724
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2613
	b .long_func_label2613
.long_func_label2613:
# %op2614 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2615 = sdiv i32  %op2614, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2615, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2716
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2616 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2617 = sdiv i32  %op2616, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2617, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 2708
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2618 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2619 = add i32  %op2618, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 2704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2619, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 2700
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2593
	b .long_func_label2593
.long_func_label2620:
# %op2621 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2622 = srem i32  %op2621, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2623 = icmp ne i32  %op2622, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2692
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label351
	addi.d $t2, $zero, 0
	b false_label351
true_label351:
	addi.d $t2, $zero, 1
false_label351:
	lu12i.w $t8, -3
	ori $t8, $t8, 2691
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2623, label %label2605, label %label2613
	lu12i.w $t0, -3
	ori $t0, $t0, 2691
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2605
	b .long_func_label2613
.long_func_label2624:
# %op2625 = load i32 , i32 * %op2578
	lu12i.w $t0, -3
	ori $t0, $t0, 2864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2626 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2668
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 2672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op2625, i32 * %op2626
	lu12i.w $t0, -3
	ori $t0, $t0, 2672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2684
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2627 = load i32 , i32 * %op2575
	lu12i.w $t0, -3
	ori $t0, $t0, 2896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2628 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2652
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 2656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op2627, i32 * %op2628
	lu12i.w $t0, -3
	ori $t0, $t0, 2656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2664
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2629 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2636
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 2640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# br label %label2636
	b .long_func_label2636
.long_func_label2630:
# %op2631 = load i32 , i32 * %op2575
	lu12i.w $t0, -3
	ori $t0, $t0, 2896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2632 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 2624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op2631, i32 * %op2632
	lu12i.w $t0, -3
	ori $t0, $t0, 2624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2632
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2633 = load i32 , i32 * %op2575
	lu12i.w $t0, -3
	ori $t0, $t0, 2896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2634 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2604
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 2608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op2633, i32 * %op2634
	lu12i.w $t0, -3
	ori $t0, $t0, 2608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2616
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2635 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2588
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 2592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# br label %label2764
	b .long_func_label2764
.long_func_label2636:
# %op2637 = load i32 , i32 * %op2628
	lu12i.w $t0, -3
	ori $t0, $t0, 2656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2638 = icmp ne i32  %op2637, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label352
	addi.d $t2, $zero, 0
	b false_label352
true_label352:
	addi.d $t2, $zero, 1
false_label352:
	lu12i.w $t8, -3
	ori $t8, $t8, 2583
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2638, label %label2639, label %label2642
	lu12i.w $t0, -3
	ori $t0, $t0, 2583
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2639
	b .long_func_label2642
.long_func_label2639:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2640 = load i32 , i32 * %op2626
	lu12i.w $t0, -3
	ori $t0, $t0, 2672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2640, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2576
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2641 = load i32 , i32 * %op2628
	lu12i.w $t0, -3
	ori $t0, $t0, 2656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2572
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2641, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 2572
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2645
	b .long_func_label2645
.long_func_label2642:
# %op2643 = load i32 , i32 * %op2626
	lu12i.w $t0, -3
	ori $t0, $t0, 2672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2643, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 2568
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2644 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2564
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2644, i32 * %op2578
	lu12i.w $t0, -3
	ori $t0, $t0, 2864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2564
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2630
	b .long_func_label2630
.long_func_label2645:
# %op2646 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2647 = icmp slt i32  %op2646, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 2560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2559
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2648 = zext i1  %op2647 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2559
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2649 = icmp ne i32  %op2648, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label354
	addi.d $t2, $zero, 0
	b false_label354
true_label354:
	addi.d $t2, $zero, 1
false_label354:
	lu12i.w $t8, -3
	ori $t8, $t8, 2551
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2649, label %label2650, label %label2654
	lu12i.w $t0, -3
	ori $t0, $t0, 2551
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2650
	b .long_func_label2654
.long_func_label2650:
# %op2651 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2652 = srem i32  %op2651, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2653 = icmp ne i32  %op2652, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2540
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label355
	addi.d $t2, $zero, 0
	b false_label355
true_label355:
	addi.d $t2, $zero, 1
false_label355:
	lu12i.w $t8, -3
	ori $t8, $t8, 2539
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2653, label %label2658, label %label2664
	lu12i.w $t0, -3
	ori $t0, $t0, 2539
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2658
	b .long_func_label2664
.long_func_label2654:
# %op2655 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2655, i32 * %op2629
	lu12i.w $t0, -3
	ori $t0, $t0, 2640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2532
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2656 = load i32 , i32 * %op2626
	lu12i.w $t0, -3
	ori $t0, $t0, 2672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2656, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2528
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2657 = load i32 , i32 * %op2628
	lu12i.w $t0, -3
	ori $t0, $t0, 2656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2657, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 2524
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2693
	b .long_func_label2693
.long_func_label2658:
# %op2659 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2660 = srem i32  %op2659, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2661 = icmp eq i32  %op2660, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2516
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label356
	addi.d $t2, $zero, 0
	b false_label356
true_label356:
	addi.d $t2, $zero, 1
false_label356:
	lu12i.w $t8, -3
	ori $t8, $t8, 2515
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2662 = zext i1  %op2661 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2515
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2663 = icmp ne i32  %op2662, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label357
	addi.d $t2, $zero, 0
	b false_label357
true_label357:
	addi.d $t2, $zero, 1
false_label357:
	lu12i.w $t8, -3
	ori $t8, $t8, 2507
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2663, label %label2675, label %label2683
	lu12i.w $t0, -3
	ori $t0, $t0, 2507
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2675
	b .long_func_label2683
.long_func_label2664:
# %op2665 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2666 = srem i32  %op2665, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2667 = icmp ne i32  %op2666, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label358
	addi.d $t2, $zero, 0
	b false_label358
true_label358:
	addi.d $t2, $zero, 1
false_label358:
	lu12i.w $t8, -3
	ori $t8, $t8, 2495
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2667, label %label2684, label %label2692
	lu12i.w $t0, -3
	ori $t0, $t0, 2495
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2684
	b .long_func_label2692
.long_func_label2668:
# %op2669 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2670 = sdiv i32  %op2669, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2484
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2670, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2484
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2671 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2672 = sdiv i32  %op2671, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2672, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 2476
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2673 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2674 = add i32  %op2673, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 2472
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2674, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 2468
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2645
	b .long_func_label2645
.long_func_label2675:
# %op2676 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2677 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2460
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2678 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2679 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2677
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
	lu12i.w $t1, -3
	ori $t1, $t1, 2460
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2680 = load i32 , i32 * %op2679
	lu12i.w $t0, -3
	ori $t0, $t0, 2448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2444
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2681 = mul i32  1, %op2680
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 2444
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2682 = add i32  %op2676, %op2681
	lu12i.w $t0, -3
	ori $t0, $t0, 2464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2440
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2682, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 2436
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2683
	b .long_func_label2683
.long_func_label2683:
# br label %label2668
	b .long_func_label2668
.long_func_label2684:
# %op2685 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2686 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2687 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2688 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2686
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
	lu12i.w $t1, -3
	ori $t1, $t1, 2428
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2689 = load i32 , i32 * %op2688
	lu12i.w $t0, -3
	ori $t0, $t0, 2416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2690 = mul i32  1, %op2689
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 2412
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2691 = add i32  %op2685, %op2690
	lu12i.w $t0, -3
	ori $t0, $t0, 2432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2408
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2691, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 2404
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2692
	b .long_func_label2692
.long_func_label2692:
# br label %label2668
	b .long_func_label2668
.long_func_label2693:
# %op2694 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2695 = icmp slt i32  %op2694, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 2400
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2399
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2696 = zext i1  %op2695 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2399
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2697 = icmp ne i32  %op2696, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label360
	addi.d $t2, $zero, 0
	b false_label360
true_label360:
	addi.d $t2, $zero, 1
false_label360:
	lu12i.w $t8, -3
	ori $t8, $t8, 2391
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2697, label %label2698, label %label2702
	lu12i.w $t0, -3
	ori $t0, $t0, 2391
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2698
	b .long_func_label2702
.long_func_label2698:
# %op2699 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2700 = srem i32  %op2699, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2701 = icmp ne i32  %op2700, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2380
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label361
	addi.d $t2, $zero, 0
	b false_label361
true_label361:
	addi.d $t2, $zero, 1
false_label361:
	lu12i.w $t8, -3
	ori $t8, $t8, 2379
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2701, label %label2722, label %label2715
	lu12i.w $t0, -3
	ori $t0, $t0, 2379
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2722
	b .long_func_label2715
.long_func_label2702:
# %op2703 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2703, i32 * %op2628
	lu12i.w $t0, -3
	ori $t0, $t0, 2656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2372
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2704 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 2371
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2705 = zext i1  %op2704 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2371
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2706 = icmp ne i32  %op2705, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2364
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label363
	addi.d $t2, $zero, 0
	b false_label363
true_label363:
	addi.d $t2, $zero, 1
false_label363:
	lu12i.w $t8, -3
	ori $t8, $t8, 2363
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2706, label %label2726, label %label2727
	lu12i.w $t0, -3
	ori $t0, $t0, 2363
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2726
	b .long_func_label2727
.long_func_label2707:
# %op2708 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2709 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2710 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2348
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2711 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2709
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
	lu12i.w $t1, -3
	ori $t1, $t1, 2352
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2712 = load i32 , i32 * %op2711
	lu12i.w $t0, -3
	ori $t0, $t0, 2336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2332
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2713 = mul i32  1, %op2712
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 2332
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2714 = add i32  %op2708, %op2713
	lu12i.w $t0, -3
	ori $t0, $t0, 2356
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2328
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2714, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 2324
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2715
	b .long_func_label2715
.long_func_label2715:
# %op2716 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2717 = sdiv i32  %op2716, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2316
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2717, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2316
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2718 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2719 = sdiv i32  %op2718, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2719, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 2308
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2720 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2721 = add i32  %op2720, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 2304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2300
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2721, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 2300
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2693
	b .long_func_label2693
.long_func_label2722:
# %op2723 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2724 = srem i32  %op2723, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2292
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2725 = icmp ne i32  %op2724, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2292
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label364
	addi.d $t2, $zero, 0
	b false_label364
true_label364:
	addi.d $t2, $zero, 1
false_label364:
	lu12i.w $t8, -3
	ori $t8, $t8, 2291
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2725, label %label2707, label %label2715
	lu12i.w $t0, -3
	ori $t0, $t0, 2291
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2707
	b .long_func_label2715
.long_func_label2726:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2732
	b .long_func_label2732
.long_func_label2727:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2728 = load i32 , i32 * %op2628
	lu12i.w $t0, -3
	ori $t0, $t0, 2656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2284
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2729 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
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
	lu12i.w $t1, 0
	ori $t1, $t1, 1
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2730 = load i32 , i32 * %op2729
	lu12i.w $t0, -3
	ori $t0, $t0, 2272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2731 = mul i32  %op2728, %op2730
	lu12i.w $t0, -3
	ori $t0, $t0, 2284
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2268
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2731, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2264
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label2735
	b .long_func_label2735
.long_func_label2732:
# %op2733 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2733, i32 * %op2628
	lu12i.w $t0, -3
	ori $t0, $t0, 2656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2260
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2734 = load i32 , i32 * %op2629
	lu12i.w $t0, -3
	ori $t0, $t0, 2640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2734, i32 * %op2626
	lu12i.w $t0, -3
	ori $t0, $t0, 2672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2256
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2636
	b .long_func_label2636
.long_func_label2735:
# %op2736 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2737 = icmp slt i32  %op2736, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 2252
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2251
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2738 = zext i1  %op2737 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2251
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2739 = icmp ne i32  %op2738, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2244
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label366
	addi.d $t2, $zero, 0
	b false_label366
true_label366:
	addi.d $t2, $zero, 1
false_label366:
	lu12i.w $t8, -3
	ori $t8, $t8, 2243
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2739, label %label2740, label %label2744
	lu12i.w $t0, -3
	ori $t0, $t0, 2243
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2740
	b .long_func_label2744
.long_func_label2740:
# %op2741 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2236
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2742 = srem i32  %op2741, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2236
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2743 = icmp ne i32  %op2742, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label367
	addi.d $t2, $zero, 0
	b false_label367
true_label367:
	addi.d $t2, $zero, 1
false_label367:
	lu12i.w $t8, -3
	ori $t8, $t8, 2231
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2743, label %label2760, label %label2753
	lu12i.w $t0, -3
	ori $t0, $t0, 2231
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2760
	b .long_func_label2753
.long_func_label2744:
# br label %label2732
	b .long_func_label2732
.long_func_label2745:
# %op2746 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2747 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2748 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2749 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2747
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
	lu12i.w $t1, -3
	ori $t1, $t1, 2220
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2750 = load i32 , i32 * %op2749
	lu12i.w $t0, -3
	ori $t0, $t0, 2208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2204
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2751 = mul i32  1, %op2750
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 2204
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2752 = add i32  %op2746, %op2751
	lu12i.w $t0, -3
	ori $t0, $t0, 2224
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2200
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2752, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 2196
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2753
	b .long_func_label2753
.long_func_label2753:
# %op2754 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2755 = sdiv i32  %op2754, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2188
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2755, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2188
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2756 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2757 = sdiv i32  %op2756, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2757, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 2180
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2758 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2759 = add i32  %op2758, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 2176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2172
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2759, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 2172
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2735
	b .long_func_label2735
.long_func_label2760:
# %op2761 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2762 = srem i32  %op2761, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2763 = icmp ne i32  %op2762, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2164
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label368
	addi.d $t2, $zero, 0
	b false_label368
true_label368:
	addi.d $t2, $zero, 1
false_label368:
	lu12i.w $t8, -3
	ori $t8, $t8, 2163
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2763, label %label2745, label %label2753
	lu12i.w $t0, -3
	ori $t0, $t0, 2163
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2745
	b .long_func_label2753
.long_func_label2764:
# %op2765 = load i32 , i32 * %op2634
	lu12i.w $t0, -3
	ori $t0, $t0, 2608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2766 = icmp ne i32  %op2765, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2156
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label369
	addi.d $t2, $zero, 0
	b false_label369
true_label369:
	addi.d $t2, $zero, 1
false_label369:
	lu12i.w $t8, -3
	ori $t8, $t8, 2155
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2766, label %label2767, label %label2770
	lu12i.w $t0, -3
	ori $t0, $t0, 2155
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2767
	b .long_func_label2770
.long_func_label2767:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2768 = load i32 , i32 * %op2632
	lu12i.w $t0, -3
	ori $t0, $t0, 2624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2768, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2148
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2769 = load i32 , i32 * %op2634
	lu12i.w $t0, -3
	ori $t0, $t0, 2608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2769, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 2144
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2778
	b .long_func_label2778
.long_func_label2770:
# %op2771 = load i32 , i32 * %op2632
	lu12i.w $t0, -3
	ori $t0, $t0, 2624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2771, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 2140
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2772 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2772, i32 * %op2575
	lu12i.w $t0, -3
	ori $t0, $t0, 2896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2136
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2773 = load i32 , i32 * %op2577
	lu12i.w $t0, -3
	ori $t0, $t0, 2880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2773, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2132
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op2774 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2775 = icmp sge i32  %op2774, 15
	lu12i.w $t0, -3
	ori $t0, $t0, 2128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label370
	addi.d $t2, $zero, 0
	b false_label370
true_label370:
	addi.d $t2, $zero, 1
false_label370:
	lu12i.w $t8, -3
	ori $t8, $t8, 2127
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2776 = zext i1  %op2775 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2127
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2777 = icmp ne i32  %op2776, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label371
	addi.d $t2, $zero, 0
	b false_label371
true_label371:
	addi.d $t2, $zero, 1
false_label371:
	lu12i.w $t8, -3
	ori $t8, $t8, 2119
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2777, label %label2897, label %label2902
	lu12i.w $t0, -3
	ori $t0, $t0, 2119
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2897
	b .long_func_label2902
.long_func_label2778:
# %op2779 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2780 = icmp slt i32  %op2779, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 2112
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2111
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2781 = zext i1  %op2780 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2111
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2782 = icmp ne i32  %op2781, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label373
	addi.d $t2, $zero, 0
	b false_label373
true_label373:
	addi.d $t2, $zero, 1
false_label373:
	lu12i.w $t8, -3
	ori $t8, $t8, 2103
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2782, label %label2783, label %label2787
	lu12i.w $t0, -3
	ori $t0, $t0, 2103
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2783
	b .long_func_label2787
.long_func_label2783:
# %op2784 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2785 = srem i32  %op2784, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2096
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2092
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2786 = icmp ne i32  %op2785, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2092
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label374
	addi.d $t2, $zero, 0
	b false_label374
true_label374:
	addi.d $t2, $zero, 1
false_label374:
	lu12i.w $t8, -3
	ori $t8, $t8, 2091
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2786, label %label2791, label %label2797
	lu12i.w $t0, -3
	ori $t0, $t0, 2091
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2791
	b .long_func_label2797
.long_func_label2787:
# %op2788 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2084
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2788, i32 * %op2635
	lu12i.w $t0, -3
	ori $t0, $t0, 2592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2084
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2789 = load i32 , i32 * %op2632
	lu12i.w $t0, -3
	ori $t0, $t0, 2624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2789, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2080
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2790 = load i32 , i32 * %op2634
	lu12i.w $t0, -3
	ori $t0, $t0, 2608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2076
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2790, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 2076
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2826
	b .long_func_label2826
.long_func_label2791:
# %op2792 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2793 = srem i32  %op2792, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2068
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2794 = icmp eq i32  %op2793, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label375
	addi.d $t2, $zero, 0
	b false_label375
true_label375:
	addi.d $t2, $zero, 1
false_label375:
	lu12i.w $t8, -3
	ori $t8, $t8, 2067
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2795 = zext i1  %op2794 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2067
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2796 = icmp ne i32  %op2795, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label376
	addi.d $t2, $zero, 0
	b false_label376
true_label376:
	addi.d $t2, $zero, 1
false_label376:
	lu12i.w $t8, -3
	ori $t8, $t8, 2059
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2796, label %label2808, label %label2816
	lu12i.w $t0, -3
	ori $t0, $t0, 2059
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2808
	b .long_func_label2816
.long_func_label2797:
# %op2798 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2799 = srem i32  %op2798, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2800 = icmp ne i32  %op2799, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label377
	addi.d $t2, $zero, 0
	b false_label377
true_label377:
	addi.d $t2, $zero, 1
false_label377:
	lu12i.w $t8, -3
	ori $t8, $t8, 2047
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2800, label %label2817, label %label2825
	lu12i.w $t0, -3
	ori $t0, $t0, 2047
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2817
	b .long_func_label2825
.long_func_label2801:
# %op2802 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2803 = sdiv i32  %op2802, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2803, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2036
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2804 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2805 = sdiv i32  %op2804, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2805, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 2028
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2806 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2807 = add i32  %op2806, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 2024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2807, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 2020
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2778
	b .long_func_label2778
.long_func_label2808:
# %op2809 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2810 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2811 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2812 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2810
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
	lu12i.w $t1, -3
	ori $t1, $t1, 2012
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2813 = load i32 , i32 * %op2812
	lu12i.w $t0, -3
	ori $t0, $t0, 2000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2814 = mul i32  1, %op2813
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 1996
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2815 = add i32  %op2809, %op2814
	lu12i.w $t0, -3
	ori $t0, $t0, 2016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1992
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2815, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 1988
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2816
	b .long_func_label2816
.long_func_label2816:
# br label %label2801
	b .long_func_label2801
.long_func_label2817:
# %op2818 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2819 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2820 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2821 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2819
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
	lu12i.w $t1, -3
	ori $t1, $t1, 1980
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2822 = load i32 , i32 * %op2821
	lu12i.w $t0, -3
	ori $t0, $t0, 1968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2823 = mul i32  1, %op2822
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 1964
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2824 = add i32  %op2818, %op2823
	lu12i.w $t0, -3
	ori $t0, $t0, 1984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1960
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2824, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 1956
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2825
	b .long_func_label2825
.long_func_label2825:
# br label %label2801
	b .long_func_label2801
.long_func_label2826:
# %op2827 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2828 = icmp slt i32  %op2827, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 1952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1951
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2829 = zext i1  %op2828 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1951
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2830 = icmp ne i32  %op2829, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label379
	addi.d $t2, $zero, 0
	b false_label379
true_label379:
	addi.d $t2, $zero, 1
false_label379:
	lu12i.w $t8, -3
	ori $t8, $t8, 1943
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2830, label %label2831, label %label2835
	lu12i.w $t0, -3
	ori $t0, $t0, 1943
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2831
	b .long_func_label2835
.long_func_label2831:
# %op2832 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2833 = srem i32  %op2832, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2834 = icmp ne i32  %op2833, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label380
	addi.d $t2, $zero, 0
	b false_label380
true_label380:
	addi.d $t2, $zero, 1
false_label380:
	lu12i.w $t8, -3
	ori $t8, $t8, 1931
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2834, label %label2855, label %label2848
	lu12i.w $t0, -3
	ori $t0, $t0, 1931
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2855
	b .long_func_label2848
.long_func_label2835:
# %op2836 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2836, i32 * %op2634
	lu12i.w $t0, -3
	ori $t0, $t0, 2608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1924
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2837 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 1923
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2838 = zext i1  %op2837 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1923
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2839 = icmp ne i32  %op2838, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1916
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label382
	addi.d $t2, $zero, 0
	b false_label382
true_label382:
	addi.d $t2, $zero, 1
false_label382:
	lu12i.w $t8, -3
	ori $t8, $t8, 1915
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2839, label %label2859, label %label2860
	lu12i.w $t0, -3
	ori $t0, $t0, 1915
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2859
	b .long_func_label2860
.long_func_label2840:
# %op2841 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2842 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2843 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2844 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2842
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
	lu12i.w $t1, -3
	ori $t1, $t1, 1904
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2845 = load i32 , i32 * %op2844
	lu12i.w $t0, -3
	ori $t0, $t0, 1888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2846 = mul i32  1, %op2845
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 1884
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2847 = add i32  %op2841, %op2846
	lu12i.w $t0, -3
	ori $t0, $t0, 1908
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1880
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2847, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 1876
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2848
	b .long_func_label2848
.long_func_label2848:
# %op2849 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2850 = sdiv i32  %op2849, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2850, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 1868
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2851 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2852 = sdiv i32  %op2851, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2852, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 1860
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2853 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2854 = add i32  %op2853, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2854, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 1852
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2826
	b .long_func_label2826
.long_func_label2855:
# %op2856 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2857 = srem i32  %op2856, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2858 = icmp ne i32  %op2857, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1844
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label383
	addi.d $t2, $zero, 0
	b false_label383
true_label383:
	addi.d $t2, $zero, 1
false_label383:
	lu12i.w $t8, -3
	ori $t8, $t8, 1843
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2858, label %label2840, label %label2848
	lu12i.w $t0, -3
	ori $t0, $t0, 1843
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2840
	b .long_func_label2848
.long_func_label2859:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2865
	b .long_func_label2865
.long_func_label2860:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2861 = load i32 , i32 * %op2634
	lu12i.w $t0, -3
	ori $t0, $t0, 2608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2862 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
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
	lu12i.w $t1, 0
	ori $t1, $t1, 1
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2863 = load i32 , i32 * %op2862
	lu12i.w $t0, -3
	ori $t0, $t0, 1824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2864 = mul i32  %op2861, %op2863
	lu12i.w $t0, -3
	ori $t0, $t0, 1836
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1820
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2864, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 1816
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label2868
	b .long_func_label2868
.long_func_label2865:
# %op2866 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2866, i32 * %op2634
	lu12i.w $t0, -3
	ori $t0, $t0, 2608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1812
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2867 = load i32 , i32 * %op2635
	lu12i.w $t0, -3
	ori $t0, $t0, 2592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2867, i32 * %op2632
	lu12i.w $t0, -3
	ori $t0, $t0, 2624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1808
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2764
	b .long_func_label2764
.long_func_label2868:
# %op2869 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2870 = icmp slt i32  %op2869, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 1804
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1803
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2871 = zext i1  %op2870 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1803
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2872 = icmp ne i32  %op2871, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1796
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label385
	addi.d $t2, $zero, 0
	b false_label385
true_label385:
	addi.d $t2, $zero, 1
false_label385:
	lu12i.w $t8, -3
	ori $t8, $t8, 1795
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2872, label %label2873, label %label2877
	lu12i.w $t0, -3
	ori $t0, $t0, 1795
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2873
	b .long_func_label2877
.long_func_label2873:
# %op2874 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2875 = srem i32  %op2874, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1788
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2876 = icmp ne i32  %op2875, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label386
	addi.d $t2, $zero, 0
	b false_label386
true_label386:
	addi.d $t2, $zero, 1
false_label386:
	lu12i.w $t8, -3
	ori $t8, $t8, 1783
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2876, label %label2893, label %label2886
	lu12i.w $t0, -3
	ori $t0, $t0, 1783
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2893
	b .long_func_label2886
.long_func_label2877:
# br label %label2865
	b .long_func_label2865
.long_func_label2878:
# %op2879 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2880 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2881 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2882 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2880
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
	lu12i.w $t1, -3
	ori $t1, $t1, 1772
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2883 = load i32 , i32 * %op2882
	lu12i.w $t0, -3
	ori $t0, $t0, 1760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2884 = mul i32  1, %op2883
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 1756
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2885 = add i32  %op2879, %op2884
	lu12i.w $t0, -3
	ori $t0, $t0, 1776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1752
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2885, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 1748
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2886
	b .long_func_label2886
.long_func_label2886:
# %op2887 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2888 = sdiv i32  %op2887, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2888, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 1740
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2889 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2890 = sdiv i32  %op2889, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2890, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 1732
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2891 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2892 = add i32  %op2891, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 1728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2892, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 1724
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2868
	b .long_func_label2868
.long_func_label2893:
# %op2894 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2895 = srem i32  %op2894, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2896 = icmp ne i32  %op2895, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1716
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label387
	addi.d $t2, $zero, 0
	b false_label387
true_label387:
	addi.d $t2, $zero, 1
false_label387:
	lu12i.w $t8, -3
	ori $t8, $t8, 1715
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2896, label %label2878, label %label2886
	lu12i.w $t0, -3
	ori $t0, $t0, 1715
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2878
	b .long_func_label2886
.long_func_label2897:
# %op2898 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2899 = icmp slt i32  %op2898, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1708
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1707
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2900 = zext i1  %op2899 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1707
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2901 = icmp ne i32  %op2900, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1700
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label389
	addi.d $t2, $zero, 0
	b false_label389
true_label389:
	addi.d $t2, $zero, 1
false_label389:
	lu12i.w $t8, -3
	ori $t8, $t8, 1699
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2901, label %label2909, label %label2910
	lu12i.w $t0, -3
	ori $t0, $t0, 1699
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2909
	b .long_func_label2910
.long_func_label2902:
# %op2903 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2904 = icmp sgt i32  %op2903, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1692
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 1691
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2905 = zext i1  %op2904 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1691
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2906 = icmp ne i32  %op2905, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1684
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label391
	addi.d $t2, $zero, 0
	b false_label391
true_label391:
	addi.d $t2, $zero, 1
false_label391:
	lu12i.w $t8, -3
	ori $t8, $t8, 1683
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2906, label %label2912, label %label2917
	lu12i.w $t0, -3
	ori $t0, $t0, 1683
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2912
	b .long_func_label2917
.long_func_label2907:
# %op2908 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2908, i32 * %op2577
	lu12i.w $t0, -3
	ori $t0, $t0, 2880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1676
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2585
	b .long_func_label2585
.long_func_label2909:
# store i32  65535, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label2911
	b .long_func_label2911
.long_func_label2910:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2911
	b .long_func_label2911
.long_func_label2911:
# br label %label2907
	b .long_func_label2907
.long_func_label2912:
# %op2913 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2914 = icmp sgt i32  %op2913, 32767
	lu12i.w $t0, -3
	ori $t0, $t0, 1672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 1671
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2915 = zext i1  %op2914 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1671
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2916 = icmp ne i32  %op2915, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label393
	addi.d $t2, $zero, 0
	b false_label393
true_label393:
	addi.d $t2, $zero, 1
false_label393:
	lu12i.w $t8, -3
	ori $t8, $t8, 1663
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2916, label %label2920, label %label2938
	lu12i.w $t0, -3
	ori $t0, $t0, 1663
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2920
	b .long_func_label2938
.long_func_label2917:
# %op2918 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2918, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 1656
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2919
	b .long_func_label2919
.long_func_label2919:
# br label %label2907
	b .long_func_label2907
.long_func_label2920:
# %op2921 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1652
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2922 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2923 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2924 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2922
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
	lu12i.w $t1, -3
	ori $t1, $t1, 1648
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2925 = load i32 , i32 * %op2924
	lu12i.w $t0, -3
	ori $t0, $t0, 1632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2926 = sdiv i32  %op2921, %op2925
	lu12i.w $t0, -3
	ori $t0, $t0, 1652
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1628
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2926, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 1624
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2927 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2928 = add i32  %op2927, 65536
	lu12i.w $t0, -3
	ori $t0, $t0, 1620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2929 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2930 = sub i32  15, %op2929
	addi.w $t0, $zero, 15
	lu12i.w $t1, -3
	ori $t1, $t1, 1612
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2931 = add i32  %op2930, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 1608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2932 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2933 = sub i32  15, %op2932
	addi.w $t0, $zero, 15
	lu12i.w $t1, -3
	ori $t1, $t1, 1600
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2934 = add i32  %op2933, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 1596
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2935 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2931
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
	lu12i.w $t1, -3
	ori $t1, $t1, 1604
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2936 = load i32 , i32 * %op2935
	lu12i.w $t0, -3
	ori $t0, $t0, 1584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2937 = sub i32  %op2928, %op2936
	lu12i.w $t0, -3
	ori $t0, $t0, 1616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1580
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2937, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 1576
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2945
	b .long_func_label2945
.long_func_label2938:
# %op2939 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1572
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2940 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2941 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1564
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2942 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2940
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
	lu12i.w $t1, -3
	ori $t1, $t1, 1568
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2943 = load i32 , i32 * %op2942
	lu12i.w $t0, -3
	ori $t0, $t0, 1552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1548
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2944 = sdiv i32  %op2939, %op2943
	lu12i.w $t0, -3
	ori $t0, $t0, 1572
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1548
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2944, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 1544
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2945
	b .long_func_label2945
.long_func_label2945:
# br label %label2919
	b .long_func_label2919
.long_func_label2946:
# %op2947 = load i32 , i32 * %op2583
	lu12i.w $t0, -3
	ori $t0, $t0, 2832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2948 = icmp ne i32  %op2947, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1540
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label394
	addi.d $t2, $zero, 0
	b false_label394
true_label394:
	addi.d $t2, $zero, 1
false_label394:
	lu12i.w $t8, -3
	ori $t8, $t8, 1539
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2948, label %label2949, label %label2951
	lu12i.w $t0, -3
	ori $t0, $t0, 1539
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2949
	b .long_func_label2951
.long_func_label2949:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2950 = load i32 , i32 * %op2583
	lu12i.w $t0, -3
	ori $t0, $t0, 2832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2950, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 1532
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label2959
	b .long_func_label2959
.long_func_label2951:
# %op2952 = load i32 , i32 * %op2584
	lu12i.w $t0, -3
	ori $t0, $t0, 2816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2952, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 1528
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2953 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2953, i32 * %op2520
	lu12i.w $t0, -3
	ori $t0, $t0, 3120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1524
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2954 = load i32 , i32 * %op2522
	lu12i.w $t0, -3
	ori $t0, $t0, 3104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2954, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 1520
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op2955 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2956 = icmp sge i32  %op2955, 15
	lu12i.w $t0, -3
	ori $t0, $t0, 1516
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label395
	addi.d $t2, $zero, 0
	b false_label395
true_label395:
	addi.d $t2, $zero, 1
false_label395:
	lu12i.w $t8, -3
	ori $t8, $t8, 1515
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2957 = zext i1  %op2956 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1515
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2958 = icmp ne i32  %op2957, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label396
	addi.d $t2, $zero, 0
	b false_label396
true_label396:
	addi.d $t2, $zero, 1
false_label396:
	lu12i.w $t8, -3
	ori $t8, $t8, 1507
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2958, label %label3312, label %label3317
	lu12i.w $t0, -3
	ori $t0, $t0, 1507
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3312
	b .long_func_label3317
.long_func_label2959:
# %op2960 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2961 = icmp slt i32  %op2960, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 1500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1499
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2962 = zext i1  %op2961 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1499
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1492
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2963 = icmp ne i32  %op2962, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1492
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label398
	addi.d $t2, $zero, 0
	b false_label398
true_label398:
	addi.d $t2, $zero, 1
false_label398:
	lu12i.w $t8, -3
	ori $t8, $t8, 1491
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2963, label %label2964, label %label2968
	lu12i.w $t0, -3
	ori $t0, $t0, 1491
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2964
	b .long_func_label2968
.long_func_label2964:
# %op2965 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1484
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2966 = srem i32  %op2965, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1484
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2967 = icmp ne i32  %op2966, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label399
	addi.d $t2, $zero, 0
	b false_label399
true_label399:
	addi.d $t2, $zero, 1
false_label399:
	lu12i.w $t8, -3
	ori $t8, $t8, 1479
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2967, label %label2986, label %label2979
	lu12i.w $t0, -3
	ori $t0, $t0, 1479
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2986
	b .long_func_label2979
.long_func_label2968:
# %op2969 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2970 = icmp ne i32  %op2969, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1472
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label400
	addi.d $t2, $zero, 0
	b false_label400
true_label400:
	addi.d $t2, $zero, 1
false_label400:
	lu12i.w $t8, -3
	ori $t8, $t8, 1471
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2970, label %label2990, label %label2996
	lu12i.w $t0, -3
	ori $t0, $t0, 1471
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2990
	b .long_func_label2996
.long_func_label2971:
# %op2972 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2973 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1460
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2974 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2975 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2973
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
	lu12i.w $t1, -3
	ori $t1, $t1, 1460
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op2976 = load i32 , i32 * %op2975
	lu12i.w $t0, -3
	ori $t0, $t0, 1448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1444
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2977 = mul i32  1, %op2976
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 1444
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2978 = add i32  %op2972, %op2977
	lu12i.w $t0, -3
	ori $t0, $t0, 1464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1440
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2978, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 1436
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2979
	b .long_func_label2979
.long_func_label2979:
# %op2980 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2981 = sdiv i32  %op2980, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2981, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 1428
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2982 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2983 = sdiv i32  %op2982, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2983, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 1420
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2984 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2985 = add i32  %op2984, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 1416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2985, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 1412
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2959
	b .long_func_label2959
.long_func_label2986:
# %op2987 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2988 = srem i32  %op2987, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2989 = icmp ne i32  %op2988, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1404
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label401
	addi.d $t2, $zero, 0
	b false_label401
true_label401:
	addi.d $t2, $zero, 1
false_label401:
	lu12i.w $t8, -3
	ori $t8, $t8, 1403
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2989, label %label2971, label %label2979
	lu12i.w $t0, -3
	ori $t0, $t0, 1403
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2971
	b .long_func_label2979
.long_func_label2990:
# %op2991 = load i32 , i32 * %op2584
	lu12i.w $t0, -3
	ori $t0, $t0, 2816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1396
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2992 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1380
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 1384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op2991, i32 * %op2992
	lu12i.w $t0, -3
	ori $t0, $t0, 1384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1396
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2993 = load i32 , i32 * %op2581
	lu12i.w $t0, -3
	ori $t0, $t0, 2848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2994 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1364
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 1368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op2993, i32 * %op2994
	lu12i.w $t0, -3
	ori $t0, $t0, 1368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1376
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2995 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1348
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 1352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# br label %label3002
	b .long_func_label3002
.long_func_label2996:
# %op2997 = load i32 , i32 * %op2581
	lu12i.w $t0, -3
	ori $t0, $t0, 2848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2998 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1332
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 1336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op2997, i32 * %op2998
	lu12i.w $t0, -3
	ori $t0, $t0, 1336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1344
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2999 = load i32 , i32 * %op2581
	lu12i.w $t0, -3
	ori $t0, $t0, 2848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3000 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1316
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 1320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32  %op2999, i32 * %op3000
	lu12i.w $t0, -3
	ori $t0, $t0, 1320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1328
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3001 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1300
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 1304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# br label %label3130
	b .long_func_label3130
.long_func_label3002:
# %op3003 = load i32 , i32 * %op2994
	lu12i.w $t0, -3
	ori $t0, $t0, 1368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3004 = icmp ne i32  %op3003, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label402
	addi.d $t2, $zero, 0
	b false_label402
true_label402:
	addi.d $t2, $zero, 1
false_label402:
	lu12i.w $t8, -3
	ori $t8, $t8, 1295
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3004, label %label3005, label %label3008
	lu12i.w $t0, -3
	ori $t0, $t0, 1295
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3005
	b .long_func_label3008
.long_func_label3005:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op3006 = load i32 , i32 * %op2992
	lu12i.w $t0, -3
	ori $t0, $t0, 1384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3006, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 1288
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3007 = load i32 , i32 * %op2994
	lu12i.w $t0, -3
	ori $t0, $t0, 1368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1284
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3007, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 1284
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3011
	b .long_func_label3011
.long_func_label3008:
# %op3009 = load i32 , i32 * %op2992
	lu12i.w $t0, -3
	ori $t0, $t0, 1384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3009, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 1280
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3010 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1276
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3010, i32 * %op2584
	lu12i.w $t0, -3
	ori $t0, $t0, 2816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1276
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2996
	b .long_func_label2996
.long_func_label3011:
# %op3012 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3013 = icmp slt i32  %op3012, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 1272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1271
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3014 = zext i1  %op3013 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1271
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3015 = icmp ne i32  %op3014, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label404
	addi.d $t2, $zero, 0
	b false_label404
true_label404:
	addi.d $t2, $zero, 1
false_label404:
	lu12i.w $t8, -3
	ori $t8, $t8, 1263
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3015, label %label3016, label %label3020
	lu12i.w $t0, -3
	ori $t0, $t0, 1263
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3016
	b .long_func_label3020
.long_func_label3016:
# %op3017 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3018 = srem i32  %op3017, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3019 = icmp ne i32  %op3018, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1252
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label405
	addi.d $t2, $zero, 0
	b false_label405
true_label405:
	addi.d $t2, $zero, 1
false_label405:
	lu12i.w $t8, -3
	ori $t8, $t8, 1251
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3019, label %label3024, label %label3030
	lu12i.w $t0, -3
	ori $t0, $t0, 1251
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3024
	b .long_func_label3030
.long_func_label3020:
# %op3021 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3021, i32 * %op2995
	lu12i.w $t0, -3
	ori $t0, $t0, 1352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1244
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op3022 = load i32 , i32 * %op2992
	lu12i.w $t0, -3
	ori $t0, $t0, 1384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3022, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 1240
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3023 = load i32 , i32 * %op2994
	lu12i.w $t0, -3
	ori $t0, $t0, 1368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1236
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3023, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 1236
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3059
	b .long_func_label3059
.long_func_label3024:
# %op3025 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3026 = srem i32  %op3025, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3027 = icmp eq i32  %op3026, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1228
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label406
	addi.d $t2, $zero, 0
	b false_label406
true_label406:
	addi.d $t2, $zero, 1
false_label406:
	lu12i.w $t8, -3
	ori $t8, $t8, 1227
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3028 = zext i1  %op3027 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1227
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3029 = icmp ne i32  %op3028, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1220
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label407
	addi.d $t2, $zero, 0
	b false_label407
true_label407:
	addi.d $t2, $zero, 1
false_label407:
	lu12i.w $t8, -3
	ori $t8, $t8, 1219
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3029, label %label3041, label %label3049
	lu12i.w $t0, -3
	ori $t0, $t0, 1219
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3041
	b .long_func_label3049
.long_func_label3030:
# %op3031 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1212
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3032 = srem i32  %op3031, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1212
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3033 = icmp ne i32  %op3032, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label408
	addi.d $t2, $zero, 0
	b false_label408
true_label408:
	addi.d $t2, $zero, 1
false_label408:
	lu12i.w $t8, -3
	ori $t8, $t8, 1207
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3033, label %label3050, label %label3058
	lu12i.w $t0, -3
	ori $t0, $t0, 1207
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3050
	b .long_func_label3058
.long_func_label3034:
# %op3035 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3036 = sdiv i32  %op3035, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3036, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 1196
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3037 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3038 = sdiv i32  %op3037, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1188
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3038, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 1188
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3039 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3040 = add i32  %op3039, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 1184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3040, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 1180
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3011
	b .long_func_label3011
.long_func_label3041:
# %op3042 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3043 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1172
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3044 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3045 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op3043
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
	lu12i.w $t1, -3
	ori $t1, $t1, 1172
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op3046 = load i32 , i32 * %op3045
	lu12i.w $t0, -3
	ori $t0, $t0, 1160
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3047 = mul i32  1, %op3046
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 1156
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3048 = add i32  %op3042, %op3047
	lu12i.w $t0, -3
	ori $t0, $t0, 1176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1152
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3048, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 1148
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3049
	b .long_func_label3049
.long_func_label3049:
# br label %label3034
	b .long_func_label3034
.long_func_label3050:
# %op3051 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3052 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3053 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3054 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op3052
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
	lu12i.w $t1, -3
	ori $t1, $t1, 1140
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op3055 = load i32 , i32 * %op3054
	lu12i.w $t0, -3
	ori $t0, $t0, 1128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1124
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3056 = mul i32  1, %op3055
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 1124
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3057 = add i32  %op3051, %op3056
	lu12i.w $t0, -3
	ori $t0, $t0, 1144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1120
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1116
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3057, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 1116
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3058
	b .long_func_label3058
.long_func_label3058:
# br label %label3034
	b .long_func_label3034
.long_func_label3059:
# %op3060 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3061 = icmp slt i32  %op3060, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 1112
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1111
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3062 = zext i1  %op3061 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1111
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3063 = icmp ne i32  %op3062, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label410
	addi.d $t2, $zero, 0
	b false_label410
true_label410:
	addi.d $t2, $zero, 1
false_label410:
	lu12i.w $t8, -3
	ori $t8, $t8, 1103
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3063, label %label3064, label %label3068
	lu12i.w $t0, -3
	ori $t0, $t0, 1103
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3064
	b .long_func_label3068
.long_func_label3064:
# %op3065 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3066 = srem i32  %op3065, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1096
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1092
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3067 = icmp ne i32  %op3066, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1092
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label411
	addi.d $t2, $zero, 0
	b false_label411
true_label411:
	addi.d $t2, $zero, 1
false_label411:
	lu12i.w $t8, -3
	ori $t8, $t8, 1091
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3067, label %label3088, label %label3081
	lu12i.w $t0, -3
	ori $t0, $t0, 1091
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3088
	b .long_func_label3081
.long_func_label3068:
# %op3069 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1084
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3069, i32 * %op2994
	lu12i.w $t0, -3
	ori $t0, $t0, 1368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1084
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3070 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 1083
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3071 = zext i1  %op3070 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1083
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1076
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3072 = icmp ne i32  %op3071, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1076
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label413
	addi.d $t2, $zero, 0
	b false_label413
true_label413:
	addi.d $t2, $zero, 1
false_label413:
	lu12i.w $t8, -3
	ori $t8, $t8, 1075
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3072, label %label3092, label %label3093
	lu12i.w $t0, -3
	ori $t0, $t0, 1075
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3092
	b .long_func_label3093
.long_func_label3073:
# %op3074 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1068
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3075 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3076 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3077 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op3075
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
	lu12i.w $t1, -3
	ori $t1, $t1, 1064
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op3078 = load i32 , i32 * %op3077
	lu12i.w $t0, -3
	ori $t0, $t0, 1048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3079 = mul i32  1, %op3078
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 1044
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3080 = add i32  %op3074, %op3079
	lu12i.w $t0, -3
	ori $t0, $t0, 1068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1040
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3080, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 1036
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3081
	b .long_func_label3081
.long_func_label3081:
# %op3082 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3083 = sdiv i32  %op3082, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3083, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 1028
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3084 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3085 = sdiv i32  %op3084, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3085, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 1020
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3086 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3087 = add i32  %op3086, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 1016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3087, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 1012
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3059
	b .long_func_label3059
.long_func_label3088:
# %op3089 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3090 = srem i32  %op3089, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3091 = icmp ne i32  %op3090, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label414
	addi.d $t2, $zero, 0
	b false_label414
true_label414:
	addi.d $t2, $zero, 1
false_label414:
	lu12i.w $t8, -3
	ori $t8, $t8, 1003
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3091, label %label3073, label %label3081
	lu12i.w $t0, -3
	ori $t0, $t0, 1003
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3073
	b .long_func_label3081
.long_func_label3092:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label3098
	b .long_func_label3098
.long_func_label3093:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op3094 = load i32 , i32 * %op2994
	lu12i.w $t0, -3
	ori $t0, $t0, 1368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3095 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
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
	lu12i.w $t1, 0
	ori $t1, $t1, 1
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op3096 = load i32 , i32 * %op3095
	lu12i.w $t0, -3
	ori $t0, $t0, 984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3097 = mul i32  %op3094, %op3096
	lu12i.w $t0, -3
	ori $t0, $t0, 996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 980
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3097, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 976
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label3101
	b .long_func_label3101
.long_func_label3098:
# %op3099 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3099, i32 * %op2994
	lu12i.w $t0, -3
	ori $t0, $t0, 1368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 972
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3100 = load i32 , i32 * %op2995
	lu12i.w $t0, -3
	ori $t0, $t0, 1352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3100, i32 * %op2992
	lu12i.w $t0, -3
	ori $t0, $t0, 1384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 968
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3002
	b .long_func_label3002
.long_func_label3101:
# %op3102 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3103 = icmp slt i32  %op3102, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 963
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3104 = zext i1  %op3103 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 963
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3105 = icmp ne i32  %op3104, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label416
	addi.d $t2, $zero, 0
	b false_label416
true_label416:
	addi.d $t2, $zero, 1
false_label416:
	lu12i.w $t8, -3
	ori $t8, $t8, 955
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3105, label %label3106, label %label3110
	lu12i.w $t0, -3
	ori $t0, $t0, 955
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3106
	b .long_func_label3110
.long_func_label3106:
# %op3107 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3108 = srem i32  %op3107, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3109 = icmp ne i32  %op3108, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label417
	addi.d $t2, $zero, 0
	b false_label417
true_label417:
	addi.d $t2, $zero, 1
false_label417:
	lu12i.w $t8, -3
	ori $t8, $t8, 943
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3109, label %label3126, label %label3119
	lu12i.w $t0, -3
	ori $t0, $t0, 943
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3126
	b .long_func_label3119
.long_func_label3110:
# br label %label3098
	b .long_func_label3098
.long_func_label3111:
# %op3112 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3113 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3114 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3115 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op3113
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
	lu12i.w $t1, -3
	ori $t1, $t1, 932
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op3116 = load i32 , i32 * %op3115
	lu12i.w $t0, -3
	ori $t0, $t0, 920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3117 = mul i32  1, %op3116
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 916
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3118 = add i32  %op3112, %op3117
	lu12i.w $t0, -3
	ori $t0, $t0, 936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 912
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3118, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 908
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3119
	b .long_func_label3119
.long_func_label3119:
# %op3120 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3121 = sdiv i32  %op3120, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3121, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 900
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3122 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3123 = sdiv i32  %op3122, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3123, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 892
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3124 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3125 = add i32  %op3124, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3125, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 884
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3101
	b .long_func_label3101
.long_func_label3126:
# %op3127 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3128 = srem i32  %op3127, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3129 = icmp ne i32  %op3128, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label418
	addi.d $t2, $zero, 0
	b false_label418
true_label418:
	addi.d $t2, $zero, 1
false_label418:
	lu12i.w $t8, -3
	ori $t8, $t8, 875
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3129, label %label3111, label %label3119
	lu12i.w $t0, -3
	ori $t0, $t0, 875
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3111
	b .long_func_label3119
.long_func_label3130:
# %op3131 = load i32 , i32 * %op3000
	lu12i.w $t0, -3
	ori $t0, $t0, 1320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3132 = icmp ne i32  %op3131, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 868
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label419
	addi.d $t2, $zero, 0
	b false_label419
true_label419:
	addi.d $t2, $zero, 1
false_label419:
	lu12i.w $t8, -3
	ori $t8, $t8, 867
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3132, label %label3133, label %label3136
	lu12i.w $t0, -3
	ori $t0, $t0, 867
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3133
	b .long_func_label3136
.long_func_label3133:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op3134 = load i32 , i32 * %op2998
	lu12i.w $t0, -3
	ori $t0, $t0, 1336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3134, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 860
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3135 = load i32 , i32 * %op3000
	lu12i.w $t0, -3
	ori $t0, $t0, 1320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3135, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 856
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3144
	b .long_func_label3144
.long_func_label3136:
# %op3137 = load i32 , i32 * %op2998
	lu12i.w $t0, -3
	ori $t0, $t0, 1336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3137, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 852
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3138 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3138, i32 * %op2581
	lu12i.w $t0, -3
	ori $t0, $t0, 2848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 848
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3139 = load i32 , i32 * %op2583
	lu12i.w $t0, -3
	ori $t0, $t0, 2832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3139, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 844
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op3140 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3141 = icmp sge i32  %op3140, 15
	lu12i.w $t0, -3
	ori $t0, $t0, 840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label420
	addi.d $t2, $zero, 0
	b false_label420
true_label420:
	addi.d $t2, $zero, 1
false_label420:
	lu12i.w $t8, -3
	ori $t8, $t8, 839
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3142 = zext i1  %op3141 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 839
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3143 = icmp ne i32  %op3142, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label421
	addi.d $t2, $zero, 0
	b false_label421
true_label421:
	addi.d $t2, $zero, 1
false_label421:
	lu12i.w $t8, -3
	ori $t8, $t8, 831
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3143, label %label3263, label %label3268
	lu12i.w $t0, -3
	ori $t0, $t0, 831
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3263
	b .long_func_label3268
.long_func_label3144:
# %op3145 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3146 = icmp slt i32  %op3145, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 823
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3147 = zext i1  %op3146 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 823
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3148 = icmp ne i32  %op3147, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label423
	addi.d $t2, $zero, 0
	b false_label423
true_label423:
	addi.d $t2, $zero, 1
false_label423:
	lu12i.w $t8, -3
	ori $t8, $t8, 815
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3148, label %label3149, label %label3153
	lu12i.w $t0, -3
	ori $t0, $t0, 815
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3149
	b .long_func_label3153
.long_func_label3149:
# %op3150 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3151 = srem i32  %op3150, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3152 = icmp ne i32  %op3151, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 804
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label424
	addi.d $t2, $zero, 0
	b false_label424
true_label424:
	addi.d $t2, $zero, 1
false_label424:
	lu12i.w $t8, -3
	ori $t8, $t8, 803
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3152, label %label3157, label %label3163
	lu12i.w $t0, -3
	ori $t0, $t0, 803
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3157
	b .long_func_label3163
.long_func_label3153:
# %op3154 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3154, i32 * %op3001
	lu12i.w $t0, -3
	ori $t0, $t0, 1304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 796
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op3155 = load i32 , i32 * %op2998
	lu12i.w $t0, -3
	ori $t0, $t0, 1336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3155, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 792
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3156 = load i32 , i32 * %op3000
	lu12i.w $t0, -3
	ori $t0, $t0, 1320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3156, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 788
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3192
	b .long_func_label3192
.long_func_label3157:
# %op3158 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3159 = srem i32  %op3158, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3160 = icmp eq i32  %op3159, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 780
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label425
	addi.d $t2, $zero, 0
	b false_label425
true_label425:
	addi.d $t2, $zero, 1
false_label425:
	lu12i.w $t8, -3
	ori $t8, $t8, 779
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3161 = zext i1  %op3160 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 779
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3162 = icmp ne i32  %op3161, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 772
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label426
	addi.d $t2, $zero, 0
	b false_label426
true_label426:
	addi.d $t2, $zero, 1
false_label426:
	lu12i.w $t8, -3
	ori $t8, $t8, 771
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3162, label %label3174, label %label3182
	lu12i.w $t0, -3
	ori $t0, $t0, 771
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3174
	b .long_func_label3182
.long_func_label3163:
# %op3164 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3165 = srem i32  %op3164, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 764
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3166 = icmp ne i32  %op3165, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label427
	addi.d $t2, $zero, 0
	b false_label427
true_label427:
	addi.d $t2, $zero, 1
false_label427:
	lu12i.w $t8, -3
	ori $t8, $t8, 759
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3166, label %label3183, label %label3191
	lu12i.w $t0, -3
	ori $t0, $t0, 759
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3183
	b .long_func_label3191
.long_func_label3167:
# %op3168 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3169 = sdiv i32  %op3168, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3169, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 748
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3170 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3171 = sdiv i32  %op3170, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3171, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 740
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3172 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3173 = add i32  %op3172, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3173, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 732
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3144
	b .long_func_label3144
.long_func_label3174:
# %op3175 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3176 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3177 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3178 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op3176
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
	lu12i.w $t1, -3
	ori $t1, $t1, 724
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op3179 = load i32 , i32 * %op3178
	lu12i.w $t0, -3
	ori $t0, $t0, 712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3180 = mul i32  1, %op3179
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 708
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3181 = add i32  %op3175, %op3180
	lu12i.w $t0, -3
	ori $t0, $t0, 728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 704
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3181, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 700
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3182
	b .long_func_label3182
.long_func_label3182:
# br label %label3167
	b .long_func_label3167
.long_func_label3183:
# %op3184 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3185 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3186 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3187 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op3185
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
	lu12i.w $t1, -3
	ori $t1, $t1, 692
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op3188 = load i32 , i32 * %op3187
	lu12i.w $t0, -3
	ori $t0, $t0, 680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3189 = mul i32  1, %op3188
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 676
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3190 = add i32  %op3184, %op3189
	lu12i.w $t0, -3
	ori $t0, $t0, 696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 672
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3190, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 668
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3191
	b .long_func_label3191
.long_func_label3191:
# br label %label3167
	b .long_func_label3167
.long_func_label3192:
# %op3193 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3194 = icmp slt i32  %op3193, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 663
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3195 = zext i1  %op3194 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 663
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3196 = icmp ne i32  %op3195, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label429
	addi.d $t2, $zero, 0
	b false_label429
true_label429:
	addi.d $t2, $zero, 1
false_label429:
	lu12i.w $t8, -3
	ori $t8, $t8, 655
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3196, label %label3197, label %label3201
	lu12i.w $t0, -3
	ori $t0, $t0, 655
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3197
	b .long_func_label3201
.long_func_label3197:
# %op3198 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3199 = srem i32  %op3198, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3200 = icmp ne i32  %op3199, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 644
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label430
	addi.d $t2, $zero, 0
	b false_label430
true_label430:
	addi.d $t2, $zero, 1
false_label430:
	lu12i.w $t8, -3
	ori $t8, $t8, 643
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3200, label %label3221, label %label3214
	lu12i.w $t0, -3
	ori $t0, $t0, 643
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3221
	b .long_func_label3214
.long_func_label3201:
# %op3202 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 636
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3202, i32 * %op3000
	lu12i.w $t0, -3
	ori $t0, $t0, 1320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 636
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3203 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 635
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3204 = zext i1  %op3203 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 635
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3205 = icmp ne i32  %op3204, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 628
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label432
	addi.d $t2, $zero, 0
	b false_label432
true_label432:
	addi.d $t2, $zero, 1
false_label432:
	lu12i.w $t8, -3
	ori $t8, $t8, 627
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3205, label %label3225, label %label3226
	lu12i.w $t0, -3
	ori $t0, $t0, 627
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3225
	b .long_func_label3226
.long_func_label3206:
# %op3207 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3208 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3209 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3210 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op3208
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
	lu12i.w $t1, -3
	ori $t1, $t1, 616
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op3211 = load i32 , i32 * %op3210
	lu12i.w $t0, -3
	ori $t0, $t0, 600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3212 = mul i32  1, %op3211
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 596
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3213 = add i32  %op3207, %op3212
	lu12i.w $t0, -3
	ori $t0, $t0, 620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 592
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3213, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 588
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3214
	b .long_func_label3214
.long_func_label3214:
# %op3215 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3216 = sdiv i32  %op3215, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3216, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 580
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3217 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3218 = sdiv i32  %op3217, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 572
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3218, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 572
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3219 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3220 = add i32  %op3219, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 564
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3220, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 564
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3192
	b .long_func_label3192
.long_func_label3221:
# %op3222 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3223 = srem i32  %op3222, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 556
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3224 = icmp ne i32  %op3223, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 556
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label433
	addi.d $t2, $zero, 0
	b false_label433
true_label433:
	addi.d $t2, $zero, 1
false_label433:
	lu12i.w $t8, -3
	ori $t8, $t8, 555
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3224, label %label3206, label %label3214
	lu12i.w $t0, -3
	ori $t0, $t0, 555
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3206
	b .long_func_label3214
.long_func_label3225:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label3231
	b .long_func_label3231
.long_func_label3226:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op3227 = load i32 , i32 * %op3000
	lu12i.w $t0, -3
	ori $t0, $t0, 1320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 548
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3228 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
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
	lu12i.w $t1, 0
	ori $t1, $t1, 1
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op3229 = load i32 , i32 * %op3228
	lu12i.w $t0, -3
	ori $t0, $t0, 536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3230 = mul i32  %op3227, %op3229
	lu12i.w $t0, -3
	ori $t0, $t0, 548
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 532
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3230, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 528
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label3234
	b .long_func_label3234
.long_func_label3231:
# %op3232 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3232, i32 * %op3000
	lu12i.w $t0, -3
	ori $t0, $t0, 1320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 524
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3233 = load i32 , i32 * %op3001
	lu12i.w $t0, -3
	ori $t0, $t0, 1304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3233, i32 * %op2998
	lu12i.w $t0, -3
	ori $t0, $t0, 1336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 520
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3130
	b .long_func_label3130
.long_func_label3234:
# %op3235 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3236 = icmp slt i32  %op3235, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 516
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 515
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3237 = zext i1  %op3236 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 515
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3238 = icmp ne i32  %op3237, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label435
	addi.d $t2, $zero, 0
	b false_label435
true_label435:
	addi.d $t2, $zero, 1
false_label435:
	lu12i.w $t8, -3
	ori $t8, $t8, 507
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3238, label %label3239, label %label3243
	lu12i.w $t0, -3
	ori $t0, $t0, 507
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3239
	b .long_func_label3243
.long_func_label3239:
# %op3240 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3241 = srem i32  %op3240, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3242 = icmp ne i32  %op3241, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label436
	addi.d $t2, $zero, 0
	b false_label436
true_label436:
	addi.d $t2, $zero, 1
false_label436:
	lu12i.w $t8, -3
	ori $t8, $t8, 495
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3242, label %label3259, label %label3252
	lu12i.w $t0, -3
	ori $t0, $t0, 495
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3259
	b .long_func_label3252
.long_func_label3243:
# br label %label3231
	b .long_func_label3231
.long_func_label3244:
# %op3245 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3246 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 484
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3247 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3248 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op3246
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
	lu12i.w $t1, -3
	ori $t1, $t1, 484
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op3249 = load i32 , i32 * %op3248
	lu12i.w $t0, -3
	ori $t0, $t0, 472
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3250 = mul i32  1, %op3249
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 468
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3251 = add i32  %op3245, %op3250
	lu12i.w $t0, -3
	ori $t0, $t0, 488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 464
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 460
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3251, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 460
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3252
	b .long_func_label3252
.long_func_label3252:
# %op3253 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3254 = sdiv i32  %op3253, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 452
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3254, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 452
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3255 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3256 = sdiv i32  %op3255, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 444
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3256, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 444
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3257 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3258 = add i32  %op3257, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3258, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 436
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3234
	b .long_func_label3234
.long_func_label3259:
# %op3260 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3261 = srem i32  %op3260, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3262 = icmp ne i32  %op3261, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 428
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label437
	addi.d $t2, $zero, 0
	b false_label437
true_label437:
	addi.d $t2, $zero, 1
false_label437:
	lu12i.w $t8, -3
	ori $t8, $t8, 427
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3262, label %label3244, label %label3252
	lu12i.w $t0, -3
	ori $t0, $t0, 427
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3244
	b .long_func_label3252
.long_func_label3263:
# %op3264 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3265 = icmp slt i32  %op3264, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 420
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 419
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3266 = zext i1  %op3265 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 419
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3267 = icmp ne i32  %op3266, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 412
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label439
	addi.d $t2, $zero, 0
	b false_label439
true_label439:
	addi.d $t2, $zero, 1
false_label439:
	lu12i.w $t8, -3
	ori $t8, $t8, 411
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3267, label %label3275, label %label3276
	lu12i.w $t0, -3
	ori $t0, $t0, 411
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3275
	b .long_func_label3276
.long_func_label3268:
# %op3269 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3270 = icmp sgt i32  %op3269, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 404
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 403
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3271 = zext i1  %op3270 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 403
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 396
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3272 = icmp ne i32  %op3271, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 396
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label441
	addi.d $t2, $zero, 0
	b false_label441
true_label441:
	addi.d $t2, $zero, 1
false_label441:
	lu12i.w $t8, -3
	ori $t8, $t8, 395
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3272, label %label3278, label %label3283
	lu12i.w $t0, -3
	ori $t0, $t0, 395
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3278
	b .long_func_label3283
.long_func_label3273:
# %op3274 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 388
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3274, i32 * %op2583
	lu12i.w $t0, -3
	ori $t0, $t0, 2832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 388
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2946
	b .long_func_label2946
.long_func_label3275:
# store i32  65535, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label3277
	b .long_func_label3277
.long_func_label3276:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label3277
	b .long_func_label3277
.long_func_label3277:
# br label %label3273
	b .long_func_label3273
.long_func_label3278:
# %op3279 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3280 = icmp sgt i32  %op3279, 32767
	lu12i.w $t0, -3
	ori $t0, $t0, 384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 383
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3281 = zext i1  %op3280 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 383
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3282 = icmp ne i32  %op3281, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label443
	addi.d $t2, $zero, 0
	b false_label443
true_label443:
	addi.d $t2, $zero, 1
false_label443:
	lu12i.w $t8, -3
	ori $t8, $t8, 375
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3282, label %label3286, label %label3304
	lu12i.w $t0, -3
	ori $t0, $t0, 375
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3286
	b .long_func_label3304
.long_func_label3283:
# %op3284 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3284, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 368
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3285
	b .long_func_label3285
.long_func_label3285:
# br label %label3273
	b .long_func_label3273
.long_func_label3286:
# %op3287 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3288 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3289 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3290 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op3288
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
	lu12i.w $t1, -3
	ori $t1, $t1, 360
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op3291 = load i32 , i32 * %op3290
	lu12i.w $t0, -3
	ori $t0, $t0, 344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 340
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3292 = sdiv i32  %op3287, %op3291
	lu12i.w $t0, -3
	ori $t0, $t0, 364
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 340
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3292, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 336
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3293 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 332
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3294 = add i32  %op3293, 65536
	lu12i.w $t0, -3
	ori $t0, $t0, 332
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3295 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3296 = sub i32  15, %op3295
	addi.w $t0, $zero, 15
	lu12i.w $t1, -3
	ori $t1, $t1, 324
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3297 = add i32  %op3296, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 316
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3298 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3299 = sub i32  15, %op3298
	addi.w $t0, $zero, 15
	lu12i.w $t1, -3
	ori $t1, $t1, 312
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3300 = add i32  %op3299, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 308
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3301 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op3297
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
	lu12i.w $t1, -3
	ori $t1, $t1, 316
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op3302 = load i32 , i32 * %op3301
	lu12i.w $t0, -3
	ori $t0, $t0, 296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 292
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3303 = sub i32  %op3294, %op3302
	lu12i.w $t0, -3
	ori $t0, $t0, 328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 292
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3303, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 288
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3311
	b .long_func_label3311
.long_func_label3304:
# %op3305 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 284
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3306 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3307 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 276
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3308 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op3306
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
	lu12i.w $t1, -3
	ori $t1, $t1, 280
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op3309 = load i32 , i32 * %op3308
	lu12i.w $t0, -3
	ori $t0, $t0, 264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3310 = sdiv i32  %op3305, %op3309
	lu12i.w $t0, -3
	ori $t0, $t0, 284
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 260
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3310, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 256
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3311
	b .long_func_label3311
.long_func_label3311:
# br label %label3285
	b .long_func_label3285
.long_func_label3312:
# %op3313 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3314 = icmp slt i32  %op3313, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 252
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 251
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3315 = zext i1  %op3314 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 251
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3316 = icmp ne i32  %op3315, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 244
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label445
	addi.d $t2, $zero, 0
	b false_label445
true_label445:
	addi.d $t2, $zero, 1
false_label445:
	lu12i.w $t8, -3
	ori $t8, $t8, 243
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3316, label %label3324, label %label3325
	lu12i.w $t0, -3
	ori $t0, $t0, 243
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3324
	b .long_func_label3325
.long_func_label3317:
# %op3318 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 236
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3319 = icmp sgt i32  %op3318, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 236
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 235
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3320 = zext i1  %op3319 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 235
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3321 = icmp ne i32  %op3320, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 228
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label447
	addi.d $t2, $zero, 0
	b false_label447
true_label447:
	addi.d $t2, $zero, 1
false_label447:
	lu12i.w $t8, -3
	ori $t8, $t8, 227
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3321, label %label3327, label %label3332
	lu12i.w $t0, -3
	ori $t0, $t0, 227
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3327
	b .long_func_label3332
.long_func_label3322:
# %op3323 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3323, i32 * %op2522
	lu12i.w $t0, -3
	ori $t0, $t0, 3104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 220
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2525
	b .long_func_label2525
.long_func_label3324:
# store i32  65535, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label3326
	b .long_func_label3326
.long_func_label3325:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label3326
	b .long_func_label3326
.long_func_label3326:
# br label %label3322
	b .long_func_label3322
.long_func_label3327:
# %op3328 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3329 = icmp sgt i32  %op3328, 32767
	lu12i.w $t0, -3
	ori $t0, $t0, 216
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 215
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3330 = zext i1  %op3329 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 215
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3331 = icmp ne i32  %op3330, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label449
	addi.d $t2, $zero, 0
	b false_label449
true_label449:
	addi.d $t2, $zero, 1
false_label449:
	lu12i.w $t8, -3
	ori $t8, $t8, 207
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3331, label %label3335, label %label3353
	lu12i.w $t0, -3
	ori $t0, $t0, 207
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3335
	b .long_func_label3353
.long_func_label3332:
# %op3333 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3333, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 200
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3334
	b .long_func_label3334
.long_func_label3334:
# br label %label3322
	b .long_func_label3322
.long_func_label3335:
# %op3336 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3337 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3338 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 188
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3339 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op3337
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
	lu12i.w $t1, -3
	ori $t1, $t1, 192
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op3340 = load i32 , i32 * %op3339
	lu12i.w $t0, -3
	ori $t0, $t0, 176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 172
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3341 = sdiv i32  %op3336, %op3340
	lu12i.w $t0, -3
	ori $t0, $t0, 196
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 172
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3341, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 168
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3342 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3343 = add i32  %op3342, 65536
	lu12i.w $t0, -3
	ori $t0, $t0, 164
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3344 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3345 = sub i32  15, %op3344
	addi.w $t0, $zero, 15
	lu12i.w $t1, -3
	ori $t1, $t1, 156
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3346 = add i32  %op3345, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3347 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3348 = sub i32  15, %op3347
	addi.w $t0, $zero, 15
	lu12i.w $t1, -3
	ori $t1, $t1, 144
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3349 = add i32  %op3348, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 140
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3350 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op3346
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
	lu12i.w $t1, -3
	ori $t1, $t1, 148
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op3351 = load i32 , i32 * %op3350
	lu12i.w $t0, -3
	ori $t0, $t0, 128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 124
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3352 = sub i32  %op3343, %op3351
	lu12i.w $t0, -3
	ori $t0, $t0, 160
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 124
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3352, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 120
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3360
	b .long_func_label3360
.long_func_label3353:
# %op3354 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 116
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3355 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3356 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 108
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3357 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op3355
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
	lu12i.w $t1, -3
	ori $t1, $t1, 112
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, SHIFT_TABLE
	add.d $t0, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 96
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op3358 = load i32 , i32 * %op3357
	lu12i.w $t0, -3
	ori $t0, $t0, 96
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 92
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3359 = sdiv i32  %op3354, %op3358
	lu12i.w $t0, -3
	ori $t0, $t0, 116
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 92
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 88
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3359, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 88
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3360
	b .long_func_label3360
.long_func_label3360:
# br label %label3334
	b .long_func_label3334
.long_func_label3361:
# ret i32  1
	addi.w $a0, $zero, 1
	b long_func_ret
.long_func_label3362:
# %op3363 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 84
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3364 = add i32  %op3363, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 84
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 80
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3364, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 80
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2514
	b .long_func_label2514
long_func_ret:
	lu12i.w $t0, 2
	ori $t0, $t0, 4016
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	sub.d $t0, $zero, $t0
	add.d $sp, $sp, $t0
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
# %op0 = call i32  @long_func()
	bl long_func
	st.w $a0, $fp, -20
# ret i32  %op0
	ld.w $a0, $fp, -20
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

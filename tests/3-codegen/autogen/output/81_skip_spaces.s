	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -544
.main_label_entry:
# %op0 = alloca [100 x i32 ]
	lu12i.w $t0, -1
	ori $t0, $t0, 3672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -24
# %op1 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3660
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -432
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -432
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3644
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -448
# store i32  0, i32 * %op2
	ld.d $t0, $fp, -448
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label3
	b .main_label3
.main_label3:
# %op4 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -456
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -456
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -457
# br i1  %op5, label %label6, label %label13
	ld.b $t0, $fp, -457
	bnez $t0, .main_label6
	b .main_label13
.main_label6:
# %op7 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -464
# %op8 = load i32 , i32 * %op1
	ld.d $t0, $fp, -432
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -468
# %op9 = load i32 , i32 * %op1
	ld.d $t0, $fp, -432
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -472
# %op10 = getelementptr [100 x i32 ], [100 x i32 ]* %op0, i32  0, i32  %op8
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
	ld.w $t1, $fp, -468
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -480
# store i32  %op7, i32 * %op10
	ld.d $t0, $fp, -480
	ld.w $t1, $fp, -464
	st.w $t1, $t0, 0
# %op11 = load i32 , i32 * %op1
	ld.d $t0, $fp, -432
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -484
# %op12 = add i32  %op11, 1
	ld.w $t0, $fp, -484
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -488
# store i32  %op12, i32 * %op1
	ld.d $t0, $fp, -432
	ld.w $t1, $fp, -488
	st.w $t1, $t0, 0
# br label %label3
	b .main_label3
.main_label13:
# br label %label14
	b .main_label14
.main_label14:
# %op15 = load i32 , i32 * %op1
	ld.d $t0, $fp, -432
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -492
# %op16 = icmp ne i32  %op15, 0
	ld.w $t0, $fp, -492
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -493
# br i1  %op16, label %label17, label %label26
	ld.b $t0, $fp, -493
	bnez $t0, .main_label17
	b .main_label26
.main_label17:
# %op18 = load i32 , i32 * %op1
	ld.d $t0, $fp, -432
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -500
# %op19 = sub i32  %op18, 1
	ld.w $t0, $fp, -500
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -504
# store i32  %op19, i32 * %op1
	ld.d $t0, $fp, -432
	ld.w $t1, $fp, -504
	st.w $t1, $t0, 0
# %op20 = load i32 , i32 * %op2
	ld.d $t0, $fp, -448
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -508
# %op21 = load i32 , i32 * %op1
	ld.d $t0, $fp, -432
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -512
# %op22 = load i32 , i32 * %op1
	ld.d $t0, $fp, -432
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -516
# %op23 = getelementptr [100 x i32 ], [100 x i32 ]* %op0, i32  0, i32  %op21
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
	ld.w $t1, $fp, -512
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -24
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -528
# %op24 = load i32 , i32 * %op23
	ld.d $t0, $fp, -528
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -532
# %op25 = add i32  %op20, %op24
	ld.w $t0, $fp, -508
	ld.w $t1, $fp, -532
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -536
# store i32  %op25, i32 * %op2
	ld.d $t0, $fp, -448
	ld.w $t1, $fp, -536
	st.w $t1, $t0, 0
# br label %label14
	b .main_label14
.main_label26:
# %op27 = load i32 , i32 * %op2
	ld.d $t0, $fp, -448
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -540
# %op28 = srem i32  %op27, 79
	ld.w $t0, $fp, -540
	addi.w $t1, $zero, 79
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -544
# ret i32  %op28
	ld.w $a0, $fp, -544
	b main_ret
main_ret:
	addi.d $sp, $sp, 544
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

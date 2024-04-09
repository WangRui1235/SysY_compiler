# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl n
	.type n, @object
	.size n, 4
n:
	.space 4
	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -944
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
# %op6 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3972
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -120
# %op7 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -136
# %op8 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -152
# %op9 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3924
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -168
# %op10 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3908
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -184
# %op11 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -200
# %op12 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -216
# %op13 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -232
# %op14 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3844
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -248
# %op15 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -264
# %op16 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -280
# %op17 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3796
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -296
# %op18 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3780
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -312
# %op19 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3764
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -328
# %op20 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3748
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -344
# %op21 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3732
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -360
# %op22 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3716
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -376
# %op23 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3700
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -392
# %op24 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3684
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -408
# %op25 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3668
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -424
# %op26 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3652
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -440
# %op27 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3636
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -456
# %op28 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -472
# %op29 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3604
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -488
# %op30 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3588
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -504
# %op31 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -512
# store i32  %op31, i32 * %op30
	ld.d $t0, $fp, -504
	ld.w $t1, $fp, -512
	st.w $t1, $t0, 0
# br label %label32
	b .main_label32
.main_label32:
# %op33 = load i32 , i32 * %op30
	ld.d $t0, $fp, -504
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -516
# %op34 = icmp eq i32  %op33, 5
	ld.w $t0, $fp, -516
	addi.w $t1, $zero, 5
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -517
# %op35 = zext i1  %op34 to i32 
	ld.b $t0, $fp, -517
	st.w $t0, $fp, -524
# %op36 = icmp ne i32  %op35, 0
	ld.w $t0, $fp, -524
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -525
# br i1  %op36, label %label37, label %label40
	ld.b $t0, $fp, -525
	bnez $t0, .main_label37
	b .main_label40
.main_label37:
# %op38 = load i32 , i32 * %op30
	ld.d $t0, $fp, -504
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -532
# %op39 = add i32  %op38, 1
	ld.w $t0, $fp, -532
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -536
# store i32  %op39, i32 * %op30
	ld.d $t0, $fp, -504
	ld.w $t1, $fp, -536
	st.w $t1, $t0, 0
# br label %label32
	b .main_label32
.main_label40:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op41 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -540
# %op42 = add i32  %op41, 1
	ld.w $t0, $fp, -540
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -544
# store i32  %op42, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -544
	st.w $t1, $t0, 0
# %op43 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -548
# %op44 = add i32  %op43, 1
	ld.w $t0, $fp, -548
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -552
# store i32  %op44, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -552
	st.w $t1, $t0, 0
# %op45 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -556
# %op46 = add i32  %op45, 1
	ld.w $t0, $fp, -556
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -560
# store i32  %op46, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -560
	st.w $t1, $t0, 0
# %op47 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -564
# %op48 = add i32  %op47, 1
	ld.w $t0, $fp, -564
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -568
# store i32  %op48, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -568
	st.w $t1, $t0, 0
# %op49 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -572
# %op50 = add i32  %op49, 1
	ld.w $t0, $fp, -572
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -576
# store i32  %op50, i32 * %op5
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -576
	st.w $t1, $t0, 0
# %op51 = load i32 , i32 * %op5
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -580
# %op52 = add i32  %op51, 1
	ld.w $t0, $fp, -580
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -584
# store i32  %op52, i32 * %op6
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -584
	st.w $t1, $t0, 0
# %op53 = load i32 , i32 * %op6
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -588
# %op54 = add i32  %op53, 1
	ld.w $t0, $fp, -588
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -592
# store i32  %op54, i32 * %op7
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -592
	st.w $t1, $t0, 0
# %op55 = load i32 , i32 * %op7
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -596
# %op56 = add i32  %op55, 1
	ld.w $t0, $fp, -596
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -600
# store i32  %op56, i32 * %op8
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -600
	st.w $t1, $t0, 0
# %op57 = load i32 , i32 * %op8
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -604
# %op58 = add i32  %op57, 1
	ld.w $t0, $fp, -604
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -608
# store i32  %op58, i32 * %op9
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -608
	st.w $t1, $t0, 0
# %op59 = load i32 , i32 * %op9
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -612
# %op60 = add i32  %op59, 1
	ld.w $t0, $fp, -612
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -616
# store i32  %op60, i32 * %op10
	ld.d $t0, $fp, -184
	ld.w $t1, $fp, -616
	st.w $t1, $t0, 0
# %op61 = load i32 , i32 * %op10
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -620
# %op62 = add i32  %op61, 1
	ld.w $t0, $fp, -620
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -624
# store i32  %op62, i32 * %op11
	ld.d $t0, $fp, -200
	ld.w $t1, $fp, -624
	st.w $t1, $t0, 0
# %op63 = load i32 , i32 * %op11
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -628
# %op64 = add i32  %op63, 1
	ld.w $t0, $fp, -628
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -632
# store i32  %op64, i32 * %op12
	ld.d $t0, $fp, -216
	ld.w $t1, $fp, -632
	st.w $t1, $t0, 0
# %op65 = load i32 , i32 * %op12
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -636
# %op66 = add i32  %op65, 1
	ld.w $t0, $fp, -636
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -640
# store i32  %op66, i32 * %op13
	ld.d $t0, $fp, -232
	ld.w $t1, $fp, -640
	st.w $t1, $t0, 0
# %op67 = load i32 , i32 * %op13
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -644
# %op68 = add i32  %op67, 1
	ld.w $t0, $fp, -644
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -648
# store i32  %op68, i32 * %op14
	ld.d $t0, $fp, -248
	ld.w $t1, $fp, -648
	st.w $t1, $t0, 0
# %op69 = load i32 , i32 * %op14
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -652
# %op70 = add i32  %op69, 1
	ld.w $t0, $fp, -652
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -656
# store i32  %op70, i32 * %op15
	ld.d $t0, $fp, -264
	ld.w $t1, $fp, -656
	st.w $t1, $t0, 0
# %op71 = load i32 , i32 * %op15
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -660
# %op72 = add i32  %op71, 1
	ld.w $t0, $fp, -660
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -664
# store i32  %op72, i32 * %op16
	ld.d $t0, $fp, -280
	ld.w $t1, $fp, -664
	st.w $t1, $t0, 0
# %op73 = load i32 , i32 * %op16
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -668
# %op74 = add i32  %op73, 1
	ld.w $t0, $fp, -668
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -672
# store i32  %op74, i32 * %op17
	ld.d $t0, $fp, -296
	ld.w $t1, $fp, -672
	st.w $t1, $t0, 0
# %op75 = load i32 , i32 * %op17
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -676
# %op76 = add i32  %op75, 1
	ld.w $t0, $fp, -676
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -680
# store i32  %op76, i32 * %op18
	ld.d $t0, $fp, -312
	ld.w $t1, $fp, -680
	st.w $t1, $t0, 0
# %op77 = load i32 , i32 * %op18
	ld.d $t0, $fp, -312
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -684
# %op78 = add i32  %op77, 1
	ld.w $t0, $fp, -684
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -688
# store i32  %op78, i32 * %op19
	ld.d $t0, $fp, -328
	ld.w $t1, $fp, -688
	st.w $t1, $t0, 0
# %op79 = load i32 , i32 * %op19
	ld.d $t0, $fp, -328
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -692
# %op80 = add i32  %op79, 1
	ld.w $t0, $fp, -692
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -696
# store i32  %op80, i32 * %op20
	ld.d $t0, $fp, -344
	ld.w $t1, $fp, -696
	st.w $t1, $t0, 0
# %op81 = load i32 , i32 * %op20
	ld.d $t0, $fp, -344
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -700
# %op82 = add i32  %op81, 1
	ld.w $t0, $fp, -700
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -704
# store i32  %op82, i32 * %op21
	ld.d $t0, $fp, -360
	ld.w $t1, $fp, -704
	st.w $t1, $t0, 0
# %op83 = load i32 , i32 * %op21
	ld.d $t0, $fp, -360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -708
# %op84 = add i32  %op83, 1
	ld.w $t0, $fp, -708
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -712
# store i32  %op84, i32 * %op22
	ld.d $t0, $fp, -376
	ld.w $t1, $fp, -712
	st.w $t1, $t0, 0
# %op85 = load i32 , i32 * %op22
	ld.d $t0, $fp, -376
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -716
# %op86 = add i32  %op85, 1
	ld.w $t0, $fp, -716
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -720
# store i32  %op86, i32 * %op23
	ld.d $t0, $fp, -392
	ld.w $t1, $fp, -720
	st.w $t1, $t0, 0
# %op87 = load i32 , i32 * %op23
	ld.d $t0, $fp, -392
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -724
# %op88 = add i32  %op87, 1
	ld.w $t0, $fp, -724
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -728
# store i32  %op88, i32 * %op24
	ld.d $t0, $fp, -408
	ld.w $t1, $fp, -728
	st.w $t1, $t0, 0
# %op89 = load i32 , i32 * %op24
	ld.d $t0, $fp, -408
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -732
# %op90 = add i32  %op89, 1
	ld.w $t0, $fp, -732
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -736
# store i32  %op90, i32 * %op25
	ld.d $t0, $fp, -424
	ld.w $t1, $fp, -736
	st.w $t1, $t0, 0
# %op91 = load i32 , i32 * %op25
	ld.d $t0, $fp, -424
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -740
# %op92 = add i32  %op91, 1
	ld.w $t0, $fp, -740
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -744
# store i32  %op92, i32 * %op26
	ld.d $t0, $fp, -440
	ld.w $t1, $fp, -744
	st.w $t1, $t0, 0
# %op93 = load i32 , i32 * %op26
	ld.d $t0, $fp, -440
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -748
# %op94 = add i32  %op93, 1
	ld.w $t0, $fp, -748
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -752
# store i32  %op94, i32 * %op27
	ld.d $t0, $fp, -456
	ld.w $t1, $fp, -752
	st.w $t1, $t0, 0
# %op95 = load i32 , i32 * %op27
	ld.d $t0, $fp, -456
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -756
# %op96 = add i32  %op95, 1
	ld.w $t0, $fp, -756
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -760
# store i32  %op96, i32 * %op28
	ld.d $t0, $fp, -472
	ld.w $t1, $fp, -760
	st.w $t1, $t0, 0
# %op97 = load i32 , i32 * %op28
	ld.d $t0, $fp, -472
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -764
# %op98 = add i32  %op97, 1
	ld.w $t0, $fp, -764
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -768
# store i32  %op98, i32 * %op29
	ld.d $t0, $fp, -488
	ld.w $t1, $fp, -768
	st.w $t1, $t0, 0
# %op99 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3316
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -776
# %op100 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -784
# call void @putint(i32  %op100)
	ld.w $a0, $fp, -784
	bl putint
# %op101 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -788
# call void @putint(i32  %op101)
	ld.w $a0, $fp, -788
	bl putint
# %op102 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -792
# call void @putint(i32  %op102)
	ld.w $a0, $fp, -792
	bl putint
# %op103 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -796
# call void @putint(i32  %op103)
	ld.w $a0, $fp, -796
	bl putint
# %op104 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -800
# call void @putint(i32  %op104)
	ld.w $a0, $fp, -800
	bl putint
# %op105 = load i32 , i32 * %op5
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -804
# call void @putint(i32  %op105)
	ld.w $a0, $fp, -804
	bl putint
# %op106 = load i32 , i32 * %op6
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -808
# call void @putint(i32  %op106)
	ld.w $a0, $fp, -808
	bl putint
# %op107 = load i32 , i32 * %op7
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -812
# call void @putint(i32  %op107)
	ld.w $a0, $fp, -812
	bl putint
# %op108 = load i32 , i32 * %op8
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -816
# call void @putint(i32  %op108)
	ld.w $a0, $fp, -816
	bl putint
# %op109 = load i32 , i32 * %op9
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -820
# call void @putint(i32  %op109)
	ld.w $a0, $fp, -820
	bl putint
# %op110 = load i32 , i32 * %op10
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -824
# call void @putint(i32  %op110)
	ld.w $a0, $fp, -824
	bl putint
# %op111 = load i32 , i32 * %op11
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -828
# call void @putint(i32  %op111)
	ld.w $a0, $fp, -828
	bl putint
# %op112 = load i32 , i32 * %op12
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -832
# call void @putint(i32  %op112)
	ld.w $a0, $fp, -832
	bl putint
# %op113 = load i32 , i32 * %op13
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -836
# call void @putint(i32  %op113)
	ld.w $a0, $fp, -836
	bl putint
# %op114 = load i32 , i32 * %op14
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -840
# call void @putint(i32  %op114)
	ld.w $a0, $fp, -840
	bl putint
# %op115 = load i32 , i32 * %op15
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -844
# call void @putint(i32  %op115)
	ld.w $a0, $fp, -844
	bl putint
# %op116 = load i32 , i32 * %op16
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -848
# call void @putint(i32  %op116)
	ld.w $a0, $fp, -848
	bl putint
# %op117 = load i32 , i32 * %op17
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -852
# call void @putint(i32  %op117)
	ld.w $a0, $fp, -852
	bl putint
# %op118 = load i32 , i32 * %op18
	ld.d $t0, $fp, -312
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -856
# call void @putint(i32  %op118)
	ld.w $a0, $fp, -856
	bl putint
# %op119 = load i32 , i32 * %op19
	ld.d $t0, $fp, -328
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -860
# call void @putint(i32  %op119)
	ld.w $a0, $fp, -860
	bl putint
# %op120 = load i32 , i32 * %op20
	ld.d $t0, $fp, -344
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -864
# call void @putint(i32  %op120)
	ld.w $a0, $fp, -864
	bl putint
# %op121 = load i32 , i32 * %op21
	ld.d $t0, $fp, -360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -868
# call void @putint(i32  %op121)
	ld.w $a0, $fp, -868
	bl putint
# %op122 = load i32 , i32 * %op22
	ld.d $t0, $fp, -376
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -872
# call void @putint(i32  %op122)
	ld.w $a0, $fp, -872
	bl putint
# %op123 = load i32 , i32 * %op23
	ld.d $t0, $fp, -392
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -876
# call void @putint(i32  %op123)
	ld.w $a0, $fp, -876
	bl putint
# %op124 = load i32 , i32 * %op24
	ld.d $t0, $fp, -408
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -880
# call void @putint(i32  %op124)
	ld.w $a0, $fp, -880
	bl putint
# %op125 = load i32 , i32 * %op25
	ld.d $t0, $fp, -424
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -884
# call void @putint(i32  %op125)
	ld.w $a0, $fp, -884
	bl putint
# %op126 = load i32 , i32 * %op26
	ld.d $t0, $fp, -440
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -888
# call void @putint(i32  %op126)
	ld.w $a0, $fp, -888
	bl putint
# %op127 = load i32 , i32 * %op27
	ld.d $t0, $fp, -456
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -892
# call void @putint(i32  %op127)
	ld.w $a0, $fp, -892
	bl putint
# %op128 = load i32 , i32 * %op28
	ld.d $t0, $fp, -472
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -896
# call void @putint(i32  %op128)
	ld.w $a0, $fp, -896
	bl putint
# %op129 = load i32 , i32 * %op29
	ld.d $t0, $fp, -488
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -900
# call void @putint(i32  %op129)
	ld.w $a0, $fp, -900
	bl putint
# %op130 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3180
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -912
# store i32  10, i32 * %op130
	ld.d $t0, $fp, -912
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# %op131 = load i32 , i32 * %op130
	ld.d $t0, $fp, -912
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -920
# %op132 = trunc i32  %op131 to i8 
	ld.w $t0, $fp, -920
	andi $t1, $t0, 255
	st.b $t1, $fp, -921
# call void @putch(i8  %op132)
	ld.b $a0, $fp, -921
	bl putch
# %op133 = load i32 , i32 * %op30
	ld.d $t0, $fp, -504
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -928
# call void @putint(i32  %op133)
	ld.w $a0, $fp, -928
	bl putint
# %op134 = load i32 , i32 * %op130
	ld.d $t0, $fp, -912
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -932
# %op135 = trunc i32  %op134 to i8 
	ld.w $t0, $fp, -932
	andi $t1, $t0, 255
	st.b $t1, $fp, -933
# call void @putch(i8  %op135)
	ld.b $a0, $fp, -933
	bl putch
# %op136 = load i32 , i32 * %op25
	ld.d $t0, $fp, -424
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -940
# ret i32  %op136
	ld.w $a0, $fp, -940
	b main_ret
main_ret:
	addi.d $sp, $sp, 944
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

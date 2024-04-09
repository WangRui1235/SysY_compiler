# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl a1
	.data
	.type a1, @object
	.size a1, 4
a1:
	.word 1
	.space 4
	.globl a2
	.data
	.type a2, @object
	.size a2, 4
a2:
	.word 2
	.space 4
	.globl a3
	.data
	.type a3, @object
	.size a3, 4
a3:
	.word 3
	.space 4
	.globl a4
	.data
	.type a4, @object
	.size a4, 4
a4:
	.word 4
	.space 4
	.globl a5
	.data
	.type a5, @object
	.size a5, 4
a5:
	.word 5
	.space 4
	.globl a6
	.data
	.type a6, @object
	.size a6, 4
a6:
	.word 6
	.space 4
	.globl a7
	.data
	.type a7, @object
	.size a7, 4
a7:
	.word 7
	.space 4
	.globl a8
	.data
	.type a8, @object
	.size a8, 4
a8:
	.word 8
	.space 4
	.globl a9
	.data
	.type a9, @object
	.size a9, 4
a9:
	.word 9
	.space 4
	.globl a10
	.data
	.type a10, @object
	.size a10, 4
a10:
	.word 10
	.space 4
	.globl a11
	.data
	.type a11, @object
	.size a11, 4
a11:
	.word 11
	.space 4
	.globl a12
	.data
	.type a12, @object
	.size a12, 4
a12:
	.word 12
	.space 4
	.globl a13
	.data
	.type a13, @object
	.size a13, 4
a13:
	.word 13
	.space 4
	.globl a14
	.data
	.type a14, @object
	.size a14, 4
a14:
	.word 14
	.space 4
	.globl a15
	.data
	.type a15, @object
	.size a15, 4
a15:
	.word 15
	.space 4
	.globl a16
	.data
	.type a16, @object
	.size a16, 4
a16:
	.word 16
	.space 4
	.globl a17
	.data
	.type a17, @object
	.size a17, 4
a17:
	.word 1
	.space 4
	.globl a18
	.data
	.type a18, @object
	.size a18, 4
a18:
	.word 2
	.space 4
	.globl a19
	.data
	.type a19, @object
	.size a19, 4
a19:
	.word 3
	.space 4
	.globl a20
	.data
	.type a20, @object
	.size a20, 4
a20:
	.word 4
	.space 4
	.globl a21
	.data
	.type a21, @object
	.size a21, 4
a21:
	.word 5
	.space 4
	.globl a22
	.data
	.type a22, @object
	.size a22, 4
a22:
	.word 6
	.space 4
	.globl a23
	.data
	.type a23, @object
	.size a23, 4
a23:
	.word 7
	.space 4
	.globl a24
	.data
	.type a24, @object
	.size a24, 4
a24:
	.word 8
	.space 4
	.globl a25
	.data
	.type a25, @object
	.size a25, 4
a25:
	.word 9
	.space 4
	.globl a26
	.data
	.type a26, @object
	.size a26, 4
a26:
	.word 10
	.space 4
	.globl a27
	.data
	.type a27, @object
	.size a27, 4
a27:
	.word 11
	.space 4
	.globl a28
	.data
	.type a28, @object
	.size a28, 4
a28:
	.word 12
	.space 4
	.globl a29
	.data
	.type a29, @object
	.size a29, 4
a29:
	.word 13
	.space 4
	.globl a30
	.data
	.type a30, @object
	.size a30, 4
a30:
	.word 14
	.space 4
	.globl a31
	.data
	.type a31, @object
	.size a31, 4
a31:
	.word 15
	.space 4
	.globl a32
	.data
	.type a32, @object
	.size a32, 4
a32:
	.word 16
	.space 4
	.text
	.globl func
	.type func, @function
func:
	lu12i.w $t0, 0
	ori $t0, $t0, 2320
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	sub.d $sp, $sp, $t0
	add.d $fp, $sp, $t0
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.func_label_entry:
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
# %op5 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op6 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op7 = add i32  %op5, %op6
	ld.w $t0, $fp, -72
	ld.w $t1, $fp, -76
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# store i32  %op7, i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -80
	st.w $t1, $t0, 0
# %op8 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -88
# %op9 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -104
# %op10 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3972
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -120
# %op11 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -136
# %op12 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -152
# %op13 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3924
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -168
# %op14 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3908
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -184
# %op15 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -200
# %op16 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -216
# %op17 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -232
# %op18 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3844
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -248
# %op19 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -264
# %op20 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -280
# %op21 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3796
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -296
# %op22 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3780
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -312
# %op23 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3764
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -328
# %op24 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3748
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -344
# %op25 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3732
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -360
# %op26 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3716
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -376
# %op27 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3700
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -392
# %op28 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3684
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -408
# %op29 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3668
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -424
# %op30 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3652
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -440
# %op31 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3636
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -456
# %op32 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -472
# %op33 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3604
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -488
# %op34 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3588
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -504
# %op35 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3572
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -520
# %op36 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3556
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -536
# %op37 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3540
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -552
# %op38 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3524
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -568
# %op39 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -584
# %op40 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3492
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -600
# %op41 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3476
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -616
# %op42 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3460
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -632
# %op43 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3444
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -648
# %op44 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -656
# store i32  %op44, i32 * %op8
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -656
	st.w $t1, $t0, 0
# %op45 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -660
# store i32  %op45, i32 * %op9
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -660
	st.w $t1, $t0, 0
# %op46 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -664
# store i32  %op46, i32 * %op10
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -664
	st.w $t1, $t0, 0
# %op47 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -668
# store i32  %op47, i32 * %op11
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -668
	st.w $t1, $t0, 0
# %op48 = load i32 , i32 * %op8
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -672
# %op49 = add i32  1, %op48
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -672
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -676
# %op50 = load i32 , i32 * @a1
	la.local $t0, a1
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -680
# %op51 = add i32  %op49, %op50
	ld.w $t0, $fp, -676
	ld.w $t1, $fp, -680
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -684
# store i32  %op51, i32 * %op12
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -684
	st.w $t1, $t0, 0
# %op52 = load i32 , i32 * %op9
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -688
# %op53 = add i32  2, %op52
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -688
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -692
# %op54 = load i32 , i32 * @a2
	la.local $t0, a2
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -696
# %op55 = add i32  %op53, %op54
	ld.w $t0, $fp, -692
	ld.w $t1, $fp, -696
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -700
# store i32  %op55, i32 * %op13
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -700
	st.w $t1, $t0, 0
# %op56 = load i32 , i32 * %op10
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -704
# %op57 = add i32  3, %op56
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -704
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -708
# %op58 = load i32 , i32 * @a3
	la.local $t0, a3
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -712
# %op59 = add i32  %op57, %op58
	ld.w $t0, $fp, -708
	ld.w $t1, $fp, -712
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -716
# store i32  %op59, i32 * %op14
	ld.d $t0, $fp, -184
	ld.w $t1, $fp, -716
	st.w $t1, $t0, 0
# %op60 = load i32 , i32 * %op11
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -720
# %op61 = add i32  4, %op60
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -720
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -724
# %op62 = load i32 , i32 * @a4
	la.local $t0, a4
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -728
# %op63 = add i32  %op61, %op62
	ld.w $t0, $fp, -724
	ld.w $t1, $fp, -728
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -732
# store i32  %op63, i32 * %op15
	ld.d $t0, $fp, -200
	ld.w $t1, $fp, -732
	st.w $t1, $t0, 0
# %op64 = load i32 , i32 * %op12
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -736
# %op65 = add i32  1, %op64
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -736
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -740
# %op66 = load i32 , i32 * @a5
	la.local $t0, a5
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -744
# %op67 = add i32  %op65, %op66
	ld.w $t0, $fp, -740
	ld.w $t1, $fp, -744
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -748
# store i32  %op67, i32 * %op16
	ld.d $t0, $fp, -216
	ld.w $t1, $fp, -748
	st.w $t1, $t0, 0
# %op68 = load i32 , i32 * %op13
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -752
# %op69 = add i32  2, %op68
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -752
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -756
# %op70 = load i32 , i32 * @a6
	la.local $t0, a6
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -760
# %op71 = add i32  %op69, %op70
	ld.w $t0, $fp, -756
	ld.w $t1, $fp, -760
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -764
# store i32  %op71, i32 * %op17
	ld.d $t0, $fp, -232
	ld.w $t1, $fp, -764
	st.w $t1, $t0, 0
# %op72 = load i32 , i32 * %op14
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -768
# %op73 = add i32  3, %op72
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -768
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -772
# %op74 = load i32 , i32 * @a7
	la.local $t0, a7
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -776
# %op75 = add i32  %op73, %op74
	ld.w $t0, $fp, -772
	ld.w $t1, $fp, -776
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -780
# store i32  %op75, i32 * %op18
	ld.d $t0, $fp, -248
	ld.w $t1, $fp, -780
	st.w $t1, $t0, 0
# %op76 = load i32 , i32 * %op15
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -784
# %op77 = add i32  4, %op76
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -784
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -788
# %op78 = load i32 , i32 * @a8
	la.local $t0, a8
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -792
# %op79 = add i32  %op77, %op78
	ld.w $t0, $fp, -788
	ld.w $t1, $fp, -792
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -796
# store i32  %op79, i32 * %op19
	ld.d $t0, $fp, -264
	ld.w $t1, $fp, -796
	st.w $t1, $t0, 0
# %op80 = load i32 , i32 * %op16
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -800
# %op81 = add i32  1, %op80
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -800
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -804
# %op82 = load i32 , i32 * @a9
	la.local $t0, a9
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -808
# %op83 = add i32  %op81, %op82
	ld.w $t0, $fp, -804
	ld.w $t1, $fp, -808
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -812
# store i32  %op83, i32 * %op20
	ld.d $t0, $fp, -280
	ld.w $t1, $fp, -812
	st.w $t1, $t0, 0
# %op84 = load i32 , i32 * %op17
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -816
# %op85 = add i32  2, %op84
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -816
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -820
# %op86 = load i32 , i32 * @a10
	la.local $t0, a10
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -824
# %op87 = add i32  %op85, %op86
	ld.w $t0, $fp, -820
	ld.w $t1, $fp, -824
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -828
# store i32  %op87, i32 * %op21
	ld.d $t0, $fp, -296
	ld.w $t1, $fp, -828
	st.w $t1, $t0, 0
# %op88 = load i32 , i32 * %op18
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -832
# %op89 = add i32  3, %op88
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -832
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -836
# %op90 = load i32 , i32 * @a11
	la.local $t0, a11
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -840
# %op91 = add i32  %op89, %op90
	ld.w $t0, $fp, -836
	ld.w $t1, $fp, -840
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -844
# store i32  %op91, i32 * %op22
	ld.d $t0, $fp, -312
	ld.w $t1, $fp, -844
	st.w $t1, $t0, 0
# %op92 = load i32 , i32 * %op19
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -848
# %op93 = add i32  4, %op92
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -848
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -852
# %op94 = load i32 , i32 * @a12
	la.local $t0, a12
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -856
# %op95 = add i32  %op93, %op94
	ld.w $t0, $fp, -852
	ld.w $t1, $fp, -856
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -860
# store i32  %op95, i32 * %op23
	ld.d $t0, $fp, -328
	ld.w $t1, $fp, -860
	st.w $t1, $t0, 0
# %op96 = load i32 , i32 * %op20
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -864
# %op97 = add i32  1, %op96
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -864
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -868
# %op98 = load i32 , i32 * @a13
	la.local $t0, a13
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -872
# %op99 = add i32  %op97, %op98
	ld.w $t0, $fp, -868
	ld.w $t1, $fp, -872
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -876
# store i32  %op99, i32 * %op24
	ld.d $t0, $fp, -344
	ld.w $t1, $fp, -876
	st.w $t1, $t0, 0
# %op100 = load i32 , i32 * %op21
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -880
# %op101 = add i32  2, %op100
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -880
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -884
# %op102 = load i32 , i32 * @a14
	la.local $t0, a14
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -888
# %op103 = add i32  %op101, %op102
	ld.w $t0, $fp, -884
	ld.w $t1, $fp, -888
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -892
# store i32  %op103, i32 * %op25
	ld.d $t0, $fp, -360
	ld.w $t1, $fp, -892
	st.w $t1, $t0, 0
# %op104 = load i32 , i32 * %op22
	ld.d $t0, $fp, -312
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -896
# %op105 = add i32  3, %op104
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -896
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -900
# %op106 = load i32 , i32 * @a15
	la.local $t0, a15
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -904
# %op107 = add i32  %op105, %op106
	ld.w $t0, $fp, -900
	ld.w $t1, $fp, -904
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -908
# store i32  %op107, i32 * %op26
	ld.d $t0, $fp, -376
	ld.w $t1, $fp, -908
	st.w $t1, $t0, 0
# %op108 = load i32 , i32 * %op23
	ld.d $t0, $fp, -328
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -912
# %op109 = add i32  4, %op108
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -912
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -916
# %op110 = load i32 , i32 * @a16
	la.local $t0, a16
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -920
# %op111 = add i32  %op109, %op110
	ld.w $t0, $fp, -916
	ld.w $t1, $fp, -920
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -924
# store i32  %op111, i32 * %op27
	ld.d $t0, $fp, -392
	ld.w $t1, $fp, -924
	st.w $t1, $t0, 0
# %op112 = load i32 , i32 * %op24
	ld.d $t0, $fp, -344
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -928
# %op113 = add i32  1, %op112
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -928
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -932
# %op114 = load i32 , i32 * @a17
	la.local $t0, a17
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -936
# %op115 = add i32  %op113, %op114
	ld.w $t0, $fp, -932
	ld.w $t1, $fp, -936
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -940
# store i32  %op115, i32 * %op28
	ld.d $t0, $fp, -408
	ld.w $t1, $fp, -940
	st.w $t1, $t0, 0
# %op116 = load i32 , i32 * %op25
	ld.d $t0, $fp, -360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -944
# %op117 = add i32  2, %op116
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -944
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -948
# %op118 = load i32 , i32 * @a18
	la.local $t0, a18
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -952
# %op119 = add i32  %op117, %op118
	ld.w $t0, $fp, -948
	ld.w $t1, $fp, -952
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -956
# store i32  %op119, i32 * %op29
	ld.d $t0, $fp, -424
	ld.w $t1, $fp, -956
	st.w $t1, $t0, 0
# %op120 = load i32 , i32 * %op26
	ld.d $t0, $fp, -376
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -960
# %op121 = add i32  3, %op120
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -960
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -964
# %op122 = load i32 , i32 * @a19
	la.local $t0, a19
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -968
# %op123 = add i32  %op121, %op122
	ld.w $t0, $fp, -964
	ld.w $t1, $fp, -968
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -972
# store i32  %op123, i32 * %op30
	ld.d $t0, $fp, -440
	ld.w $t1, $fp, -972
	st.w $t1, $t0, 0
# %op124 = load i32 , i32 * %op27
	ld.d $t0, $fp, -392
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -976
# %op125 = add i32  4, %op124
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -976
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -980
# %op126 = load i32 , i32 * @a20
	la.local $t0, a20
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -984
# %op127 = add i32  %op125, %op126
	ld.w $t0, $fp, -980
	ld.w $t1, $fp, -984
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -988
# store i32  %op127, i32 * %op31
	ld.d $t0, $fp, -456
	ld.w $t1, $fp, -988
	st.w $t1, $t0, 0
# %op128 = load i32 , i32 * %op28
	ld.d $t0, $fp, -408
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -992
# %op129 = add i32  1, %op128
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -992
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -996
# %op130 = load i32 , i32 * @a21
	la.local $t0, a21
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1000
# %op131 = add i32  %op129, %op130
	ld.w $t0, $fp, -996
	ld.w $t1, $fp, -1000
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1004
# store i32  %op131, i32 * %op32
	ld.d $t0, $fp, -472
	ld.w $t1, $fp, -1004
	st.w $t1, $t0, 0
# %op132 = load i32 , i32 * %op29
	ld.d $t0, $fp, -424
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1008
# %op133 = add i32  2, %op132
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -1008
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1012
# %op134 = load i32 , i32 * @a22
	la.local $t0, a22
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1016
# %op135 = add i32  %op133, %op134
	ld.w $t0, $fp, -1012
	ld.w $t1, $fp, -1016
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1020
# store i32  %op135, i32 * %op33
	ld.d $t0, $fp, -488
	ld.w $t1, $fp, -1020
	st.w $t1, $t0, 0
# %op136 = load i32 , i32 * %op30
	ld.d $t0, $fp, -440
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1024
# %op137 = add i32  3, %op136
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -1024
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1028
# %op138 = load i32 , i32 * @a23
	la.local $t0, a23
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1032
# %op139 = add i32  %op137, %op138
	ld.w $t0, $fp, -1028
	ld.w $t1, $fp, -1032
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1036
# store i32  %op139, i32 * %op34
	ld.d $t0, $fp, -504
	ld.w $t1, $fp, -1036
	st.w $t1, $t0, 0
# %op140 = load i32 , i32 * %op31
	ld.d $t0, $fp, -456
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1040
# %op141 = add i32  4, %op140
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -1040
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1044
# %op142 = load i32 , i32 * @a24
	la.local $t0, a24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1048
# %op143 = add i32  %op141, %op142
	ld.w $t0, $fp, -1044
	ld.w $t1, $fp, -1048
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1052
# store i32  %op143, i32 * %op35
	ld.d $t0, $fp, -520
	ld.w $t1, $fp, -1052
	st.w $t1, $t0, 0
# %op144 = load i32 , i32 * %op32
	ld.d $t0, $fp, -472
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1056
# %op145 = add i32  1, %op144
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1056
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1060
# %op146 = load i32 , i32 * @a25
	la.local $t0, a25
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1064
# %op147 = add i32  %op145, %op146
	ld.w $t0, $fp, -1060
	ld.w $t1, $fp, -1064
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1068
# store i32  %op147, i32 * %op36
	ld.d $t0, $fp, -536
	ld.w $t1, $fp, -1068
	st.w $t1, $t0, 0
# %op148 = load i32 , i32 * %op33
	ld.d $t0, $fp, -488
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1072
# %op149 = add i32  2, %op148
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -1072
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1076
# %op150 = load i32 , i32 * @a26
	la.local $t0, a26
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1080
# %op151 = add i32  %op149, %op150
	ld.w $t0, $fp, -1076
	ld.w $t1, $fp, -1080
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1084
# store i32  %op151, i32 * %op37
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -1084
	st.w $t1, $t0, 0
# %op152 = load i32 , i32 * %op34
	ld.d $t0, $fp, -504
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1088
# %op153 = add i32  3, %op152
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -1088
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1092
# %op154 = load i32 , i32 * @a27
	la.local $t0, a27
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1096
# %op155 = add i32  %op153, %op154
	ld.w $t0, $fp, -1092
	ld.w $t1, $fp, -1096
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1100
# store i32  %op155, i32 * %op38
	ld.d $t0, $fp, -568
	ld.w $t1, $fp, -1100
	st.w $t1, $t0, 0
# %op156 = load i32 , i32 * %op35
	ld.d $t0, $fp, -520
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1104
# %op157 = add i32  4, %op156
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -1104
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1108
# %op158 = load i32 , i32 * @a28
	la.local $t0, a28
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1112
# %op159 = add i32  %op157, %op158
	ld.w $t0, $fp, -1108
	ld.w $t1, $fp, -1112
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1116
# store i32  %op159, i32 * %op39
	ld.d $t0, $fp, -584
	ld.w $t1, $fp, -1116
	st.w $t1, $t0, 0
# %op160 = load i32 , i32 * %op36
	ld.d $t0, $fp, -536
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1120
# %op161 = add i32  1, %op160
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1120
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1124
# %op162 = load i32 , i32 * @a29
	la.local $t0, a29
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1128
# %op163 = add i32  %op161, %op162
	ld.w $t0, $fp, -1124
	ld.w $t1, $fp, -1128
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1132
# store i32  %op163, i32 * %op40
	ld.d $t0, $fp, -600
	ld.w $t1, $fp, -1132
	st.w $t1, $t0, 0
# %op164 = load i32 , i32 * %op37
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1136
# %op165 = add i32  2, %op164
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -1136
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1140
# %op166 = load i32 , i32 * @a30
	la.local $t0, a30
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1144
# %op167 = add i32  %op165, %op166
	ld.w $t0, $fp, -1140
	ld.w $t1, $fp, -1144
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1148
# store i32  %op167, i32 * %op41
	ld.d $t0, $fp, -616
	ld.w $t1, $fp, -1148
	st.w $t1, $t0, 0
# %op168 = load i32 , i32 * %op38
	ld.d $t0, $fp, -568
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1152
# %op169 = add i32  3, %op168
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -1152
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1156
# %op170 = load i32 , i32 * @a31
	la.local $t0, a31
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1160
# %op171 = add i32  %op169, %op170
	ld.w $t0, $fp, -1156
	ld.w $t1, $fp, -1160
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1164
# store i32  %op171, i32 * %op42
	ld.d $t0, $fp, -632
	ld.w $t1, $fp, -1164
	st.w $t1, $t0, 0
# %op172 = load i32 , i32 * %op39
	ld.d $t0, $fp, -584
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1168
# %op173 = add i32  4, %op172
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -1168
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1172
# %op174 = load i32 , i32 * @a32
	la.local $t0, a32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1176
# %op175 = add i32  %op173, %op174
	ld.w $t0, $fp, -1172
	ld.w $t1, $fp, -1176
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1180
# store i32  %op175, i32 * %op43
	ld.d $t0, $fp, -648
	ld.w $t1, $fp, -1180
	st.w $t1, $t0, 0
# %op176 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1184
# %op177 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1188
# %op178 = sub i32  %op176, %op177
	ld.w $t0, $fp, -1184
	ld.w $t1, $fp, -1188
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1192
# %op179 = add i32  %op178, 10
	ld.w $t0, $fp, -1192
	addi.w $t1, $zero, 10
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1196
# store i32  %op179, i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -1196
	st.w $t1, $t0, 0
# %op180 = load i32 , i32 * %op36
	ld.d $t0, $fp, -536
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1200
# %op181 = add i32  1, %op180
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1200
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1204
# %op182 = load i32 , i32 * @a29
	la.local $t0, a29
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1208
# %op183 = add i32  %op181, %op182
	ld.w $t0, $fp, -1204
	ld.w $t1, $fp, -1208
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1212
# store i32  %op183, i32 * %op40
	ld.d $t0, $fp, -600
	ld.w $t1, $fp, -1212
	st.w $t1, $t0, 0
# %op184 = load i32 , i32 * %op37
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1216
# %op185 = add i32  2, %op184
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -1216
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1220
# %op186 = load i32 , i32 * @a30
	la.local $t0, a30
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1224
# %op187 = add i32  %op185, %op186
	ld.w $t0, $fp, -1220
	ld.w $t1, $fp, -1224
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1228
# store i32  %op187, i32 * %op41
	ld.d $t0, $fp, -616
	ld.w $t1, $fp, -1228
	st.w $t1, $t0, 0
# %op188 = load i32 , i32 * %op38
	ld.d $t0, $fp, -568
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1232
# %op189 = add i32  3, %op188
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -1232
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1236
# %op190 = load i32 , i32 * @a31
	la.local $t0, a31
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1240
# %op191 = add i32  %op189, %op190
	ld.w $t0, $fp, -1236
	ld.w $t1, $fp, -1240
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1244
# store i32  %op191, i32 * %op42
	ld.d $t0, $fp, -632
	ld.w $t1, $fp, -1244
	st.w $t1, $t0, 0
# %op192 = load i32 , i32 * %op39
	ld.d $t0, $fp, -584
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1248
# %op193 = add i32  4, %op192
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -1248
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1252
# %op194 = load i32 , i32 * @a32
	la.local $t0, a32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1256
# %op195 = add i32  %op193, %op194
	ld.w $t0, $fp, -1252
	ld.w $t1, $fp, -1256
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1260
# store i32  %op195, i32 * %op43
	ld.d $t0, $fp, -648
	ld.w $t1, $fp, -1260
	st.w $t1, $t0, 0
# %op196 = load i32 , i32 * %op32
	ld.d $t0, $fp, -472
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1264
# %op197 = add i32  1, %op196
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1264
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1268
# %op198 = load i32 , i32 * @a25
	la.local $t0, a25
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1272
# %op199 = add i32  %op197, %op198
	ld.w $t0, $fp, -1268
	ld.w $t1, $fp, -1272
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1276
# store i32  %op199, i32 * %op36
	ld.d $t0, $fp, -536
	ld.w $t1, $fp, -1276
	st.w $t1, $t0, 0
# %op200 = load i32 , i32 * %op33
	ld.d $t0, $fp, -488
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1280
# %op201 = add i32  2, %op200
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -1280
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1284
# %op202 = load i32 , i32 * @a26
	la.local $t0, a26
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1288
# %op203 = add i32  %op201, %op202
	ld.w $t0, $fp, -1284
	ld.w $t1, $fp, -1288
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1292
# store i32  %op203, i32 * %op37
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -1292
	st.w $t1, $t0, 0
# %op204 = load i32 , i32 * %op34
	ld.d $t0, $fp, -504
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1296
# %op205 = add i32  3, %op204
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -1296
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1300
# %op206 = load i32 , i32 * @a27
	la.local $t0, a27
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1304
# %op207 = add i32  %op205, %op206
	ld.w $t0, $fp, -1300
	ld.w $t1, $fp, -1304
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1308
# store i32  %op207, i32 * %op38
	ld.d $t0, $fp, -568
	ld.w $t1, $fp, -1308
	st.w $t1, $t0, 0
# %op208 = load i32 , i32 * %op35
	ld.d $t0, $fp, -520
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1312
# %op209 = add i32  4, %op208
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -1312
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1316
# %op210 = load i32 , i32 * @a28
	la.local $t0, a28
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1320
# %op211 = add i32  %op209, %op210
	ld.w $t0, $fp, -1316
	ld.w $t1, $fp, -1320
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1324
# store i32  %op211, i32 * %op39
	ld.d $t0, $fp, -584
	ld.w $t1, $fp, -1324
	st.w $t1, $t0, 0
# %op212 = load i32 , i32 * %op28
	ld.d $t0, $fp, -408
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1328
# %op213 = add i32  1, %op212
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1328
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1332
# %op214 = load i32 , i32 * @a21
	la.local $t0, a21
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1336
# %op215 = add i32  %op213, %op214
	ld.w $t0, $fp, -1332
	ld.w $t1, $fp, -1336
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1340
# store i32  %op215, i32 * %op32
	ld.d $t0, $fp, -472
	ld.w $t1, $fp, -1340
	st.w $t1, $t0, 0
# %op216 = load i32 , i32 * %op29
	ld.d $t0, $fp, -424
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1344
# %op217 = add i32  2, %op216
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -1344
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1348
# %op218 = load i32 , i32 * @a22
	la.local $t0, a22
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1352
# %op219 = add i32  %op217, %op218
	ld.w $t0, $fp, -1348
	ld.w $t1, $fp, -1352
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1356
# store i32  %op219, i32 * %op33
	ld.d $t0, $fp, -488
	ld.w $t1, $fp, -1356
	st.w $t1, $t0, 0
# %op220 = load i32 , i32 * %op30
	ld.d $t0, $fp, -440
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1360
# %op221 = add i32  3, %op220
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -1360
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1364
# %op222 = load i32 , i32 * @a23
	la.local $t0, a23
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1368
# %op223 = add i32  %op221, %op222
	ld.w $t0, $fp, -1364
	ld.w $t1, $fp, -1368
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1372
# store i32  %op223, i32 * %op34
	ld.d $t0, $fp, -504
	ld.w $t1, $fp, -1372
	st.w $t1, $t0, 0
# %op224 = load i32 , i32 * %op31
	ld.d $t0, $fp, -456
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1376
# %op225 = add i32  4, %op224
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -1376
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1380
# %op226 = load i32 , i32 * @a24
	la.local $t0, a24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1384
# %op227 = add i32  %op225, %op226
	ld.w $t0, $fp, -1380
	ld.w $t1, $fp, -1384
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1388
# store i32  %op227, i32 * %op35
	ld.d $t0, $fp, -520
	ld.w $t1, $fp, -1388
	st.w $t1, $t0, 0
# %op228 = load i32 , i32 * %op24
	ld.d $t0, $fp, -344
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1392
# %op229 = add i32  1, %op228
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1392
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1396
# %op230 = load i32 , i32 * @a17
	la.local $t0, a17
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1400
# %op231 = add i32  %op229, %op230
	ld.w $t0, $fp, -1396
	ld.w $t1, $fp, -1400
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1404
# store i32  %op231, i32 * %op28
	ld.d $t0, $fp, -408
	ld.w $t1, $fp, -1404
	st.w $t1, $t0, 0
# %op232 = load i32 , i32 * %op25
	ld.d $t0, $fp, -360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1408
# %op233 = add i32  2, %op232
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -1408
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1412
# %op234 = load i32 , i32 * @a18
	la.local $t0, a18
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1416
# %op235 = add i32  %op233, %op234
	ld.w $t0, $fp, -1412
	ld.w $t1, $fp, -1416
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1420
# store i32  %op235, i32 * %op29
	ld.d $t0, $fp, -424
	ld.w $t1, $fp, -1420
	st.w $t1, $t0, 0
# %op236 = load i32 , i32 * %op26
	ld.d $t0, $fp, -376
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1424
# %op237 = add i32  3, %op236
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -1424
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1428
# %op238 = load i32 , i32 * @a19
	la.local $t0, a19
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1432
# %op239 = add i32  %op237, %op238
	ld.w $t0, $fp, -1428
	ld.w $t1, $fp, -1432
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1436
# store i32  %op239, i32 * %op30
	ld.d $t0, $fp, -440
	ld.w $t1, $fp, -1436
	st.w $t1, $t0, 0
# %op240 = load i32 , i32 * %op27
	ld.d $t0, $fp, -392
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1440
# %op241 = add i32  4, %op240
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -1440
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1444
# %op242 = load i32 , i32 * @a20
	la.local $t0, a20
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1448
# %op243 = add i32  %op241, %op242
	ld.w $t0, $fp, -1444
	ld.w $t1, $fp, -1448
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1452
# store i32  %op243, i32 * %op31
	ld.d $t0, $fp, -456
	ld.w $t1, $fp, -1452
	st.w $t1, $t0, 0
# %op244 = load i32 , i32 * %op20
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1456
# %op245 = add i32  1, %op244
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1456
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1460
# %op246 = load i32 , i32 * @a13
	la.local $t0, a13
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1464
# %op247 = add i32  %op245, %op246
	ld.w $t0, $fp, -1460
	ld.w $t1, $fp, -1464
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1468
# store i32  %op247, i32 * %op24
	ld.d $t0, $fp, -344
	ld.w $t1, $fp, -1468
	st.w $t1, $t0, 0
# %op248 = load i32 , i32 * %op21
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1472
# %op249 = add i32  2, %op248
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -1472
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1476
# %op250 = load i32 , i32 * @a14
	la.local $t0, a14
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1480
# %op251 = add i32  %op249, %op250
	ld.w $t0, $fp, -1476
	ld.w $t1, $fp, -1480
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1484
# store i32  %op251, i32 * %op25
	ld.d $t0, $fp, -360
	ld.w $t1, $fp, -1484
	st.w $t1, $t0, 0
# %op252 = load i32 , i32 * %op22
	ld.d $t0, $fp, -312
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1488
# %op253 = add i32  3, %op252
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -1488
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1492
# %op254 = load i32 , i32 * @a15
	la.local $t0, a15
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1496
# %op255 = add i32  %op253, %op254
	ld.w $t0, $fp, -1492
	ld.w $t1, $fp, -1496
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1500
# store i32  %op255, i32 * %op26
	ld.d $t0, $fp, -376
	ld.w $t1, $fp, -1500
	st.w $t1, $t0, 0
# %op256 = load i32 , i32 * %op23
	ld.d $t0, $fp, -328
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1504
# %op257 = add i32  4, %op256
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -1504
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1508
# %op258 = load i32 , i32 * @a16
	la.local $t0, a16
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1512
# %op259 = add i32  %op257, %op258
	ld.w $t0, $fp, -1508
	ld.w $t1, $fp, -1512
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1516
# store i32  %op259, i32 * %op27
	ld.d $t0, $fp, -392
	ld.w $t1, $fp, -1516
	st.w $t1, $t0, 0
# %op260 = load i32 , i32 * %op16
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1520
# %op261 = add i32  1, %op260
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1520
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1524
# %op262 = load i32 , i32 * @a9
	la.local $t0, a9
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1528
# %op263 = add i32  %op261, %op262
	ld.w $t0, $fp, -1524
	ld.w $t1, $fp, -1528
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1532
# store i32  %op263, i32 * %op20
	ld.d $t0, $fp, -280
	ld.w $t1, $fp, -1532
	st.w $t1, $t0, 0
# %op264 = load i32 , i32 * %op17
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1536
# %op265 = add i32  2, %op264
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -1536
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1540
# %op266 = load i32 , i32 * @a10
	la.local $t0, a10
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1544
# %op267 = add i32  %op265, %op266
	ld.w $t0, $fp, -1540
	ld.w $t1, $fp, -1544
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1548
# store i32  %op267, i32 * %op21
	ld.d $t0, $fp, -296
	ld.w $t1, $fp, -1548
	st.w $t1, $t0, 0
# %op268 = load i32 , i32 * %op18
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1552
# %op269 = add i32  3, %op268
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -1552
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1556
# %op270 = load i32 , i32 * @a11
	la.local $t0, a11
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1560
# %op271 = add i32  %op269, %op270
	ld.w $t0, $fp, -1556
	ld.w $t1, $fp, -1560
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1564
# store i32  %op271, i32 * %op22
	ld.d $t0, $fp, -312
	ld.w $t1, $fp, -1564
	st.w $t1, $t0, 0
# %op272 = load i32 , i32 * %op19
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1568
# %op273 = add i32  4, %op272
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -1568
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1572
# %op274 = load i32 , i32 * @a12
	la.local $t0, a12
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1576
# %op275 = add i32  %op273, %op274
	ld.w $t0, $fp, -1572
	ld.w $t1, $fp, -1576
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1580
# store i32  %op275, i32 * %op23
	ld.d $t0, $fp, -328
	ld.w $t1, $fp, -1580
	st.w $t1, $t0, 0
# %op276 = load i32 , i32 * %op12
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1584
# %op277 = add i32  1, %op276
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1584
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1588
# %op278 = load i32 , i32 * @a5
	la.local $t0, a5
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1592
# %op279 = add i32  %op277, %op278
	ld.w $t0, $fp, -1588
	ld.w $t1, $fp, -1592
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1596
# store i32  %op279, i32 * %op16
	ld.d $t0, $fp, -216
	ld.w $t1, $fp, -1596
	st.w $t1, $t0, 0
# %op280 = load i32 , i32 * %op13
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1600
# %op281 = add i32  2, %op280
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -1600
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1604
# %op282 = load i32 , i32 * @a6
	la.local $t0, a6
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1608
# %op283 = add i32  %op281, %op282
	ld.w $t0, $fp, -1604
	ld.w $t1, $fp, -1608
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1612
# store i32  %op283, i32 * %op17
	ld.d $t0, $fp, -232
	ld.w $t1, $fp, -1612
	st.w $t1, $t0, 0
# %op284 = load i32 , i32 * %op14
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1616
# %op285 = add i32  3, %op284
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -1616
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1620
# %op286 = load i32 , i32 * @a7
	la.local $t0, a7
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1624
# %op287 = add i32  %op285, %op286
	ld.w $t0, $fp, -1620
	ld.w $t1, $fp, -1624
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1628
# store i32  %op287, i32 * %op18
	ld.d $t0, $fp, -248
	ld.w $t1, $fp, -1628
	st.w $t1, $t0, 0
# %op288 = load i32 , i32 * %op15
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1632
# %op289 = add i32  4, %op288
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -1632
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1636
# %op290 = load i32 , i32 * @a8
	la.local $t0, a8
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1640
# %op291 = add i32  %op289, %op290
	ld.w $t0, $fp, -1636
	ld.w $t1, $fp, -1640
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1644
# store i32  %op291, i32 * %op19
	ld.d $t0, $fp, -264
	ld.w $t1, $fp, -1644
	st.w $t1, $t0, 0
# %op292 = load i32 , i32 * %op8
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1648
# %op293 = add i32  1, %op292
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1648
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1652
# %op294 = load i32 , i32 * @a1
	la.local $t0, a1
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1656
# %op295 = add i32  %op293, %op294
	ld.w $t0, $fp, -1652
	ld.w $t1, $fp, -1656
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1660
# store i32  %op295, i32 * %op12
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -1660
	st.w $t1, $t0, 0
# %op296 = load i32 , i32 * %op9
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1664
# %op297 = add i32  2, %op296
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -1664
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1668
# %op298 = load i32 , i32 * @a2
	la.local $t0, a2
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1672
# %op299 = add i32  %op297, %op298
	ld.w $t0, $fp, -1668
	ld.w $t1, $fp, -1672
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1676
# store i32  %op299, i32 * %op13
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -1676
	st.w $t1, $t0, 0
# %op300 = load i32 , i32 * %op10
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1680
# %op301 = add i32  3, %op300
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -1680
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1684
# %op302 = load i32 , i32 * @a3
	la.local $t0, a3
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1688
# %op303 = add i32  %op301, %op302
	ld.w $t0, $fp, -1684
	ld.w $t1, $fp, -1688
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1692
# store i32  %op303, i32 * %op14
	ld.d $t0, $fp, -184
	ld.w $t1, $fp, -1692
	st.w $t1, $t0, 0
# %op304 = load i32 , i32 * %op11
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1696
# %op305 = add i32  4, %op304
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -1696
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1700
# %op306 = load i32 , i32 * @a4
	la.local $t0, a4
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1704
# %op307 = add i32  %op305, %op306
	ld.w $t0, $fp, -1700
	ld.w $t1, $fp, -1704
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1708
# store i32  %op307, i32 * %op15
	ld.d $t0, $fp, -200
	ld.w $t1, $fp, -1708
	st.w $t1, $t0, 0
# %op308 = load i32 , i32 * %op8
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1712
# %op309 = add i32  1, %op308
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1712
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1716
# %op310 = load i32 , i32 * @a1
	la.local $t0, a1
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1720
# %op311 = add i32  %op309, %op310
	ld.w $t0, $fp, -1716
	ld.w $t1, $fp, -1720
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1724
# store i32  %op311, i32 * %op12
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -1724
	st.w $t1, $t0, 0
# %op312 = load i32 , i32 * %op9
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1728
# %op313 = add i32  2, %op312
	addi.w $t0, $zero, 2
	ld.w $t1, $fp, -1728
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1732
# %op314 = load i32 , i32 * @a2
	la.local $t0, a2
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1736
# %op315 = add i32  %op313, %op314
	ld.w $t0, $fp, -1732
	ld.w $t1, $fp, -1736
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1740
# store i32  %op315, i32 * %op13
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -1740
	st.w $t1, $t0, 0
# %op316 = load i32 , i32 * %op10
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1744
# %op317 = add i32  3, %op316
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -1744
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1748
# %op318 = load i32 , i32 * @a3
	la.local $t0, a3
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1752
# %op319 = add i32  %op317, %op318
	ld.w $t0, $fp, -1748
	ld.w $t1, $fp, -1752
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1756
# store i32  %op319, i32 * %op14
	ld.d $t0, $fp, -184
	ld.w $t1, $fp, -1756
	st.w $t1, $t0, 0
# %op320 = load i32 , i32 * %op11
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1760
# %op321 = add i32  4, %op320
	addi.w $t0, $zero, 4
	ld.w $t1, $fp, -1760
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1764
# %op322 = load i32 , i32 * @a4
	la.local $t0, a4
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1768
# %op323 = add i32  %op321, %op322
	ld.w $t0, $fp, -1764
	ld.w $t1, $fp, -1768
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1772
# store i32  %op323, i32 * %op15
	ld.d $t0, $fp, -200
	ld.w $t1, $fp, -1772
	st.w $t1, $t0, 0
# %op324 = load i32 , i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1776
# %op325 = load i32 , i32 * %op8
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1780
# %op326 = add i32  %op324, %op325
	ld.w $t0, $fp, -1776
	ld.w $t1, $fp, -1780
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1784
# %op327 = load i32 , i32 * %op9
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1788
# %op328 = add i32  %op326, %op327
	ld.w $t0, $fp, -1784
	ld.w $t1, $fp, -1788
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1792
# %op329 = load i32 , i32 * %op10
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1796
# %op330 = add i32  %op328, %op329
	ld.w $t0, $fp, -1792
	ld.w $t1, $fp, -1796
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1800
# %op331 = load i32 , i32 * %op11
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1804
# %op332 = add i32  %op330, %op331
	ld.w $t0, $fp, -1800
	ld.w $t1, $fp, -1804
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1808
# %op333 = load i32 , i32 * %op12
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1812
# %op334 = sub i32  %op332, %op333
	ld.w $t0, $fp, -1808
	ld.w $t1, $fp, -1812
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1816
# %op335 = load i32 , i32 * %op13
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1820
# %op336 = sub i32  %op334, %op335
	ld.w $t0, $fp, -1816
	ld.w $t1, $fp, -1820
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1824
# %op337 = load i32 , i32 * %op14
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1828
# %op338 = sub i32  %op336, %op337
	ld.w $t0, $fp, -1824
	ld.w $t1, $fp, -1828
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1832
# %op339 = load i32 , i32 * %op15
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1836
# %op340 = sub i32  %op338, %op339
	ld.w $t0, $fp, -1832
	ld.w $t1, $fp, -1836
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1840
# %op341 = load i32 , i32 * %op16
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1844
# %op342 = add i32  %op340, %op341
	ld.w $t0, $fp, -1840
	ld.w $t1, $fp, -1844
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1848
# %op343 = load i32 , i32 * %op17
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1852
# %op344 = add i32  %op342, %op343
	ld.w $t0, $fp, -1848
	ld.w $t1, $fp, -1852
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1856
# %op345 = load i32 , i32 * %op18
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1860
# %op346 = add i32  %op344, %op345
	ld.w $t0, $fp, -1856
	ld.w $t1, $fp, -1860
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1864
# %op347 = load i32 , i32 * %op19
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1868
# %op348 = add i32  %op346, %op347
	ld.w $t0, $fp, -1864
	ld.w $t1, $fp, -1868
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1872
# %op349 = load i32 , i32 * %op20
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1876
# %op350 = sub i32  %op348, %op349
	ld.w $t0, $fp, -1872
	ld.w $t1, $fp, -1876
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1880
# %op351 = load i32 , i32 * %op21
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1884
# %op352 = sub i32  %op350, %op351
	ld.w $t0, $fp, -1880
	ld.w $t1, $fp, -1884
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1888
# %op353 = load i32 , i32 * %op22
	ld.d $t0, $fp, -312
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1892
# %op354 = sub i32  %op352, %op353
	ld.w $t0, $fp, -1888
	ld.w $t1, $fp, -1892
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1896
# %op355 = load i32 , i32 * %op23
	ld.d $t0, $fp, -328
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1900
# %op356 = sub i32  %op354, %op355
	ld.w $t0, $fp, -1896
	ld.w $t1, $fp, -1900
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1904
# %op357 = load i32 , i32 * %op24
	ld.d $t0, $fp, -344
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1908
# %op358 = add i32  %op356, %op357
	ld.w $t0, $fp, -1904
	ld.w $t1, $fp, -1908
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1912
# %op359 = load i32 , i32 * %op25
	ld.d $t0, $fp, -360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1916
# %op360 = add i32  %op358, %op359
	ld.w $t0, $fp, -1912
	ld.w $t1, $fp, -1916
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1920
# %op361 = load i32 , i32 * %op26
	ld.d $t0, $fp, -376
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1924
# %op362 = add i32  %op360, %op361
	ld.w $t0, $fp, -1920
	ld.w $t1, $fp, -1924
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1928
# %op363 = load i32 , i32 * %op27
	ld.d $t0, $fp, -392
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1932
# %op364 = add i32  %op362, %op363
	ld.w $t0, $fp, -1928
	ld.w $t1, $fp, -1932
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1936
# %op365 = load i32 , i32 * %op28
	ld.d $t0, $fp, -408
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1940
# %op366 = sub i32  %op364, %op365
	ld.w $t0, $fp, -1936
	ld.w $t1, $fp, -1940
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1944
# %op367 = load i32 , i32 * %op29
	ld.d $t0, $fp, -424
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1948
# %op368 = sub i32  %op366, %op367
	ld.w $t0, $fp, -1944
	ld.w $t1, $fp, -1948
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1952
# %op369 = load i32 , i32 * %op30
	ld.d $t0, $fp, -440
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1956
# %op370 = sub i32  %op368, %op369
	ld.w $t0, $fp, -1952
	ld.w $t1, $fp, -1956
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1960
# %op371 = load i32 , i32 * %op31
	ld.d $t0, $fp, -456
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1964
# %op372 = sub i32  %op370, %op371
	ld.w $t0, $fp, -1960
	ld.w $t1, $fp, -1964
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1968
# %op373 = load i32 , i32 * %op32
	ld.d $t0, $fp, -472
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1972
# %op374 = add i32  %op372, %op373
	ld.w $t0, $fp, -1968
	ld.w $t1, $fp, -1972
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1976
# %op375 = load i32 , i32 * %op33
	ld.d $t0, $fp, -488
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1980
# %op376 = add i32  %op374, %op375
	ld.w $t0, $fp, -1976
	ld.w $t1, $fp, -1980
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1984
# %op377 = load i32 , i32 * %op34
	ld.d $t0, $fp, -504
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1988
# %op378 = add i32  %op376, %op377
	ld.w $t0, $fp, -1984
	ld.w $t1, $fp, -1988
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1992
# %op379 = load i32 , i32 * %op35
	ld.d $t0, $fp, -520
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1996
# %op380 = add i32  %op378, %op379
	ld.w $t0, $fp, -1992
	ld.w $t1, $fp, -1996
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -2000
# %op381 = load i32 , i32 * %op36
	ld.d $t0, $fp, -536
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2004
# %op382 = sub i32  %op380, %op381
	ld.w $t0, $fp, -2000
	ld.w $t1, $fp, -2004
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -2008
# %op383 = load i32 , i32 * %op37
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2012
# %op384 = sub i32  %op382, %op383
	ld.w $t0, $fp, -2008
	ld.w $t1, $fp, -2012
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -2016
# %op385 = load i32 , i32 * %op38
	ld.d $t0, $fp, -568
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2020
# %op386 = sub i32  %op384, %op385
	ld.w $t0, $fp, -2016
	ld.w $t1, $fp, -2020
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -2024
# %op387 = load i32 , i32 * %op39
	ld.d $t0, $fp, -584
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2028
# %op388 = sub i32  %op386, %op387
	ld.w $t0, $fp, -2024
	ld.w $t1, $fp, -2028
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -2032
# %op389 = load i32 , i32 * %op40
	ld.d $t0, $fp, -600
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2036
# %op390 = add i32  %op388, %op389
	ld.w $t0, $fp, -2032
	ld.w $t1, $fp, -2036
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -2040
# %op391 = load i32 , i32 * %op41
	ld.d $t0, $fp, -616
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2044
# %op392 = add i32  %op390, %op391
	ld.w $t0, $fp, -2040
	ld.w $t1, $fp, -2044
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -2048
# %op393 = load i32 , i32 * %op42
	ld.d $t0, $fp, -632
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op394 = add i32  %op392, %op393
	ld.w $t0, $fp, -2048
	lu12i.w $t1, -1
	ori $t1, $t1, 2044
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op395 = load i32 , i32 * %op43
	ld.d $t0, $fp, -648
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op396 = add i32  %op394, %op395
	lu12i.w $t0, -1
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 2036
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op397 = load i32 , i32 * @a1
	la.local $t0, a1
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op398 = add i32  %op396, %op397
	lu12i.w $t0, -1
	ori $t0, $t0, 2032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 2028
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op399 = load i32 , i32 * @a2
	la.local $t0, a2
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op400 = sub i32  %op398, %op399
	lu12i.w $t0, -1
	ori $t0, $t0, 2024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 2020
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op401 = load i32 , i32 * @a3
	la.local $t0, a3
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op402 = add i32  %op400, %op401
	lu12i.w $t0, -1
	ori $t0, $t0, 2016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 2012
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op403 = load i32 , i32 * @a4
	la.local $t0, a4
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op404 = sub i32  %op402, %op403
	lu12i.w $t0, -1
	ori $t0, $t0, 2008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 2004
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op405 = load i32 , i32 * @a5
	la.local $t0, a5
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op406 = add i32  %op404, %op405
	lu12i.w $t0, -1
	ori $t0, $t0, 2000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1996
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op407 = load i32 , i32 * @a6
	la.local $t0, a6
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op408 = sub i32  %op406, %op407
	lu12i.w $t0, -1
	ori $t0, $t0, 1992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1988
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op409 = load i32 , i32 * @a7
	la.local $t0, a7
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op410 = add i32  %op408, %op409
	lu12i.w $t0, -1
	ori $t0, $t0, 1984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1980
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op411 = load i32 , i32 * @a8
	la.local $t0, a8
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op412 = sub i32  %op410, %op411
	lu12i.w $t0, -1
	ori $t0, $t0, 1976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1972
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op413 = load i32 , i32 * @a9
	la.local $t0, a9
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op414 = add i32  %op412, %op413
	lu12i.w $t0, -1
	ori $t0, $t0, 1968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1964
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op415 = load i32 , i32 * @a10
	la.local $t0, a10
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op416 = sub i32  %op414, %op415
	lu12i.w $t0, -1
	ori $t0, $t0, 1960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1956
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op417 = load i32 , i32 * @a11
	la.local $t0, a11
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op418 = add i32  %op416, %op417
	lu12i.w $t0, -1
	ori $t0, $t0, 1952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1948
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op419 = load i32 , i32 * @a12
	la.local $t0, a12
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op420 = sub i32  %op418, %op419
	lu12i.w $t0, -1
	ori $t0, $t0, 1944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1940
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op421 = load i32 , i32 * @a13
	la.local $t0, a13
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op422 = add i32  %op420, %op421
	lu12i.w $t0, -1
	ori $t0, $t0, 1936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1932
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op423 = load i32 , i32 * @a14
	la.local $t0, a14
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op424 = sub i32  %op422, %op423
	lu12i.w $t0, -1
	ori $t0, $t0, 1928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1924
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op425 = load i32 , i32 * @a15
	la.local $t0, a15
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op426 = add i32  %op424, %op425
	lu12i.w $t0, -1
	ori $t0, $t0, 1920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1916
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op427 = load i32 , i32 * @a16
	la.local $t0, a16
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op428 = sub i32  %op426, %op427
	lu12i.w $t0, -1
	ori $t0, $t0, 1912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1908
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op429 = load i32 , i32 * @a17
	la.local $t0, a17
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op430 = add i32  %op428, %op429
	lu12i.w $t0, -1
	ori $t0, $t0, 1904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1900
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op431 = load i32 , i32 * @a18
	la.local $t0, a18
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op432 = sub i32  %op430, %op431
	lu12i.w $t0, -1
	ori $t0, $t0, 1896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1892
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op433 = load i32 , i32 * @a19
	la.local $t0, a19
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op434 = add i32  %op432, %op433
	lu12i.w $t0, -1
	ori $t0, $t0, 1888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1884
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op435 = load i32 , i32 * @a20
	la.local $t0, a20
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op436 = sub i32  %op434, %op435
	lu12i.w $t0, -1
	ori $t0, $t0, 1880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1876
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op437 = load i32 , i32 * @a21
	la.local $t0, a21
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op438 = add i32  %op436, %op437
	lu12i.w $t0, -1
	ori $t0, $t0, 1872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1868
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op439 = load i32 , i32 * @a22
	la.local $t0, a22
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op440 = sub i32  %op438, %op439
	lu12i.w $t0, -1
	ori $t0, $t0, 1864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1860
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op441 = load i32 , i32 * @a23
	la.local $t0, a23
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op442 = add i32  %op440, %op441
	lu12i.w $t0, -1
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1852
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op443 = load i32 , i32 * @a24
	la.local $t0, a24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op444 = sub i32  %op442, %op443
	lu12i.w $t0, -1
	ori $t0, $t0, 1848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1844
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op445 = load i32 , i32 * @a25
	la.local $t0, a25
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op446 = add i32  %op444, %op445
	lu12i.w $t0, -1
	ori $t0, $t0, 1840
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
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op447 = load i32 , i32 * @a26
	la.local $t0, a26
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op448 = sub i32  %op446, %op447
	lu12i.w $t0, -1
	ori $t0, $t0, 1832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1828
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op449 = load i32 , i32 * @a27
	la.local $t0, a27
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op450 = add i32  %op448, %op449
	lu12i.w $t0, -1
	ori $t0, $t0, 1824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1820
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op451 = load i32 , i32 * @a28
	la.local $t0, a28
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op452 = sub i32  %op450, %op451
	lu12i.w $t0, -1
	ori $t0, $t0, 1816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1812
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op453 = load i32 , i32 * @a29
	la.local $t0, a29
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op454 = add i32  %op452, %op453
	lu12i.w $t0, -1
	ori $t0, $t0, 1808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1804
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op455 = load i32 , i32 * @a30
	la.local $t0, a30
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op456 = sub i32  %op454, %op455
	lu12i.w $t0, -1
	ori $t0, $t0, 1800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1796
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op457 = load i32 , i32 * @a31
	la.local $t0, a31
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op458 = add i32  %op456, %op457
	lu12i.w $t0, -1
	ori $t0, $t0, 1792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1788
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op459 = load i32 , i32 * @a32
	la.local $t0, a32
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op460 = sub i32  %op458, %op459
	lu12i.w $t0, -1
	ori $t0, $t0, 1784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1780
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# ret i32  %op460
	lu12i.w $a0, -1
	ori $a0, $a0, 1776
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	b func_ret
func_ret:
	lu12i.w $t0, 0
	ori $t0, $t0, 2320
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
	addi.d $sp, $sp, -80
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
# %op3 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# %op4 = mul i32  2, 9
	addi.w $t0, $zero, 2
	addi.w $t1, $zero, 9
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -56
# %op5 = add i32  %op3, %op4
	ld.w $t0, $fp, -52
	ld.w $t1, $fp, -56
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# store i32  %op5, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -60
	st.w $t1, $t0, 0
# %op6 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op7 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op8 = call i32  @func(i32  %op6, i32  %op7)
	ld.w $a0, $fp, -64
	ld.w $a1, $fp, -68
	bl func
	st.w $a0, $fp, -72
# store i32  %op8, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -72
	st.w $t1, $t0, 0
# %op9 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# call void @putint(i32  %op9)
	ld.w $a0, $fp, -76
	bl putint
# %op10 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# ret i32  %op10
	ld.w $a0, $fp, -80
	b main_ret
main_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

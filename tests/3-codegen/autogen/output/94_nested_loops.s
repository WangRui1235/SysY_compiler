# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl arr1
	.type arr1, @object
	.size arr1, 57600
arr1:
	.space 57600
	.globl arr2
	.type arr2, @object
	.size arr2, 107520
arr2:
	.space 107520
	.text
	.globl loop1
	.type loop1, @function
loop1:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -464
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.loop1_label_entry:
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
# %op5 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -80
# %op6 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -96
# %op7 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3980
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -112
# %op8 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -128
# %op9 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -144
# %op10 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -160
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label11
	b .loop1_label11
.loop1_label11:
# %op12 = load i32 , i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op13 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op14 = icmp slt i32  %op12, %op13
	ld.w $t0, $fp, -168
	ld.w $t1, $fp, -172
	slt $t2, $t0, $t1
	st.b $t2, $fp, -173
# %op15 = zext i1  %op14 to i32 
	ld.b $t0, $fp, -173
	st.w $t0, $fp, -180
# %op16 = icmp ne i32  %op15, 0
	ld.w $t0, $fp, -180
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -181
# br i1  %op16, label %label19, label %label18
	ld.b $t0, $fp, -181
	bnez $t0, .loop1_label19
	b .loop1_label18
.loop1_label17:
# store i32  0, i32 * %op5
	ld.d $t0, $fp, -80
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label25
	b .loop1_label25
.loop1_label18:
# ret void
	addi.d $a0, $zero, 0
	b loop1_ret
.loop1_label19:
# %op20 = load i32 , i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op21 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -192
# %op22 = icmp slt i32  %op20, %op21
	ld.w $t0, $fp, -188
	ld.w $t1, $fp, -192
	slt $t2, $t0, $t1
	st.b $t2, $fp, -193
# %op23 = zext i1  %op22 to i32 
	ld.b $t0, $fp, -193
	st.w $t0, $fp, -200
# %op24 = icmp ne i32  %op23, 0
	ld.w $t0, $fp, -200
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -201
# br i1  %op24, label %label17, label %label18
	ld.b $t0, $fp, -201
	bnez $t0, .loop1_label17
	b .loop1_label18
.loop1_label25:
# %op26 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -208
# %op27 = icmp slt i32  %op26, 2
	ld.w $t0, $fp, -208
	addi.w $t1, $zero, 2
	slt $t2, $t0, $t1
	st.b $t2, $fp, -209
# %op28 = zext i1  %op27 to i32 
	ld.b $t0, $fp, -209
	st.w $t0, $fp, -216
# %op29 = icmp ne i32  %op28, 0
	ld.w $t0, $fp, -216
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -217
# br i1  %op29, label %label30, label %label31
	ld.b $t0, $fp, -217
	bnez $t0, .loop1_label30
	b .loop1_label31
.loop1_label30:
# store i32  0, i32 * %op6
	ld.d $t0, $fp, -96
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label34
	b .loop1_label34
.loop1_label31:
# %op32 = load i32 , i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -224
# %op33 = add i32  %op32, 1
	ld.w $t0, $fp, -224
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -228
# store i32  %op33, i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -228
	st.w $t1, $t0, 0
# br label %label11
	b .loop1_label11
.loop1_label34:
# %op35 = load i32 , i32 * %op6
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -232
# %op36 = icmp slt i32  %op35, 3
	ld.w $t0, $fp, -232
	addi.w $t1, $zero, 3
	slt $t2, $t0, $t1
	st.b $t2, $fp, -233
# %op37 = zext i1  %op36 to i32 
	ld.b $t0, $fp, -233
	st.w $t0, $fp, -240
# %op38 = icmp ne i32  %op37, 0
	ld.w $t0, $fp, -240
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -241
# br i1  %op38, label %label39, label %label40
	ld.b $t0, $fp, -241
	bnez $t0, .loop1_label39
	b .loop1_label40
.loop1_label39:
# store i32  0, i32 * %op7
	ld.d $t0, $fp, -112
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label43
	b .loop1_label43
.loop1_label40:
# %op41 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -248
# %op42 = add i32  %op41, 1
	ld.w $t0, $fp, -248
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -252
# store i32  %op42, i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -252
	st.w $t1, $t0, 0
# br label %label25
	b .loop1_label25
.loop1_label43:
# %op44 = load i32 , i32 * %op7
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -256
# %op45 = icmp slt i32  %op44, 4
	ld.w $t0, $fp, -256
	addi.w $t1, $zero, 4
	slt $t2, $t0, $t1
	st.b $t2, $fp, -257
# %op46 = zext i1  %op45 to i32 
	ld.b $t0, $fp, -257
	st.w $t0, $fp, -264
# %op47 = icmp ne i32  %op46, 0
	ld.w $t0, $fp, -264
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -265
# br i1  %op47, label %label48, label %label49
	ld.b $t0, $fp, -265
	bnez $t0, .loop1_label48
	b .loop1_label49
.loop1_label48:
# store i32  0, i32 * %op8
	ld.d $t0, $fp, -128
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label52
	b .loop1_label52
.loop1_label49:
# %op50 = load i32 , i32 * %op6
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -272
# %op51 = add i32  %op50, 1
	ld.w $t0, $fp, -272
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -276
# store i32  %op51, i32 * %op6
	ld.d $t0, $fp, -96
	ld.w $t1, $fp, -276
	st.w $t1, $t0, 0
# br label %label34
	b .loop1_label34
.loop1_label52:
# %op53 = load i32 , i32 * %op8
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -280
# %op54 = icmp slt i32  %op53, 5
	ld.w $t0, $fp, -280
	addi.w $t1, $zero, 5
	slt $t2, $t0, $t1
	st.b $t2, $fp, -281
# %op55 = zext i1  %op54 to i32 
	ld.b $t0, $fp, -281
	st.w $t0, $fp, -288
# %op56 = icmp ne i32  %op55, 0
	ld.w $t0, $fp, -288
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -289
# br i1  %op56, label %label57, label %label58
	ld.b $t0, $fp, -289
	bnez $t0, .loop1_label57
	b .loop1_label58
.loop1_label57:
# store i32  0, i32 * %op9
	ld.d $t0, $fp, -144
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label61
	b .loop1_label61
.loop1_label58:
# %op59 = load i32 , i32 * %op7
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -296
# %op60 = add i32  %op59, 1
	ld.w $t0, $fp, -296
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -300
# store i32  %op60, i32 * %op7
	ld.d $t0, $fp, -112
	ld.w $t1, $fp, -300
	st.w $t1, $t0, 0
# br label %label43
	b .loop1_label43
.loop1_label61:
# %op62 = load i32 , i32 * %op9
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -304
# %op63 = icmp slt i32  %op62, 6
	ld.w $t0, $fp, -304
	addi.w $t1, $zero, 6
	slt $t2, $t0, $t1
	st.b $t2, $fp, -305
# %op64 = zext i1  %op63 to i32 
	ld.b $t0, $fp, -305
	st.w $t0, $fp, -312
# %op65 = icmp ne i32  %op64, 0
	ld.w $t0, $fp, -312
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -313
# br i1  %op65, label %label66, label %label67
	ld.b $t0, $fp, -313
	bnez $t0, .loop1_label66
	b .loop1_label67
.loop1_label66:
# store i32  0, i32 * %op10
	ld.d $t0, $fp, -160
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label70
	b .loop1_label70
.loop1_label67:
# %op68 = load i32 , i32 * %op8
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -320
# %op69 = add i32  %op68, 1
	ld.w $t0, $fp, -320
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -324
# store i32  %op69, i32 * %op8
	ld.d $t0, $fp, -128
	ld.w $t1, $fp, -324
	st.w $t1, $t0, 0
# br label %label52
	b .loop1_label52
.loop1_label70:
# %op71 = load i32 , i32 * %op10
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -328
# %op72 = icmp slt i32  %op71, 2
	ld.w $t0, $fp, -328
	addi.w $t1, $zero, 2
	slt $t2, $t0, $t1
	st.b $t2, $fp, -329
# %op73 = zext i1  %op72 to i32 
	ld.b $t0, $fp, -329
	st.w $t0, $fp, -336
# %op74 = icmp ne i32  %op73, 0
	ld.w $t0, $fp, -336
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -337
# br i1  %op74, label %label75, label %label104
	ld.b $t0, $fp, -337
	bnez $t0, .loop1_label75
	b .loop1_label104
.loop1_label75:
# %op76 = load i32 , i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -344
# %op77 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op78 = add i32  %op76, %op77
	ld.w $t0, $fp, -344
	ld.w $t1, $fp, -348
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -352
# %op79 = load i32 , i32 * %op6
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op80 = add i32  %op78, %op79
	ld.w $t0, $fp, -352
	ld.w $t1, $fp, -356
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -360
# %op81 = load i32 , i32 * %op7
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# %op82 = add i32  %op80, %op81
	ld.w $t0, $fp, -360
	ld.w $t1, $fp, -364
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -368
# %op83 = load i32 , i32 * %op8
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -372
# %op84 = add i32  %op82, %op83
	ld.w $t0, $fp, -368
	ld.w $t1, $fp, -372
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -376
# %op85 = load i32 , i32 * %op9
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op86 = add i32  %op84, %op85
	ld.w $t0, $fp, -376
	ld.w $t1, $fp, -380
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -384
# %op87 = load i32 , i32 * %op10
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -388
# %op88 = add i32  %op86, %op87
	ld.w $t0, $fp, -384
	ld.w $t1, $fp, -388
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -392
# %op89 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -396
# %op90 = add i32  %op88, %op89
	ld.w $t0, $fp, -392
	ld.w $t1, $fp, -396
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -400
# %op91 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -404
# %op92 = add i32  %op90, %op91
	ld.w $t0, $fp, -400
	ld.w $t1, $fp, -404
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -408
# %op93 = load i32 , i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -412
# %op94 = load i32 , i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -416
# %op95 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -420
# %op96 = load i32 , i32 * %op6
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -424
# %op97 = load i32 , i32 * %op7
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -428
# %op98 = load i32 , i32 * %op8
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -432
# %op99 = load i32 , i32 * %op9
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -436
# %op100 = load i32 , i32 * %op10
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -440
# %op101 = getelementptr [14400 x i32 ], [14400 x i32 ]* @arr1, i32  0, i32  %op93
	addi.d $t0, $zero, 0
	lu12i.w $t1, 14
	ori $t1, $t1, 256
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
	lu12i.w $t1, 14
	ori $t1, $t1, 256
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -412
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, arr1
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -448
# store i32  %op92, i32 * %op101
	ld.d $t0, $fp, -448
	ld.w $t1, $fp, -408
	st.w $t1, $t0, 0
# %op102 = load i32 , i32 * %op10
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -452
# %op103 = add i32  %op102, 1
	ld.w $t0, $fp, -452
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -456
# store i32  %op103, i32 * %op10
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -456
	st.w $t1, $t0, 0
# br label %label70
	b .loop1_label70
.loop1_label104:
# %op105 = load i32 , i32 * %op9
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -460
# %op106 = add i32  %op105, 1
	ld.w $t0, $fp, -460
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -464
# store i32  %op106, i32 * %op9
	ld.d $t0, $fp, -144
	ld.w $t1, $fp, -464
	st.w $t1, $t0, 0
# br label %label61
	b .loop1_label61
loop1_ret:
	addi.d $sp, $sp, 464
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl loop2
	.type loop2, @function
loop2:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -368
.loop2_label_entry:
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
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label7
	b .loop2_label7
.loop2_label7:
# %op8 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op9 = icmp slt i32  %op8, 10
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 10
	slt $t2, $t0, $t1
	st.b $t2, $fp, -129
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -129
	st.w $t0, $fp, -136
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -136
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	st.b $t2, $fp, -137
# br i1  %op11, label %label12, label %label13
	ld.b $t0, $fp, -137
	bnez $t0, .loop2_label12
	b .loop2_label13
.loop2_label12:
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label14
	b .loop2_label14
.loop2_label13:
# ret void
	addi.d $a0, $zero, 0
	b loop2_ret
.loop2_label14:
# %op15 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op16 = icmp slt i32  %op15, 2
	ld.w $t0, $fp, -144
	addi.w $t1, $zero, 2
	slt $t2, $t0, $t1
	st.b $t2, $fp, -145
# %op17 = zext i1  %op16 to i32 
	ld.b $t0, $fp, -145
	st.w $t0, $fp, -152
# %op18 = icmp ne i32  %op17, 0
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	st.b $t2, $fp, -153
# br i1  %op18, label %label19, label %label20
	ld.b $t0, $fp, -153
	bnez $t0, .loop2_label19
	b .loop2_label20
.loop2_label19:
# store i32  0, i32 * %op2
	ld.d $t0, $fp, -56
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label23
	b .loop2_label23
.loop2_label20:
# %op21 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op22 = add i32  %op21, 1
	ld.w $t0, $fp, -160
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -164
# store i32  %op22, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -164
	st.w $t1, $t0, 0
# br label %label7
	b .loop2_label7
.loop2_label23:
# %op24 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op25 = icmp slt i32  %op24, 3
	ld.w $t0, $fp, -168
	addi.w $t1, $zero, 3
	slt $t2, $t0, $t1
	st.b $t2, $fp, -169
# %op26 = zext i1  %op25 to i32 
	ld.b $t0, $fp, -169
	st.w $t0, $fp, -176
# %op27 = icmp ne i32  %op26, 0
	ld.w $t0, $fp, -176
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label21
	addi.d $t2, $zero, 0
	b false_label21
true_label21:
	addi.d $t2, $zero, 1
false_label21:
	st.b $t2, $fp, -177
# br i1  %op27, label %label28, label %label29
	ld.b $t0, $fp, -177
	bnez $t0, .loop2_label28
	b .loop2_label29
.loop2_label28:
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label32
	b .loop2_label32
.loop2_label29:
# %op30 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -184
# %op31 = add i32  %op30, 1
	ld.w $t0, $fp, -184
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -188
# store i32  %op31, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -188
	st.w $t1, $t0, 0
# br label %label14
	b .loop2_label14
.loop2_label32:
# %op33 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -192
# %op34 = icmp slt i32  %op33, 2
	ld.w $t0, $fp, -192
	addi.w $t1, $zero, 2
	slt $t2, $t0, $t1
	st.b $t2, $fp, -193
# %op35 = zext i1  %op34 to i32 
	ld.b $t0, $fp, -193
	st.w $t0, $fp, -200
# %op36 = icmp ne i32  %op35, 0
	ld.w $t0, $fp, -200
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label23
	addi.d $t2, $zero, 0
	b false_label23
true_label23:
	addi.d $t2, $zero, 1
false_label23:
	st.b $t2, $fp, -201
# br i1  %op36, label %label37, label %label38
	ld.b $t0, $fp, -201
	bnez $t0, .loop2_label37
	b .loop2_label38
.loop2_label37:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label41
	b .loop2_label41
.loop2_label38:
# %op39 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -208
# %op40 = add i32  %op39, 1
	ld.w $t0, $fp, -208
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -212
# store i32  %op40, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -212
	st.w $t1, $t0, 0
# br label %label23
	b .loop2_label23
.loop2_label41:
# %op42 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -216
# %op43 = icmp slt i32  %op42, 4
	ld.w $t0, $fp, -216
	addi.w $t1, $zero, 4
	slt $t2, $t0, $t1
	st.b $t2, $fp, -217
# %op44 = zext i1  %op43 to i32 
	ld.b $t0, $fp, -217
	st.w $t0, $fp, -224
# %op45 = icmp ne i32  %op44, 0
	ld.w $t0, $fp, -224
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label25
	addi.d $t2, $zero, 0
	b false_label25
true_label25:
	addi.d $t2, $zero, 1
false_label25:
	st.b $t2, $fp, -225
# br i1  %op45, label %label46, label %label47
	ld.b $t0, $fp, -225
	bnez $t0, .loop2_label46
	b .loop2_label47
.loop2_label46:
# store i32  0, i32 * %op5
	ld.d $t0, $fp, -104
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label50
	b .loop2_label50
.loop2_label47:
# %op48 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -232
# %op49 = add i32  %op48, 1
	ld.w $t0, $fp, -232
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -236
# store i32  %op49, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -236
	st.w $t1, $t0, 0
# br label %label32
	b .loop2_label32
.loop2_label50:
# %op51 = load i32 , i32 * %op5
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -240
# %op52 = icmp slt i32  %op51, 8
	ld.w $t0, $fp, -240
	addi.w $t1, $zero, 8
	slt $t2, $t0, $t1
	st.b $t2, $fp, -241
# %op53 = zext i1  %op52 to i32 
	ld.b $t0, $fp, -241
	st.w $t0, $fp, -248
# %op54 = icmp ne i32  %op53, 0
	ld.w $t0, $fp, -248
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label27
	addi.d $t2, $zero, 0
	b false_label27
true_label27:
	addi.d $t2, $zero, 1
false_label27:
	st.b $t2, $fp, -249
# br i1  %op54, label %label55, label %label56
	ld.b $t0, $fp, -249
	bnez $t0, .loop2_label55
	b .loop2_label56
.loop2_label55:
# store i32  0, i32 * %op6
	ld.d $t0, $fp, -120
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label59
	b .loop2_label59
.loop2_label56:
# %op57 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -256
# %op58 = add i32  %op57, 1
	ld.w $t0, $fp, -256
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -260
# store i32  %op58, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -260
	st.w $t1, $t0, 0
# br label %label41
	b .loop2_label41
.loop2_label59:
# %op60 = load i32 , i32 * %op6
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -264
# %op61 = icmp slt i32  %op60, 7
	ld.w $t0, $fp, -264
	addi.w $t1, $zero, 7
	slt $t2, $t0, $t1
	st.b $t2, $fp, -265
# %op62 = zext i1  %op61 to i32 
	ld.b $t0, $fp, -265
	st.w $t0, $fp, -272
# %op63 = icmp ne i32  %op62, 0
	ld.w $t0, $fp, -272
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label29
	addi.d $t2, $zero, 0
	b false_label29
true_label29:
	addi.d $t2, $zero, 1
false_label29:
	st.b $t2, $fp, -273
# br i1  %op63, label %label64, label %label83
	ld.b $t0, $fp, -273
	bnez $t0, .loop2_label64
	b .loop2_label83
.loop2_label64:
# %op65 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -280
# %op66 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# %op67 = add i32  %op65, %op66
	ld.w $t0, $fp, -280
	ld.w $t1, $fp, -284
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -288
# %op68 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# %op69 = add i32  %op67, %op68
	ld.w $t0, $fp, -288
	ld.w $t1, $fp, -292
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -296
# %op70 = load i32 , i32 * %op6
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op71 = add i32  %op69, %op70
	ld.w $t0, $fp, -296
	ld.w $t1, $fp, -300
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -304
# %op72 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op73 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -312
# %op74 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op75 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -320
# %op76 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op77 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -328
# %op78 = load i32 , i32 * %op5
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op79 = load i32 , i32 * %op6
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -336
# %op80 = getelementptr [26880 x i32 ], [26880 x i32 ]* @arr2, i32  0, i32  %op72
	addi.d $t0, $zero, 0
	lu12i.w $t1, 26
	ori $t1, $t1, 1024
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
	lu12i.w $t1, 26
	ori $t1, $t1, 1024
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -308
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, arr2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -344
# store i32  %op71, i32 * %op80
	ld.d $t0, $fp, -344
	ld.w $t1, $fp, -304
	st.w $t1, $t0, 0
# %op81 = load i32 , i32 * %op6
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op82 = add i32  %op81, 1
	ld.w $t0, $fp, -348
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -352
# store i32  %op82, i32 * %op6
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -352
	st.w $t1, $t0, 0
# br label %label59
	b .loop2_label59
.loop2_label83:
# %op84 = load i32 , i32 * %op5
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op85 = add i32  %op84, 1
	ld.w $t0, $fp, -356
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -360
# store i32  %op85, i32 * %op5
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -360
	st.w $t1, $t0, 0
# br label %label50
	b .loop2_label50
loop2_ret:
	addi.d $sp, $sp, 368
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl loop3
	.type loop3, @function
loop3:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -704
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
	st.w $a2, $fp, -28
	st.w $a3, $fp, -32
	st.w $a4, $fp, -36
	st.w $a5, $fp, -40
	st.w $a6, $fp, -44
.loop3_label_entry:
# %op7 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -56
# store i32  %arg0, i32 * %op7
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op8 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -72
# store i32  %arg1, i32 * %op8
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op9 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -88
# store i32  %arg2, i32 * %op9
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op10 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -104
# store i32  %arg3, i32 * %op10
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -32
	st.w $t1, $t0, 0
# %op11 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3972
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -120
# store i32  %arg4, i32 * %op11
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -36
	st.w $t1, $t0, 0
# %op12 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -136
# store i32  %arg5, i32 * %op12
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -40
	st.w $t1, $t0, 0
# %op13 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -152
# store i32  %arg6, i32 * %op13
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -44
	st.w $t1, $t0, 0
# %op14 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3924
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -168
# %op15 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3908
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -184
# %op16 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -200
# %op17 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -216
# %op18 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -232
# %op19 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3844
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -248
# %op20 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -264
# %op21 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -280
# store i32  0, i32 * %op21
	ld.d $t0, $fp, -280
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op14
	ld.d $t0, $fp, -168
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label22
	b .loop3_label22
.loop3_label22:
# %op23 = load i32 , i32 * %op14
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -288
# %op24 = icmp slt i32  %op23, 10
	ld.w $t0, $fp, -288
	addi.w $t1, $zero, 10
	slt $t2, $t0, $t1
	st.b $t2, $fp, -289
# %op25 = zext i1  %op24 to i32 
	ld.b $t0, $fp, -289
	st.w $t0, $fp, -296
# %op26 = icmp ne i32  %op25, 0
	ld.w $t0, $fp, -296
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label31
	addi.d $t2, $zero, 0
	b false_label31
true_label31:
	addi.d $t2, $zero, 1
false_label31:
	st.b $t2, $fp, -297
# br i1  %op26, label %label27, label %label28
	ld.b $t0, $fp, -297
	bnez $t0, .loop3_label27
	b .loop3_label28
.loop3_label27:
# store i32  0, i32 * %op15
	ld.d $t0, $fp, -184
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label30
	b .loop3_label30
.loop3_label28:
# %op29 = load i32 , i32 * %op21
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -304
# ret i32  %op29
	ld.w $a0, $fp, -304
	b loop3_ret
.loop3_label30:
# %op31 = load i32 , i32 * %op15
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op32 = icmp slt i32  %op31, 100
	ld.w $t0, $fp, -308
	addi.w $t1, $zero, 100
	slt $t2, $t0, $t1
	st.b $t2, $fp, -309
# %op33 = zext i1  %op32 to i32 
	ld.b $t0, $fp, -309
	st.w $t0, $fp, -316
# %op34 = icmp ne i32  %op33, 0
	ld.w $t0, $fp, -316
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label33
	addi.d $t2, $zero, 0
	b false_label33
true_label33:
	addi.d $t2, $zero, 1
false_label33:
	st.b $t2, $fp, -317
# br i1  %op34, label %label35, label %label36
	ld.b $t0, $fp, -317
	bnez $t0, .loop3_label35
	b .loop3_label36
.loop3_label35:
# store i32  0, i32 * %op16
	ld.d $t0, $fp, -200
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label44
	b .loop3_label44
.loop3_label36:
# %op37 = load i32 , i32 * %op14
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op38 = add i32  %op37, 1
	ld.w $t0, $fp, -324
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -328
# store i32  %op38, i32 * %op14
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -328
	st.w $t1, $t0, 0
# %op39 = load i32 , i32 * %op14
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op40 = load i32 , i32 * %op7
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -336
# %op41 = icmp sge i32  %op39, %op40
	ld.w $t0, $fp, -332
	ld.w $t1, $fp, -336
	bge  $t0, $t1, true_label34
	addi.d $t2, $zero, 0
	b false_label34
true_label34:
	addi.d $t2, $zero, 1
false_label34:
	st.b $t2, $fp, -337
# %op42 = zext i1  %op41 to i32 
	ld.b $t0, $fp, -337
	st.w $t0, $fp, -344
# %op43 = icmp ne i32  %op42, 0
	ld.w $t0, $fp, -344
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label35
	addi.d $t2, $zero, 0
	b false_label35
true_label35:
	addi.d $t2, $zero, 1
false_label35:
	st.b $t2, $fp, -345
# br i1  %op43, label %label157, label %label158
	ld.b $t0, $fp, -345
	bnez $t0, .loop3_label157
	b .loop3_label158
.loop3_label44:
# %op45 = load i32 , i32 * %op16
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -352
# %op46 = icmp slt i32  %op45, 1000
	ld.w $t0, $fp, -352
	addi.w $t1, $zero, 1000
	slt $t2, $t0, $t1
	st.b $t2, $fp, -353
# %op47 = zext i1  %op46 to i32 
	ld.b $t0, $fp, -353
	st.w $t0, $fp, -360
# %op48 = icmp ne i32  %op47, 0
	ld.w $t0, $fp, -360
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label37
	addi.d $t2, $zero, 0
	b false_label37
true_label37:
	addi.d $t2, $zero, 1
false_label37:
	st.b $t2, $fp, -361
# br i1  %op48, label %label49, label %label50
	ld.b $t0, $fp, -361
	bnez $t0, .loop3_label49
	b .loop3_label50
.loop3_label49:
# store i32  0, i32 * %op17
	ld.d $t0, $fp, -216
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label58
	b .loop3_label58
.loop3_label50:
# %op51 = load i32 , i32 * %op15
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -368
# %op52 = add i32  %op51, 1
	ld.w $t0, $fp, -368
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -372
# store i32  %op52, i32 * %op15
	ld.d $t0, $fp, -184
	ld.w $t1, $fp, -372
	st.w $t1, $t0, 0
# %op53 = load i32 , i32 * %op15
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -376
# %op54 = load i32 , i32 * %op8
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op55 = icmp sge i32  %op53, %op54
	ld.w $t0, $fp, -376
	ld.w $t1, $fp, -380
	bge  $t0, $t1, true_label38
	addi.d $t2, $zero, 0
	b false_label38
true_label38:
	addi.d $t2, $zero, 1
false_label38:
	st.b $t2, $fp, -381
# %op56 = zext i1  %op55 to i32 
	ld.b $t0, $fp, -381
	st.w $t0, $fp, -388
# %op57 = icmp ne i32  %op56, 0
	ld.w $t0, $fp, -388
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label39
	addi.d $t2, $zero, 0
	b false_label39
true_label39:
	addi.d $t2, $zero, 1
false_label39:
	st.b $t2, $fp, -389
# br i1  %op57, label %label155, label %label156
	ld.b $t0, $fp, -389
	bnez $t0, .loop3_label155
	b .loop3_label156
.loop3_label58:
# %op59 = load i32 , i32 * %op17
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -396
# %op60 = icmp slt i32  %op59, 10000
	ld.w $t0, $fp, -396
	lu12i.w $t1, 2
	ori $t1, $t1, 1808
	slt $t2, $t0, $t1
	st.b $t2, $fp, -397
# %op61 = zext i1  %op60 to i32 
	ld.b $t0, $fp, -397
	st.w $t0, $fp, -404
# %op62 = icmp ne i32  %op61, 0
	ld.w $t0, $fp, -404
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label41
	addi.d $t2, $zero, 0
	b false_label41
true_label41:
	addi.d $t2, $zero, 1
false_label41:
	st.b $t2, $fp, -405
# br i1  %op62, label %label63, label %label64
	ld.b $t0, $fp, -405
	bnez $t0, .loop3_label63
	b .loop3_label64
.loop3_label63:
# store i32  0, i32 * %op18
	ld.d $t0, $fp, -232
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label72
	b .loop3_label72
.loop3_label64:
# %op65 = load i32 , i32 * %op16
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -412
# %op66 = add i32  %op65, 1
	ld.w $t0, $fp, -412
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -416
# store i32  %op66, i32 * %op16
	ld.d $t0, $fp, -200
	ld.w $t1, $fp, -416
	st.w $t1, $t0, 0
# %op67 = load i32 , i32 * %op16
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -420
# %op68 = load i32 , i32 * %op9
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -424
# %op69 = icmp sge i32  %op67, %op68
	ld.w $t0, $fp, -420
	ld.w $t1, $fp, -424
	bge  $t0, $t1, true_label42
	addi.d $t2, $zero, 0
	b false_label42
true_label42:
	addi.d $t2, $zero, 1
false_label42:
	st.b $t2, $fp, -425
# %op70 = zext i1  %op69 to i32 
	ld.b $t0, $fp, -425
	st.w $t0, $fp, -432
# %op71 = icmp ne i32  %op70, 0
	ld.w $t0, $fp, -432
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label43
	addi.d $t2, $zero, 0
	b false_label43
true_label43:
	addi.d $t2, $zero, 1
false_label43:
	st.b $t2, $fp, -433
# br i1  %op71, label %label153, label %label154
	ld.b $t0, $fp, -433
	bnez $t0, .loop3_label153
	b .loop3_label154
.loop3_label72:
# %op73 = load i32 , i32 * %op18
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -440
# %op74 = icmp slt i32  %op73, 100000
	ld.w $t0, $fp, -440
	lu12i.w $t1, 24
	ori $t1, $t1, 1696
	slt $t2, $t0, $t1
	st.b $t2, $fp, -441
# %op75 = zext i1  %op74 to i32 
	ld.b $t0, $fp, -441
	st.w $t0, $fp, -448
# %op76 = icmp ne i32  %op75, 0
	ld.w $t0, $fp, -448
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label45
	addi.d $t2, $zero, 0
	b false_label45
true_label45:
	addi.d $t2, $zero, 1
false_label45:
	st.b $t2, $fp, -449
# br i1  %op76, label %label77, label %label78
	ld.b $t0, $fp, -449
	bnez $t0, .loop3_label77
	b .loop3_label78
.loop3_label77:
# store i32  0, i32 * %op19
	ld.d $t0, $fp, -248
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label86
	b .loop3_label86
.loop3_label78:
# %op79 = load i32 , i32 * %op17
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -456
# %op80 = add i32  %op79, 1
	ld.w $t0, $fp, -456
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -460
# store i32  %op80, i32 * %op17
	ld.d $t0, $fp, -216
	ld.w $t1, $fp, -460
	st.w $t1, $t0, 0
# %op81 = load i32 , i32 * %op17
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -464
# %op82 = load i32 , i32 * %op10
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -468
# %op83 = icmp sge i32  %op81, %op82
	ld.w $t0, $fp, -464
	ld.w $t1, $fp, -468
	bge  $t0, $t1, true_label46
	addi.d $t2, $zero, 0
	b false_label46
true_label46:
	addi.d $t2, $zero, 1
false_label46:
	st.b $t2, $fp, -469
# %op84 = zext i1  %op83 to i32 
	ld.b $t0, $fp, -469
	st.w $t0, $fp, -476
# %op85 = icmp ne i32  %op84, 0
	ld.w $t0, $fp, -476
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label47
	addi.d $t2, $zero, 0
	b false_label47
true_label47:
	addi.d $t2, $zero, 1
false_label47:
	st.b $t2, $fp, -477
# br i1  %op85, label %label151, label %label152
	ld.b $t0, $fp, -477
	bnez $t0, .loop3_label151
	b .loop3_label152
.loop3_label86:
# %op87 = load i32 , i32 * %op19
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -484
# %op88 = icmp slt i32  %op87, 1000000
	ld.w $t0, $fp, -484
	lu12i.w $t1, 244
	ori $t1, $t1, 576
	slt $t2, $t0, $t1
	st.b $t2, $fp, -485
# %op89 = zext i1  %op88 to i32 
	ld.b $t0, $fp, -485
	st.w $t0, $fp, -492
# %op90 = icmp ne i32  %op89, 0
	ld.w $t0, $fp, -492
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label49
	addi.d $t2, $zero, 0
	b false_label49
true_label49:
	addi.d $t2, $zero, 1
false_label49:
	st.b $t2, $fp, -493
# br i1  %op90, label %label91, label %label92
	ld.b $t0, $fp, -493
	bnez $t0, .loop3_label91
	b .loop3_label92
.loop3_label91:
# store i32  0, i32 * %op20
	ld.d $t0, $fp, -264
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label100
	b .loop3_label100
.loop3_label92:
# %op93 = load i32 , i32 * %op18
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -500
# %op94 = add i32  %op93, 1
	ld.w $t0, $fp, -500
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -504
# store i32  %op94, i32 * %op18
	ld.d $t0, $fp, -232
	ld.w $t1, $fp, -504
	st.w $t1, $t0, 0
# %op95 = load i32 , i32 * %op18
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -508
# %op96 = load i32 , i32 * %op11
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -512
# %op97 = icmp sge i32  %op95, %op96
	ld.w $t0, $fp, -508
	ld.w $t1, $fp, -512
	bge  $t0, $t1, true_label50
	addi.d $t2, $zero, 0
	b false_label50
true_label50:
	addi.d $t2, $zero, 1
false_label50:
	st.b $t2, $fp, -513
# %op98 = zext i1  %op97 to i32 
	ld.b $t0, $fp, -513
	st.w $t0, $fp, -520
# %op99 = icmp ne i32  %op98, 0
	ld.w $t0, $fp, -520
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label51
	addi.d $t2, $zero, 0
	b false_label51
true_label51:
	addi.d $t2, $zero, 1
false_label51:
	st.b $t2, $fp, -521
# br i1  %op99, label %label149, label %label150
	ld.b $t0, $fp, -521
	bnez $t0, .loop3_label149
	b .loop3_label150
.loop3_label100:
# %op101 = load i32 , i32 * %op20
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -528
# %op102 = icmp slt i32  %op101, 10000000
	ld.w $t0, $fp, -528
	lu12i.w $t1, 2441
	ori $t1, $t1, 1664
	slt $t2, $t0, $t1
	st.b $t2, $fp, -529
# %op103 = zext i1  %op102 to i32 
	ld.b $t0, $fp, -529
	st.w $t0, $fp, -536
# %op104 = icmp ne i32  %op103, 0
	ld.w $t0, $fp, -536
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label53
	addi.d $t2, $zero, 0
	b false_label53
true_label53:
	addi.d $t2, $zero, 1
false_label53:
	st.b $t2, $fp, -537
# br i1  %op104, label %label105, label %label137
	ld.b $t0, $fp, -537
	bnez $t0, .loop3_label105
	b .loop3_label137
.loop3_label105:
# %op106 = load i32 , i32 * %op21
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -544
# %op107 = srem i32  %op106, 817
	ld.w $t0, $fp, -544
	addi.w $t1, $zero, 817
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -548
# %op108 = load i32 , i32 * %op14
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -552
# %op109 = load i32 , i32 * %op14
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -556
# %op110 = load i32 , i32 * %op15
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -560
# %op111 = load i32 , i32 * %op16
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -564
# %op112 = load i32 , i32 * %op17
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -568
# %op113 = load i32 , i32 * %op18
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -572
# %op114 = load i32 , i32 * %op19
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -576
# %op115 = load i32 , i32 * %op20
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -580
# %op116 = getelementptr [14400 x i32 ], [14400 x i32 ]* @arr1, i32  0, i32  %op108
	addi.d $t0, $zero, 0
	lu12i.w $t1, 14
	ori $t1, $t1, 256
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
	lu12i.w $t1, 14
	ori $t1, $t1, 256
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -552
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, arr1
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -592
# %op117 = load i32 , i32 * %op116
	ld.d $t0, $fp, -592
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -596
# %op118 = add i32  %op107, %op117
	ld.w $t0, $fp, -548
	ld.w $t1, $fp, -596
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -600
# %op119 = load i32 , i32 * %op14
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -604
# %op120 = load i32 , i32 * %op14
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -608
# %op121 = load i32 , i32 * %op15
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -612
# %op122 = load i32 , i32 * %op16
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -616
# %op123 = load i32 , i32 * %op17
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -620
# %op124 = load i32 , i32 * %op18
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -624
# %op125 = load i32 , i32 * %op19
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -628
# %op126 = load i32 , i32 * %op20
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -632
# %op127 = getelementptr [26880 x i32 ], [26880 x i32 ]* @arr2, i32  0, i32  %op119
	addi.d $t0, $zero, 0
	lu12i.w $t1, 26
	ori $t1, $t1, 1024
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
	lu12i.w $t1, 26
	ori $t1, $t1, 1024
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -604
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, arr2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -640
# %op128 = load i32 , i32 * %op127
	ld.d $t0, $fp, -640
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -644
# %op129 = add i32  %op118, %op128
	ld.w $t0, $fp, -600
	ld.w $t1, $fp, -644
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -648
# store i32  %op129, i32 * %op21
	ld.d $t0, $fp, -280
	ld.w $t1, $fp, -648
	st.w $t1, $t0, 0
# %op130 = load i32 , i32 * %op20
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -652
# %op131 = add i32  %op130, 1
	ld.w $t0, $fp, -652
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -656
# store i32  %op131, i32 * %op20
	ld.d $t0, $fp, -264
	ld.w $t1, $fp, -656
	st.w $t1, $t0, 0
# %op132 = load i32 , i32 * %op20
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -660
# %op133 = load i32 , i32 * %op13
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -664
# %op134 = icmp sge i32  %op132, %op133
	ld.w $t0, $fp, -660
	ld.w $t1, $fp, -664
	bge  $t0, $t1, true_label54
	addi.d $t2, $zero, 0
	b false_label54
true_label54:
	addi.d $t2, $zero, 1
false_label54:
	st.b $t2, $fp, -665
# %op135 = zext i1  %op134 to i32 
	ld.b $t0, $fp, -665
	st.w $t0, $fp, -672
# %op136 = icmp ne i32  %op135, 0
	ld.w $t0, $fp, -672
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label55
	addi.d $t2, $zero, 0
	b false_label55
true_label55:
	addi.d $t2, $zero, 1
false_label55:
	st.b $t2, $fp, -673
# br i1  %op136, label %label145, label %label146
	ld.b $t0, $fp, -673
	bnez $t0, .loop3_label145
	b .loop3_label146
.loop3_label137:
# %op138 = load i32 , i32 * %op19
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -680
# %op139 = add i32  %op138, 1
	ld.w $t0, $fp, -680
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -684
# store i32  %op139, i32 * %op19
	ld.d $t0, $fp, -248
	ld.w $t1, $fp, -684
	st.w $t1, $t0, 0
# %op140 = load i32 , i32 * %op19
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -688
# %op141 = load i32 , i32 * %op12
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -692
# %op142 = icmp sge i32  %op140, %op141
	ld.w $t0, $fp, -688
	ld.w $t1, $fp, -692
	bge  $t0, $t1, true_label56
	addi.d $t2, $zero, 0
	b false_label56
true_label56:
	addi.d $t2, $zero, 1
false_label56:
	st.b $t2, $fp, -693
# %op143 = zext i1  %op142 to i32 
	ld.b $t0, $fp, -693
	st.w $t0, $fp, -700
# %op144 = icmp ne i32  %op143, 0
	ld.w $t0, $fp, -700
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label57
	addi.d $t2, $zero, 0
	b false_label57
true_label57:
	addi.d $t2, $zero, 1
false_label57:
	st.b $t2, $fp, -701
# br i1  %op144, label %label147, label %label148
	ld.b $t0, $fp, -701
	bnez $t0, .loop3_label147
	b .loop3_label148
.loop3_label145:
# br label %label137
	b .loop3_label137
.loop3_label146:
# br label %label100
	b .loop3_label100
.loop3_label147:
# br label %label92
	b .loop3_label92
.loop3_label148:
# br label %label86
	b .loop3_label86
.loop3_label149:
# br label %label78
	b .loop3_label78
.loop3_label150:
# br label %label72
	b .loop3_label72
.loop3_label151:
# br label %label64
	b .loop3_label64
.loop3_label152:
# br label %label58
	b .loop3_label58
.loop3_label153:
# br label %label50
	b .loop3_label50
.loop3_label154:
# br label %label44
	b .loop3_label44
.loop3_label155:
# br label %label36
	b .loop3_label36
.loop3_label156:
# br label %label30
	b .loop3_label30
.loop3_label157:
# br label %label28
	b .loop3_label28
.loop3_label158:
# br label %label22
	b .loop3_label22
loop3_ret:
	addi.d $sp, $sp, 704
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -208
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
# %op8 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -88
# %op9 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -96
# store i32  %op8, i32 * %op9
	ld.d $t0, $fp, -96
	ld.w $t1, $fp, -88
	st.w $t1, $t0, 0
# %op10 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -104
# %op11 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3980
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -112
# store i32  %op10, i32 * %op11
	ld.d $t0, $fp, -112
	ld.w $t1, $fp, -104
	st.w $t1, $t0, 0
# %op12 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -120
# %op13 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -128
# store i32  %op12, i32 * %op13
	ld.d $t0, $fp, -128
	ld.w $t1, $fp, -120
	st.w $t1, $t0, 0
# %op14 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -136
# %op15 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -144
# store i32  %op14, i32 * %op15
	ld.d $t0, $fp, -144
	ld.w $t1, $fp, -136
	st.w $t1, $t0, 0
# %op16 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -152
# %op17 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -160
# store i32  %op16, i32 * %op17
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -152
	st.w $t1, $t0, 0
# %op18 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op19 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# call void @loop1(i32  %op18, i32  %op19)
	ld.w $a0, $fp, -168
	ld.w $a1, $fp, -172
	bl loop1
# call void @loop2()
	bl loop2
# %op20 = load i32 , i32 * %op5
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op21 = load i32 , i32 * %op7
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op22 = load i32 , i32 * %op9
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -184
# %op23 = load i32 , i32 * %op11
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op24 = load i32 , i32 * %op13
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -192
# %op25 = load i32 , i32 * %op15
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op26 = load i32 , i32 * %op17
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -200
# %op27 = call i32  @loop3(i32  %op20, i32  %op21, i32  %op22, i32  %op23, i32  %op24, i32  %op25, i32  %op26)
	ld.w $a0, $fp, -176
	ld.w $a1, $fp, -180
	ld.w $a2, $fp, -184
	ld.w $a3, $fp, -188
	ld.w $a4, $fp, -192
	ld.w $a5, $fp, -196
	ld.w $a6, $fp, -200
	bl loop3
	st.w $a0, $fp, -204
# ret i32  %op27
	ld.w $a0, $fp, -204
	b main_ret
main_ret:
	addi.d $sp, $sp, 208
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

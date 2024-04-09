# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl TAPE_LEN
	.data
	.type TAPE_LEN, @object
	.size TAPE_LEN, 4
TAPE_LEN:
	.word 65536
	.space 4
	.globl BUFFER_LEN
	.data
	.type BUFFER_LEN, @object
	.size BUFFER_LEN, 4
BUFFER_LEN:
	.word 32768
	.space 4
	.globl tape
	.type tape, @object
	.size tape, 262144
tape:
	.space 262144
	.globl program
	.type program, @object
	.size program, 131072
program:
	.space 131072
	.globl ptr
	.data
	.type ptr, @object
	.size ptr, 4
ptr:
	.word 0
	.space 4
	.text
	.globl read_program
	.type read_program, @function
read_program:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -112
.read_program_label_entry:
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
# %op1 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -32
# %op2 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -40
# store i32  %op1, i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -32
	st.w $t1, $t0, 0
# br label %label3
	b .read_program_label3
.read_program_label3:
# %op4 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op5 = load i32 , i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# %op6 = icmp slt i32  %op4, %op5
	ld.w $t0, $fp, -48
	ld.w $t1, $fp, -52
	slt $t2, $t0, $t1
	st.b $t2, $fp, -53
# %op7 = zext i1  %op6 to i32 
	ld.b $t0, $fp, -53
	st.w $t0, $fp, -60
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -61
# br i1  %op8, label %label9, label %label17
	ld.b $t0, $fp, -61
	bnez $t0, .read_program_label9
	b .read_program_label17
.read_program_label9:
# %op10 = call i8  @getch()
	bl getch
	st.b $a0, $fp, -62
# %op11 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op12 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op13 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32  0, i32  %op11
	addi.d $t0, $zero, 0
	lu12i.w $t1, 32
	ori $t1, $t1, 0
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
	lu12i.w $t1, 32
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -68
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, program
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -80
# %op14 = zext i8  %op10 to i32 
	ld.b $t0, $fp, -62
	st.w $t0, $fp, -84
# store i32  %op14, i32 * %op13
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -84
	st.w $t1, $t0, 0
# %op15 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op16 = add i32  %op15, 1
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -92
# store i32  %op16, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -92
	st.w $t1, $t0, 0
# br label %label3
	b .read_program_label3
.read_program_label17:
# %op18 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op19 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op20 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32  0, i32  %op18
	addi.d $t0, $zero, 0
	lu12i.w $t1, 32
	ori $t1, $t1, 0
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
	lu12i.w $t1, 32
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -96
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, program
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -112
# store i32  0, i32 * %op20
	ld.d $t0, $fp, -112
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# ret void
	addi.d $a0, $zero, 0
	b read_program_ret
read_program_ret:
	addi.d $sp, $sp, 112
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl interpret
	.type interpret, @function
interpret:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -544
	st.d $a0, $fp, -24
.interpret_label_entry:
# %op1 = alloca i32 *
	lu12i.w $t0, -1
	ori $t0, $t0, 4056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -32
# store i32 * %arg0, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op2 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -48
# %op3 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -64
# %op4 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -80
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -80
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label5
	b .interpret_label5
.interpret_label5:
# %op6 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op7 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op8 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -104
# %op9 = getelementptr i32 , i32 * %op8, i32  %op6
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -88
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -104
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -112
# %op10 = load i32 , i32 * %op9
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -117
# br i1  %op11, label %label12, label %label22
	ld.b $t0, $fp, -117
	bnez $t0, .interpret_label12
	b .interpret_label22
.interpret_label12:
# %op13 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op14 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op15 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -136
# %op16 = getelementptr i32 , i32 * %op15, i32  %op13
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -124
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -136
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -144
# %op17 = load i32 , i32 * %op16
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# store i32  %op17, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -148
	st.w $t1, $t0, 0
# %op18 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op19 = icmp eq i32  %op18, 62
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 62
	beq  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -153
# %op20 = zext i1  %op19 to i32 
	ld.b $t0, $fp, -153
	st.w $t0, $fp, -160
# %op21 = icmp ne i32  %op20, 0
	ld.w $t0, $fp, -160
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -161
# br i1  %op21, label %label23, label %label26
	ld.b $t0, $fp, -161
	bnez $t0, .interpret_label23
	b .interpret_label26
.interpret_label22:
# ret void
	addi.d $a0, $zero, 0
	b interpret_ret
.interpret_label23:
# %op24 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op25 = add i32  %op24, 1
	ld.w $t0, $fp, -168
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -172
# store i32  %op25, i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $fp, -172
	st.w $t1, $t0, 0
# br label %label31
	b .interpret_label31
.interpret_label26:
# %op27 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op28 = icmp eq i32  %op27, 60
	ld.w $t0, $fp, -176
	addi.w $t1, $zero, 60
	beq  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -177
# %op29 = zext i1  %op28 to i32 
	ld.b $t0, $fp, -177
	st.w $t0, $fp, -184
# %op30 = icmp ne i32  %op29, 0
	ld.w $t0, $fp, -184
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -185
# br i1  %op30, label %label34, label %label37
	ld.b $t0, $fp, -185
	bnez $t0, .interpret_label34
	b .interpret_label37
.interpret_label31:
# %op32 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -192
# %op33 = add i32  %op32, 1
	ld.w $t0, $fp, -192
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -196
# store i32  %op33, i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -196
	st.w $t1, $t0, 0
# br label %label5
	b .interpret_label5
.interpret_label34:
# %op35 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -200
# %op36 = sub i32  %op35, 1
	ld.w $t0, $fp, -200
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -204
# store i32  %op36, i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $fp, -204
	st.w $t1, $t0, 0
# br label %label42
	b .interpret_label42
.interpret_label37:
# %op38 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -208
# %op39 = icmp eq i32  %op38, 43
	ld.w $t0, $fp, -208
	addi.w $t1, $zero, 43
	beq  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -209
# %op40 = zext i1  %op39 to i32 
	ld.b $t0, $fp, -209
	st.w $t0, $fp, -216
# %op41 = icmp ne i32  %op40, 0
	ld.w $t0, $fp, -216
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -217
# br i1  %op41, label %label43, label %label52
	ld.b $t0, $fp, -217
	bnez $t0, .interpret_label43
	b .interpret_label52
.interpret_label42:
# br label %label31
	b .interpret_label31
.interpret_label43:
# %op44 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -224
# %op45 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op46 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op44
	addi.d $t0, $zero, 0
	lu12i.w $t1, 64
	ori $t1, $t1, 0
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
	lu12i.w $t1, 64
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -224
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, tape
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -240
# %op47 = load i32 , i32 * %op46
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op48 = add i32  %op47, 1
	ld.w $t0, $fp, -244
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -248
# %op49 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# %op50 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -256
# %op51 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op49
	addi.d $t0, $zero, 0
	lu12i.w $t1, 64
	ori $t1, $t1, 0
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
	lu12i.w $t1, 64
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -252
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, tape
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -264
# store i32  %op48, i32 * %op51
	ld.d $t0, $fp, -264
	ld.w $t1, $fp, -248
	st.w $t1, $t0, 0
# br label %label57
	b .interpret_label57
.interpret_label52:
# %op53 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# %op54 = icmp eq i32  %op53, 45
	ld.w $t0, $fp, -268
	addi.w $t1, $zero, 45
	beq  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -269
# %op55 = zext i1  %op54 to i32 
	ld.b $t0, $fp, -269
	st.w $t0, $fp, -276
# %op56 = icmp ne i32  %op55, 0
	ld.w $t0, $fp, -276
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -277
# br i1  %op56, label %label58, label %label67
	ld.b $t0, $fp, -277
	bnez $t0, .interpret_label58
	b .interpret_label67
.interpret_label57:
# br label %label42
	b .interpret_label42
.interpret_label58:
# %op59 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# %op60 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -288
# %op61 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op59
	addi.d $t0, $zero, 0
	lu12i.w $t1, 64
	ori $t1, $t1, 0
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
	lu12i.w $t1, 64
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -284
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, tape
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -296
# %op62 = load i32 , i32 * %op61
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op63 = sub i32  %op62, 1
	ld.w $t0, $fp, -300
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -304
# %op64 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op65 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -312
# %op66 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op64
	addi.d $t0, $zero, 0
	lu12i.w $t1, 64
	ori $t1, $t1, 0
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
	lu12i.w $t1, 64
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -308
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, tape
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -320
# store i32  %op63, i32 * %op66
	ld.d $t0, $fp, -320
	ld.w $t1, $fp, -304
	st.w $t1, $t0, 0
# br label %label72
	b .interpret_label72
.interpret_label67:
# %op68 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op69 = icmp eq i32  %op68, 46
	ld.w $t0, $fp, -324
	addi.w $t1, $zero, 46
	beq  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -325
# %op70 = zext i1  %op69 to i32 
	ld.b $t0, $fp, -325
	st.w $t0, $fp, -332
# %op71 = icmp ne i32  %op70, 0
	ld.w $t0, $fp, -332
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -333
# br i1  %op71, label %label73, label %label79
	ld.b $t0, $fp, -333
	bnez $t0, .interpret_label73
	b .interpret_label79
.interpret_label72:
# br label %label57
	b .interpret_label57
.interpret_label73:
# %op74 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -340
# %op75 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -344
# %op76 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op74
	addi.d $t0, $zero, 0
	lu12i.w $t1, 64
	ori $t1, $t1, 0
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
	lu12i.w $t1, 64
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -340
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, tape
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -352
# %op77 = load i32 , i32 * %op76
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op78 = trunc i32  %op77 to i8 
	ld.w $t0, $fp, -356
	andi $t1, $t0, 255
	st.b $t1, $fp, -357
# call void @putch(i8  %op78)
	ld.b $a0, $fp, -357
	bl putch
# br label %label84
	b .interpret_label84
.interpret_label79:
# %op80 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# %op81 = icmp eq i32  %op80, 44
	ld.w $t0, $fp, -364
	addi.w $t1, $zero, 44
	beq  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -365
# %op82 = zext i1  %op81 to i32 
	ld.b $t0, $fp, -365
	st.w $t0, $fp, -372
# %op83 = icmp ne i32  %op82, 0
	ld.w $t0, $fp, -372
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label14
	addi.d $t2, $zero, 0
	b false_label14
true_label14:
	addi.d $t2, $zero, 1
false_label14:
	st.b $t2, $fp, -373
# br i1  %op83, label %label85, label %label91
	ld.b $t0, $fp, -373
	bnez $t0, .interpret_label85
	b .interpret_label91
.interpret_label84:
# br label %label72
	b .interpret_label72
.interpret_label85:
# %op86 = call i8  @getch()
	bl getch
	st.b $a0, $fp, -374
# %op87 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op88 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -384
# %op89 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op87
	addi.d $t0, $zero, 0
	lu12i.w $t1, 64
	ori $t1, $t1, 0
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
	lu12i.w $t1, 64
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -380
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, tape
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -392
# %op90 = zext i8  %op86 to i32 
	ld.b $t0, $fp, -374
	st.w $t0, $fp, -396
# store i32  %op90, i32 * %op89
	ld.d $t0, $fp, -392
	ld.w $t1, $fp, -396
	st.w $t1, $t0, 0
# br label %label96
	b .interpret_label96
.interpret_label91:
# %op92 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -400
# %op93 = icmp eq i32  %op92, 93
	ld.w $t0, $fp, -400
	addi.w $t1, $zero, 93
	beq  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -401
# %op94 = zext i1  %op93 to i32 
	ld.b $t0, $fp, -401
	st.w $t0, $fp, -408
# %op95 = icmp ne i32  %op94, 0
	ld.w $t0, $fp, -408
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label16
	addi.d $t2, $zero, 0
	b false_label16
true_label16:
	addi.d $t2, $zero, 1
false_label16:
	st.b $t2, $fp, -409
# br i1  %op95, label %label99, label %label98
	ld.b $t0, $fp, -409
	bnez $t0, .interpret_label99
	b .interpret_label98
.interpret_label96:
# br label %label84
	b .interpret_label84
.interpret_label97:
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label105
	b .interpret_label105
.interpret_label98:
# br label %label96
	b .interpret_label96
.interpret_label99:
# %op100 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -416
# %op101 = load i32 , i32 * @ptr
	la.local $t0, ptr
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -420
# %op102 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op100
	addi.d $t0, $zero, 0
	lu12i.w $t1, 64
	ori $t1, $t1, 0
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
	lu12i.w $t1, 64
	ori $t1, $t1, 0
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -416
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, tape
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -432
# %op103 = load i32 , i32 * %op102
	ld.d $t0, $fp, -432
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -436
# %op104 = icmp ne i32  %op103, 0
	ld.w $t0, $fp, -436
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	st.b $t2, $fp, -437
# br i1  %op104, label %label97, label %label98
	ld.b $t0, $fp, -437
	bnez $t0, .interpret_label97
	b .interpret_label98
.interpret_label105:
# %op106 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -444
# %op107 = icmp sgt i32  %op106, 0
	ld.w $t0, $fp, -444
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -445
# %op108 = zext i1  %op107 to i32 
	ld.b $t0, $fp, -445
	st.w $t0, $fp, -452
# %op109 = icmp ne i32  %op108, 0
	ld.w $t0, $fp, -452
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	st.b $t2, $fp, -453
# br i1  %op109, label %label110, label %label122
	ld.b $t0, $fp, -453
	bnez $t0, .interpret_label110
	b .interpret_label122
.interpret_label110:
# %op111 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -460
# %op112 = sub i32  %op111, 1
	ld.w $t0, $fp, -460
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -464
# store i32  %op112, i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -464
	st.w $t1, $t0, 0
# %op113 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -468
# %op114 = load i32 , i32 * %op4
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -472
# %op115 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -480
# %op116 = getelementptr i32 , i32 * %op115, i32  %op113
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -468
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -480
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -488
# %op117 = load i32 , i32 * %op116
	ld.d $t0, $fp, -488
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -492
# store i32  %op117, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -492
	st.w $t1, $t0, 0
# %op118 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -496
# %op119 = icmp eq i32  %op118, 91
	ld.w $t0, $fp, -496
	addi.w $t1, $zero, 91
	beq  $t0, $t1, true_label20
	addi.d $t2, $zero, 0
	b false_label20
true_label20:
	addi.d $t2, $zero, 1
false_label20:
	st.b $t2, $fp, -497
# %op120 = zext i1  %op119 to i32 
	ld.b $t0, $fp, -497
	st.w $t0, $fp, -504
# %op121 = icmp ne i32  %op120, 0
	ld.w $t0, $fp, -504
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label21
	addi.d $t2, $zero, 0
	b false_label21
true_label21:
	addi.d $t2, $zero, 1
false_label21:
	st.b $t2, $fp, -505
# br i1  %op121, label %label123, label %label126
	ld.b $t0, $fp, -505
	bnez $t0, .interpret_label123
	b .interpret_label126
.interpret_label122:
# br label %label98
	b .interpret_label98
.interpret_label123:
# %op124 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -512
# %op125 = sub i32  %op124, 1
	ld.w $t0, $fp, -512
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -516
# store i32  %op125, i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -516
	st.w $t1, $t0, 0
# br label %label131
	b .interpret_label131
.interpret_label126:
# %op127 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -520
# %op128 = icmp eq i32  %op127, 93
	ld.w $t0, $fp, -520
	addi.w $t1, $zero, 93
	beq  $t0, $t1, true_label22
	addi.d $t2, $zero, 0
	b false_label22
true_label22:
	addi.d $t2, $zero, 1
false_label22:
	st.b $t2, $fp, -521
# %op129 = zext i1  %op128 to i32 
	ld.b $t0, $fp, -521
	st.w $t0, $fp, -528
# %op130 = icmp ne i32  %op129, 0
	ld.w $t0, $fp, -528
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label23
	addi.d $t2, $zero, 0
	b false_label23
true_label23:
	addi.d $t2, $zero, 1
false_label23:
	st.b $t2, $fp, -529
# br i1  %op130, label %label132, label %label135
	ld.b $t0, $fp, -529
	bnez $t0, .interpret_label132
	b .interpret_label135
.interpret_label131:
# br label %label105
	b .interpret_label105
.interpret_label132:
# %op133 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -536
# %op134 = add i32  %op133, 1
	ld.w $t0, $fp, -536
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -540
# store i32  %op134, i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -540
	st.w $t1, $t0, 0
# br label %label135
	b .interpret_label135
.interpret_label135:
# br label %label131
	b .interpret_label131
interpret_ret:
	addi.d $sp, $sp, 544
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
# call void @read_program()
	bl read_program
# %op0 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 32
	ori $t1, $t1, 0
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
	lu12i.w $t1, 32
	ori $t1, $t1, 0
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
	la.local $t1, program
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -24
# call void @interpret(i32 * %op0)
	ld.d $a0, $fp, -24
	bl interpret
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl ints
	.type ints, @object
	.size ints, 40000
ints:
	.space 40000
	.globl intt
	.type intt, @object
	.size intt, 4
intt:
	.space 4
	.globl chas
	.type chas, @object
	.size chas, 40000
chas:
	.space 40000
	.globl chat
	.type chat, @object
	.size chat, 4
chat:
	.space 4
	.globl i
	.data
	.type i, @object
	.size i, 4
i:
	.word 0
	.space 4
	.globl ii
	.data
	.type ii, @object
	.size ii, 4
ii:
	.word 1
	.space 4
	.globl c
	.type c, @object
	.size c, 4
c:
	.space 4
	.globl get
	.type get, @object
	.size get, 40000
get:
	.space 40000
	.globl get2
	.type get2, @object
	.size get2, 40000
get2:
	.space 40000
	.text
	.globl isdigit
	.type isdigit, @function
isdigit:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -80
	st.w $a0, $fp, -20
.isdigit_label_entry:
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
# %op3 = icmp sge i32  %op2, 48
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 48
	bge  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -41
# %op4 = zext i1  %op3 to i32 
	ld.b $t0, $fp, -41
	st.w $t0, $fp, -48
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -49
# br i1  %op5, label %label8, label %label7
	ld.b $t0, $fp, -49
	bnez $t0, .isdigit_label8
	b .isdigit_label7
.isdigit_label6:
# ret i32  1
	addi.w $a0, $zero, 1
	b isdigit_ret
.isdigit_label7:
# ret i32  0
	addi.w $a0, $zero, 0
	b isdigit_ret
.isdigit_label8:
# %op9 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op10 = icmp sle i32  %op9, 57
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 57
	bge  $t1, $t0, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -57
# %op11 = zext i1  %op10 to i32 
	ld.b $t0, $fp, -57
	st.w $t0, $fp, -64
# %op12 = icmp ne i32  %op11, 0
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -65
# br i1  %op12, label %label6, label %label7
	ld.b $t0, $fp, -65
	bnez $t0, .isdigit_label6
	b .isdigit_label7
isdigit_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl power
	.type power, @function
power:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -112
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.power_label_entry:
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
# store i32  1, i32 * %op4
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label5
	b .power_label5
.power_label5:
# %op6 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -73
# %op8 = zext i1  %op7 to i32 
	ld.b $t0, $fp, -73
	st.w $t0, $fp, -80
# %op9 = icmp ne i32  %op8, 0
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -81
# br i1  %op9, label %label10, label %label16
	ld.b $t0, $fp, -81
	bnez $t0, .power_label10
	b .power_label16
.power_label10:
# %op11 = load i32 , i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op12 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op13 = mul i32  %op11, %op12
	ld.w $t0, $fp, -88
	ld.w $t1, $fp, -92
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -96
# store i32  %op13, i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -96
	st.w $t1, $t0, 0
# %op14 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op15 = sub i32  %op14, 1
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# store i32  %op15, i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -104
	st.w $t1, $t0, 0
# br label %label5
	b .power_label5
.power_label16:
# %op17 = load i32 , i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# ret i32  %op17
	ld.w $a0, $fp, -108
	b power_ret
power_ret:
	addi.d $sp, $sp, 112
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl getstr
	.type getstr, @function
getstr:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -160
	st.d $a0, $fp, -24
.getstr_label_entry:
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
# %op2 = call i8  @getch()
	bl getch
	st.b $a0, $fp, -41
# %op3 = alloca i8 
	lu12i.w $t0, -1
	ori $t0, $t0, 4039
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -56
# store i8  %op2, i8 * %op3
	ld.d $t0, $fp, -56
# %op4 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -72
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label5
	b .getstr_label5
.getstr_label5:
# %op6 = load i8 , i8 * %op3
	ld.d $t0, $fp, -56
	ld.b $t1, $t0, 0
	st.b $t1, $fp, -77
# %op7 = zext i8  %op6 to i32 
	ld.b $t0, $fp, -77
	st.w $t0, $fp, -84
# %op8 = icmp ne i32  %op7, 13
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 13
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -85
# %op9 = zext i1  %op8 to i32 
	ld.b $t0, $fp, -85
	st.w $t0, $fp, -92
# %op10 = icmp ne i32  %op9, 0
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -93
# br i1  %op10, label %label23, label %label21
	ld.b $t0, $fp, -93
	bnez $t0, .getstr_label23
	b .getstr_label21
.getstr_label11:
# %op12 = load i8 , i8 * %op3
	ld.d $t0, $fp, -56
	ld.b $t1, $t0, 0
	st.b $t1, $fp, -94
# %op13 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op14 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op15 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -112
# %op16 = getelementptr i32 , i32 * %op15, i32  %op13
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -100
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	ld.d $t1, $fp, -112
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -120
# %op17 = zext i8  %op12 to i32 
	ld.b $t0, $fp, -94
	st.w $t0, $fp, -124
# store i32  %op17, i32 * %op16
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -124
	st.w $t1, $t0, 0
# %op18 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op19 = add i32  %op18, 1
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -132
# store i32  %op19, i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -132
	st.w $t1, $t0, 0
# %op20 = call i8  @getch()
	bl getch
	st.b $a0, $fp, -133
# store i8  %op20, i8 * %op3
	ld.d $t0, $fp, -56
# br label %label5
	b .getstr_label5
.getstr_label21:
# %op22 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# ret i32  %op22
	ld.w $a0, $fp, -140
	b getstr_ret
.getstr_label23:
# %op24 = load i8 , i8 * %op3
	ld.d $t0, $fp, -56
	ld.b $t1, $t0, 0
	st.b $t1, $fp, -141
# %op25 = zext i8  %op24 to i32 
	ld.b $t0, $fp, -141
	st.w $t0, $fp, -148
# %op26 = icmp ne i32  %op25, 10
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 10
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -149
# %op27 = zext i1  %op26 to i32 
	ld.b $t0, $fp, -149
	st.w $t0, $fp, -156
# %op28 = icmp ne i32  %op27, 0
	ld.w $t0, $fp, -156
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -157
# br i1  %op28, label %label11, label %label21
	ld.b $t0, $fp, -157
	bnez $t0, .getstr_label11
	b .getstr_label21
getstr_ret:
	addi.d $sp, $sp, 160
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl intpush
	.type intpush, @function
intpush:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -64
	st.w $a0, $fp, -20
.intpush_label_entry:
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
# %op2 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op3 = add i32  %op2, 1
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -44
# store i32  %op3, i32 * @intt
	la.local $t0, intt
	ld.w $t1, $fp, -44
	st.w $t1, $t0, 0
# %op4 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op5 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# %op6 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op7 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op5
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -52
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, ints
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -64
# store i32  %op4, i32 * %op7
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -48
	st.w $t1, $t0, 0
# ret void
	addi.d $a0, $zero, 0
	b intpush_ret
intpush_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl chapush
	.type chapush, @function
chapush:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -64
	st.w $a0, $fp, -20
.chapush_label_entry:
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
# %op2 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op3 = add i32  %op2, 1
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -44
# store i32  %op3, i32 * @chat
	la.local $t0, chat
	ld.w $t1, $fp, -44
	st.w $t1, $t0, 0
# %op4 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op5 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# %op6 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op7 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op5
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -52
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -64
# store i32  %op4, i32 * %op7
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -48
	st.w $t1, $t0, 0
# ret void
	addi.d $a0, $zero, 0
	b chapush_ret
chapush_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl intpop
	.type intpop, @function
intpop:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -64
.intpop_label_entry:
# %op0 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -20
# %op1 = sub i32  %op0, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -24
# store i32  %op1, i32 * @intt
	la.local $t0, intt
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -28
# %op3 = add i32  %op2, 1
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -32
# %op4 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -36
# %op5 = add i32  %op4, 1
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -40
# %op6 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op3
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -32
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, ints
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -48
# %op7 = load i32 , i32 * %op6
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# ret i32  %op7
	ld.w $a0, $fp, -52
	b intpop_ret
intpop_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl chapop
	.type chapop, @function
chapop:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -64
.chapop_label_entry:
# %op0 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -20
# %op1 = sub i32  %op0, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -24
# store i32  %op1, i32 * @chat
	la.local $t0, chat
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -28
# %op3 = add i32  %op2, 1
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -32
# %op4 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -36
# %op5 = add i32  %op4, 1
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -40
# %op6 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op3
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -32
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -48
# %op7 = load i32 , i32 * %op6
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# ret i32  %op7
	ld.w $a0, $fp, -52
	b chapop_ret
chapop_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl intadd
	.type intadd, @function
intadd:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -128
	st.w $a0, $fp, -20
.intadd_label_entry:
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
# %op2 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op3 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# %op4 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op2
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -40
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, ints
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -56
# %op5 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op6 = mul i32  %op5, 10
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 10
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -64
# %op7 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op8 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op9 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op7
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -68
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, ints
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -80
# store i32  %op6, i32 * %op9
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -64
	st.w $t1, $t0, 0
# %op10 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op11 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op12 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op10
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -84
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, ints
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -96
# %op13 = load i32 , i32 * %op12
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op14 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op15 = add i32  %op13, %op14
	ld.w $t0, $fp, -100
	ld.w $t1, $fp, -104
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -108
# %op16 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op17 = load i32 , i32 * @intt
	la.local $t0, intt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op18 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  %op16
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -112
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, ints
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -128
# store i32  %op15, i32 * %op18
	ld.d $t0, $fp, -128
	ld.w $t1, $fp, -108
	st.w $t1, $t0, 0
# ret void
	addi.d $a0, $zero, 0
	b intadd_ret
intadd_ret:
	addi.d $sp, $sp, 128
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl find
	.type find, @function
find:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -96
.find_label_entry:
# %op0 = call i32  @chapop()
	bl chapop
	st.w $a0, $fp, -20
# store i32  %op0, i32 * @c
	la.local $t0, c
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op1 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -24
# %op2 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -28
# %op3 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op1
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -24
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -40
# store i32  32, i32 * %op3
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 32
	st.w $t1, $t0, 0
# %op4 = load i32 , i32 * @c
	la.local $t0, c
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# %op5 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op6 = add i32  %op5, 1
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -52
# %op7 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op8 = add i32  %op7, 1
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# %op9 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op6
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -52
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -72
# store i32  %op4, i32 * %op9
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -44
	st.w $t1, $t0, 0
# %op10 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op11 = add i32  %op10, 2
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# store i32  %op11, i32 * @ii
	la.local $t0, ii
	ld.w $t1, $fp, -80
	st.w $t1, $t0, 0
# %op12 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op13 = icmp eq i32  %op12, 0
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -85
# %op14 = zext i1  %op13 to i32 
	ld.b $t0, $fp, -85
	st.w $t0, $fp, -92
# %op15 = icmp ne i32  %op14, 0
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -93
# br i1  %op15, label %label16, label %label17
	ld.b $t0, $fp, -93
	bnez $t0, .find_label16
	b .find_label17
.find_label16:
# ret i32  0
	addi.w $a0, $zero, 0
	b find_ret
.find_label17:
# ret i32  1
	addi.w $a0, $zero, 1
	b find_ret
find_ret:
	addi.d $sp, $sp, 96
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	lu12i.w $t0, 0
	ori $t0, $t0, 2240
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	sub.d $sp, $sp, $t0
	add.d $fp, $sp, $t0
.main_label_entry:
# store i32  0, i32 * @intt
	la.local $t0, intt
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * @chat
	la.local $t0, chat
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op0 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  0
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	la.local $t1, get
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -24
# %op1 = call i32  @getstr(i32 * %op0)
	ld.d $a0, $fp, -24
	bl getstr
	st.w $a0, $fp, -28
# %op2 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -40
# store i32  %op1, i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# br label %label3
	b .main_label3
.main_label3:
# %op4 = load i32 , i32 * @i
	la.local $t0, i
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
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -61
# br i1  %op8, label %label9, label %label18
	ld.b $t0, $fp, -61
	bnez $t0, .main_label9
	b .main_label18
.main_label9:
# %op10 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op11 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op12 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op10
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -68
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -80
# %op13 = load i32 , i32 * %op12
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op14 = call i32  @isdigit(i32  %op13)
	ld.w $a0, $fp, -84
	bl isdigit
	st.w $a0, $fp, -88
# %op15 = icmp eq i32  %op14, 1
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 1
	beq  $t0, $t1, true_label14
	addi.d $t2, $zero, 0
	b false_label14
true_label14:
	addi.d $t2, $zero, 1
false_label14:
	st.b $t2, $fp, -89
# %op16 = zext i1  %op15 to i32 
	ld.b $t0, $fp, -89
	st.w $t0, $fp, -96
# %op17 = icmp ne i32  %op16, 0
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -97
# br i1  %op17, label %label19, label %label29
	ld.b $t0, $fp, -97
	bnez $t0, .main_label19
	b .main_label29
.main_label18:
# br label %label362
	b .main_label362
.main_label19:
# %op20 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op21 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op22 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op20
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -104
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -120
# %op23 = load i32 , i32 * %op22
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op24 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op25 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op26 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op24
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -128
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -144
# store i32  %op23, i32 * %op26
	ld.d $t0, $fp, -144
	ld.w $t1, $fp, -124
	st.w $t1, $t0, 0
# %op27 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op28 = add i32  %op27, 1
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -152
# store i32  %op28, i32 * @ii
	la.local $t0, ii
	ld.w $t1, $fp, -152
	st.w $t1, $t0, 0
# br label %label37
	b .main_label37
.main_label29:
# %op30 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op31 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op32 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op30
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -156
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -168
# %op33 = load i32 , i32 * %op32
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op34 = icmp eq i32  %op33, 40
	ld.w $t0, $fp, -172
	addi.w $t1, $zero, 40
	beq  $t0, $t1, true_label16
	addi.d $t2, $zero, 0
	b false_label16
true_label16:
	addi.d $t2, $zero, 1
false_label16:
	st.b $t2, $fp, -173
# %op35 = zext i1  %op34 to i32 
	ld.b $t0, $fp, -173
	st.w $t0, $fp, -180
# %op36 = icmp ne i32  %op35, 0
	ld.w $t0, $fp, -180
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	st.b $t2, $fp, -181
# br i1  %op36, label %label40, label %label41
	ld.b $t0, $fp, -181
	bnez $t0, .main_label40
	b .main_label41
.main_label37:
# %op38 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op39 = add i32  %op38, 1
	ld.w $t0, $fp, -188
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -192
# store i32  %op39, i32 * @i
	la.local $t0, i
	ld.w $t1, $fp, -192
	st.w $t1, $t0, 0
# br label %label3
	b .main_label3
.main_label40:
# call void @chapush(i32  40)
	addi.w $a0, $zero, 40
	bl chapush
# br label %label41
	b .main_label41
.main_label41:
# %op42 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op43 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -200
# %op44 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op42
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -196
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -208
# %op45 = load i32 , i32 * %op44
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op46 = icmp eq i32  %op45, 94
	ld.w $t0, $fp, -212
	addi.w $t1, $zero, 94
	beq  $t0, $t1, true_label18
	addi.d $t2, $zero, 0
	b false_label18
true_label18:
	addi.d $t2, $zero, 1
false_label18:
	st.b $t2, $fp, -213
# %op47 = zext i1  %op46 to i32 
	ld.b $t0, $fp, -213
	st.w $t0, $fp, -220
# %op48 = icmp ne i32  %op47, 0
	ld.w $t0, $fp, -220
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	st.b $t2, $fp, -221
# br i1  %op48, label %label49, label %label50
	ld.b $t0, $fp, -221
	bnez $t0, .main_label49
	b .main_label50
.main_label49:
# call void @chapush(i32  94)
	addi.w $a0, $zero, 94
	bl chapush
# br label %label50
	b .main_label50
.main_label50:
# %op51 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op52 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -232
# %op53 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op51
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -228
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -240
# %op54 = load i32 , i32 * %op53
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op55 = icmp eq i32  %op54, 41
	ld.w $t0, $fp, -244
	addi.w $t1, $zero, 41
	beq  $t0, $t1, true_label20
	addi.d $t2, $zero, 0
	b false_label20
true_label20:
	addi.d $t2, $zero, 1
false_label20:
	st.b $t2, $fp, -245
# %op56 = zext i1  %op55 to i32 
	ld.b $t0, $fp, -245
	st.w $t0, $fp, -252
# %op57 = icmp ne i32  %op56, 0
	ld.w $t0, $fp, -252
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label21
	addi.d $t2, $zero, 0
	b false_label21
true_label21:
	addi.d $t2, $zero, 1
false_label21:
	st.b $t2, $fp, -253
# br i1  %op57, label %label58, label %label60
	ld.b $t0, $fp, -253
	bnez $t0, .main_label58
	b .main_label60
.main_label58:
# %op59 = call i32  @chapop()
	bl chapop
	st.w $a0, $fp, -260
# store i32  %op59, i32 * @c
	la.local $t0, c
	ld.w $t1, $fp, -260
	st.w $t1, $t0, 0
# br label %label68
	b .main_label68
.main_label60:
# %op61 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -264
# %op62 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# %op63 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op61
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -264
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -280
# %op64 = load i32 , i32 * %op63
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# %op65 = icmp eq i32  %op64, 43
	ld.w $t0, $fp, -284
	addi.w $t1, $zero, 43
	beq  $t0, $t1, true_label22
	addi.d $t2, $zero, 0
	b false_label22
true_label22:
	addi.d $t2, $zero, 1
false_label22:
	st.b $t2, $fp, -285
# %op66 = zext i1  %op65 to i32 
	ld.b $t0, $fp, -285
	st.w $t0, $fp, -292
# %op67 = icmp ne i32  %op66, 0
	ld.w $t0, $fp, -292
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label23
	addi.d $t2, $zero, 0
	b false_label23
true_label23:
	addi.d $t2, $zero, 1
false_label23:
	st.b $t2, $fp, -293
# br i1  %op67, label %label87, label %label88
	ld.b $t0, $fp, -293
	bnez $t0, .main_label87
	b .main_label88
.main_label68:
# %op69 = load i32 , i32 * @c
	la.local $t0, c
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op70 = icmp ne i32  %op69, 40
	ld.w $t0, $fp, -300
	addi.w $t1, $zero, 40
	bne  $t0, $t1, true_label24
	addi.d $t2, $zero, 0
	b false_label24
true_label24:
	addi.d $t2, $zero, 1
false_label24:
	st.b $t2, $fp, -301
# %op71 = zext i1  %op70 to i32 
	ld.b $t0, $fp, -301
	st.w $t0, $fp, -308
# %op72 = icmp ne i32  %op71, 0
	ld.w $t0, $fp, -308
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label25
	addi.d $t2, $zero, 0
	b false_label25
true_label25:
	addi.d $t2, $zero, 1
false_label25:
	st.b $t2, $fp, -309
# br i1  %op72, label %label73, label %label86
	ld.b $t0, $fp, -309
	bnez $t0, .main_label73
	b .main_label86
.main_label73:
# %op74 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op75 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -320
# %op76 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op74
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -316
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -328
# store i32  32, i32 * %op76
	ld.d $t0, $fp, -328
	addi.w $t1, $zero, 32
	st.w $t1, $t0, 0
# %op77 = load i32 , i32 * @c
	la.local $t0, c
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op78 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -336
# %op79 = add i32  %op78, 1
	ld.w $t0, $fp, -336
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -340
# %op80 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -344
# %op81 = add i32  %op80, 1
	ld.w $t0, $fp, -344
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -348
# %op82 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op79
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -340
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -360
# store i32  %op77, i32 * %op82
	ld.d $t0, $fp, -360
	ld.w $t1, $fp, -332
	st.w $t1, $t0, 0
# %op83 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# %op84 = add i32  %op83, 2
	ld.w $t0, $fp, -364
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -368
# store i32  %op84, i32 * @ii
	la.local $t0, ii
	ld.w $t1, $fp, -368
	st.w $t1, $t0, 0
# %op85 = call i32  @chapop()
	bl chapop
	st.w $a0, $fp, -372
# store i32  %op85, i32 * @c
	la.local $t0, c
	ld.w $t1, $fp, -372
	st.w $t1, $t0, 0
# br label %label68
	b .main_label68
.main_label86:
# br label %label60
	b .main_label60
.main_label87:
# br label %label96
	b .main_label96
.main_label88:
# %op89 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -376
# %op90 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op91 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op89
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -376
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -392
# %op92 = load i32 , i32 * %op91
	ld.d $t0, $fp, -392
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -396
# %op93 = icmp eq i32  %op92, 45
	ld.w $t0, $fp, -396
	addi.w $t1, $zero, 45
	beq  $t0, $t1, true_label26
	addi.d $t2, $zero, 0
	b false_label26
true_label26:
	addi.d $t2, $zero, 1
false_label26:
	st.b $t2, $fp, -397
# %op94 = zext i1  %op93 to i32 
	ld.b $t0, $fp, -397
	st.w $t0, $fp, -404
# %op95 = icmp ne i32  %op94, 0
	ld.w $t0, $fp, -404
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label27
	addi.d $t2, $zero, 0
	b false_label27
true_label27:
	addi.d $t2, $zero, 1
false_label27:
	st.b $t2, $fp, -405
# br i1  %op95, label %label152, label %label153
	ld.b $t0, $fp, -405
	bnez $t0, .main_label152
	b .main_label153
.main_label96:
# %op97 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -412
# %op98 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -416
# %op99 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op97
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -412
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -424
# %op100 = load i32 , i32 * %op99
	ld.d $t0, $fp, -424
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -428
# %op101 = icmp eq i32  %op100, 43
	ld.w $t0, $fp, -428
	addi.w $t1, $zero, 43
	beq  $t0, $t1, true_label28
	addi.d $t2, $zero, 0
	b false_label28
true_label28:
	addi.d $t2, $zero, 1
false_label28:
	st.b $t2, $fp, -429
# %op102 = zext i1  %op101 to i32 
	ld.b $t0, $fp, -429
	st.w $t0, $fp, -436
# %op103 = icmp ne i32  %op102, 0
	ld.w $t0, $fp, -436
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label29
	addi.d $t2, $zero, 0
	b false_label29
true_label29:
	addi.d $t2, $zero, 1
false_label29:
	st.b $t2, $fp, -437
# br i1  %op103, label %label104, label %label142
	ld.b $t0, $fp, -437
	bnez $t0, .main_label104
	b .main_label142
.main_label104:
# %op105 = call i32  @find()
	bl find
	st.w $a0, $fp, -444
# %op106 = icmp eq i32  %op105, 0
	ld.w $t0, $fp, -444
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label30
	addi.d $t2, $zero, 0
	b false_label30
true_label30:
	addi.d $t2, $zero, 1
false_label30:
	st.b $t2, $fp, -445
# %op107 = zext i1  %op106 to i32 
	ld.b $t0, $fp, -445
	st.w $t0, $fp, -452
# %op108 = icmp ne i32  %op107, 0
	ld.w $t0, $fp, -452
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label31
	addi.d $t2, $zero, 0
	b false_label31
true_label31:
	addi.d $t2, $zero, 1
false_label31:
	st.b $t2, $fp, -453
# br i1  %op108, label %label150, label %label151
	ld.b $t0, $fp, -453
	bnez $t0, .main_label150
	b .main_label151
.main_label109:
# call void @chapush(i32  43)
	addi.w $a0, $zero, 43
	bl chapush
# br label %label88
	b .main_label88
.main_label110:
# %op111 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -460
# %op112 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -464
# %op113 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op111
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -460
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -472
# %op114 = load i32 , i32 * %op113
	ld.d $t0, $fp, -472
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -476
# %op115 = icmp eq i32  %op114, 94
	ld.w $t0, $fp, -476
	addi.w $t1, $zero, 94
	beq  $t0, $t1, true_label32
	addi.d $t2, $zero, 0
	b false_label32
true_label32:
	addi.d $t2, $zero, 1
false_label32:
	st.b $t2, $fp, -477
# %op116 = zext i1  %op115 to i32 
	ld.b $t0, $fp, -477
	st.w $t0, $fp, -484
# %op117 = icmp ne i32  %op116, 0
	ld.w $t0, $fp, -484
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label33
	addi.d $t2, $zero, 0
	b false_label33
true_label33:
	addi.d $t2, $zero, 1
false_label33:
	st.b $t2, $fp, -485
# br i1  %op117, label %label104, label %label109
	ld.b $t0, $fp, -485
	bnez $t0, .main_label104
	b .main_label109
.main_label118:
# %op119 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -492
# %op120 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -496
# %op121 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op119
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -492
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -504
# %op122 = load i32 , i32 * %op121
	ld.d $t0, $fp, -504
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -508
# %op123 = icmp eq i32  %op122, 37
	ld.w $t0, $fp, -508
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label34
	addi.d $t2, $zero, 0
	b false_label34
true_label34:
	addi.d $t2, $zero, 1
false_label34:
	st.b $t2, $fp, -509
# %op124 = zext i1  %op123 to i32 
	ld.b $t0, $fp, -509
	st.w $t0, $fp, -516
# %op125 = icmp ne i32  %op124, 0
	ld.w $t0, $fp, -516
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label35
	addi.d $t2, $zero, 0
	b false_label35
true_label35:
	addi.d $t2, $zero, 1
false_label35:
	st.b $t2, $fp, -517
# br i1  %op125, label %label104, label %label110
	ld.b $t0, $fp, -517
	bnez $t0, .main_label104
	b .main_label110
.main_label126:
# %op127 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -524
# %op128 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -528
# %op129 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op127
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -524
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -536
# %op130 = load i32 , i32 * %op129
	ld.d $t0, $fp, -536
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -540
# %op131 = icmp eq i32  %op130, 47
	ld.w $t0, $fp, -540
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label36
	addi.d $t2, $zero, 0
	b false_label36
true_label36:
	addi.d $t2, $zero, 1
false_label36:
	st.b $t2, $fp, -541
# %op132 = zext i1  %op131 to i32 
	ld.b $t0, $fp, -541
	st.w $t0, $fp, -548
# %op133 = icmp ne i32  %op132, 0
	ld.w $t0, $fp, -548
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label37
	addi.d $t2, $zero, 0
	b false_label37
true_label37:
	addi.d $t2, $zero, 1
false_label37:
	st.b $t2, $fp, -549
# br i1  %op133, label %label104, label %label118
	ld.b $t0, $fp, -549
	bnez $t0, .main_label104
	b .main_label118
.main_label134:
# %op135 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -556
# %op136 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -560
# %op137 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op135
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -556
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -568
# %op138 = load i32 , i32 * %op137
	ld.d $t0, $fp, -568
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -572
# %op139 = icmp eq i32  %op138, 42
	ld.w $t0, $fp, -572
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label38
	addi.d $t2, $zero, 0
	b false_label38
true_label38:
	addi.d $t2, $zero, 1
false_label38:
	st.b $t2, $fp, -573
# %op140 = zext i1  %op139 to i32 
	ld.b $t0, $fp, -573
	st.w $t0, $fp, -580
# %op141 = icmp ne i32  %op140, 0
	ld.w $t0, $fp, -580
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label39
	addi.d $t2, $zero, 0
	b false_label39
true_label39:
	addi.d $t2, $zero, 1
false_label39:
	st.b $t2, $fp, -581
# br i1  %op141, label %label104, label %label126
	ld.b $t0, $fp, -581
	bnez $t0, .main_label104
	b .main_label126
.main_label142:
# %op143 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -588
# %op144 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -592
# %op145 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op143
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -588
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -600
# %op146 = load i32 , i32 * %op145
	ld.d $t0, $fp, -600
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -604
# %op147 = icmp eq i32  %op146, 45
	ld.w $t0, $fp, -604
	addi.w $t1, $zero, 45
	beq  $t0, $t1, true_label40
	addi.d $t2, $zero, 0
	b false_label40
true_label40:
	addi.d $t2, $zero, 1
false_label40:
	st.b $t2, $fp, -605
# %op148 = zext i1  %op147 to i32 
	ld.b $t0, $fp, -605
	st.w $t0, $fp, -612
# %op149 = icmp ne i32  %op148, 0
	ld.w $t0, $fp, -612
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label41
	addi.d $t2, $zero, 0
	b false_label41
true_label41:
	addi.d $t2, $zero, 1
false_label41:
	st.b $t2, $fp, -613
# br i1  %op149, label %label104, label %label134
	ld.b $t0, $fp, -613
	bnez $t0, .main_label104
	b .main_label134
.main_label150:
# br label %label109
	b .main_label109
.main_label151:
# br label %label96
	b .main_label96
.main_label152:
# br label %label161
	b .main_label161
.main_label153:
# %op154 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -620
# %op155 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -624
# %op156 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op154
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -620
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -632
# %op157 = load i32 , i32 * %op156
	ld.d $t0, $fp, -632
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -636
# %op158 = icmp eq i32  %op157, 42
	ld.w $t0, $fp, -636
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label42
	addi.d $t2, $zero, 0
	b false_label42
true_label42:
	addi.d $t2, $zero, 1
false_label42:
	st.b $t2, $fp, -637
# %op159 = zext i1  %op158 to i32 
	ld.b $t0, $fp, -637
	st.w $t0, $fp, -644
# %op160 = icmp ne i32  %op159, 0
	ld.w $t0, $fp, -644
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label43
	addi.d $t2, $zero, 0
	b false_label43
true_label43:
	addi.d $t2, $zero, 1
false_label43:
	st.b $t2, $fp, -645
# br i1  %op160, label %label217, label %label218
	ld.b $t0, $fp, -645
	bnez $t0, .main_label217
	b .main_label218
.main_label161:
# %op162 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -652
# %op163 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -656
# %op164 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op162
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -652
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -664
# %op165 = load i32 , i32 * %op164
	ld.d $t0, $fp, -664
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -668
# %op166 = icmp eq i32  %op165, 43
	ld.w $t0, $fp, -668
	addi.w $t1, $zero, 43
	beq  $t0, $t1, true_label44
	addi.d $t2, $zero, 0
	b false_label44
true_label44:
	addi.d $t2, $zero, 1
false_label44:
	st.b $t2, $fp, -669
# %op167 = zext i1  %op166 to i32 
	ld.b $t0, $fp, -669
	st.w $t0, $fp, -676
# %op168 = icmp ne i32  %op167, 0
	ld.w $t0, $fp, -676
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label45
	addi.d $t2, $zero, 0
	b false_label45
true_label45:
	addi.d $t2, $zero, 1
false_label45:
	st.b $t2, $fp, -677
# br i1  %op168, label %label169, label %label207
	ld.b $t0, $fp, -677
	bnez $t0, .main_label169
	b .main_label207
.main_label169:
# %op170 = call i32  @find()
	bl find
	st.w $a0, $fp, -684
# %op171 = icmp eq i32  %op170, 0
	ld.w $t0, $fp, -684
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label46
	addi.d $t2, $zero, 0
	b false_label46
true_label46:
	addi.d $t2, $zero, 1
false_label46:
	st.b $t2, $fp, -685
# %op172 = zext i1  %op171 to i32 
	ld.b $t0, $fp, -685
	st.w $t0, $fp, -692
# %op173 = icmp ne i32  %op172, 0
	ld.w $t0, $fp, -692
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label47
	addi.d $t2, $zero, 0
	b false_label47
true_label47:
	addi.d $t2, $zero, 1
false_label47:
	st.b $t2, $fp, -693
# br i1  %op173, label %label215, label %label216
	ld.b $t0, $fp, -693
	bnez $t0, .main_label215
	b .main_label216
.main_label174:
# call void @chapush(i32  45)
	addi.w $a0, $zero, 45
	bl chapush
# br label %label153
	b .main_label153
.main_label175:
# %op176 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -700
# %op177 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -704
# %op178 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op176
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -700
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -712
# %op179 = load i32 , i32 * %op178
	ld.d $t0, $fp, -712
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -716
# %op180 = icmp eq i32  %op179, 94
	ld.w $t0, $fp, -716
	addi.w $t1, $zero, 94
	beq  $t0, $t1, true_label48
	addi.d $t2, $zero, 0
	b false_label48
true_label48:
	addi.d $t2, $zero, 1
false_label48:
	st.b $t2, $fp, -717
# %op181 = zext i1  %op180 to i32 
	ld.b $t0, $fp, -717
	st.w $t0, $fp, -724
# %op182 = icmp ne i32  %op181, 0
	ld.w $t0, $fp, -724
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label49
	addi.d $t2, $zero, 0
	b false_label49
true_label49:
	addi.d $t2, $zero, 1
false_label49:
	st.b $t2, $fp, -725
# br i1  %op182, label %label169, label %label174
	ld.b $t0, $fp, -725
	bnez $t0, .main_label169
	b .main_label174
.main_label183:
# %op184 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -732
# %op185 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -736
# %op186 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op184
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -732
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -744
# %op187 = load i32 , i32 * %op186
	ld.d $t0, $fp, -744
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -748
# %op188 = icmp eq i32  %op187, 37
	ld.w $t0, $fp, -748
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label50
	addi.d $t2, $zero, 0
	b false_label50
true_label50:
	addi.d $t2, $zero, 1
false_label50:
	st.b $t2, $fp, -749
# %op189 = zext i1  %op188 to i32 
	ld.b $t0, $fp, -749
	st.w $t0, $fp, -756
# %op190 = icmp ne i32  %op189, 0
	ld.w $t0, $fp, -756
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label51
	addi.d $t2, $zero, 0
	b false_label51
true_label51:
	addi.d $t2, $zero, 1
false_label51:
	st.b $t2, $fp, -757
# br i1  %op190, label %label169, label %label175
	ld.b $t0, $fp, -757
	bnez $t0, .main_label169
	b .main_label175
.main_label191:
# %op192 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -764
# %op193 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -768
# %op194 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op192
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -764
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -776
# %op195 = load i32 , i32 * %op194
	ld.d $t0, $fp, -776
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -780
# %op196 = icmp eq i32  %op195, 47
	ld.w $t0, $fp, -780
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label52
	addi.d $t2, $zero, 0
	b false_label52
true_label52:
	addi.d $t2, $zero, 1
false_label52:
	st.b $t2, $fp, -781
# %op197 = zext i1  %op196 to i32 
	ld.b $t0, $fp, -781
	st.w $t0, $fp, -788
# %op198 = icmp ne i32  %op197, 0
	ld.w $t0, $fp, -788
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label53
	addi.d $t2, $zero, 0
	b false_label53
true_label53:
	addi.d $t2, $zero, 1
false_label53:
	st.b $t2, $fp, -789
# br i1  %op198, label %label169, label %label183
	ld.b $t0, $fp, -789
	bnez $t0, .main_label169
	b .main_label183
.main_label199:
# %op200 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -796
# %op201 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -800
# %op202 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op200
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -796
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -808
# %op203 = load i32 , i32 * %op202
	ld.d $t0, $fp, -808
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -812
# %op204 = icmp eq i32  %op203, 42
	ld.w $t0, $fp, -812
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label54
	addi.d $t2, $zero, 0
	b false_label54
true_label54:
	addi.d $t2, $zero, 1
false_label54:
	st.b $t2, $fp, -813
# %op205 = zext i1  %op204 to i32 
	ld.b $t0, $fp, -813
	st.w $t0, $fp, -820
# %op206 = icmp ne i32  %op205, 0
	ld.w $t0, $fp, -820
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label55
	addi.d $t2, $zero, 0
	b false_label55
true_label55:
	addi.d $t2, $zero, 1
false_label55:
	st.b $t2, $fp, -821
# br i1  %op206, label %label169, label %label191
	ld.b $t0, $fp, -821
	bnez $t0, .main_label169
	b .main_label191
.main_label207:
# %op208 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -828
# %op209 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -832
# %op210 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op208
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -828
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -840
# %op211 = load i32 , i32 * %op210
	ld.d $t0, $fp, -840
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -844
# %op212 = icmp eq i32  %op211, 45
	ld.w $t0, $fp, -844
	addi.w $t1, $zero, 45
	beq  $t0, $t1, true_label56
	addi.d $t2, $zero, 0
	b false_label56
true_label56:
	addi.d $t2, $zero, 1
false_label56:
	st.b $t2, $fp, -845
# %op213 = zext i1  %op212 to i32 
	ld.b $t0, $fp, -845
	st.w $t0, $fp, -852
# %op214 = icmp ne i32  %op213, 0
	ld.w $t0, $fp, -852
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label57
	addi.d $t2, $zero, 0
	b false_label57
true_label57:
	addi.d $t2, $zero, 1
false_label57:
	st.b $t2, $fp, -853
# br i1  %op214, label %label169, label %label199
	ld.b $t0, $fp, -853
	bnez $t0, .main_label169
	b .main_label199
.main_label215:
# br label %label174
	b .main_label174
.main_label216:
# br label %label161
	b .main_label161
.main_label217:
# br label %label226
	b .main_label226
.main_label218:
# %op219 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -860
# %op220 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -864
# %op221 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op219
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -860
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -872
# %op222 = load i32 , i32 * %op221
	ld.d $t0, $fp, -872
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -876
# %op223 = icmp eq i32  %op222, 47
	ld.w $t0, $fp, -876
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label58
	addi.d $t2, $zero, 0
	b false_label58
true_label58:
	addi.d $t2, $zero, 1
false_label58:
	st.b $t2, $fp, -877
# %op224 = zext i1  %op223 to i32 
	ld.b $t0, $fp, -877
	st.w $t0, $fp, -884
# %op225 = icmp ne i32  %op224, 0
	ld.w $t0, $fp, -884
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label59
	addi.d $t2, $zero, 0
	b false_label59
true_label59:
	addi.d $t2, $zero, 1
false_label59:
	st.b $t2, $fp, -885
# br i1  %op225, label %label266, label %label267
	ld.b $t0, $fp, -885
	bnez $t0, .main_label266
	b .main_label267
.main_label226:
# %op227 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -892
# %op228 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -896
# %op229 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op227
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -892
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -904
# %op230 = load i32 , i32 * %op229
	ld.d $t0, $fp, -904
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -908
# %op231 = icmp eq i32  %op230, 42
	ld.w $t0, $fp, -908
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label60
	addi.d $t2, $zero, 0
	b false_label60
true_label60:
	addi.d $t2, $zero, 1
false_label60:
	st.b $t2, $fp, -909
# %op232 = zext i1  %op231 to i32 
	ld.b $t0, $fp, -909
	st.w $t0, $fp, -916
# %op233 = icmp ne i32  %op232, 0
	ld.w $t0, $fp, -916
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label61
	addi.d $t2, $zero, 0
	b false_label61
true_label61:
	addi.d $t2, $zero, 1
false_label61:
	st.b $t2, $fp, -917
# br i1  %op233, label %label234, label %label256
	ld.b $t0, $fp, -917
	bnez $t0, .main_label234
	b .main_label256
.main_label234:
# %op235 = call i32  @find()
	bl find
	st.w $a0, $fp, -924
# %op236 = icmp eq i32  %op235, 0
	ld.w $t0, $fp, -924
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label62
	addi.d $t2, $zero, 0
	b false_label62
true_label62:
	addi.d $t2, $zero, 1
false_label62:
	st.b $t2, $fp, -925
# %op237 = zext i1  %op236 to i32 
	ld.b $t0, $fp, -925
	st.w $t0, $fp, -932
# %op238 = icmp ne i32  %op237, 0
	ld.w $t0, $fp, -932
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label63
	addi.d $t2, $zero, 0
	b false_label63
true_label63:
	addi.d $t2, $zero, 1
false_label63:
	st.b $t2, $fp, -933
# br i1  %op238, label %label264, label %label265
	ld.b $t0, $fp, -933
	bnez $t0, .main_label264
	b .main_label265
.main_label239:
# call void @chapush(i32  42)
	addi.w $a0, $zero, 42
	bl chapush
# br label %label218
	b .main_label218
.main_label240:
# %op241 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -940
# %op242 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -944
# %op243 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op241
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -940
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -952
# %op244 = load i32 , i32 * %op243
	ld.d $t0, $fp, -952
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -956
# %op245 = icmp eq i32  %op244, 94
	ld.w $t0, $fp, -956
	addi.w $t1, $zero, 94
	beq  $t0, $t1, true_label64
	addi.d $t2, $zero, 0
	b false_label64
true_label64:
	addi.d $t2, $zero, 1
false_label64:
	st.b $t2, $fp, -957
# %op246 = zext i1  %op245 to i32 
	ld.b $t0, $fp, -957
	st.w $t0, $fp, -964
# %op247 = icmp ne i32  %op246, 0
	ld.w $t0, $fp, -964
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label65
	addi.d $t2, $zero, 0
	b false_label65
true_label65:
	addi.d $t2, $zero, 1
false_label65:
	st.b $t2, $fp, -965
# br i1  %op247, label %label234, label %label239
	ld.b $t0, $fp, -965
	bnez $t0, .main_label234
	b .main_label239
.main_label248:
# %op249 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -972
# %op250 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -976
# %op251 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op249
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -972
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -984
# %op252 = load i32 , i32 * %op251
	ld.d $t0, $fp, -984
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -988
# %op253 = icmp eq i32  %op252, 37
	ld.w $t0, $fp, -988
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label66
	addi.d $t2, $zero, 0
	b false_label66
true_label66:
	addi.d $t2, $zero, 1
false_label66:
	st.b $t2, $fp, -989
# %op254 = zext i1  %op253 to i32 
	ld.b $t0, $fp, -989
	st.w $t0, $fp, -996
# %op255 = icmp ne i32  %op254, 0
	ld.w $t0, $fp, -996
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label67
	addi.d $t2, $zero, 0
	b false_label67
true_label67:
	addi.d $t2, $zero, 1
false_label67:
	st.b $t2, $fp, -997
# br i1  %op255, label %label234, label %label240
	ld.b $t0, $fp, -997
	bnez $t0, .main_label234
	b .main_label240
.main_label256:
# %op257 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1004
# %op258 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1008
# %op259 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op257
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1004
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1016
# %op260 = load i32 , i32 * %op259
	ld.d $t0, $fp, -1016
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1020
# %op261 = icmp eq i32  %op260, 47
	ld.w $t0, $fp, -1020
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label68
	addi.d $t2, $zero, 0
	b false_label68
true_label68:
	addi.d $t2, $zero, 1
false_label68:
	st.b $t2, $fp, -1021
# %op262 = zext i1  %op261 to i32 
	ld.b $t0, $fp, -1021
	st.w $t0, $fp, -1028
# %op263 = icmp ne i32  %op262, 0
	ld.w $t0, $fp, -1028
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label69
	addi.d $t2, $zero, 0
	b false_label69
true_label69:
	addi.d $t2, $zero, 1
false_label69:
	st.b $t2, $fp, -1029
# br i1  %op263, label %label234, label %label248
	ld.b $t0, $fp, -1029
	bnez $t0, .main_label234
	b .main_label248
.main_label264:
# br label %label239
	b .main_label239
.main_label265:
# br label %label226
	b .main_label226
.main_label266:
# br label %label275
	b .main_label275
.main_label267:
# %op268 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1036
# %op269 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1040
# %op270 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get, i32  0, i32  %op268
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1036
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1048
# %op271 = load i32 , i32 * %op270
	ld.d $t0, $fp, -1048
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1052
# %op272 = icmp eq i32  %op271, 37
	ld.w $t0, $fp, -1052
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label70
	addi.d $t2, $zero, 0
	b false_label70
true_label70:
	addi.d $t2, $zero, 1
false_label70:
	st.b $t2, $fp, -1053
# %op273 = zext i1  %op272 to i32 
	ld.b $t0, $fp, -1053
	st.w $t0, $fp, -1060
# %op274 = icmp ne i32  %op273, 0
	ld.w $t0, $fp, -1060
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label71
	addi.d $t2, $zero, 0
	b false_label71
true_label71:
	addi.d $t2, $zero, 1
false_label71:
	st.b $t2, $fp, -1061
# br i1  %op274, label %label315, label %label316
	ld.b $t0, $fp, -1061
	bnez $t0, .main_label315
	b .main_label316
.main_label275:
# %op276 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1068
# %op277 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1072
# %op278 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op276
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1068
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1080
# %op279 = load i32 , i32 * %op278
	ld.d $t0, $fp, -1080
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1084
# %op280 = icmp eq i32  %op279, 42
	ld.w $t0, $fp, -1084
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label72
	addi.d $t2, $zero, 0
	b false_label72
true_label72:
	addi.d $t2, $zero, 1
false_label72:
	st.b $t2, $fp, -1085
# %op281 = zext i1  %op280 to i32 
	ld.b $t0, $fp, -1085
	st.w $t0, $fp, -1092
# %op282 = icmp ne i32  %op281, 0
	ld.w $t0, $fp, -1092
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label73
	addi.d $t2, $zero, 0
	b false_label73
true_label73:
	addi.d $t2, $zero, 1
false_label73:
	st.b $t2, $fp, -1093
# br i1  %op282, label %label283, label %label305
	ld.b $t0, $fp, -1093
	bnez $t0, .main_label283
	b .main_label305
.main_label283:
# %op284 = call i32  @find()
	bl find
	st.w $a0, $fp, -1100
# %op285 = icmp eq i32  %op284, 0
	ld.w $t0, $fp, -1100
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label74
	addi.d $t2, $zero, 0
	b false_label74
true_label74:
	addi.d $t2, $zero, 1
false_label74:
	st.b $t2, $fp, -1101
# %op286 = zext i1  %op285 to i32 
	ld.b $t0, $fp, -1101
	st.w $t0, $fp, -1108
# %op287 = icmp ne i32  %op286, 0
	ld.w $t0, $fp, -1108
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label75
	addi.d $t2, $zero, 0
	b false_label75
true_label75:
	addi.d $t2, $zero, 1
false_label75:
	st.b $t2, $fp, -1109
# br i1  %op287, label %label313, label %label314
	ld.b $t0, $fp, -1109
	bnez $t0, .main_label313
	b .main_label314
.main_label288:
# call void @chapush(i32  47)
	addi.w $a0, $zero, 47
	bl chapush
# br label %label267
	b .main_label267
.main_label289:
# %op290 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1116
# %op291 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1120
# %op292 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op290
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1116
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1128
# %op293 = load i32 , i32 * %op292
	ld.d $t0, $fp, -1128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1132
# %op294 = icmp eq i32  %op293, 94
	ld.w $t0, $fp, -1132
	addi.w $t1, $zero, 94
	beq  $t0, $t1, true_label76
	addi.d $t2, $zero, 0
	b false_label76
true_label76:
	addi.d $t2, $zero, 1
false_label76:
	st.b $t2, $fp, -1133
# %op295 = zext i1  %op294 to i32 
	ld.b $t0, $fp, -1133
	st.w $t0, $fp, -1140
# %op296 = icmp ne i32  %op295, 0
	ld.w $t0, $fp, -1140
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label77
	addi.d $t2, $zero, 0
	b false_label77
true_label77:
	addi.d $t2, $zero, 1
false_label77:
	st.b $t2, $fp, -1141
# br i1  %op296, label %label283, label %label288
	ld.b $t0, $fp, -1141
	bnez $t0, .main_label283
	b .main_label288
.main_label297:
# %op298 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1148
# %op299 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1152
# %op300 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op298
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1148
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1160
# %op301 = load i32 , i32 * %op300
	ld.d $t0, $fp, -1160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1164
# %op302 = icmp eq i32  %op301, 37
	ld.w $t0, $fp, -1164
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label78
	addi.d $t2, $zero, 0
	b false_label78
true_label78:
	addi.d $t2, $zero, 1
false_label78:
	st.b $t2, $fp, -1165
# %op303 = zext i1  %op302 to i32 
	ld.b $t0, $fp, -1165
	st.w $t0, $fp, -1172
# %op304 = icmp ne i32  %op303, 0
	ld.w $t0, $fp, -1172
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label79
	addi.d $t2, $zero, 0
	b false_label79
true_label79:
	addi.d $t2, $zero, 1
false_label79:
	st.b $t2, $fp, -1173
# br i1  %op304, label %label283, label %label289
	ld.b $t0, $fp, -1173
	bnez $t0, .main_label283
	b .main_label289
.main_label305:
# %op306 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1180
# %op307 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1184
# %op308 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op306
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1180
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1192
# %op309 = load i32 , i32 * %op308
	ld.d $t0, $fp, -1192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1196
# %op310 = icmp eq i32  %op309, 47
	ld.w $t0, $fp, -1196
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label80
	addi.d $t2, $zero, 0
	b false_label80
true_label80:
	addi.d $t2, $zero, 1
false_label80:
	st.b $t2, $fp, -1197
# %op311 = zext i1  %op310 to i32 
	ld.b $t0, $fp, -1197
	st.w $t0, $fp, -1204
# %op312 = icmp ne i32  %op311, 0
	ld.w $t0, $fp, -1204
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label81
	addi.d $t2, $zero, 0
	b false_label81
true_label81:
	addi.d $t2, $zero, 1
false_label81:
	st.b $t2, $fp, -1205
# br i1  %op312, label %label283, label %label297
	ld.b $t0, $fp, -1205
	bnez $t0, .main_label283
	b .main_label297
.main_label313:
# br label %label288
	b .main_label288
.main_label314:
# br label %label275
	b .main_label275
.main_label315:
# br label %label322
	b .main_label322
.main_label316:
# %op317 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1212
# %op318 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1216
# %op319 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op317
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1212
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1224
# store i32  32, i32 * %op319
	ld.d $t0, $fp, -1224
	addi.w $t1, $zero, 32
	st.w $t1, $t0, 0
# %op320 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1228
# %op321 = add i32  %op320, 1
	ld.w $t0, $fp, -1228
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1232
# store i32  %op321, i32 * @ii
	la.local $t0, ii
	ld.w $t1, $fp, -1232
	st.w $t1, $t0, 0
# br label %label37
	b .main_label37
.main_label322:
# %op323 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1236
# %op324 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1240
# %op325 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op323
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1236
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1248
# %op326 = load i32 , i32 * %op325
	ld.d $t0, $fp, -1248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1252
# %op327 = icmp eq i32  %op326, 42
	ld.w $t0, $fp, -1252
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label82
	addi.d $t2, $zero, 0
	b false_label82
true_label82:
	addi.d $t2, $zero, 1
false_label82:
	st.b $t2, $fp, -1253
# %op328 = zext i1  %op327 to i32 
	ld.b $t0, $fp, -1253
	st.w $t0, $fp, -1260
# %op329 = icmp ne i32  %op328, 0
	ld.w $t0, $fp, -1260
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label83
	addi.d $t2, $zero, 0
	b false_label83
true_label83:
	addi.d $t2, $zero, 1
false_label83:
	st.b $t2, $fp, -1261
# br i1  %op329, label %label330, label %label352
	ld.b $t0, $fp, -1261
	bnez $t0, .main_label330
	b .main_label352
.main_label330:
# %op331 = call i32  @find()
	bl find
	st.w $a0, $fp, -1268
# %op332 = icmp eq i32  %op331, 0
	ld.w $t0, $fp, -1268
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label84
	addi.d $t2, $zero, 0
	b false_label84
true_label84:
	addi.d $t2, $zero, 1
false_label84:
	st.b $t2, $fp, -1269
# %op333 = zext i1  %op332 to i32 
	ld.b $t0, $fp, -1269
	st.w $t0, $fp, -1276
# %op334 = icmp ne i32  %op333, 0
	ld.w $t0, $fp, -1276
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label85
	addi.d $t2, $zero, 0
	b false_label85
true_label85:
	addi.d $t2, $zero, 1
false_label85:
	st.b $t2, $fp, -1277
# br i1  %op334, label %label360, label %label361
	ld.b $t0, $fp, -1277
	bnez $t0, .main_label360
	b .main_label361
.main_label335:
# call void @chapush(i32  37)
	addi.w $a0, $zero, 37
	bl chapush
# br label %label316
	b .main_label316
.main_label336:
# %op337 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1284
# %op338 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1288
# %op339 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op337
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1284
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1296
# %op340 = load i32 , i32 * %op339
	ld.d $t0, $fp, -1296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1300
# %op341 = icmp eq i32  %op340, 94
	ld.w $t0, $fp, -1300
	addi.w $t1, $zero, 94
	beq  $t0, $t1, true_label86
	addi.d $t2, $zero, 0
	b false_label86
true_label86:
	addi.d $t2, $zero, 1
false_label86:
	st.b $t2, $fp, -1301
# %op342 = zext i1  %op341 to i32 
	ld.b $t0, $fp, -1301
	st.w $t0, $fp, -1308
# %op343 = icmp ne i32  %op342, 0
	ld.w $t0, $fp, -1308
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label87
	addi.d $t2, $zero, 0
	b false_label87
true_label87:
	addi.d $t2, $zero, 1
false_label87:
	st.b $t2, $fp, -1309
# br i1  %op343, label %label330, label %label335
	ld.b $t0, $fp, -1309
	bnez $t0, .main_label330
	b .main_label335
.main_label344:
# %op345 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1316
# %op346 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1320
# %op347 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op345
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1316
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1328
# %op348 = load i32 , i32 * %op347
	ld.d $t0, $fp, -1328
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1332
# %op349 = icmp eq i32  %op348, 37
	ld.w $t0, $fp, -1332
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label88
	addi.d $t2, $zero, 0
	b false_label88
true_label88:
	addi.d $t2, $zero, 1
false_label88:
	st.b $t2, $fp, -1333
# %op350 = zext i1  %op349 to i32 
	ld.b $t0, $fp, -1333
	st.w $t0, $fp, -1340
# %op351 = icmp ne i32  %op350, 0
	ld.w $t0, $fp, -1340
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label89
	addi.d $t2, $zero, 0
	b false_label89
true_label89:
	addi.d $t2, $zero, 1
false_label89:
	st.b $t2, $fp, -1341
# br i1  %op351, label %label330, label %label336
	ld.b $t0, $fp, -1341
	bnez $t0, .main_label330
	b .main_label336
.main_label352:
# %op353 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1348
# %op354 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1352
# %op355 = getelementptr [10000 x i32 ], [10000 x i32 ]* @chas, i32  0, i32  %op353
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1348
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, chas
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1360
# %op356 = load i32 , i32 * %op355
	ld.d $t0, $fp, -1360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1364
# %op357 = icmp eq i32  %op356, 47
	ld.w $t0, $fp, -1364
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label90
	addi.d $t2, $zero, 0
	b false_label90
true_label90:
	addi.d $t2, $zero, 1
false_label90:
	st.b $t2, $fp, -1365
# %op358 = zext i1  %op357 to i32 
	ld.b $t0, $fp, -1365
	st.w $t0, $fp, -1372
# %op359 = icmp ne i32  %op358, 0
	ld.w $t0, $fp, -1372
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label91
	addi.d $t2, $zero, 0
	b false_label91
true_label91:
	addi.d $t2, $zero, 1
false_label91:
	st.b $t2, $fp, -1373
# br i1  %op359, label %label330, label %label344
	ld.b $t0, $fp, -1373
	bnez $t0, .main_label330
	b .main_label344
.main_label360:
# br label %label335
	b .main_label335
.main_label361:
# br label %label322
	b .main_label322
.main_label362:
# %op363 = load i32 , i32 * @chat
	la.local $t0, chat
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1380
# %op364 = icmp sgt i32  %op363, 0
	ld.w $t0, $fp, -1380
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -1381
# %op365 = zext i1  %op364 to i32 
	ld.b $t0, $fp, -1381
	st.w $t0, $fp, -1388
# %op366 = icmp ne i32  %op365, 0
	ld.w $t0, $fp, -1388
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label93
	addi.d $t2, $zero, 0
	b false_label93
true_label93:
	addi.d $t2, $zero, 1
false_label93:
	st.b $t2, $fp, -1389
# br i1  %op366, label %label367, label %label381
	ld.b $t0, $fp, -1389
	bnez $t0, .main_label367
	b .main_label381
.main_label367:
# %op368 = call i32  @chapop()
	bl chapop
	st.w $a0, $fp, -1396
# %op369 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 2684
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -1408
# store i32  %op368, i32 * %op369
	ld.d $t0, $fp, -1408
	ld.w $t1, $fp, -1396
	st.w $t1, $t0, 0
# %op370 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1416
# %op371 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1420
# %op372 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op370
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1416
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1432
# store i32  32, i32 * %op372
	ld.d $t0, $fp, -1432
	addi.w $t1, $zero, 32
	st.w $t1, $t0, 0
# %op373 = load i32 , i32 * %op369
	ld.d $t0, $fp, -1408
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1436
# %op374 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1440
# %op375 = add i32  %op374, 1
	ld.w $t0, $fp, -1440
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1444
# %op376 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1448
# %op377 = add i32  %op376, 1
	ld.w $t0, $fp, -1448
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1452
# %op378 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op375
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1444
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1464
# store i32  %op373, i32 * %op378
	ld.d $t0, $fp, -1464
	ld.w $t1, $fp, -1436
	st.w $t1, $t0, 0
# %op379 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1468
# %op380 = add i32  %op379, 2
	ld.w $t0, $fp, -1468
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1472
# store i32  %op380, i32 * @ii
	la.local $t0, ii
	ld.w $t1, $fp, -1472
	st.w $t1, $t0, 0
# br label %label362
	b .main_label362
.main_label381:
# %op382 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1476
# %op383 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1480
# %op384 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op382
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1476
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1488
# store i32  64, i32 * %op384
	ld.d $t0, $fp, -1488
	addi.w $t1, $zero, 64
	st.w $t1, $t0, 0
# store i32  1, i32 * @i
	la.local $t0, i
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label385
	b .main_label385
.main_label385:
# %op386 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1492
# %op387 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1496
# %op388 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op386
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1492
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1504
# %op389 = load i32 , i32 * %op388
	ld.d $t0, $fp, -1504
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1508
# %op390 = icmp ne i32  %op389, 64
	ld.w $t0, $fp, -1508
	addi.w $t1, $zero, 64
	bne  $t0, $t1, true_label94
	addi.d $t2, $zero, 0
	b false_label94
true_label94:
	addi.d $t2, $zero, 1
false_label94:
	st.b $t2, $fp, -1509
# %op391 = zext i1  %op390 to i32 
	ld.b $t0, $fp, -1509
	st.w $t0, $fp, -1516
# %op392 = icmp ne i32  %op391, 0
	ld.w $t0, $fp, -1516
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label95
	addi.d $t2, $zero, 0
	b false_label95
true_label95:
	addi.d $t2, $zero, 1
false_label95:
	st.b $t2, $fp, -1517
# br i1  %op392, label %label393, label %label401
	ld.b $t0, $fp, -1517
	bnez $t0, .main_label393
	b .main_label401
.main_label393:
# %op394 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1524
# %op395 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1528
# %op396 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op394
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1524
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1536
# %op397 = load i32 , i32 * %op396
	ld.d $t0, $fp, -1536
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1540
# %op398 = icmp eq i32  %op397, 43
	ld.w $t0, $fp, -1540
	addi.w $t1, $zero, 43
	beq  $t0, $t1, true_label96
	addi.d $t2, $zero, 0
	b false_label96
true_label96:
	addi.d $t2, $zero, 1
false_label96:
	st.b $t2, $fp, -1541
# %op399 = zext i1  %op398 to i32 
	ld.b $t0, $fp, -1541
	st.w $t0, $fp, -1548
# %op400 = icmp ne i32  %op399, 0
	ld.w $t0, $fp, -1548
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label97
	addi.d $t2, $zero, 0
	b false_label97
true_label97:
	addi.d $t2, $zero, 1
false_label97:
	st.b $t2, $fp, -1549
# br i1  %op400, label %label404, label %label460
	ld.b $t0, $fp, -1549
	bnez $t0, .main_label404
	b .main_label460
.main_label401:
# %op402 = getelementptr [10000 x i32 ], [10000 x i32 ]* @ints, i32  0, i32  1
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	la.local $t1, ints
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1560
# %op403 = load i32 , i32 * %op402
	ld.d $t0, $fp, -1560
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1564
# call void @putint(i32  %op403)
	ld.w $a0, $fp, -1564
	bl putint
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
.main_label404:
# %op405 = call i32  @intpop()
	bl intpop
	st.w $a0, $fp, -1568
# %op406 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 2516
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -1576
# store i32  %op405, i32 * %op406
	ld.d $t0, $fp, -1576
	ld.w $t1, $fp, -1568
	st.w $t1, $t0, 0
# %op407 = call i32  @intpop()
	bl intpop
	st.w $a0, $fp, -1584
# %op408 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 2500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -1592
# store i32  %op407, i32 * %op408
	ld.d $t0, $fp, -1592
	ld.w $t1, $fp, -1584
	st.w $t1, $t0, 0
# %op409 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 2484
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -1608
# %op410 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1616
# %op411 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1620
# %op412 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op410
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1616
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1632
# %op413 = load i32 , i32 * %op412
	ld.d $t0, $fp, -1632
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1636
# %op414 = icmp eq i32  %op413, 43
	ld.w $t0, $fp, -1636
	addi.w $t1, $zero, 43
	beq  $t0, $t1, true_label98
	addi.d $t2, $zero, 0
	b false_label98
true_label98:
	addi.d $t2, $zero, 1
false_label98:
	st.b $t2, $fp, -1637
# %op415 = zext i1  %op414 to i32 
	ld.b $t0, $fp, -1637
	st.w $t0, $fp, -1644
# %op416 = icmp ne i32  %op415, 0
	ld.w $t0, $fp, -1644
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label99
	addi.d $t2, $zero, 0
	b false_label99
true_label99:
	addi.d $t2, $zero, 1
false_label99:
	st.b $t2, $fp, -1645
# br i1  %op416, label %label468, label %label472
	ld.b $t0, $fp, -1645
	bnez $t0, .main_label468
	b .main_label472
.main_label417:
# %op418 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1652
# %op419 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1656
# %op420 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op418
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1652
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1664
# %op421 = load i32 , i32 * %op420
	ld.d $t0, $fp, -1664
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1668
# %op422 = icmp ne i32  %op421, 32
	ld.w $t0, $fp, -1668
	addi.w $t1, $zero, 32
	bne  $t0, $t1, true_label100
	addi.d $t2, $zero, 0
	b false_label100
true_label100:
	addi.d $t2, $zero, 1
false_label100:
	st.b $t2, $fp, -1669
# %op423 = zext i1  %op422 to i32 
	ld.b $t0, $fp, -1669
	st.w $t0, $fp, -1676
# %op424 = icmp ne i32  %op423, 0
	ld.w $t0, $fp, -1676
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label101
	addi.d $t2, $zero, 0
	b false_label101
true_label101:
	addi.d $t2, $zero, 1
false_label101:
	st.b $t2, $fp, -1677
# br i1  %op424, label %label534, label %label540
	ld.b $t0, $fp, -1677
	bnez $t0, .main_label534
	b .main_label540
.main_label425:
# %op426 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1684
# %op427 = add i32  %op426, 1
	ld.w $t0, $fp, -1684
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1688
# store i32  %op427, i32 * @i
	la.local $t0, i
	ld.w $t1, $fp, -1688
	st.w $t1, $t0, 0
# br label %label385
	b .main_label385
.main_label428:
# %op429 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1692
# %op430 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1696
# %op431 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op429
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1692
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1704
# %op432 = load i32 , i32 * %op431
	ld.d $t0, $fp, -1704
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1708
# %op433 = icmp eq i32  %op432, 94
	ld.w $t0, $fp, -1708
	addi.w $t1, $zero, 94
	beq  $t0, $t1, true_label102
	addi.d $t2, $zero, 0
	b false_label102
true_label102:
	addi.d $t2, $zero, 1
false_label102:
	st.b $t2, $fp, -1709
# %op434 = zext i1  %op433 to i32 
	ld.b $t0, $fp, -1709
	st.w $t0, $fp, -1716
# %op435 = icmp ne i32  %op434, 0
	ld.w $t0, $fp, -1716
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label103
	addi.d $t2, $zero, 0
	b false_label103
true_label103:
	addi.d $t2, $zero, 1
false_label103:
	st.b $t2, $fp, -1717
# br i1  %op435, label %label404, label %label417
	ld.b $t0, $fp, -1717
	bnez $t0, .main_label404
	b .main_label417
.main_label436:
# %op437 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1724
# %op438 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1728
# %op439 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op437
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1724
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1736
# %op440 = load i32 , i32 * %op439
	ld.d $t0, $fp, -1736
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1740
# %op441 = icmp eq i32  %op440, 37
	ld.w $t0, $fp, -1740
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label104
	addi.d $t2, $zero, 0
	b false_label104
true_label104:
	addi.d $t2, $zero, 1
false_label104:
	st.b $t2, $fp, -1741
# %op442 = zext i1  %op441 to i32 
	ld.b $t0, $fp, -1741
	st.w $t0, $fp, -1748
# %op443 = icmp ne i32  %op442, 0
	ld.w $t0, $fp, -1748
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label105
	addi.d $t2, $zero, 0
	b false_label105
true_label105:
	addi.d $t2, $zero, 1
false_label105:
	st.b $t2, $fp, -1749
# br i1  %op443, label %label404, label %label428
	ld.b $t0, $fp, -1749
	bnez $t0, .main_label404
	b .main_label428
.main_label444:
# %op445 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1756
# %op446 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1760
# %op447 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op445
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1756
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1768
# %op448 = load i32 , i32 * %op447
	ld.d $t0, $fp, -1768
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1772
# %op449 = icmp eq i32  %op448, 47
	ld.w $t0, $fp, -1772
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label106
	addi.d $t2, $zero, 0
	b false_label106
true_label106:
	addi.d $t2, $zero, 1
false_label106:
	st.b $t2, $fp, -1773
# %op450 = zext i1  %op449 to i32 
	ld.b $t0, $fp, -1773
	st.w $t0, $fp, -1780
# %op451 = icmp ne i32  %op450, 0
	ld.w $t0, $fp, -1780
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label107
	addi.d $t2, $zero, 0
	b false_label107
true_label107:
	addi.d $t2, $zero, 1
false_label107:
	st.b $t2, $fp, -1781
# br i1  %op451, label %label404, label %label436
	ld.b $t0, $fp, -1781
	bnez $t0, .main_label404
	b .main_label436
.main_label452:
# %op453 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1788
# %op454 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1792
# %op455 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op453
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1788
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1800
# %op456 = load i32 , i32 * %op455
	ld.d $t0, $fp, -1800
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1804
# %op457 = icmp eq i32  %op456, 42
	ld.w $t0, $fp, -1804
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label108
	addi.d $t2, $zero, 0
	b false_label108
true_label108:
	addi.d $t2, $zero, 1
false_label108:
	st.b $t2, $fp, -1805
# %op458 = zext i1  %op457 to i32 
	ld.b $t0, $fp, -1805
	st.w $t0, $fp, -1812
# %op459 = icmp ne i32  %op458, 0
	ld.w $t0, $fp, -1812
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label109
	addi.d $t2, $zero, 0
	b false_label109
true_label109:
	addi.d $t2, $zero, 1
false_label109:
	st.b $t2, $fp, -1813
# br i1  %op459, label %label404, label %label444
	ld.b $t0, $fp, -1813
	bnez $t0, .main_label404
	b .main_label444
.main_label460:
# %op461 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1820
# %op462 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1824
# %op463 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op461
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1820
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1832
# %op464 = load i32 , i32 * %op463
	ld.d $t0, $fp, -1832
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1836
# %op465 = icmp eq i32  %op464, 45
	ld.w $t0, $fp, -1836
	addi.w $t1, $zero, 45
	beq  $t0, $t1, true_label110
	addi.d $t2, $zero, 0
	b false_label110
true_label110:
	addi.d $t2, $zero, 1
false_label110:
	st.b $t2, $fp, -1837
# %op466 = zext i1  %op465 to i32 
	ld.b $t0, $fp, -1837
	st.w $t0, $fp, -1844
# %op467 = icmp ne i32  %op466, 0
	ld.w $t0, $fp, -1844
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label111
	addi.d $t2, $zero, 0
	b false_label111
true_label111:
	addi.d $t2, $zero, 1
false_label111:
	st.b $t2, $fp, -1845
# br i1  %op467, label %label404, label %label452
	ld.b $t0, $fp, -1845
	bnez $t0, .main_label404
	b .main_label452
.main_label468:
# %op469 = load i32 , i32 * %op406
	ld.d $t0, $fp, -1576
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1852
# %op470 = load i32 , i32 * %op408
	ld.d $t0, $fp, -1592
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1856
# %op471 = add i32  %op469, %op470
	ld.w $t0, $fp, -1852
	ld.w $t1, $fp, -1856
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1860
# store i32  %op471, i32 * %op409
	ld.d $t0, $fp, -1608
	ld.w $t1, $fp, -1860
	st.w $t1, $t0, 0
# br label %label472
	b .main_label472
.main_label472:
# %op473 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1864
# %op474 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1868
# %op475 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op473
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1864
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1880
# %op476 = load i32 , i32 * %op475
	ld.d $t0, $fp, -1880
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1884
# %op477 = icmp eq i32  %op476, 45
	ld.w $t0, $fp, -1884
	addi.w $t1, $zero, 45
	beq  $t0, $t1, true_label112
	addi.d $t2, $zero, 0
	b false_label112
true_label112:
	addi.d $t2, $zero, 1
false_label112:
	st.b $t2, $fp, -1885
# %op478 = zext i1  %op477 to i32 
	ld.b $t0, $fp, -1885
	st.w $t0, $fp, -1892
# %op479 = icmp ne i32  %op478, 0
	ld.w $t0, $fp, -1892
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label113
	addi.d $t2, $zero, 0
	b false_label113
true_label113:
	addi.d $t2, $zero, 1
false_label113:
	st.b $t2, $fp, -1893
# br i1  %op479, label %label480, label %label484
	ld.b $t0, $fp, -1893
	bnez $t0, .main_label480
	b .main_label484
.main_label480:
# %op481 = load i32 , i32 * %op408
	ld.d $t0, $fp, -1592
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1900
# %op482 = load i32 , i32 * %op406
	ld.d $t0, $fp, -1576
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1904
# %op483 = sub i32  %op481, %op482
	ld.w $t0, $fp, -1900
	ld.w $t1, $fp, -1904
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1908
# store i32  %op483, i32 * %op409
	ld.d $t0, $fp, -1608
	ld.w $t1, $fp, -1908
	st.w $t1, $t0, 0
# br label %label484
	b .main_label484
.main_label484:
# %op485 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1912
# %op486 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1916
# %op487 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op485
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1912
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1928
# %op488 = load i32 , i32 * %op487
	ld.d $t0, $fp, -1928
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1932
# %op489 = icmp eq i32  %op488, 42
	ld.w $t0, $fp, -1932
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label114
	addi.d $t2, $zero, 0
	b false_label114
true_label114:
	addi.d $t2, $zero, 1
false_label114:
	st.b $t2, $fp, -1933
# %op490 = zext i1  %op489 to i32 
	ld.b $t0, $fp, -1933
	st.w $t0, $fp, -1940
# %op491 = icmp ne i32  %op490, 0
	ld.w $t0, $fp, -1940
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label115
	addi.d $t2, $zero, 0
	b false_label115
true_label115:
	addi.d $t2, $zero, 1
false_label115:
	st.b $t2, $fp, -1941
# br i1  %op491, label %label492, label %label496
	ld.b $t0, $fp, -1941
	bnez $t0, .main_label492
	b .main_label496
.main_label492:
# %op493 = load i32 , i32 * %op406
	ld.d $t0, $fp, -1576
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1948
# %op494 = load i32 , i32 * %op408
	ld.d $t0, $fp, -1592
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1952
# %op495 = mul i32  %op493, %op494
	ld.w $t0, $fp, -1948
	ld.w $t1, $fp, -1952
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1956
# store i32  %op495, i32 * %op409
	ld.d $t0, $fp, -1608
	ld.w $t1, $fp, -1956
	st.w $t1, $t0, 0
# br label %label496
	b .main_label496
.main_label496:
# %op497 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1960
# %op498 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1964
# %op499 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op497
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -1960
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1976
# %op500 = load i32 , i32 * %op499
	ld.d $t0, $fp, -1976
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1980
# %op501 = icmp eq i32  %op500, 47
	ld.w $t0, $fp, -1980
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label116
	addi.d $t2, $zero, 0
	b false_label116
true_label116:
	addi.d $t2, $zero, 1
false_label116:
	st.b $t2, $fp, -1981
# %op502 = zext i1  %op501 to i32 
	ld.b $t0, $fp, -1981
	st.w $t0, $fp, -1988
# %op503 = icmp ne i32  %op502, 0
	ld.w $t0, $fp, -1988
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label117
	addi.d $t2, $zero, 0
	b false_label117
true_label117:
	addi.d $t2, $zero, 1
false_label117:
	st.b $t2, $fp, -1989
# br i1  %op503, label %label504, label %label508
	ld.b $t0, $fp, -1989
	bnez $t0, .main_label504
	b .main_label508
.main_label504:
# %op505 = load i32 , i32 * %op408
	ld.d $t0, $fp, -1592
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1996
# %op506 = load i32 , i32 * %op406
	ld.d $t0, $fp, -1576
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2000
# %op507 = sdiv i32  %op505, %op506
	ld.w $t0, $fp, -1996
	ld.w $t1, $fp, -2000
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -2004
# store i32  %op507, i32 * %op409
	ld.d $t0, $fp, -1608
	ld.w $t1, $fp, -2004
	st.w $t1, $t0, 0
# br label %label508
	b .main_label508
.main_label508:
# %op509 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2008
# %op510 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2012
# %op511 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op509
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -2008
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -2024
# %op512 = load i32 , i32 * %op511
	ld.d $t0, $fp, -2024
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2028
# %op513 = icmp eq i32  %op512, 37
	ld.w $t0, $fp, -2028
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label118
	addi.d $t2, $zero, 0
	b false_label118
true_label118:
	addi.d $t2, $zero, 1
false_label118:
	st.b $t2, $fp, -2029
# %op514 = zext i1  %op513 to i32 
	ld.b $t0, $fp, -2029
	st.w $t0, $fp, -2036
# %op515 = icmp ne i32  %op514, 0
	ld.w $t0, $fp, -2036
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label119
	addi.d $t2, $zero, 0
	b false_label119
true_label119:
	addi.d $t2, $zero, 1
false_label119:
	st.b $t2, $fp, -2037
# br i1  %op515, label %label516, label %label520
	ld.b $t0, $fp, -2037
	bnez $t0, .main_label516
	b .main_label520
.main_label516:
# %op517 = load i32 , i32 * %op408
	ld.d $t0, $fp, -1592
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2044
# %op518 = load i32 , i32 * %op406
	ld.d $t0, $fp, -1576
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2048
# %op519 = srem i32  %op517, %op518
	ld.w $t0, $fp, -2044
	ld.w $t1, $fp, -2048
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op519, i32 * %op409
	ld.d $t0, $fp, -1608
	lu12i.w $t1, -1
	ori $t1, $t1, 2044
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label520
	b .main_label520
.main_label520:
# %op521 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op522 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op523 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op521
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 2040
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op524 = load i32 , i32 * %op523
	lu12i.w $t0, -1
	ori $t0, $t0, 2024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op525 = icmp eq i32  %op524, 94
	lu12i.w $t0, -1
	ori $t0, $t0, 2020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 94
	beq  $t0, $t1, true_label120
	addi.d $t2, $zero, 0
	b false_label120
true_label120:
	addi.d $t2, $zero, 1
false_label120:
	lu12i.w $t8, -1
	ori $t8, $t8, 2019
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op526 = zext i1  %op525 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 2019
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op527 = icmp ne i32  %op526, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 2012
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
	ori $t8, $t8, 2011
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op527, label %label528, label %label532
	lu12i.w $t0, -1
	ori $t0, $t0, 2011
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .main_label528
	b .main_label532
.main_label528:
# %op529 = load i32 , i32 * %op408
	ld.d $t0, $fp, -1592
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op530 = load i32 , i32 * %op406
	ld.d $t0, $fp, -1576
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op531 = call i32  @power(i32  %op529, i32  %op530)
	lu12i.w $a0, -1
	ori $a0, $a0, 2004
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	lu12i.w $a1, -1
	ori $a1, $a1, 2000
	lu32i.d $a1, -1
	lu52i.d $a1, $a1, -1
	add.d $a1, $fp, $a1
	ld.w $a1, $a1, 0
	bl power
	lu12i.w $t8, -1
	ori $t8, $t8, 1996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# store i32  %op531, i32 * %op409
	ld.d $t0, $fp, -1608
	lu12i.w $t1, -1
	ori $t1, $t1, 1996
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label532
	b .main_label532
.main_label532:
# %op533 = load i32 , i32 * %op409
	ld.d $t0, $fp, -1608
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# call void @intpush(i32  %op533)
	lu12i.w $a0, -1
	ori $a0, $a0, 1992
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	bl intpush
# br label %label425
	b .main_label425
.main_label534:
# %op535 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op536 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op537 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op535
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1988
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op538 = load i32 , i32 * %op537
	lu12i.w $t0, -1
	ori $t0, $t0, 1976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op539 = sub i32  %op538, 48
	lu12i.w $t0, -1
	ori $t0, $t0, 1972
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 48
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# call void @intpush(i32  %op539)
	lu12i.w $a0, -1
	ori $a0, $a0, 1968
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	bl intpush
# store i32  1, i32 * @ii
	la.local $t0, ii
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label541
	b .main_label541
.main_label540:
# br label %label425
	b .main_label425
.main_label541:
# %op542 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op543 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op544 = add i32  %op542, %op543
	lu12i.w $t0, -1
	ori $t0, $t0, 1964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1960
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op545 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op546 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op547 = add i32  %op545, %op546
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
# %op548 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op544
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1956
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op549 = load i32 , i32 * %op548
	lu12i.w $t0, -1
	ori $t0, $t0, 1936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op550 = icmp ne i32  %op549, 32
	lu12i.w $t0, -1
	ori $t0, $t0, 1932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 32
	bne  $t0, $t1, true_label122
	addi.d $t2, $zero, 0
	b false_label122
true_label122:
	addi.d $t2, $zero, 1
false_label122:
	lu12i.w $t8, -1
	ori $t8, $t8, 1931
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op551 = zext i1  %op550 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1931
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op552 = icmp ne i32  %op551, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1924
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
	ori $t8, $t8, 1923
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op552, label %label553, label %label565
	lu12i.w $t0, -1
	ori $t0, $t0, 1923
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .main_label553
	b .main_label565
.main_label553:
# %op554 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op555 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op556 = add i32  %op554, %op555
	lu12i.w $t0, -1
	ori $t0, $t0, 1916
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1912
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op557 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op558 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op559 = add i32  %op557, %op558
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
# %op560 = getelementptr [10000 x i32 ], [10000 x i32 ]* @get2, i32  0, i32  %op556
	addi.d $t0, $zero, 0
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
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
	lu12i.w $t1, 9
	ori $t1, $t1, 3136
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	lu12i.w $t1, -1
	ori $t1, $t1, 1908
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, get2
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op561 = load i32 , i32 * %op560
	lu12i.w $t0, -1
	ori $t0, $t0, 1888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op562 = sub i32  %op561, 48
	lu12i.w $t0, -1
	ori $t0, $t0, 1884
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 48
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# call void @intadd(i32  %op562)
	lu12i.w $a0, -1
	ori $a0, $a0, 1880
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	bl intadd
# %op563 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op564 = add i32  %op563, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op564, i32 * @ii
	la.local $t0, ii
	lu12i.w $t1, -1
	ori $t1, $t1, 1872
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label541
	b .main_label541
.main_label565:
# %op566 = load i32 , i32 * @i
	la.local $t0, i
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op567 = load i32 , i32 * @ii
	la.local $t0, ii
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op568 = add i32  %op566, %op567
	lu12i.w $t0, -1
	ori $t0, $t0, 1868
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1864
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op569 = sub i32  %op568, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op569, i32 * @i
	la.local $t0, i
	lu12i.w $t1, -1
	ori $t1, $t1, 1856
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label540
	b .main_label540
main_ret:
	lu12i.w $t0, 0
	ori $t0, $t0, 2240
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	sub.d $t0, $zero, $t0
	add.d $sp, $sp, $t0
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

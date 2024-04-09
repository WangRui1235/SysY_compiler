# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl a
	.data
	.type a, @object
	.size a, 4
a:
	.word 1
	.space 4
	.globl b
	.data
	.type b, @object
	.size b, 4
b:
	.word 0
	.space 4
	.globl c
	.data
	.type c, @object
	.size c, 4
c:
	.word 1
	.space 4
	.globl d
	.data
	.type d, @object
	.size d, 4
d:
	.word 2
	.space 4
	.globl e
	.data
	.type e, @object
	.size e, 4
e:
	.word 4
	.space 4
	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -192
.main_label_entry:
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
# %op1 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -32
# %op2 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -36
# %op3 = mul i32  %op1, %op2
	ld.w $t0, $fp, -32
	ld.w $t1, $fp, -36
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -40
# %op4 = load i32 , i32 * @c
	la.local $t0, c
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# %op5 = sdiv i32  %op3, %op4
	ld.w $t0, $fp, -40
	ld.w $t1, $fp, -44
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -48
# %op6 = load i32 , i32 * @e
	la.local $t0, e
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# %op7 = load i32 , i32 * @d
	la.local $t0, d
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op8 = add i32  %op6, %op7
	ld.w $t0, $fp, -52
	ld.w $t1, $fp, -56
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# %op9 = icmp eq i32  %op5, %op8
	ld.w $t0, $fp, -48
	ld.w $t1, $fp, -60
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -61
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -61
	st.w $t0, $fp, -68
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -69
# br i1  %op11, label %label30, label %label16
	ld.b $t0, $fp, -69
	bnez $t0, .main_label30
	b .main_label16
.main_label12:
# store i32  1, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label13
	b .main_label13
.main_label13:
# %op14 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# call void @putint(i32  %op14)
	ld.w $a0, $fp, -76
	bl putint
# %op15 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# ret i32  %op15
	ld.w $a0, $fp, -80
	b main_ret
.main_label16:
# %op17 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op18 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op19 = load i32 , i32 * @c
	la.local $t0, c
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op20 = mul i32  %op18, %op19
	ld.w $t0, $fp, -88
	ld.w $t1, $fp, -92
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -96
# %op21 = sub i32  %op17, %op20
	ld.w $t0, $fp, -84
	ld.w $t1, $fp, -96
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -100
# %op22 = load i32 , i32 * @d
	la.local $t0, d
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op23 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op24 = load i32 , i32 * @c
	la.local $t0, c
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op25 = sdiv i32  %op23, %op24
	ld.w $t0, $fp, -108
	ld.w $t1, $fp, -112
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -116
# %op26 = sub i32  %op22, %op25
	ld.w $t0, $fp, -104
	ld.w $t1, $fp, -116
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# %op27 = icmp eq i32  %op21, %op26
	ld.w $t0, $fp, -100
	ld.w $t1, $fp, -120
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -121
# %op28 = zext i1  %op27 to i32 
	ld.b $t0, $fp, -121
	st.w $t0, $fp, -128
# %op29 = icmp ne i32  %op28, 0
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -129
# br i1  %op29, label %label12, label %label13
	ld.b $t0, $fp, -129
	bnez $t0, .main_label12
	b .main_label13
.main_label30:
# %op31 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# %op32 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op33 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op34 = add i32  %op32, %op33
	ld.w $t0, $fp, -140
	ld.w $t1, $fp, -144
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -148
# %op35 = mul i32  %op31, %op34
	ld.w $t0, $fp, -136
	ld.w $t1, $fp, -148
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -152
# %op36 = load i32 , i32 * @c
	la.local $t0, c
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op37 = add i32  %op35, %op36
	ld.w $t0, $fp, -152
	ld.w $t1, $fp, -156
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -160
# %op38 = load i32 , i32 * @d
	la.local $t0, d
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op39 = load i32 , i32 * @e
	la.local $t0, e
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op40 = add i32  %op38, %op39
	ld.w $t0, $fp, -164
	ld.w $t1, $fp, -168
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -172
# %op41 = icmp sle i32  %op37, %op40
	ld.w $t0, $fp, -160
	ld.w $t1, $fp, -172
	bge  $t1, $t0, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -173
# %op42 = zext i1  %op41 to i32 
	ld.b $t0, $fp, -173
	st.w $t0, $fp, -180
# %op43 = icmp ne i32  %op42, 0
	ld.w $t0, $fp, -180
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -181
# br i1  %op43, label %label12, label %label16
	ld.b $t0, $fp, -181
	bnez $t0, .main_label12
	b .main_label16
main_ret:
	addi.d $sp, $sp, 192
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

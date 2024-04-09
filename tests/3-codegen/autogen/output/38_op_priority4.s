# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl a
	.type a, @object
	.size a, 4
a:
	.space 4
	.globl b
	.type b, @object
	.size b, 4
b:
	.space 4
	.globl c
	.type c, @object
	.size c, 4
c:
	.space 4
	.globl d
	.type d, @object
	.size d, 4
d:
	.space 4
	.globl e
	.type e, @object
	.size e, 4
e:
	.space 4
	.text
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
# store i32  %op0, i32 * @a
	la.local $t0, a
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op1 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -24
# store i32  %op1, i32 * @b
	la.local $t0, b
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op2 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -28
# store i32  %op2, i32 * @c
	la.local $t0, c
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op3 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -32
# store i32  %op3, i32 * @d
	la.local $t0, d
	ld.w $t1, $fp, -32
	st.w $t1, $t0, 0
# %op4 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -36
# store i32  %op4, i32 * @e
	la.local $t0, e
	ld.w $t1, $fp, -36
	st.w $t1, $t0, 0
# %op5 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -48
# store i32  0, i32 * %op5
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op6 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op7 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op8 = load i32 , i32 * @c
	la.local $t0, c
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op9 = mul i32  %op7, %op8
	ld.w $t0, $fp, -60
	ld.w $t1, $fp, -64
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -68
# %op10 = sub i32  %op6, %op9
	ld.w $t0, $fp, -56
	ld.w $t1, $fp, -68
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -72
# %op11 = load i32 , i32 * @d
	la.local $t0, d
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op12 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op13 = load i32 , i32 * @c
	la.local $t0, c
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op14 = sdiv i32  %op12, %op13
	ld.w $t0, $fp, -80
	ld.w $t1, $fp, -84
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -88
# %op15 = sub i32  %op11, %op14
	ld.w $t0, $fp, -76
	ld.w $t1, $fp, -88
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -92
# %op16 = icmp ne i32  %op10, %op15
	ld.w $t0, $fp, -72
	ld.w $t1, $fp, -92
	bne  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -93
# %op17 = zext i1  %op16 to i32 
	ld.b $t0, $fp, -93
	st.w $t0, $fp, -100
# %op18 = icmp ne i32  %op17, 0
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -101
# br i1  %op18, label %label19, label %label34
	ld.b $t0, $fp, -101
	bnez $t0, .main_label19
	b .main_label34
.main_label19:
# store i32  1, i32 * %op5
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label20
	b .main_label20
.main_label20:
# %op21 = load i32 , i32 * %op5
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# ret i32  %op21
	ld.w $a0, $fp, -108
	b main_ret
.main_label22:
# %op23 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op24 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op25 = add i32  %op23, %op24
	ld.w $t0, $fp, -112
	ld.w $t1, $fp, -116
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# %op26 = load i32 , i32 * @c
	la.local $t0, c
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op27 = add i32  %op25, %op26
	ld.w $t0, $fp, -120
	ld.w $t1, $fp, -124
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -128
# %op28 = load i32 , i32 * @d
	la.local $t0, d
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op29 = load i32 , i32 * @e
	la.local $t0, e
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# %op30 = add i32  %op28, %op29
	ld.w $t0, $fp, -132
	ld.w $t1, $fp, -136
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -140
# %op31 = icmp eq i32  %op27, %op30
	ld.w $t0, $fp, -128
	ld.w $t1, $fp, -140
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -141
# %op32 = zext i1  %op31 to i32 
	ld.b $t0, $fp, -141
	st.w $t0, $fp, -148
# %op33 = icmp ne i32  %op32, 0
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -149
# br i1  %op33, label %label19, label %label20
	ld.b $t0, $fp, -149
	bnez $t0, .main_label19
	b .main_label20
.main_label34:
# %op35 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op36 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op37 = mul i32  %op35, %op36
	ld.w $t0, $fp, -156
	ld.w $t1, $fp, -160
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -164
# %op38 = load i32 , i32 * @c
	la.local $t0, c
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op39 = sdiv i32  %op37, %op38
	ld.w $t0, $fp, -164
	ld.w $t1, $fp, -168
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -172
# %op40 = load i32 , i32 * @e
	la.local $t0, e
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op41 = load i32 , i32 * @d
	la.local $t0, d
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op42 = add i32  %op40, %op41
	ld.w $t0, $fp, -176
	ld.w $t1, $fp, -180
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -184
# %op43 = icmp eq i32  %op39, %op42
	ld.w $t0, $fp, -172
	ld.w $t1, $fp, -184
	beq  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -185
# %op44 = zext i1  %op43 to i32 
	ld.b $t0, $fp, -185
	st.w $t0, $fp, -192
# %op45 = icmp ne i32  %op44, 0
	ld.w $t0, $fp, -192
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -193
# br i1  %op45, label %label19, label %label22
	ld.b $t0, $fp, -193
	bnez $t0, .main_label19
	b .main_label22
main_ret:
	addi.d $sp, $sp, 208
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

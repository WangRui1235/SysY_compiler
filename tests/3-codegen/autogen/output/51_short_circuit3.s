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
	.globl d
	.type d, @object
	.size d, 4
d:
	.space 4
	.text
	.globl set_a
	.type set_a, @function
set_a:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
	st.w $a0, $fp, -20
.set_a_label_entry:
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
# store i32  %op2, i32 * @a
	la.local $t0, a
	ld.w $t1, $fp, -40
	st.w $t1, $t0, 0
# %op3 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# ret i32  %op3
	ld.w $a0, $fp, -44
	b set_a_ret
set_a_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl set_b
	.type set_b, @function
set_b:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
	st.w $a0, $fp, -20
.set_b_label_entry:
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
# store i32  %op2, i32 * @b
	la.local $t0, b
	ld.w $t1, $fp, -40
	st.w $t1, $t0, 0
# %op3 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# ret i32  %op3
	ld.w $a0, $fp, -44
	b set_b_ret
set_b_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl set_d
	.type set_d, @function
set_d:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
	st.w $a0, $fp, -20
.set_d_label_entry:
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
# store i32  %op2, i32 * @d
	la.local $t0, d
	ld.w $t1, $fp, -40
	st.w $t1, $t0, 0
# %op3 = load i32 , i32 * @d
	la.local $t0, d
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# ret i32  %op3
	ld.w $a0, $fp, -44
	b set_d_ret
set_d_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -608
.main_label_entry:
# store i32  2, i32 * @a
	la.local $t0, a
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# store i32  3, i32 * @b
	la.local $t0, b
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op0 = call i32  @set_a(i32  0)
	addi.w $a0, $zero, 0
	bl set_a
	st.w $a0, $fp, -20
# %op1 = icmp ne i32  %op0, 0
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -21
# br i1  %op1, label %label10, label %label3
	ld.b $t0, $fp, -21
	bnez $t0, .main_label10
	b .main_label3
.main_label2:
# br label %label3
	b .main_label3
.main_label3:
# %op4 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -28
# call void @putint(i32  %op4)
	ld.w $a0, $fp, -28
	bl putint
# %op5 = trunc i32  32 to i8 
	addi.w $t0, $zero, 32
	andi $t1, $t0, 255
	st.b $t1, $fp, -29
# call void @putch(i8  %op5)
	ld.b $a0, $fp, -29
	bl putch
# %op6 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -36
# call void @putint(i32  %op6)
	ld.w $a0, $fp, -36
	bl putint
# %op7 = trunc i32  32 to i8 
	addi.w $t0, $zero, 32
	andi $t1, $t0, 255
	st.b $t1, $fp, -37
# call void @putch(i8  %op7)
	ld.b $a0, $fp, -37
	bl putch
# store i32  2, i32 * @a
	la.local $t0, a
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# store i32  3, i32 * @b
	la.local $t0, b
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op8 = call i32  @set_a(i32  0)
	addi.w $a0, $zero, 0
	bl set_a
	st.w $a0, $fp, -44
# %op9 = icmp ne i32  %op8, 0
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -45
# br i1  %op9, label %label24, label %label14
	ld.b $t0, $fp, -45
	bnez $t0, .main_label24
	b .main_label14
.main_label10:
# %op11 = call i32  @set_b(i32  1)
	addi.w $a0, $zero, 1
	bl set_b
	st.w $a0, $fp, -52
# %op12 = icmp ne i32  %op11, 0
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -53
# br i1  %op12, label %label2, label %label3
	ld.b $t0, $fp, -53
	bnez $t0, .main_label2
	b .main_label3
.main_label13:
# br label %label14
	b .main_label14
.main_label14:
# %op15 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# call void @putint(i32  %op15)
	ld.w $a0, $fp, -60
	bl putint
# %op16 = trunc i32  32 to i8 
	addi.w $t0, $zero, 32
	andi $t1, $t0, 255
	st.b $t1, $fp, -61
# call void @putch(i8  %op16)
	ld.b $a0, $fp, -61
	bl putch
# %op17 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# call void @putint(i32  %op17)
	ld.w $a0, $fp, -68
	bl putint
# %op18 = trunc i32  10 to i8 
	addi.w $t0, $zero, 10
	andi $t1, $t0, 255
	st.b $t1, $fp, -69
# call void @putch(i8  %op18)
	ld.b $a0, $fp, -69
	bl putch
# %op19 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -80
# store i32  1, i32 * %op19
	ld.d $t0, $fp, -80
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# store i32  2, i32 * @d
	la.local $t0, d
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op20 = load i32 , i32 * %op19
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op21 = icmp sge i32  %op20, 1
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 1
	bge  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -89
# %op22 = zext i1  %op21 to i32 
	ld.b $t0, $fp, -89
	st.w $t0, $fp, -96
# %op23 = icmp ne i32  %op22, 0
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -97
# br i1  %op23, label %label35, label %label28
	ld.b $t0, $fp, -97
	bnez $t0, .main_label35
	b .main_label28
.main_label24:
# %op25 = call i32  @set_b(i32  1)
	addi.w $a0, $zero, 1
	bl set_b
	st.w $a0, $fp, -104
# %op26 = icmp ne i32  %op25, 0
	ld.w $t0, $fp, -104
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -105
# br i1  %op26, label %label13, label %label14
	ld.b $t0, $fp, -105
	bnez $t0, .main_label13
	b .main_label14
.main_label27:
# br label %label28
	b .main_label28
.main_label28:
# %op29 = load i32 , i32 * @d
	la.local $t0, d
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# call void @putint(i32  %op29)
	ld.w $a0, $fp, -112
	bl putint
# %op30 = trunc i32  32 to i8 
	addi.w $t0, $zero, 32
	andi $t1, $t0, 255
	st.b $t1, $fp, -113
# call void @putch(i8  %op30)
	ld.b $a0, $fp, -113
	bl putch
# %op31 = load i32 , i32 * %op19
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -120
# %op32 = icmp sle i32  %op31, 1
	ld.w $t0, $fp, -120
	addi.w $t1, $zero, 1
	bge  $t1, $t0, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -121
# %op33 = zext i1  %op32 to i32 
	ld.b $t0, $fp, -121
	st.w $t0, $fp, -128
# %op34 = icmp ne i32  %op33, 0
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -129
# br i1  %op34, label %label38, label %label47
	ld.b $t0, $fp, -129
	bnez $t0, .main_label38
	b .main_label47
.main_label35:
# %op36 = call i32  @set_d(i32  3)
	addi.w $a0, $zero, 3
	bl set_d
	st.w $a0, $fp, -136
# %op37 = icmp ne i32  %op36, 0
	ld.w $t0, $fp, -136
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -137
# br i1  %op37, label %label27, label %label28
	ld.b $t0, $fp, -137
	bnez $t0, .main_label27
	b .main_label28
.main_label38:
# br label %label39
	b .main_label39
.main_label39:
# %op40 = load i32 , i32 * @d
	la.local $t0, d
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# call void @putint(i32  %op40)
	ld.w $a0, $fp, -144
	bl putint
# %op41 = trunc i32  10 to i8 
	addi.w $t0, $zero, 10
	andi $t1, $t0, 255
	st.b $t1, $fp, -145
# call void @putch(i8  %op41)
	ld.b $a0, $fp, -145
	bl putch
# %op42 = add i32  2, 1
	addi.w $t0, $zero, 2
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -152
# %op43 = sub i32  3, %op42
	addi.w $t0, $zero, 3
	ld.w $t1, $fp, -152
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# %op44 = icmp sge i32  16, %op43
	addi.w $t0, $zero, 16
	ld.w $t1, $fp, -156
	bge  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -157
# %op45 = zext i1  %op44 to i32 
	ld.b $t0, $fp, -157
	st.w $t0, $fp, -164
# %op46 = icmp ne i32  %op45, 0
	ld.w $t0, $fp, -164
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -165
# br i1  %op46, label %label50, label %label52
	ld.b $t0, $fp, -165
	bnez $t0, .main_label50
	b .main_label52
.main_label47:
# %op48 = call i32  @set_d(i32  4)
	addi.w $a0, $zero, 4
	bl set_d
	st.w $a0, $fp, -172
# %op49 = icmp ne i32  %op48, 0
	ld.w $t0, $fp, -172
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -173
# br i1  %op49, label %label38, label %label39
	ld.b $t0, $fp, -173
	bnez $t0, .main_label38
	b .main_label39
.main_label50:
# %op51 = trunc i32  65 to i8 
	addi.w $t0, $zero, 65
	andi $t1, $t0, 255
	st.b $t1, $fp, -174
# call void @putch(i8  %op51)
	ld.b $a0, $fp, -174
	bl putch
# br label %label52
	b .main_label52
.main_label52:
# %op53 = sub i32  25, 7
	addi.w $t0, $zero, 25
	addi.w $t1, $zero, 7
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -180
# %op54 = mul i32  6, 3
	addi.w $t0, $zero, 6
	addi.w $t1, $zero, 3
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -184
# %op55 = sub i32  36, %op54
	addi.w $t0, $zero, 36
	ld.w $t1, $fp, -184
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -188
# %op56 = icmp ne i32  %op53, %op55
	ld.w $t0, $fp, -180
	ld.w $t1, $fp, -188
	bne  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -189
# %op57 = zext i1  %op56 to i32 
	ld.b $t0, $fp, -189
	st.w $t0, $fp, -196
# %op58 = icmp ne i32  %op57, 0
	ld.w $t0, $fp, -196
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -197
# br i1  %op58, label %label59, label %label61
	ld.b $t0, $fp, -197
	bnez $t0, .main_label59
	b .main_label61
.main_label59:
# %op60 = trunc i32  66 to i8 
	addi.w $t0, $zero, 66
	andi $t1, $t0, 255
	st.b $t1, $fp, -198
# call void @putch(i8  %op60)
	ld.b $a0, $fp, -198
	bl putch
# br label %label61
	b .main_label61
.main_label61:
# %op62 = icmp slt i32  1, 8
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 8
	slt $t2, $t0, $t1
	st.b $t2, $fp, -199
# %op63 = zext i1  %op62 to i32 
	ld.b $t0, $fp, -199
	st.w $t0, $fp, -204
# %op64 = srem i32  7, 2
	addi.w $t0, $zero, 7
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -208
# %op65 = icmp ne i32  %op63, %op64
	ld.w $t0, $fp, -204
	ld.w $t1, $fp, -208
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -209
# %op66 = zext i1  %op65 to i32 
	ld.b $t0, $fp, -209
	st.w $t0, $fp, -216
# %op67 = icmp ne i32  %op66, 0
	ld.w $t0, $fp, -216
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label16
	addi.d $t2, $zero, 0
	b false_label16
true_label16:
	addi.d $t2, $zero, 1
false_label16:
	st.b $t2, $fp, -217
# br i1  %op67, label %label68, label %label70
	ld.b $t0, $fp, -217
	bnez $t0, .main_label68
	b .main_label70
.main_label68:
# %op69 = trunc i32  67 to i8 
	addi.w $t0, $zero, 67
	andi $t1, $t0, 255
	st.b $t1, $fp, -218
# call void @putch(i8  %op69)
	ld.b $a0, $fp, -218
	bl putch
# br label %label70
	b .main_label70
.main_label70:
# %op71 = icmp sgt i32  3, 4
	addi.w $t0, $zero, 3
	addi.w $t1, $zero, 4
	slt $t2, $t1, $t0
	st.b $t2, $fp, -219
# %op72 = zext i1  %op71 to i32 
	ld.b $t0, $fp, -219
	st.w $t0, $fp, -224
# %op73 = icmp eq i32  %op72, 0
	ld.w $t0, $fp, -224
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label18
	addi.d $t2, $zero, 0
	b false_label18
true_label18:
	addi.d $t2, $zero, 1
false_label18:
	st.b $t2, $fp, -225
# %op74 = zext i1  %op73 to i32 
	ld.b $t0, $fp, -225
	st.w $t0, $fp, -232
# %op75 = icmp ne i32  %op74, 0
	ld.w $t0, $fp, -232
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	st.b $t2, $fp, -233
# br i1  %op75, label %label76, label %label78
	ld.b $t0, $fp, -233
	bnez $t0, .main_label76
	b .main_label78
.main_label76:
# %op77 = trunc i32  68 to i8 
	addi.w $t0, $zero, 68
	andi $t1, $t0, 255
	st.b $t1, $fp, -234
# call void @putch(i8  %op77)
	ld.b $a0, $fp, -234
	bl putch
# br label %label78
	b .main_label78
.main_label78:
# %op79 = icmp sle i32  102, 63
	addi.w $t0, $zero, 102
	addi.w $t1, $zero, 63
	bge  $t1, $t0, true_label20
	addi.d $t2, $zero, 0
	b false_label20
true_label20:
	addi.d $t2, $zero, 1
false_label20:
	st.b $t2, $fp, -235
# %op80 = zext i1  %op79 to i32 
	ld.b $t0, $fp, -235
	st.w $t0, $fp, -240
# %op81 = icmp eq i32  1, %op80
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -240
	beq  $t0, $t1, true_label21
	addi.d $t2, $zero, 0
	b false_label21
true_label21:
	addi.d $t2, $zero, 1
false_label21:
	st.b $t2, $fp, -241
# %op82 = zext i1  %op81 to i32 
	ld.b $t0, $fp, -241
	st.w $t0, $fp, -248
# %op83 = icmp ne i32  %op82, 0
	ld.w $t0, $fp, -248
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label22
	addi.d $t2, $zero, 0
	b false_label22
true_label22:
	addi.d $t2, $zero, 1
false_label22:
	st.b $t2, $fp, -249
# br i1  %op83, label %label84, label %label86
	ld.b $t0, $fp, -249
	bnez $t0, .main_label84
	b .main_label86
.main_label84:
# %op85 = trunc i32  69 to i8 
	addi.w $t0, $zero, 69
	andi $t1, $t0, 255
	st.b $t1, $fp, -250
# call void @putch(i8  %op85)
	ld.b $a0, $fp, -250
	bl putch
# br label %label86
	b .main_label86
.main_label86:
# %op87 = sub i32  5, 6
	addi.w $t0, $zero, 5
	addi.w $t1, $zero, 6
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -256
# %op88 = icmp eq i32  0, 0
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label23
	addi.d $t2, $zero, 0
	b false_label23
true_label23:
	addi.d $t2, $zero, 1
false_label23:
	st.b $t2, $fp, -257
# %op89 = zext i1  %op88 to i32 
	ld.b $t0, $fp, -257
	st.w $t0, $fp, -264
# %op90 = mul i32  %op89, -1
	ld.w $t0, $fp, -264
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -268
# %op91 = icmp eq i32  %op87, %op90
	ld.w $t0, $fp, -256
	ld.w $t1, $fp, -268
	beq  $t0, $t1, true_label24
	addi.d $t2, $zero, 0
	b false_label24
true_label24:
	addi.d $t2, $zero, 1
false_label24:
	st.b $t2, $fp, -269
# %op92 = zext i1  %op91 to i32 
	ld.b $t0, $fp, -269
	st.w $t0, $fp, -276
# %op93 = icmp ne i32  %op92, 0
	ld.w $t0, $fp, -276
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label25
	addi.d $t2, $zero, 0
	b false_label25
true_label25:
	addi.d $t2, $zero, 1
false_label25:
	st.b $t2, $fp, -277
# br i1  %op93, label %label94, label %label96
	ld.b $t0, $fp, -277
	bnez $t0, .main_label94
	b .main_label96
.main_label94:
# %op95 = trunc i32  70 to i8 
	addi.w $t0, $zero, 70
	andi $t1, $t0, 255
	st.b $t1, $fp, -278
# call void @putch(i8  %op95)
	ld.b $a0, $fp, -278
	bl putch
# br label %label96
	b .main_label96
.main_label96:
# %op97 = trunc i32  10 to i8 
	addi.w $t0, $zero, 10
	andi $t1, $t0, 255
	st.b $t1, $fp, -279
# call void @putch(i8  %op97)
	ld.b $a0, $fp, -279
	bl putch
# %op98 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3804
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -288
# store i32  0, i32 * %op98
	ld.d $t0, $fp, -288
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op99 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3788
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -304
# store i32  1, i32 * %op99
	ld.d $t0, $fp, -304
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op100 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3772
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -320
# store i32  2, i32 * %op100
	ld.d $t0, $fp, -320
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op101 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3756
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -336
# store i32  3, i32 * %op101
	ld.d $t0, $fp, -336
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op102 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3740
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -352
# store i32  4, i32 * %op102
	ld.d $t0, $fp, -352
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# br label %label103
	b .main_label103
.main_label103:
# %op104 = load i32 , i32 * %op98
	ld.d $t0, $fp, -288
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -360
# %op105 = icmp ne i32  %op104, 0
	ld.w $t0, $fp, -360
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label26
	addi.d $t2, $zero, 0
	b false_label26
true_label26:
	addi.d $t2, $zero, 1
false_label26:
	st.b $t2, $fp, -361
# br i1  %op105, label %label111, label %label108
	ld.b $t0, $fp, -361
	bnez $t0, .main_label111
	b .main_label108
.main_label106:
# %op107 = trunc i32  32 to i8 
	addi.w $t0, $zero, 32
	andi $t1, $t0, 255
	st.b $t1, $fp, -362
# call void @putch(i8  %op107)
	ld.b $a0, $fp, -362
	bl putch
# br label %label103
	b .main_label103
.main_label108:
# %op109 = load i32 , i32 * %op98
	ld.d $t0, $fp, -288
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -368
# %op110 = icmp ne i32  %op109, 0
	ld.w $t0, $fp, -368
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label27
	addi.d $t2, $zero, 0
	b false_label27
true_label27:
	addi.d $t2, $zero, 1
false_label27:
	st.b $t2, $fp, -369
# br i1  %op110, label %label114, label %label122
	ld.b $t0, $fp, -369
	bnez $t0, .main_label114
	b .main_label122
.main_label111:
# %op112 = load i32 , i32 * %op99
	ld.d $t0, $fp, -304
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -376
# %op113 = icmp ne i32  %op112, 0
	ld.w $t0, $fp, -376
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label28
	addi.d $t2, $zero, 0
	b false_label28
true_label28:
	addi.d $t2, $zero, 1
false_label28:
	st.b $t2, $fp, -377
# br i1  %op113, label %label106, label %label108
	ld.b $t0, $fp, -377
	bnez $t0, .main_label106
	b .main_label108
.main_label114:
# %op115 = trunc i32  67 to i8 
	addi.w $t0, $zero, 67
	andi $t1, $t0, 255
	st.b $t1, $fp, -378
# call void @putch(i8  %op115)
	ld.b $a0, $fp, -378
	bl putch
# br label %label116
	b .main_label116
.main_label116:
# %op117 = load i32 , i32 * %op98
	ld.d $t0, $fp, -288
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -384
# %op118 = load i32 , i32 * %op99
	ld.d $t0, $fp, -304
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -388
# %op119 = icmp sge i32  %op117, %op118
	ld.w $t0, $fp, -384
	ld.w $t1, $fp, -388
	bge  $t0, $t1, true_label29
	addi.d $t2, $zero, 0
	b false_label29
true_label29:
	addi.d $t2, $zero, 1
false_label29:
	st.b $t2, $fp, -389
# %op120 = zext i1  %op119 to i32 
	ld.b $t0, $fp, -389
	st.w $t0, $fp, -396
# %op121 = icmp ne i32  %op120, 0
	ld.w $t0, $fp, -396
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label30
	addi.d $t2, $zero, 0
	b false_label30
true_label30:
	addi.d $t2, $zero, 1
false_label30:
	st.b $t2, $fp, -397
# br i1  %op121, label %label125, label %label133
	ld.b $t0, $fp, -397
	bnez $t0, .main_label125
	b .main_label133
.main_label122:
# %op123 = load i32 , i32 * %op99
	ld.d $t0, $fp, -304
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -404
# %op124 = icmp ne i32  %op123, 0
	ld.w $t0, $fp, -404
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label31
	addi.d $t2, $zero, 0
	b false_label31
true_label31:
	addi.d $t2, $zero, 1
false_label31:
	st.b $t2, $fp, -405
# br i1  %op124, label %label114, label %label116
	ld.b $t0, $fp, -405
	bnez $t0, .main_label114
	b .main_label116
.main_label125:
# %op126 = trunc i32  72 to i8 
	addi.w $t0, $zero, 72
	andi $t1, $t0, 255
	st.b $t1, $fp, -406
# call void @putch(i8  %op126)
	ld.b $a0, $fp, -406
	bl putch
# br label %label127
	b .main_label127
.main_label127:
# %op128 = load i32 , i32 * %op100
	ld.d $t0, $fp, -320
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -412
# %op129 = load i32 , i32 * %op99
	ld.d $t0, $fp, -304
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -416
# %op130 = icmp sge i32  %op128, %op129
	ld.w $t0, $fp, -412
	ld.w $t1, $fp, -416
	bge  $t0, $t1, true_label32
	addi.d $t2, $zero, 0
	b false_label32
true_label32:
	addi.d $t2, $zero, 1
false_label32:
	st.b $t2, $fp, -417
# %op131 = zext i1  %op130 to i32 
	ld.b $t0, $fp, -417
	st.w $t0, $fp, -424
# %op132 = icmp ne i32  %op131, 0
	ld.w $t0, $fp, -424
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label33
	addi.d $t2, $zero, 0
	b false_label33
true_label33:
	addi.d $t2, $zero, 1
false_label33:
	st.b $t2, $fp, -425
# br i1  %op132, label %label149, label %label141
	ld.b $t0, $fp, -425
	bnez $t0, .main_label149
	b .main_label141
.main_label133:
# %op134 = load i32 , i32 * %op99
	ld.d $t0, $fp, -304
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -432
# %op135 = load i32 , i32 * %op98
	ld.d $t0, $fp, -288
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -436
# %op136 = icmp sle i32  %op134, %op135
	ld.w $t0, $fp, -432
	ld.w $t1, $fp, -436
	bge  $t1, $t0, true_label34
	addi.d $t2, $zero, 0
	b false_label34
true_label34:
	addi.d $t2, $zero, 1
false_label34:
	st.b $t2, $fp, -437
# %op137 = zext i1  %op136 to i32 
	ld.b $t0, $fp, -437
	st.w $t0, $fp, -444
# %op138 = icmp ne i32  %op137, 0
	ld.w $t0, $fp, -444
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label35
	addi.d $t2, $zero, 0
	b false_label35
true_label35:
	addi.d $t2, $zero, 1
false_label35:
	st.b $t2, $fp, -445
# br i1  %op138, label %label125, label %label127
	ld.b $t0, $fp, -445
	bnez $t0, .main_label125
	b .main_label127
.main_label139:
# %op140 = trunc i32  73 to i8 
	addi.w $t0, $zero, 73
	andi $t1, $t0, 255
	st.b $t1, $fp, -446
# call void @putch(i8  %op140)
	ld.b $a0, $fp, -446
	bl putch
# br label %label141
	b .main_label141
.main_label141:
# %op142 = load i32 , i32 * %op98
	ld.d $t0, $fp, -288
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -452
# %op143 = load i32 , i32 * %op99
	ld.d $t0, $fp, -304
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -456
# %op144 = icmp eq i32  %op143, 0
	ld.w $t0, $fp, -456
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label36
	addi.d $t2, $zero, 0
	b false_label36
true_label36:
	addi.d $t2, $zero, 1
false_label36:
	st.b $t2, $fp, -457
# %op145 = zext i1  %op144 to i32 
	ld.b $t0, $fp, -457
	st.w $t0, $fp, -464
# %op146 = icmp eq i32  %op142, %op145
	ld.w $t0, $fp, -452
	ld.w $t1, $fp, -464
	beq  $t0, $t1, true_label37
	addi.d $t2, $zero, 0
	b false_label37
true_label37:
	addi.d $t2, $zero, 1
false_label37:
	st.b $t2, $fp, -465
# %op147 = zext i1  %op146 to i32 
	ld.b $t0, $fp, -465
	st.w $t0, $fp, -472
# %op148 = icmp ne i32  %op147, 0
	ld.w $t0, $fp, -472
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label38
	addi.d $t2, $zero, 0
	b false_label38
true_label38:
	addi.d $t2, $zero, 1
false_label38:
	st.b $t2, $fp, -473
# br i1  %op148, label %label171, label %label165
	ld.b $t0, $fp, -473
	bnez $t0, .main_label171
	b .main_label165
.main_label149:
# %op150 = load i32 , i32 * %op102
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -480
# %op151 = load i32 , i32 * %op101
	ld.d $t0, $fp, -336
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -484
# %op152 = icmp ne i32  %op150, %op151
	ld.w $t0, $fp, -480
	ld.w $t1, $fp, -484
	bne  $t0, $t1, true_label39
	addi.d $t2, $zero, 0
	b false_label39
true_label39:
	addi.d $t2, $zero, 1
false_label39:
	st.b $t2, $fp, -485
# %op153 = zext i1  %op152 to i32 
	ld.b $t0, $fp, -485
	st.w $t0, $fp, -492
# %op154 = icmp ne i32  %op153, 0
	ld.w $t0, $fp, -492
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label40
	addi.d $t2, $zero, 0
	b false_label40
true_label40:
	addi.d $t2, $zero, 1
false_label40:
	st.b $t2, $fp, -493
# br i1  %op154, label %label139, label %label141
	ld.b $t0, $fp, -493
	bnez $t0, .main_label139
	b .main_label141
.main_label155:
# %op156 = trunc i32  74 to i8 
	addi.w $t0, $zero, 74
	andi $t1, $t0, 255
	st.b $t1, $fp, -494
# call void @putch(i8  %op156)
	ld.b $a0, $fp, -494
	bl putch
# br label %label157
	b .main_label157
.main_label157:
# %op158 = load i32 , i32 * %op98
	ld.d $t0, $fp, -288
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -500
# %op159 = load i32 , i32 * %op99
	ld.d $t0, $fp, -304
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -504
# %op160 = icmp eq i32  %op159, 0
	ld.w $t0, $fp, -504
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label41
	addi.d $t2, $zero, 0
	b false_label41
true_label41:
	addi.d $t2, $zero, 1
false_label41:
	st.b $t2, $fp, -505
# %op161 = zext i1  %op160 to i32 
	ld.b $t0, $fp, -505
	st.w $t0, $fp, -512
# %op162 = icmp eq i32  %op158, %op161
	ld.w $t0, $fp, -500
	ld.w $t1, $fp, -512
	beq  $t0, $t1, true_label42
	addi.d $t2, $zero, 0
	b false_label42
true_label42:
	addi.d $t2, $zero, 1
false_label42:
	st.b $t2, $fp, -513
# %op163 = zext i1  %op162 to i32 
	ld.b $t0, $fp, -513
	st.w $t0, $fp, -520
# %op164 = icmp ne i32  %op163, 0
	ld.w $t0, $fp, -520
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label43
	addi.d $t2, $zero, 0
	b false_label43
true_label43:
	addi.d $t2, $zero, 1
false_label43:
	st.b $t2, $fp, -521
# br i1  %op164, label %label177, label %label181
	ld.b $t0, $fp, -521
	bnez $t0, .main_label177
	b .main_label181
.main_label165:
# %op166 = load i32 , i32 * %op102
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -528
# %op167 = load i32 , i32 * %op102
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -532
# %op168 = icmp sge i32  %op166, %op167
	ld.w $t0, $fp, -528
	ld.w $t1, $fp, -532
	bge  $t0, $t1, true_label44
	addi.d $t2, $zero, 0
	b false_label44
true_label44:
	addi.d $t2, $zero, 1
false_label44:
	st.b $t2, $fp, -533
# %op169 = zext i1  %op168 to i32 
	ld.b $t0, $fp, -533
	st.w $t0, $fp, -540
# %op170 = icmp ne i32  %op169, 0
	ld.w $t0, $fp, -540
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label45
	addi.d $t2, $zero, 0
	b false_label45
true_label45:
	addi.d $t2, $zero, 1
false_label45:
	st.b $t2, $fp, -541
# br i1  %op170, label %label155, label %label157
	ld.b $t0, $fp, -541
	bnez $t0, .main_label155
	b .main_label157
.main_label171:
# %op172 = load i32 , i32 * %op101
	ld.d $t0, $fp, -336
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -548
# %op173 = load i32 , i32 * %op101
	ld.d $t0, $fp, -336
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -552
# %op174 = icmp slt i32  %op172, %op173
	ld.w $t0, $fp, -548
	ld.w $t1, $fp, -552
	slt $t2, $t0, $t1
	st.b $t2, $fp, -553
# %op175 = zext i1  %op174 to i32 
	ld.b $t0, $fp, -553
	st.w $t0, $fp, -560
# %op176 = icmp ne i32  %op175, 0
	ld.w $t0, $fp, -560
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label47
	addi.d $t2, $zero, 0
	b false_label47
true_label47:
	addi.d $t2, $zero, 1
false_label47:
	st.b $t2, $fp, -561
# br i1  %op176, label %label155, label %label165
	ld.b $t0, $fp, -561
	bnez $t0, .main_label155
	b .main_label165
.main_label177:
# %op178 = trunc i32  75 to i8 
	addi.w $t0, $zero, 75
	andi $t1, $t0, 255
	st.b $t1, $fp, -562
# call void @putch(i8  %op178)
	ld.b $a0, $fp, -562
	bl putch
# br label %label179
	b .main_label179
.main_label179:
# %op180 = trunc i32  10 to i8 
	addi.w $t0, $zero, 10
	andi $t1, $t0, 255
	st.b $t1, $fp, -563
# call void @putch(i8  %op180)
	ld.b $a0, $fp, -563
	bl putch
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
.main_label181:
# %op182 = load i32 , i32 * %op101
	ld.d $t0, $fp, -336
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -568
# %op183 = load i32 , i32 * %op101
	ld.d $t0, $fp, -336
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -572
# %op184 = icmp slt i32  %op182, %op183
	ld.w $t0, $fp, -568
	ld.w $t1, $fp, -572
	slt $t2, $t0, $t1
	st.b $t2, $fp, -573
# %op185 = zext i1  %op184 to i32 
	ld.b $t0, $fp, -573
	st.w $t0, $fp, -580
# %op186 = icmp ne i32  %op185, 0
	ld.w $t0, $fp, -580
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label49
	addi.d $t2, $zero, 0
	b false_label49
true_label49:
	addi.d $t2, $zero, 1
false_label49:
	st.b $t2, $fp, -581
# br i1  %op186, label %label187, label %label179
	ld.b $t0, $fp, -581
	bnez $t0, .main_label187
	b .main_label179
.main_label187:
# %op188 = load i32 , i32 * %op102
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -588
# %op189 = load i32 , i32 * %op102
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -592
# %op190 = icmp sge i32  %op188, %op189
	ld.w $t0, $fp, -588
	ld.w $t1, $fp, -592
	bge  $t0, $t1, true_label50
	addi.d $t2, $zero, 0
	b false_label50
true_label50:
	addi.d $t2, $zero, 1
false_label50:
	st.b $t2, $fp, -593
# %op191 = zext i1  %op190 to i32 
	ld.b $t0, $fp, -593
	st.w $t0, $fp, -600
# %op192 = icmp ne i32  %op191, 0
	ld.w $t0, $fp, -600
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label51
	addi.d $t2, $zero, 0
	b false_label51
true_label51:
	addi.d $t2, $zero, 1
false_label51:
	st.b $t2, $fp, -601
# br i1  %op192, label %label177, label %label179
	ld.b $t0, $fp, -601
	bnez $t0, .main_label177
	b .main_label179
main_ret:
	addi.d $sp, $sp, 608
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

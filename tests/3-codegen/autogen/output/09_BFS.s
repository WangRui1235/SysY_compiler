# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl n
	.type n, @object
	.size n, 4
n:
	.space 4
	.globl m
	.type m, @object
	.size m, 4
m:
	.space 4
	.globl maxn
	.data
	.type maxn, @object
	.size maxn, 4
maxn:
	.word 1005
	.space 4
	.globl maxm
	.data
	.type maxm, @object
	.size maxm, 4
maxm:
	.word 5005
	.space 4
	.globl to
	.type to, @object
	.size to, 20020
to:
	.space 20020
	.globl next
	.type next, @object
	.size next, 20020
next:
	.space 20020
	.globl head
	.type head, @object
	.size head, 4020
head:
	.space 4020
	.globl cnt
	.data
	.type cnt, @object
	.size cnt, 4
cnt:
	.word 0
	.space 4
	.globl que
	.type que, @object
	.size que, 4020
que:
	.space 4020
	.globl h
	.type h, @object
	.size h, 4
h:
	.space 4
	.globl tail
	.type tail, @object
	.size tail, 4
tail:
	.space 4
	.globl inq
	.type inq, @object
	.size inq, 4020
inq:
	.space 4020
	.text
	.globl quick_read
	.type quick_read, @function
quick_read:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -208
.quick_read_label_entry:
# %op0 = call i8  @getch()
	bl getch
	st.b $a0, $fp, -17
# %op1 = alloca i8 
	lu12i.w $t0, -1
	ori $t0, $t0, 4063
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -32
# store i8  %op0, i8 * %op1
	ld.d $t0, $fp, -32
# %op2 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -48
# store i32  0, i32 * %op2
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op3 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -64
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label4
	b .quick_read_label4
.quick_read_label4:
# %op5 = load i8 , i8 * %op1
	ld.d $t0, $fp, -32
	ld.b $t1, $t0, 0
	st.b $t1, $fp, -69
# %op6 = zext i8  %op5 to i32 
	ld.b $t0, $fp, -69
	st.w $t0, $fp, -76
# %op7 = icmp slt i32  %op6, 48
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 48
	slt $t2, $t0, $t1
	st.b $t2, $fp, -77
# %op8 = zext i1  %op7 to i32 
	ld.b $t0, $fp, -77
	st.w $t0, $fp, -84
# %op9 = icmp ne i32  %op8, 0
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -85
# br i1  %op9, label %label10, label %label17
	ld.b $t0, $fp, -85
	bnez $t0, .quick_read_label10
	b .quick_read_label17
.quick_read_label10:
# %op11 = load i8 , i8 * %op1
	ld.d $t0, $fp, -32
	ld.b $t1, $t0, 0
	st.b $t1, $fp, -86
# %op12 = zext i8  %op11 to i32 
	ld.b $t0, $fp, -86
	st.w $t0, $fp, -92
# %op13 = icmp eq i32  %op12, 45
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 45
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -93
# %op14 = zext i1  %op13 to i32 
	ld.b $t0, $fp, -93
	st.w $t0, $fp, -100
# %op15 = icmp ne i32  %op14, 0
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -101
# br i1  %op15, label %label23, label %label24
	ld.b $t0, $fp, -101
	bnez $t0, .quick_read_label23
	b .quick_read_label24
.quick_read_label16:
# br label %label26
	b .quick_read_label26
.quick_read_label17:
# %op18 = load i8 , i8 * %op1
	ld.d $t0, $fp, -32
	ld.b $t1, $t0, 0
	st.b $t1, $fp, -102
# %op19 = zext i8  %op18 to i32 
	ld.b $t0, $fp, -102
	st.w $t0, $fp, -108
# %op20 = icmp sgt i32  %op19, 57
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 57
	slt $t2, $t1, $t0
	st.b $t2, $fp, -109
# %op21 = zext i1  %op20 to i32 
	ld.b $t0, $fp, -109
	st.w $t0, $fp, -116
# %op22 = icmp ne i32  %op21, 0
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -117
# br i1  %op22, label %label10, label %label16
	ld.b $t0, $fp, -117
	bnez $t0, .quick_read_label10
	b .quick_read_label16
.quick_read_label23:
# store i32  1, i32 * %op3
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label24
	b .quick_read_label24
.quick_read_label24:
# %op25 = call i8  @getch()
	bl getch
	st.b $a0, $fp, -118
# store i8  %op25, i8 * %op1
	ld.d $t0, $fp, -32
# br label %label4
	b .quick_read_label4
.quick_read_label26:
# %op27 = load i8 , i8 * %op1
	ld.d $t0, $fp, -32
	ld.b $t1, $t0, 0
	st.b $t1, $fp, -119
# %op28 = zext i8  %op27 to i32 
	ld.b $t0, $fp, -119
	st.w $t0, $fp, -124
# %op29 = icmp sge i32  %op28, 48
	ld.w $t0, $fp, -124
	addi.w $t1, $zero, 48
	bge  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -125
# %op30 = zext i1  %op29 to i32 
	ld.b $t0, $fp, -125
	st.w $t0, $fp, -132
# %op31 = icmp ne i32  %op30, 0
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -133
# br i1  %op31, label %label43, label %label40
	ld.b $t0, $fp, -133
	bnez $t0, .quick_read_label43
	b .quick_read_label40
.quick_read_label32:
# %op33 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op34 = mul i32  %op33, 10
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, 10
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -144
# %op35 = load i8 , i8 * %op1
	ld.d $t0, $fp, -32
	ld.b $t1, $t0, 0
	st.b $t1, $fp, -145
# %op36 = zext i8  %op35 to i32 
	ld.b $t0, $fp, -145
	st.w $t0, $fp, -152
# %op37 = add i32  %op34, %op36
	ld.w $t0, $fp, -144
	ld.w $t1, $fp, -152
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# %op38 = sub i32  %op37, 48
	ld.w $t0, $fp, -156
	addi.w $t1, $zero, 48
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -160
# store i32  %op38, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -160
	st.w $t1, $t0, 0
# %op39 = call i8  @getch()
	bl getch
	st.b $a0, $fp, -161
# store i8  %op39, i8 * %op1
	ld.d $t0, $fp, -32
# br label %label26
	b .quick_read_label26
.quick_read_label40:
# %op41 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op42 = icmp ne i32  %op41, 0
	ld.w $t0, $fp, -168
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -169
# br i1  %op42, label %label49, label %label52
	ld.b $t0, $fp, -169
	bnez $t0, .quick_read_label49
	b .quick_read_label52
.quick_read_label43:
# %op44 = load i8 , i8 * %op1
	ld.d $t0, $fp, -32
	ld.b $t1, $t0, 0
	st.b $t1, $fp, -170
# %op45 = zext i8  %op44 to i32 
	ld.b $t0, $fp, -170
	st.w $t0, $fp, -176
# %op46 = icmp sle i32  %op45, 57
	ld.w $t0, $fp, -176
	addi.w $t1, $zero, 57
	bge  $t1, $t0, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -177
# %op47 = zext i1  %op46 to i32 
	ld.b $t0, $fp, -177
	st.w $t0, $fp, -184
# %op48 = icmp ne i32  %op47, 0
	ld.w $t0, $fp, -184
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -185
# br i1  %op48, label %label32, label %label40
	ld.b $t0, $fp, -185
	bnez $t0, .quick_read_label32
	b .quick_read_label40
.quick_read_label49:
# %op50 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -192
# %op51 = mul i32  %op50, -1
	ld.w $t0, $fp, -192
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -196
# ret i32  %op51
	ld.w $a0, $fp, -196
	b quick_read_ret
.quick_read_label52:
# %op53 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -200
# ret i32  %op53
	ld.w $a0, $fp, -200
	b quick_read_ret
quick_read_ret:
	addi.d $sp, $sp, 208
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl add_edge
	.type add_edge, @function
add_edge:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -240
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.add_edge_label_entry:
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
# %op4 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op5 = load i32 , i32 * @cnt
	la.local $t0, cnt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op6 = load i32 , i32 * @cnt
	la.local $t0, cnt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op7 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32  0, i32  %op5
	addi.d $t0, $zero, 0
	lu12i.w $t1, 4
	ori $t1, $t1, 3636
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
	lu12i.w $t1, 4
	ori $t1, $t1, 3636
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -60
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, to
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -72
# store i32  %op4, i32 * %op7
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -56
	st.w $t1, $t0, 0
# %op8 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op9 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op10 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32  0, i32  %op8
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4020
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
	ori $t1, $t1, 4020
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -76
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, head
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -88
# %op11 = load i32 , i32 * %op10
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op12 = load i32 , i32 * @cnt
	la.local $t0, cnt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op13 = load i32 , i32 * @cnt
	la.local $t0, cnt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op14 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32  0, i32  %op12
	addi.d $t0, $zero, 0
	lu12i.w $t1, 4
	ori $t1, $t1, 3636
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
	lu12i.w $t1, 4
	ori $t1, $t1, 3636
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -96
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, next
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -112
# store i32  %op11, i32 * %op14
	ld.d $t0, $fp, -112
	ld.w $t1, $fp, -92
	st.w $t1, $t0, 0
# %op15 = load i32 , i32 * @cnt
	la.local $t0, cnt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op16 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -120
# %op17 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op18 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32  0, i32  %op16
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4020
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
	ori $t1, $t1, 4020
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -120
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, head
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -136
# store i32  %op15, i32 * %op18
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -116
	st.w $t1, $t0, 0
# %op19 = load i32 , i32 * @cnt
	la.local $t0, cnt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op20 = add i32  %op19, 1
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -144
# store i32  %op20, i32 * @cnt
	la.local $t0, cnt
	ld.w $t1, $fp, -144
	st.w $t1, $t0, 0
# %op21 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op22 = load i32 , i32 * @cnt
	la.local $t0, cnt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op23 = load i32 , i32 * @cnt
	la.local $t0, cnt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op24 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32  0, i32  %op22
	addi.d $t0, $zero, 0
	lu12i.w $t1, 4
	ori $t1, $t1, 3636
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
	lu12i.w $t1, 4
	ori $t1, $t1, 3636
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -152
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, to
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -168
# store i32  %op21, i32 * %op24
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -148
	st.w $t1, $t0, 0
# %op25 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op26 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op27 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32  0, i32  %op25
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4020
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
	ori $t1, $t1, 4020
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -172
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, head
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -184
# %op28 = load i32 , i32 * %op27
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op29 = load i32 , i32 * @cnt
	la.local $t0, cnt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -192
# %op30 = load i32 , i32 * @cnt
	la.local $t0, cnt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op31 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32  0, i32  %op29
	addi.d $t0, $zero, 0
	lu12i.w $t1, 4
	ori $t1, $t1, 3636
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
	lu12i.w $t1, 4
	ori $t1, $t1, 3636
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -192
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, next
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -208
# store i32  %op28, i32 * %op31
	ld.d $t0, $fp, -208
	ld.w $t1, $fp, -188
	st.w $t1, $t0, 0
# %op32 = load i32 , i32 * @cnt
	la.local $t0, cnt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op33 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -216
# %op34 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# %op35 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32  0, i32  %op33
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4020
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
	ori $t1, $t1, 4020
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -216
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, head
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -232
# store i32  %op32, i32 * %op35
	ld.d $t0, $fp, -232
	ld.w $t1, $fp, -212
	st.w $t1, $t0, 0
# %op36 = load i32 , i32 * @cnt
	la.local $t0, cnt
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# %op37 = add i32  %op36, 1
	ld.w $t0, $fp, -236
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -240
# store i32  %op37, i32 * @cnt
	la.local $t0, cnt
	ld.w $t1, $fp, -240
	st.w $t1, $t0, 0
# ret void
	addi.d $a0, $zero, 0
	b add_edge_ret
add_edge_ret:
	addi.d $sp, $sp, 240
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl init
	.type init, @function
init:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -80
.init_label_entry:
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
# br label %label1
	b .init_label1
.init_label1:
# %op2 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -32
# %op3 = load i32 , i32 * @maxn
	la.local $t0, maxn
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -36
# %op4 = icmp slt i32  %op2, %op3
	ld.w $t0, $fp, -32
	ld.w $t1, $fp, -36
	slt $t2, $t0, $t1
	st.b $t2, $fp, -37
# %op5 = zext i1  %op4 to i32 
	ld.b $t0, $fp, -37
	st.w $t0, $fp, -44
# %op6 = icmp ne i32  %op5, 0
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -45
# br i1  %op6, label %label7, label %label14
	ld.b $t0, $fp, -45
	bnez $t0, .init_label7
	b .init_label14
.init_label7:
# %op8 = mul i32  1, -1
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -52
# %op9 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op10 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op11 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32  0, i32  %op9
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4020
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
	ori $t1, $t1, 4020
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -56
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, head
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -72
# store i32  %op8, i32 * %op11
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -52
	st.w $t1, $t0, 0
# %op12 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op13 = add i32  %op12, 1
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# store i32  %op13, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -80
	st.w $t1, $t0, 0
# br label %label1
	b .init_label1
.init_label14:
# ret void
	addi.d $a0, $zero, 0
	b init_ret
init_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl inqueue
	.type inqueue, @function
inqueue:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -96
	st.w $a0, $fp, -20
.inqueue_label_entry:
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
# %op3 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# %op4 = getelementptr [1005 x i32 ], [1005 x i32 ]* @inq, i32  0, i32  %op2
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4020
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
	ori $t1, $t1, 4020
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -40
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, inq
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -56
# store i32  1, i32 * %op4
	ld.d $t0, $fp, -56
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op5 = load i32 , i32 * @tail
	la.local $t0, tail
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op6 = add i32  %op5, 1
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -64
# store i32  %op6, i32 * @tail
	la.local $t0, tail
	ld.w $t1, $fp, -64
	st.w $t1, $t0, 0
# %op7 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op8 = load i32 , i32 * @tail
	la.local $t0, tail
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op9 = load i32 , i32 * @tail
	la.local $t0, tail
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op10 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32  0, i32  %op8
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4020
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
	ori $t1, $t1, 4020
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -72
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, que
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -88
# store i32  %op7, i32 * %op10
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -68
	st.w $t1, $t0, 0
# ret void
	addi.d $a0, $zero, 0
	b inqueue_ret
inqueue_ret:
	addi.d $sp, $sp, 96
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl pop_queue
	.type pop_queue, @function
pop_queue:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -96
.pop_queue_label_entry:
# %op0 = load i32 , i32 * @h
	la.local $t0, h
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -20
# %op1 = add i32  %op0, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -24
# store i32  %op1, i32 * @h
	la.local $t0, h
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * @h
	la.local $t0, h
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -28
# %op3 = load i32 , i32 * @h
	la.local $t0, h
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -32
# %op4 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32  0, i32  %op2
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4020
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
	ori $t1, $t1, 4020
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -28
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, que
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -40
# %op5 = load i32 , i32 * %op4
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# %op6 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -56
# store i32  %op5, i32 * %op6
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -44
	st.w $t1, $t0, 0
# %op7 = load i32 , i32 * @h
	la.local $t0, h
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op8 = load i32 , i32 * @h
	la.local $t0, h
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op9 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32  0, i32  %op7
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4020
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
	ori $t1, $t1, 4020
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -64
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, que
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -80
# %op10 = load i32 , i32 * %op9
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# ret i32  %op10
	ld.w $a0, $fp, -84
	b pop_queue_ret
pop_queue_ret:
	addi.d $sp, $sp, 96
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl same
	.type same, @function
same:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -400
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.same_label_entry:
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
# store i32  0, i32 * @h
	la.local $t0, h
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * @tail
	la.local $t0, tail
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op4 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# call void @inqueue(i32  %op4)
	ld.w $a0, $fp, -56
	bl inqueue
# %op5 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -64
# store i32  0, i32 * %op5
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label6
	b .same_label6
.same_label6:
# %op7 = load i32 , i32 * @h
	la.local $t0, h
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op8 = load i32 , i32 * @tail
	la.local $t0, tail
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op9 = icmp slt i32  %op7, %op8
	ld.w $t0, $fp, -72
	ld.w $t1, $fp, -76
	slt $t2, $t0, $t1
	st.b $t2, $fp, -77
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -77
	st.w $t0, $fp, -84
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label14
	addi.d $t2, $zero, 0
	b false_label14
true_label14:
	addi.d $t2, $zero, 1
false_label14:
	st.b $t2, $fp, -85
# br i1  %op11, label %label12, label %label20
	ld.b $t0, $fp, -85
	bnez $t0, .same_label12
	b .same_label20
.same_label12:
# %op13 = call i32  @pop_queue()
	bl pop_queue
	st.w $a0, $fp, -92
# %op14 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -104
# store i32  %op13, i32 * %op14
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -92
	st.w $t1, $t0, 0
# %op15 = load i32 , i32 * %op14
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op16 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op17 = icmp eq i32  %op15, %op16
	ld.w $t0, $fp, -112
	ld.w $t1, $fp, -116
	beq  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -117
# %op18 = zext i1  %op17 to i32 
	ld.b $t0, $fp, -117
	st.w $t0, $fp, -124
# %op19 = icmp ne i32  %op18, 0
	ld.w $t0, $fp, -124
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label16
	addi.d $t2, $zero, 0
	b false_label16
true_label16:
	addi.d $t2, $zero, 1
false_label16:
	st.b $t2, $fp, -125
# br i1  %op19, label %label22, label %label23
	ld.b $t0, $fp, -125
	bnez $t0, .same_label22
	b .same_label23
.same_label20:
# %op21 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -136
# store i32  0, i32 * %op21
	ld.d $t0, $fp, -136
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label58
	b .same_label58
.same_label22:
# store i32  1, i32 * %op5
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label23
	b .same_label23
.same_label23:
# %op24 = load i32 , i32 * %op14
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op25 = load i32 , i32 * %op14
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op26 = getelementptr [1005 x i32 ], [1005 x i32 ]* @head, i32  0, i32  %op24
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4020
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
	ori $t1, $t1, 4020
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -144
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, head
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -160
# %op27 = load i32 , i32 * %op26
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op28 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3916
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -176
# store i32  %op27, i32 * %op28
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -164
	st.w $t1, $t0, 0
# br label %label29
	b .same_label29
.same_label29:
# %op30 = load i32 , i32 * %op28
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -184
# %op31 = mul i32  1, -1
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, -1
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -188
# %op32 = icmp ne i32  %op30, %op31
	ld.w $t0, $fp, -184
	ld.w $t1, $fp, -188
	bne  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	st.b $t2, $fp, -189
# %op33 = zext i1  %op32 to i32 
	ld.b $t0, $fp, -189
	st.w $t0, $fp, -196
# %op34 = icmp ne i32  %op33, 0
	ld.w $t0, $fp, -196
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label18
	addi.d $t2, $zero, 0
	b false_label18
true_label18:
	addi.d $t2, $zero, 1
false_label18:
	st.b $t2, $fp, -197
# br i1  %op34, label %label35, label %label47
	ld.b $t0, $fp, -197
	bnez $t0, .same_label35
	b .same_label47
.same_label35:
# %op36 = load i32 , i32 * %op28
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op37 = load i32 , i32 * %op28
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -208
# %op38 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32  0, i32  %op36
	addi.d $t0, $zero, 0
	lu12i.w $t1, 4
	ori $t1, $t1, 3636
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
	lu12i.w $t1, 4
	ori $t1, $t1, 3636
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -204
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, to
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -216
# %op39 = load i32 , i32 * %op38
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# %op40 = load i32 , i32 * %op28
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -224
# %op41 = load i32 , i32 * %op28
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op42 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32  0, i32  %op40
	addi.d $t0, $zero, 0
	lu12i.w $t1, 4
	ori $t1, $t1, 3636
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
	lu12i.w $t1, 4
	ori $t1, $t1, 3636
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -224
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, to
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -240
# %op43 = load i32 , i32 * %op42
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op44 = getelementptr [1005 x i32 ], [1005 x i32 ]* @inq, i32  0, i32  %op39
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4020
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
	ori $t1, $t1, 4020
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -220
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, inq
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -256
# %op45 = load i32 , i32 * %op44
	ld.d $t0, $fp, -256
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# %op46 = icmp eq i32  %op45, 0
	ld.w $t0, $fp, -260
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	st.b $t2, $fp, -261
# br i1  %op46, label %label48, label %label53
	ld.b $t0, $fp, -261
	bnez $t0, .same_label48
	b .same_label53
.same_label47:
# br label %label6
	b .same_label6
.same_label48:
# %op49 = load i32 , i32 * %op28
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# %op50 = load i32 , i32 * %op28
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -272
# %op51 = getelementptr [5005 x i32 ], [5005 x i32 ]* @to, i32  0, i32  %op49
	addi.d $t0, $zero, 0
	lu12i.w $t1, 4
	ori $t1, $t1, 3636
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
	lu12i.w $t1, 4
	ori $t1, $t1, 3636
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -268
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, to
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -280
# %op52 = load i32 , i32 * %op51
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# call void @inqueue(i32  %op52)
	ld.w $a0, $fp, -284
	bl inqueue
# br label %label53
	b .same_label53
.same_label53:
# %op54 = load i32 , i32 * %op28
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -288
# %op55 = load i32 , i32 * %op28
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# %op56 = getelementptr [5005 x i32 ], [5005 x i32 ]* @next, i32  0, i32  %op54
	addi.d $t0, $zero, 0
	lu12i.w $t1, 4
	ori $t1, $t1, 3636
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
	lu12i.w $t1, 4
	ori $t1, $t1, 3636
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -288
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, next
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -304
# %op57 = load i32 , i32 * %op56
	ld.d $t0, $fp, -304
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# store i32  %op57, i32 * %op28
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -308
	st.w $t1, $t0, 0
# br label %label29
	b .same_label29
.same_label58:
# %op59 = load i32 , i32 * %op21
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -312
# %op60 = load i32 , i32 * @tail
	la.local $t0, tail
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op61 = icmp sle i32  %op59, %op60
	ld.w $t0, $fp, -312
	ld.w $t1, $fp, -316
	bge  $t1, $t0, true_label20
	addi.d $t2, $zero, 0
	b false_label20
true_label20:
	addi.d $t2, $zero, 1
false_label20:
	st.b $t2, $fp, -317
# %op62 = zext i1  %op61 to i32 
	ld.b $t0, $fp, -317
	st.w $t0, $fp, -324
# %op63 = icmp ne i32  %op62, 0
	ld.w $t0, $fp, -324
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label21
	addi.d $t2, $zero, 0
	b false_label21
true_label21:
	addi.d $t2, $zero, 1
false_label21:
	st.b $t2, $fp, -325
# br i1  %op63, label %label64, label %label76
	ld.b $t0, $fp, -325
	bnez $t0, .same_label64
	b .same_label76
.same_label64:
# %op65 = load i32 , i32 * %op21
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op66 = load i32 , i32 * %op21
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -336
# %op67 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32  0, i32  %op65
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4020
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
	ori $t1, $t1, 4020
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -332
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, que
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -344
# %op68 = load i32 , i32 * %op67
	ld.d $t0, $fp, -344
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op69 = load i32 , i32 * %op21
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -352
# %op70 = load i32 , i32 * %op21
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op71 = getelementptr [1005 x i32 ], [1005 x i32 ]* @que, i32  0, i32  %op69
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4020
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
	ori $t1, $t1, 4020
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -352
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, que
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -368
# %op72 = load i32 , i32 * %op71
	ld.d $t0, $fp, -368
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -372
# %op73 = getelementptr [1005 x i32 ], [1005 x i32 ]* @inq, i32  0, i32  %op68
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 4020
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
	ori $t1, $t1, 4020
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -348
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, inq
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -384
# store i32  0, i32 * %op73
	ld.d $t0, $fp, -384
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op74 = load i32 , i32 * %op21
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -388
# %op75 = add i32  %op74, 1
	ld.w $t0, $fp, -388
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -392
# store i32  %op75, i32 * %op21
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -392
	st.w $t1, $t0, 0
# br label %label58
	b .same_label58
.same_label76:
# %op77 = load i32 , i32 * %op5
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -396
# ret i32  %op77
	ld.w $a0, $fp, -396
	b same_ret
same_ret:
	addi.d $sp, $sp, 400
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -192
.main_label_entry:
# %op0 = call i32  @quick_read()
	bl quick_read
	st.w $a0, $fp, -20
# store i32  %op0, i32 * @n
	la.local $t0, n
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op1 = call i32  @quick_read()
	bl quick_read
	st.w $a0, $fp, -24
# store i32  %op1, i32 * @m
	la.local $t0, m
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# call void @init()
	bl init
# br label %label2
	b .main_label2
.main_label2:
# %op3 = load i32 , i32 * @m
	la.local $t0, m
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -28
# %op4 = icmp ne i32  %op3, 0
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label22
	addi.d $t2, $zero, 0
	b false_label22
true_label22:
	addi.d $t2, $zero, 1
false_label22:
	st.b $t2, $fp, -29
# br i1  %op4, label %label5, label %label8
	ld.b $t0, $fp, -29
	bnez $t0, .main_label5
	b .main_label8
.main_label5:
# %op6 = call i8  @getch()
	bl getch
	st.b $a0, $fp, -30
# %op7 = alloca i8 
	lu12i.w $t0, -1
	ori $t0, $t0, 4055
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -40
# store i8  %op6, i8 * %op7
	ld.d $t0, $fp, -40
# br label %label9
	b .main_label9
.main_label8:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
.main_label9:
# %op10 = load i8 , i8 * %op7
	ld.d $t0, $fp, -40
	ld.b $t1, $t0, 0
	st.b $t1, $fp, -42
# %op11 = zext i8  %op10 to i32 
	ld.b $t0, $fp, -42
	st.w $t0, $fp, -48
# %op12 = icmp ne i32  %op11, 81
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 81
	bne  $t0, $t1, true_label23
	addi.d $t2, $zero, 0
	b false_label23
true_label23:
	addi.d $t2, $zero, 1
false_label23:
	st.b $t2, $fp, -49
# %op13 = zext i1  %op12 to i32 
	ld.b $t0, $fp, -49
	st.w $t0, $fp, -56
# %op14 = icmp ne i32  %op13, 0
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label24
	addi.d $t2, $zero, 0
	b false_label24
true_label24:
	addi.d $t2, $zero, 1
false_label24:
	st.b $t2, $fp, -57
# br i1  %op14, label %label23, label %label17
	ld.b $t0, $fp, -57
	bnez $t0, .main_label23
	b .main_label17
.main_label15:
# %op16 = call i8  @getch()
	bl getch
	st.b $a0, $fp, -58
# store i8  %op16, i8 * %op7
	ld.d $t0, $fp, -40
# br label %label9
	b .main_label9
.main_label17:
# %op18 = load i8 , i8 * %op7
	ld.d $t0, $fp, -40
	ld.b $t1, $t0, 0
	st.b $t1, $fp, -59
# %op19 = zext i8  %op18 to i32 
	ld.b $t0, $fp, -59
	st.w $t0, $fp, -64
# %op20 = icmp eq i32  %op19, 81
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 81
	beq  $t0, $t1, true_label25
	addi.d $t2, $zero, 0
	b false_label25
true_label25:
	addi.d $t2, $zero, 1
false_label25:
	st.b $t2, $fp, -65
# %op21 = zext i1  %op20 to i32 
	ld.b $t0, $fp, -65
	st.w $t0, $fp, -72
# %op22 = icmp ne i32  %op21, 0
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label26
	addi.d $t2, $zero, 0
	b false_label26
true_label26:
	addi.d $t2, $zero, 1
false_label26:
	st.b $t2, $fp, -73
# br i1  %op22, label %label29, label %label38
	ld.b $t0, $fp, -73
	bnez $t0, .main_label29
	b .main_label38
.main_label23:
# %op24 = load i8 , i8 * %op7
	ld.d $t0, $fp, -40
	ld.b $t1, $t0, 0
	st.b $t1, $fp, -74
# %op25 = zext i8  %op24 to i32 
	ld.b $t0, $fp, -74
	st.w $t0, $fp, -80
# %op26 = icmp ne i32  %op25, 85
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 85
	bne  $t0, $t1, true_label27
	addi.d $t2, $zero, 0
	b false_label27
true_label27:
	addi.d $t2, $zero, 1
false_label27:
	st.b $t2, $fp, -81
# %op27 = zext i1  %op26 to i32 
	ld.b $t0, $fp, -81
	st.w $t0, $fp, -88
# %op28 = icmp ne i32  %op27, 0
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label28
	addi.d $t2, $zero, 0
	b false_label28
true_label28:
	addi.d $t2, $zero, 1
false_label28:
	st.b $t2, $fp, -89
# br i1  %op28, label %label15, label %label17
	ld.b $t0, $fp, -89
	bnez $t0, .main_label15
	b .main_label17
.main_label29:
# %op30 = call i32  @quick_read()
	bl quick_read
	st.w $a0, $fp, -96
# %op31 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -104
# store i32  %op30, i32 * %op31
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -96
	st.w $t1, $t0, 0
# %op32 = call i32  @quick_read()
	bl quick_read
	st.w $a0, $fp, -112
# %op33 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3972
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -120
# store i32  %op32, i32 * %op33
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -112
	st.w $t1, $t0, 0
# %op34 = load i32 , i32 * %op31
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op35 = load i32 , i32 * %op33
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op36 = call i32  @same(i32  %op34, i32  %op35)
	ld.w $a0, $fp, -128
	ld.w $a1, $fp, -132
	bl same
	st.w $a0, $fp, -136
# call void @putint(i32  %op36)
	ld.w $a0, $fp, -136
	bl putint
# %op37 = trunc i32  10 to i8 
	addi.w $t0, $zero, 10
	andi $t1, $t0, 255
	st.b $t1, $fp, -137
# call void @putch(i8  %op37)
	ld.b $a0, $fp, -137
	bl putch
# br label %label45
	b .main_label45
.main_label38:
# %op39 = call i32  @quick_read()
	bl quick_read
	st.w $a0, $fp, -144
# %op40 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -152
# store i32  %op39, i32 * %op40
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -144
	st.w $t1, $t0, 0
# %op41 = call i32  @quick_read()
	bl quick_read
	st.w $a0, $fp, -160
# %op42 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3924
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -168
# store i32  %op41, i32 * %op42
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -160
	st.w $t1, $t0, 0
# %op43 = load i32 , i32 * %op40
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op44 = load i32 , i32 * %op42
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# call void @add_edge(i32  %op43, i32  %op44)
	ld.w $a0, $fp, -176
	ld.w $a1, $fp, -180
	bl add_edge
# br label %label45
	b .main_label45
.main_label45:
# %op46 = load i32 , i32 * @m
	la.local $t0, m
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -184
# %op47 = sub i32  %op46, 1
	ld.w $t0, $fp, -184
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -188
# store i32  %op47, i32 * @m
	la.local $t0, m
	ld.w $t1, $fp, -188
	st.w $t1, $t0, 0
# br label %label2
	b .main_label2
main_ret:
	addi.d $sp, $sp, 192
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl INF
	.data
	.type INF, @object
	.size INF, 4
INF:
	.word 65535
	.space 4
	.globl e
	.type e, @object
	.size e, 1024
e:
	.space 1024
	.globl book
	.type book, @object
	.size book, 64
book:
	.space 64
	.globl dis
	.type dis, @object
	.size dis, 64
dis:
	.space 64
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
	.globl v1
	.type v1, @object
	.size v1, 4
v1:
	.space 4
	.globl v2
	.type v2, @object
	.size v2, 4
v2:
	.space 4
	.globl w
	.type w, @object
	.size w, 4
w:
	.space 4
	.text
	.globl Dijkstra
	.type Dijkstra, @function
Dijkstra:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -608
.Dijkstra_label_entry:
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
# store i32  1, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label2
	b .Dijkstra_label2
.Dijkstra_label2:
# %op3 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op4 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# %op5 = icmp sle i32  %op3, %op4
	ld.w $t0, $fp, -48
	ld.w $t1, $fp, -52
	bge  $t1, $t0, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -53
# %op6 = zext i1  %op5 to i32 
	ld.b $t0, $fp, -53
	st.w $t0, $fp, -60
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -61
# br i1  %op7, label %label8, label %label20
	ld.b $t0, $fp, -61
	bnez $t0, .Dijkstra_label8
	b .Dijkstra_label20
.Dijkstra_label8:
# %op9 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op10 = getelementptr [256 x i32 ], [256 x i32 ]* @e, i32  0, i32  1
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
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
	lu12i.w $t1, 0
	ori $t1, $t1, 1024
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
	la.local $t1, e
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -80
# %op11 = load i32 , i32 * %op10
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op12 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op13 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op14 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op12
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 64
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
	ori $t1, $t1, 64
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -88
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, dis
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -104
# store i32  %op11, i32 * %op14
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -84
	st.w $t1, $t0, 0
# %op15 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op16 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op17 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32  0, i32  %op15
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 64
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
	ori $t1, $t1, 64
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -108
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, book
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -120
# store i32  0, i32 * %op17
	ld.d $t0, $fp, -120
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op18 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op19 = add i32  %op18, 1
	ld.w $t0, $fp, -124
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -128
# store i32  %op19, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -128
	st.w $t1, $t0, 0
# br label %label2
	b .Dijkstra_label2
.Dijkstra_label20:
# %op21 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32  0, i32  1
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 64
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
	ori $t1, $t1, 64
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
	la.local $t1, book
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -136
# store i32  1, i32 * %op21
	ld.d $t0, $fp, -136
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# store i32  1, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label22
	b .Dijkstra_label22
.Dijkstra_label22:
# %op23 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op24 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op25 = sub i32  %op24, 1
	ld.w $t0, $fp, -144
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -148
# %op26 = icmp sle i32  %op23, %op25
	ld.w $t0, $fp, -140
	ld.w $t1, $fp, -148
	bge  $t1, $t0, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -149
# %op27 = zext i1  %op26 to i32 
	ld.b $t0, $fp, -149
	st.w $t0, $fp, -156
# %op28 = icmp ne i32  %op27, 0
	ld.w $t0, $fp, -156
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -157
# br i1  %op28, label %label29, label %label34
	ld.b $t0, $fp, -157
	bnez $t0, .Dijkstra_label29
	b .Dijkstra_label34
.Dijkstra_label29:
# %op30 = load i32 , i32 * @INF
	la.local $t0, INF
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op31 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3916
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -176
# store i32  %op30, i32 * %op31
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -164
	st.w $t1, $t0, 0
# %op32 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3900
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -192
# store i32  0, i32 * %op32
	ld.d $t0, $fp, -192
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op33 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3884
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -208
# store i32  1, i32 * %op33
	ld.d $t0, $fp, -208
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label35
	b .Dijkstra_label35
.Dijkstra_label34:
# ret void
	addi.d $a0, $zero, 0
	b Dijkstra_ret
.Dijkstra_label35:
# %op36 = load i32 , i32 * %op33
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -216
# %op37 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# %op38 = icmp sle i32  %op36, %op37
	ld.w $t0, $fp, -216
	ld.w $t1, $fp, -220
	bge  $t1, $t0, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -221
# %op39 = zext i1  %op38 to i32 
	ld.b $t0, $fp, -221
	st.w $t0, $fp, -228
# %op40 = icmp ne i32  %op39, 0
	ld.w $t0, $fp, -228
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -229
# br i1  %op40, label %label41, label %label50
	ld.b $t0, $fp, -229
	bnez $t0, .Dijkstra_label41
	b .Dijkstra_label50
.Dijkstra_label41:
# %op42 = load i32 , i32 * %op31
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# %op43 = load i32 , i32 * %op33
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -240
# %op44 = load i32 , i32 * %op33
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op45 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op43
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 64
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
	ori $t1, $t1, 64
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -240
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, dis
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -256
# %op46 = load i32 , i32 * %op45
	ld.d $t0, $fp, -256
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# %op47 = icmp sgt i32  %op42, %op46
	ld.w $t0, $fp, -236
	ld.w $t1, $fp, -260
	slt $t2, $t1, $t0
	st.b $t2, $fp, -261
# %op48 = zext i1  %op47 to i32 
	ld.b $t0, $fp, -261
	st.w $t0, $fp, -268
# %op49 = icmp ne i32  %op48, 0
	ld.w $t0, $fp, -268
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -269
# br i1  %op49, label %label64, label %label61
	ld.b $t0, $fp, -269
	bnez $t0, .Dijkstra_label64
	b .Dijkstra_label61
.Dijkstra_label50:
# %op51 = load i32 , i32 * %op32
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op52 = load i32 , i32 * %op32
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -280
# %op53 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32  0, i32  %op51
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 64
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
	ori $t1, $t1, 64
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -276
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, book
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -288
# store i32  1, i32 * %op53
	ld.d $t0, $fp, -288
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op54 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3796
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -296
# store i32  1, i32 * %op54
	ld.d $t0, $fp, -296
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label72
	b .Dijkstra_label72
.Dijkstra_label55:
# %op56 = load i32 , i32 * %op33
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -304
# %op57 = load i32 , i32 * %op33
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op58 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op56
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 64
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
	ori $t1, $t1, 64
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -304
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, dis
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -320
# %op59 = load i32 , i32 * %op58
	ld.d $t0, $fp, -320
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# store i32  %op59, i32 * %op31
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -324
	st.w $t1, $t0, 0
# %op60 = load i32 , i32 * %op33
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -328
# store i32  %op60, i32 * %op32
	ld.d $t0, $fp, -192
	ld.w $t1, $fp, -328
	st.w $t1, $t0, 0
# br label %label61
	b .Dijkstra_label61
.Dijkstra_label61:
# %op62 = load i32 , i32 * %op33
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op63 = add i32  %op62, 1
	ld.w $t0, $fp, -332
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -336
# store i32  %op63, i32 * %op33
	ld.d $t0, $fp, -208
	ld.w $t1, $fp, -336
	st.w $t1, $t0, 0
# br label %label35
	b .Dijkstra_label35
.Dijkstra_label64:
# %op65 = load i32 , i32 * %op33
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -340
# %op66 = load i32 , i32 * %op33
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -344
# %op67 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32  0, i32  %op65
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 64
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
	ori $t1, $t1, 64
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -340
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, book
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -352
# %op68 = load i32 , i32 * %op67
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op69 = icmp eq i32  %op68, 0
	ld.w $t0, $fp, -356
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -357
# %op70 = zext i1  %op69 to i32 
	ld.b $t0, $fp, -357
	st.w $t0, $fp, -364
# %op71 = icmp ne i32  %op70, 0
	ld.w $t0, $fp, -364
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -365
# br i1  %op71, label %label55, label %label61
	ld.b $t0, $fp, -365
	bnez $t0, .Dijkstra_label55
	b .Dijkstra_label61
.Dijkstra_label72:
# %op73 = load i32 , i32 * %op54
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -372
# %op74 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -376
# %op75 = icmp sle i32  %op73, %op74
	ld.w $t0, $fp, -372
	ld.w $t1, $fp, -376
	bge  $t1, $t0, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -377
# %op76 = zext i1  %op75 to i32 
	ld.b $t0, $fp, -377
	st.w $t0, $fp, -384
# %op77 = icmp ne i32  %op76, 0
	ld.w $t0, $fp, -384
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -385
# br i1  %op77, label %label78, label %label88
	ld.b $t0, $fp, -385
	bnez $t0, .Dijkstra_label78
	b .Dijkstra_label88
.Dijkstra_label78:
# %op79 = load i32 , i32 * %op32
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -392
# %op80 = load i32 , i32 * %op32
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -396
# %op81 = load i32 , i32 * %op54
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -400
# %op82 = getelementptr [256 x i32 ], [256 x i32 ]* @e, i32  0, i32  %op79
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
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
	lu12i.w $t1, 0
	ori $t1, $t1, 1024
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -392
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, e
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -408
# %op83 = load i32 , i32 * %op82
	ld.d $t0, $fp, -408
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -412
# %op84 = load i32 , i32 * @INF
	la.local $t0, INF
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -416
# %op85 = icmp slt i32  %op83, %op84
	ld.w $t0, $fp, -412
	ld.w $t1, $fp, -416
	slt $t2, $t0, $t1
	st.b $t2, $fp, -417
# %op86 = zext i1  %op85 to i32 
	ld.b $t0, $fp, -417
	st.w $t0, $fp, -424
# %op87 = icmp ne i32  %op86, 0
	ld.w $t0, $fp, -424
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -425
# br i1  %op87, label %label91, label %label109
	ld.b $t0, $fp, -425
	bnez $t0, .Dijkstra_label91
	b .Dijkstra_label109
.Dijkstra_label88:
# %op89 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -432
# %op90 = add i32  %op89, 1
	ld.w $t0, $fp, -432
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -436
# store i32  %op90, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -436
	st.w $t1, $t0, 0
# br label %label22
	b .Dijkstra_label22
.Dijkstra_label91:
# %op92 = load i32 , i32 * %op54
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -440
# %op93 = load i32 , i32 * %op54
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -444
# %op94 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op92
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 64
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
	ori $t1, $t1, 64
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -440
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, dis
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -456
# %op95 = load i32 , i32 * %op94
	ld.d $t0, $fp, -456
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -460
# %op96 = load i32 , i32 * %op32
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -464
# %op97 = load i32 , i32 * %op32
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -468
# %op98 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op96
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 64
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
	ori $t1, $t1, 64
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -464
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, dis
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -480
# %op99 = load i32 , i32 * %op98
	ld.d $t0, $fp, -480
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -484
# %op100 = load i32 , i32 * %op32
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -488
# %op101 = load i32 , i32 * %op32
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -492
# %op102 = load i32 , i32 * %op54
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -496
# %op103 = getelementptr [256 x i32 ], [256 x i32 ]* @e, i32  0, i32  %op100
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
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
	lu12i.w $t1, 0
	ori $t1, $t1, 1024
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -488
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, e
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -504
# %op104 = load i32 , i32 * %op103
	ld.d $t0, $fp, -504
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -508
# %op105 = add i32  %op99, %op104
	ld.w $t0, $fp, -484
	ld.w $t1, $fp, -508
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -512
# %op106 = icmp sgt i32  %op95, %op105
	ld.w $t0, $fp, -460
	ld.w $t1, $fp, -512
	slt $t2, $t1, $t0
	st.b $t2, $fp, -513
# %op107 = zext i1  %op106 to i32 
	ld.b $t0, $fp, -513
	st.w $t0, $fp, -520
# %op108 = icmp ne i32  %op107, 0
	ld.w $t0, $fp, -520
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -521
# br i1  %op108, label %label112, label %label126
	ld.b $t0, $fp, -521
	bnez $t0, .Dijkstra_label112
	b .Dijkstra_label126
.Dijkstra_label109:
# %op110 = load i32 , i32 * %op54
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -528
# %op111 = add i32  %op110, 1
	ld.w $t0, $fp, -528
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -532
# store i32  %op111, i32 * %op54
	ld.d $t0, $fp, -296
	ld.w $t1, $fp, -532
	st.w $t1, $t0, 0
# br label %label72
	b .Dijkstra_label72
.Dijkstra_label112:
# %op113 = load i32 , i32 * %op32
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -536
# %op114 = load i32 , i32 * %op32
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -540
# %op115 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op113
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 64
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
	ori $t1, $t1, 64
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -536
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, dis
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -552
# %op116 = load i32 , i32 * %op115
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -556
# %op117 = load i32 , i32 * %op32
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -560
# %op118 = load i32 , i32 * %op32
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -564
# %op119 = load i32 , i32 * %op54
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -568
# %op120 = getelementptr [256 x i32 ], [256 x i32 ]* @e, i32  0, i32  %op117
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
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
	lu12i.w $t1, 0
	ori $t1, $t1, 1024
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -560
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, e
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -576
# %op121 = load i32 , i32 * %op120
	ld.d $t0, $fp, -576
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -580
# %op122 = add i32  %op116, %op121
	ld.w $t0, $fp, -556
	ld.w $t1, $fp, -580
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -584
# %op123 = load i32 , i32 * %op54
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -588
# %op124 = load i32 , i32 * %op54
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -592
# %op125 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op123
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 64
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
	ori $t1, $t1, 64
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -588
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, dis
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -600
# store i32  %op122, i32 * %op125
	ld.d $t0, $fp, -600
	ld.w $t1, $fp, -584
	st.w $t1, $t0, 0
# br label %label126
	b .Dijkstra_label126
.Dijkstra_label126:
# br label %label109
	b .Dijkstra_label109
Dijkstra_ret:
	addi.d $sp, $sp, 608
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -320
.main_label_entry:
# %op0 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -24
# %op1 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -32
# store i32  %op1, i32 * @n
	la.local $t0, n
	ld.w $t1, $fp, -32
	st.w $t1, $t0, 0
# %op2 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -36
# store i32  %op2, i32 * @m
	la.local $t0, m
	ld.w $t1, $fp, -36
	st.w $t1, $t0, 0
# store i32  1, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label3
	b .main_label3
.main_label3:
# %op4 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op5 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# %op6 = icmp sle i32  %op4, %op5
	ld.w $t0, $fp, -40
	ld.w $t1, $fp, -44
	bge  $t1, $t0, true_label16
	addi.d $t2, $zero, 0
	b false_label16
true_label16:
	addi.d $t2, $zero, 1
false_label16:
	st.b $t2, $fp, -45
# %op7 = zext i1  %op6 to i32 
	ld.b $t0, $fp, -45
	st.w $t0, $fp, -52
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	st.b $t2, $fp, -53
# br i1  %op8, label %label9, label %label11
	ld.b $t0, $fp, -53
	bnez $t0, .main_label9
	b .main_label11
.main_label9:
# %op10 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -64
# store i32  1, i32 * %op10
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label12
	b .main_label12
.main_label11:
# store i32  1, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label41
	b .main_label41
.main_label12:
# %op13 = load i32 , i32 * %op10
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op14 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op15 = icmp sle i32  %op13, %op14
	ld.w $t0, $fp, -72
	ld.w $t1, $fp, -76
	bge  $t1, $t0, true_label18
	addi.d $t2, $zero, 0
	b false_label18
true_label18:
	addi.d $t2, $zero, 1
false_label18:
	st.b $t2, $fp, -77
# %op16 = zext i1  %op15 to i32 
	ld.b $t0, $fp, -77
	st.w $t0, $fp, -84
# %op17 = icmp ne i32  %op16, 0
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	st.b $t2, $fp, -85
# br i1  %op17, label %label18, label %label24
	ld.b $t0, $fp, -85
	bnez $t0, .main_label18
	b .main_label24
.main_label18:
# %op19 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op20 = load i32 , i32 * %op10
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op21 = icmp eq i32  %op19, %op20
	ld.w $t0, $fp, -92
	ld.w $t1, $fp, -96
	beq  $t0, $t1, true_label20
	addi.d $t2, $zero, 0
	b false_label20
true_label20:
	addi.d $t2, $zero, 1
false_label20:
	st.b $t2, $fp, -97
# %op22 = zext i1  %op21 to i32 
	ld.b $t0, $fp, -97
	st.w $t0, $fp, -104
# %op23 = icmp ne i32  %op22, 0
	ld.w $t0, $fp, -104
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label21
	addi.d $t2, $zero, 0
	b false_label21
true_label21:
	addi.d $t2, $zero, 1
false_label21:
	st.b $t2, $fp, -105
# br i1  %op23, label %label27, label %label32
	ld.b $t0, $fp, -105
	bnez $t0, .main_label27
	b .main_label32
.main_label24:
# %op25 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op26 = add i32  %op25, 1
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -116
# store i32  %op26, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -116
	st.w $t1, $t0, 0
# br label %label3
	b .main_label3
.main_label27:
# %op28 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -120
# %op29 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op30 = load i32 , i32 * %op10
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op31 = getelementptr [256 x i32 ], [256 x i32 ]* @e, i32  0, i32  %op28
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
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
	lu12i.w $t1, 0
	ori $t1, $t1, 1024
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -120
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, e
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -136
# store i32  0, i32 * %op31
	ld.d $t0, $fp, -136
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label38
	b .main_label38
.main_label32:
# %op33 = load i32 , i32 * @INF
	la.local $t0, INF
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op34 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op35 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op36 = load i32 , i32 * %op10
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op37 = getelementptr [256 x i32 ], [256 x i32 ]* @e, i32  0, i32  %op34
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
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
	lu12i.w $t1, 0
	ori $t1, $t1, 1024
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -144
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, e
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -160
# store i32  %op33, i32 * %op37
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -140
	st.w $t1, $t0, 0
# br label %label38
	b .main_label38
.main_label38:
# %op39 = load i32 , i32 * %op10
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op40 = add i32  %op39, 1
	ld.w $t0, $fp, -164
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -168
# store i32  %op40, i32 * %op10
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -168
	st.w $t1, $t0, 0
# br label %label12
	b .main_label12
.main_label41:
# %op42 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op43 = load i32 , i32 * @m
	la.local $t0, m
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op44 = icmp sle i32  %op42, %op43
	ld.w $t0, $fp, -172
	ld.w $t1, $fp, -176
	bge  $t1, $t0, true_label22
	addi.d $t2, $zero, 0
	b false_label22
true_label22:
	addi.d $t2, $zero, 1
false_label22:
	st.b $t2, $fp, -177
# %op45 = zext i1  %op44 to i32 
	ld.b $t0, $fp, -177
	st.w $t0, $fp, -184
# %op46 = icmp ne i32  %op45, 0
	ld.w $t0, $fp, -184
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label23
	addi.d $t2, $zero, 0
	b false_label23
true_label23:
	addi.d $t2, $zero, 1
false_label23:
	st.b $t2, $fp, -185
# br i1  %op46, label %label47, label %label59
	ld.b $t0, $fp, -185
	bnez $t0, .main_label47
	b .main_label59
.main_label47:
# %op48 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -192
# %op49 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -200
# store i32  %op48, i32 * %op49
	ld.d $t0, $fp, -200
	ld.w $t1, $fp, -192
	st.w $t1, $t0, 0
# %op50 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -208
# %op51 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -216
# store i32  %op50, i32 * %op51
	ld.d $t0, $fp, -216
	ld.w $t1, $fp, -208
	st.w $t1, $t0, 0
# %op52 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -224
# %op53 = load i32 , i32 * %op49
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op54 = load i32 , i32 * %op49
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -232
# %op55 = load i32 , i32 * %op51
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# %op56 = getelementptr [256 x i32 ], [256 x i32 ]* @e, i32  0, i32  %op53
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
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
	lu12i.w $t1, 0
	ori $t1, $t1, 1024
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -228
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, e
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -248
# store i32  %op52, i32 * %op56
	ld.d $t0, $fp, -248
	ld.w $t1, $fp, -224
	st.w $t1, $t0, 0
# %op57 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# %op58 = add i32  %op57, 1
	ld.w $t0, $fp, -252
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -256
# store i32  %op58, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -256
	st.w $t1, $t0, 0
# br label %label41
	b .main_label41
.main_label59:
# call void @Dijkstra()
	bl Dijkstra
# store i32  1, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label60
	b .main_label60
.main_label60:
# %op61 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# %op62 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -264
# %op63 = icmp sle i32  %op61, %op62
	ld.w $t0, $fp, -260
	ld.w $t1, $fp, -264
	bge  $t1, $t0, true_label24
	addi.d $t2, $zero, 0
	b false_label24
true_label24:
	addi.d $t2, $zero, 1
false_label24:
	st.b $t2, $fp, -265
# %op64 = zext i1  %op63 to i32 
	ld.b $t0, $fp, -265
	st.w $t0, $fp, -272
# %op65 = icmp ne i32  %op64, 0
	ld.w $t0, $fp, -272
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label25
	addi.d $t2, $zero, 0
	b false_label25
true_label25:
	addi.d $t2, $zero, 1
false_label25:
	st.b $t2, $fp, -273
# br i1  %op65, label %label66, label %label74
	ld.b $t0, $fp, -273
	bnez $t0, .main_label66
	b .main_label74
.main_label66:
# %op67 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -280
# %op68 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# %op69 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op67
	addi.d $t0, $zero, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 64
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
	ori $t1, $t1, 64
	lu32i.d $t1, 0
	lu52i.d $t1, $t1, 0
	mul.d $t0, $t0, $t1
	ld.w $t1, $fp, -280
	addi.d $t2, $zero, 4
	mul.d $t1, $t1, $t2
	add.d $t0, $t0, $t1
	la.local $t1, dis
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -296
# %op70 = load i32 , i32 * %op69
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# call void @putint(i32  %op70)
	ld.w $a0, $fp, -300
	bl putint
# %op71 = trunc i32  32 to i8 
	addi.w $t0, $zero, 32
	andi $t1, $t0, 255
	st.b $t1, $fp, -301
# call void @putch(i8  %op71)
	ld.b $a0, $fp, -301
	bl putch
# %op72 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op73 = add i32  %op72, 1
	ld.w $t0, $fp, -308
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -312
# store i32  %op73, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -312
	st.w $t1, $t0, 0
# br label %label60
	b .main_label60
.main_label74:
# %op75 = trunc i32  10 to i8 
	addi.w $t0, $zero, 10
	andi $t1, $t0, 255
	st.b $t1, $fp, -313
# call void @putch(i8  %op75)
	ld.b $a0, $fp, -313
	bl putch
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 320
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

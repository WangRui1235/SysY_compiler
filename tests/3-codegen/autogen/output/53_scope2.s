# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl k
	.type k, @object
	.size k, 4
k:
	.space 4
	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -176
.main_label_entry:
# store i32  3389, i32 * @k
	la.local $t0, k
	lu12i.w $t1, 0
	ori $t1, $t1, 3389
	st.w $t1, $t0, 0
# %op0 = load i32 , i32 * @k
	la.local $t0, k
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -20
# %op1 = icmp slt i32  %op0, 10000
	ld.w $t0, $fp, -20
	lu12i.w $t1, 2
	ori $t1, $t1, 1808
	slt $t2, $t0, $t1
	st.b $t2, $fp, -21
# %op2 = zext i1  %op1 to i32 
	ld.b $t0, $fp, -21
	st.w $t0, $fp, -28
# %op3 = icmp ne i32  %op2, 0
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -29
# br i1  %op3, label %label4, label %label8
	ld.b $t0, $fp, -29
	bnez $t0, .main_label4
	b .main_label8
.main_label4:
# %op5 = load i32 , i32 * @k
	la.local $t0, k
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -36
# %op6 = add i32  %op5, 1
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -40
# store i32  %op6, i32 * @k
	la.local $t0, k
	ld.w $t1, $fp, -40
	st.w $t1, $t0, 0
# %op7 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -48
# store i32  112, i32 * %op7
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 112
	st.w $t1, $t0, 0
# br label %label10
	b .main_label10
.main_label8:
# %op9 = load i32 , i32 * @k
	la.local $t0, k
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# ret i32  %op9
	ld.w $a0, $fp, -56
	b main_ret
.main_label10:
# %op11 = load i32 , i32 * %op7
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op12 = icmp sgt i32  %op11, 10
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 10
	slt $t2, $t1, $t0
	st.b $t2, $fp, -61
# %op13 = zext i1  %op12 to i32 
	ld.b $t0, $fp, -61
	st.w $t0, $fp, -68
# %op14 = icmp ne i32  %op13, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -69
# br i1  %op14, label %label15, label %label22
	ld.b $t0, $fp, -69
	bnez $t0, .main_label15
	b .main_label22
.main_label15:
# %op16 = load i32 , i32 * %op7
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op17 = sub i32  %op16, 88
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 88
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# store i32  %op17, i32 * %op7
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -80
	st.w $t1, $t0, 0
# %op18 = load i32 , i32 * %op7
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op19 = icmp slt i32  %op18, 1000
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 1000
	slt $t2, $t0, $t1
	st.b $t2, $fp, -85
# %op20 = zext i1  %op19 to i32 
	ld.b $t0, $fp, -85
	st.w $t0, $fp, -92
# %op21 = icmp ne i32  %op20, 0
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -93
# br i1  %op21, label %label24, label %label36
	ld.b $t0, $fp, -93
	bnez $t0, .main_label24
	b .main_label36
.main_label22:
# %op23 = load i32 , i32 * %op7
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# call void @putint(i32  %op23)
	ld.w $a0, $fp, -100
	bl putint
# br label %label8
	b .main_label8
.main_label24:
# %op25 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3980
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -112
# store i32  9, i32 * %op25
	ld.d $t0, $fp, -112
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# %op26 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -128
# store i32  11, i32 * %op26
	ld.d $t0, $fp, -128
	addi.w $t1, $zero, 11
	st.w $t1, $t0, 0
# store i32  10, i32 * %op25
	ld.d $t0, $fp, -112
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# %op27 = load i32 , i32 * %op7
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# %op28 = load i32 , i32 * %op25
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op29 = sub i32  %op27, %op28
	ld.w $t0, $fp, -136
	ld.w $t1, $fp, -140
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -144
# store i32  %op29, i32 * %op7
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -144
	st.w $t1, $t0, 0
# %op30 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 3940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -152
# store i32  11, i32 * %op30
	ld.d $t0, $fp, -152
	addi.w $t1, $zero, 11
	st.w $t1, $t0, 0
# %op31 = load i32 , i32 * %op7
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op32 = load i32 , i32 * %op30
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op33 = add i32  %op31, %op32
	ld.w $t0, $fp, -160
	ld.w $t1, $fp, -164
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -168
# %op34 = load i32 , i32 * %op26
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op35 = add i32  %op33, %op34
	ld.w $t0, $fp, -168
	ld.w $t1, $fp, -172
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -176
# store i32  %op35, i32 * %op7
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -176
	st.w $t1, $t0, 0
# br label %label36
	b .main_label36
.main_label36:
# br label %label10
	b .main_label10
main_ret:
	addi.d $sp, $sp, 176
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

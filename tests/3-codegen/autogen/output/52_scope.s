# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl a
	.data
	.type a, @object
	.size a, 4
a:
	.word 7
	.space 4
	.text
	.globl func
	.type func, @function
func:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -80
.func_label_entry:
# %op0 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -20
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
# %op2 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -48
# store i32  1, i32 * %op2
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op3 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op4 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op5 = icmp eq i32  %op3, %op4
	ld.w $t0, $fp, -56
	ld.w $t1, $fp, -60
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -61
# %op6 = zext i1  %op5 to i32 
	ld.b $t0, $fp, -61
	st.w $t0, $fp, -68
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -69
# br i1  %op7, label %label8, label %label11
	ld.b $t0, $fp, -69
	bnez $t0, .func_label8
	b .func_label11
.func_label8:
# %op9 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op10 = add i32  %op9, 1
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# store i32  %op10, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -80
	st.w $t1, $t0, 0
# ret i32  1
	addi.w $a0, $zero, 1
	b func_ret
.func_label11:
# ret i32  0
	addi.w $a0, $zero, 0
	b func_ret
func_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -112
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
# %op1 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -40
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2
	b .main_label2
.main_label2:
# %op3 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op4 = icmp slt i32  %op3, 100
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 100
	slt $t2, $t0, $t1
	st.b $t2, $fp, -49
# %op5 = zext i1  %op4 to i32 
	ld.b $t0, $fp, -49
	st.w $t0, $fp, -56
# %op6 = icmp ne i32  %op5, 0
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -57
# br i1  %op6, label %label7, label %label12
	ld.b $t0, $fp, -57
	bnez $t0, .main_label7
	b .main_label12
.main_label7:
# %op8 = call i32  @func()
	bl func
	st.w $a0, $fp, -64
# %op9 = icmp eq i32  %op8, 1
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 1
	beq  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -65
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -65
	st.w $t0, $fp, -72
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -73
# br i1  %op11, label %label17, label %label20
	ld.b $t0, $fp, -73
	bnez $t0, .main_label17
	b .main_label20
.main_label12:
# %op13 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op14 = icmp slt i32  %op13, 100
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 100
	slt $t2, $t0, $t1
	st.b $t2, $fp, -81
# %op15 = zext i1  %op14 to i32 
	ld.b $t0, $fp, -81
	st.w $t0, $fp, -88
# %op16 = icmp ne i32  %op15, 0
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -89
# br i1  %op16, label %label23, label %label24
	ld.b $t0, $fp, -89
	bnez $t0, .main_label23
	b .main_label24
.main_label17:
# %op18 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op19 = add i32  %op18, 1
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -100
# store i32  %op19, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -100
	st.w $t1, $t0, 0
# br label %label20
	b .main_label20
.main_label20:
# %op21 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op22 = add i32  %op21, 1
	ld.w $t0, $fp, -104
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -108
# store i32  %op22, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -108
	st.w $t1, $t0, 0
# br label %label2
	b .main_label2
.main_label23:
# call void @putint(i32  1)
	addi.w $a0, $zero, 1
	bl putint
# br label %label25
	b .main_label25
.main_label24:
# call void @putint(i32  0)
	addi.w $a0, $zero, 0
	bl putint
# br label %label25
	b .main_label25
.main_label25:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 112
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

	.text
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
# %op3 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
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
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -57
# br i1  %op6, label %label7, label %label12
	ld.b $t0, $fp, -57
	bnez $t0, .main_label7
	b .main_label12
.main_label7:
# %op8 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op9 = icmp eq i32  %op8, 50
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 50
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -65
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -65
	st.w $t0, $fp, -72
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -73
# br i1  %op11, label %label14, label %label17
	ld.b $t0, $fp, -73
	bnez $t0, .main_label14
	b .main_label17
.main_label12:
# %op13 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# ret i32  %op13
	ld.w $a0, $fp, -80
	b main_ret
.main_label14:
# %op15 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op16 = add i32  %op15, 1
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -88
# store i32  %op16, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -88
	st.w $t1, $t0, 0
# br label %label2
	b .main_label2
.main_label17:
# %op18 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op19 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op20 = add i32  %op18, %op19
	ld.w $t0, $fp, -92
	ld.w $t1, $fp, -96
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -100
# store i32  %op20, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -100
	st.w $t1, $t0, 0
# %op21 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op22 = add i32  %op21, 1
	ld.w $t0, $fp, -104
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -108
# store i32  %op22, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -108
	st.w $t1, $t0, 0
# br label %label2
	b .main_label2
main_ret:
	addi.d $sp, $sp, 112
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

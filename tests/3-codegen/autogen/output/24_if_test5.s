	.text
	.globl if_if_Else
	.type if_if_Else, @function
if_if_Else:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -96
.if_if_Else_label_entry:
# %op0 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -24
# store i32  5, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op1 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -40
# store i32  10, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op3 = icmp eq i32  %op2, 5
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 5
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -49
# %op4 = zext i1  %op3 to i32 
	ld.b $t0, $fp, -49
	st.w $t0, $fp, -56
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -57
# br i1  %op5, label %label6, label %label11
	ld.b $t0, $fp, -57
	bnez $t0, .if_if_Else_label6
	b .if_if_Else_label11
.if_if_Else_label6:
# %op7 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op8 = icmp eq i32  %op7, 10
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 10
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -65
# %op9 = zext i1  %op8 to i32 
	ld.b $t0, $fp, -65
	st.w $t0, $fp, -72
# %op10 = icmp ne i32  %op9, 0
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -73
# br i1  %op10, label %label16, label %label17
	ld.b $t0, $fp, -73
	bnez $t0, .if_if_Else_label16
	b .if_if_Else_label17
.if_if_Else_label11:
# %op12 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op13 = add i32  %op12, 15
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 15
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -84
# store i32  %op13, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -84
	st.w $t1, $t0, 0
# br label %label14
	b .if_if_Else_label14
.if_if_Else_label14:
# %op15 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# ret i32  %op15
	ld.w $a0, $fp, -88
	b if_if_Else_ret
.if_if_Else_label16:
# store i32  25, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 25
	st.w $t1, $t0, 0
# br label %label17
	b .if_if_Else_label17
.if_if_Else_label17:
# br label %label14
	b .if_if_Else_label14
if_if_Else_ret:
	addi.d $sp, $sp, 96
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
# %op0 = call i32  @if_if_Else()
	bl if_if_Else
	st.w $a0, $fp, -20
# ret i32  %op0
	ld.w $a0, $fp, -20
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

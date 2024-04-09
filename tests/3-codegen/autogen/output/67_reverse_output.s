	.text
	.globl reverse
	.type reverse, @function
reverse:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -96
	st.w $a0, $fp, -20
.reverse_label_entry:
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
# %op2 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -48
# %op3 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op4 = icmp sle i32  %op3, 1
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 1
	bge  $t1, $t0, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -57
# %op5 = zext i1  %op4 to i32 
	ld.b $t0, $fp, -57
	st.w $t0, $fp, -64
# %op6 = icmp ne i32  %op5, 0
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -65
# br i1  %op6, label %label7, label %label10
	ld.b $t0, $fp, -65
	bnez $t0, .reverse_label7
	b .reverse_label10
.reverse_label7:
# %op8 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -72
# store i32  %op8, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -72
	st.w $t1, $t0, 0
# %op9 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# call void @putint(i32  %op9)
	ld.w $a0, $fp, -76
	bl putint
# br label %label15
	b .reverse_label15
.reverse_label10:
# %op11 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -80
# store i32  %op11, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -80
	st.w $t1, $t0, 0
# %op12 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op13 = sub i32  %op12, 1
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -88
# call void @reverse(i32  %op13)
	ld.w $a0, $fp, -88
	bl reverse
# %op14 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# call void @putint(i32  %op14)
	ld.w $a0, $fp, -92
	bl putint
# br label %label15
	b .reverse_label15
.reverse_label15:
# ret void
	addi.d $a0, $zero, 0
	b reverse_ret
reverse_ret:
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
# %op0 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 4068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	st.d $t0, $fp, -24
# store i32  200, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 200
	st.w $t1, $t0, 0
# %op1 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -32
# call void @reverse(i32  %op1)
	ld.w $a0, $fp, -32
	bl reverse
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

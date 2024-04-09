# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl a0
	.type a0, @object
	.size a0, 12
a0:
	.space 12
	.globl b0
	.data
	.type b0, @object
	.size b0, 16
b0:
	.long 0
	.long 1
	.long 0
	.long 0
	.space 16
	.globl c0
	.data
	.type c0, @object
	.size c0, 28
c0:
	.long 2
	.long 8
	.long 6
	.long 3
	.long 9
	.long 1
	.long 5
	.space 28
	.globl d0
	.type d0, @object
	.size d0, 44
d0:
	.space 44
	.globl e0
	.data
	.type e0, @object
	.size e0, 8
e0:
	.long 22
	.long 33
	.space 8
	.globl f0
	.type f0, @object
	.size f0, 24
f0:
	.space 24
	.globl g0
	.data
	.type g0, @object
	.size g0, 36
g0:
	.long 85
	.long 0
	.long 1
	.long 29
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.space 36
	.globl a
	.type a, @object
	.size a, 60
a:
	.space 60
	.globl b
	.type b, @object
	.size b, 60
b:
	.space 60
	.globl c
	.data
	.type c, @object
	.size c, 60
c:
	.long 1
	.long 2
	.long 3
	.long 4
	.long 5
	.long 6
	.long 7
	.long 8
	.long 9
	.long 10
	.long 11
	.long 12
	.long 13
	.long 14
	.long 15
	.space 60
	.globl d
	.data
	.type d, @object
	.size d, 60
d:
	.long 1
	.long 2
	.long 3
	.long 4
	.long 5
	.long 6
	.long 7
	.long 8
	.long 9
	.long 10
	.long 11
	.long 12
	.long 13
	.long 14
	.long 15
	.space 60
	.globl e
	.data
	.type e, @object
	.size e, 60
e:
	.long 1
	.long 2
	.long 3
	.long 4
	.long 5
	.long 6
	.long 7
	.long 8
	.long 9
	.long 10
	.long 11
	.long 12
	.long 13
	.long 14
	.long 15
	.space 60
	.globl f
	.type f, @object
	.size f, 20
f:
	.space 20
	.globl g
	.data
	.type g, @object
	.size g, 60
g:
	.long 1
	.long 2
	.long 3
	.long 4
	.long 0
	.long 0
	.long 7
	.long 0
	.long 0
	.long 10
	.long 11
	.long 12
	.long 0
	.long 0
	.long 0
	.space 60
	.globl h
	.type h, @object
	.size h, 12
h:
	.space 12
	.globl i
	.data
	.type i, @object
	.size i, 96
i:
	.long 1
	.long 2
	.long 3
	.long 4
	.long 5
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.space 96
	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -16
.main_label_entry:
# ret i32  5
	addi.w $a0, $zero, 5
	b main_ret
main_ret:
	addi.d $sp, $sp, 16
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra

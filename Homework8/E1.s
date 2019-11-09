	.file	"E1.c"
	.text
	.globl	_test
	.def	_test;	.scl	2;	.type	32;	.endef
_test:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jle	L2
	cmpl	$0, 12(%ebp)
	je	L2
	cmpl	$10, 12(%ebp)
	jle	L2
	cmpl	$0, 8(%ebp)
	je	L2
	cmpl	$20, 8(%ebp)
	jg	L3
L2:
	cmpl	$100, 8(%ebp)
	jg	L3
	cmpl	$99, 12(%ebp)
	jle	L4
	cmpl	$40, 8(%ebp)
	jg	L4
	cmpl	$20, 12(%ebp)
	jle	L3
	cmpl	$-10, 8(%ebp)
	jl	L4
L3:
	movl	$100, -4(%ebp)
	jmp	L5
L4:
	movl	$60, -4(%ebp)
L5:
	movl	-4(%ebp), %eax
	leave
	ret
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 7.2.0"

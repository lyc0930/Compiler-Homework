	.file	"Ex3.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$64, %esp
	call	___main
	leal	20(%esp), %eax
	movl	%eax, 16(%esp)
	movl	$0, 60(%esp)
	jmp	L2
L3:
	movl	16(%esp), %eax
	movl	60(%esp), %edx
	movl	%edx, (%eax)
	leal	16(%esp), %eax
	movl	%eax, (%esp)
	call	_g
	incl	60(%esp)
L2:
	cmpl	$9, 60(%esp)
	jle	L3
	movl	$0, %eax
	leave
	ret
	.globl	_g
	.def	_g;	.scl	2;	.type	32;	.endef
_g:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	incl	%edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	nop
	popl	%ebp
	ret
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 7.2.0"

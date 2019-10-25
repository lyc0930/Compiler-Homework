	.file	"Ex5.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC1:
	.ascii "%d\12\0"
	.data
	.align 4
LC0:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$64, %esp
	call	___main
	leal	28(%esp), %eax
	movl	$LC0, %ebx
	movl	$6, %edx
	movl	%eax, %edi
	movl	%ebx, %esi
	movl	%edx, %ecx
	rep movsl
	movl	$6, 60(%esp)
	movl	$7, 56(%esp)
	leal	28(%esp), %eax
	addl	$24, %eax
	movl	%eax, 52(%esp)
	movl	52(%esp), %eax
	subl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$0, %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 7.2.0"
	.def	_printf;	.scl	2;	.type	32;	.endef

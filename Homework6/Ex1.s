	.file	"Ex1.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%x %s\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movb	$50, 20(%esp)
	movb	$48, 21(%esp)
	movb	$49, 22(%esp)
	movb	$54, 23(%esp)
	movb	$0, 24(%esp)
	leal	20(%esp), %eax
	movl	%eax, 28(%esp)
	movl	20(%esp), %eax
	movl	28(%esp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	ret
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 7.2.0"
	.def	_printf;	.scl	2;	.type	32;	.endef

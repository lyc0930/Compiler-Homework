	.file	"Ex2.c"
	.text
	.globl	_f
	.def	_f;	.scl	2;	.type	32;	.endef
_f:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	movl	$100, 8(%ebp)
	movl	$24, 12(%ebp)
	movb	$65, 17(%ebp)
	movl	28(%ebp), %eax
	movl	%esp, %edx
	movl	%eax, %ebx
	movl	$6, %eax
	movl	%edx, %edi
	movl	%ebx, %esi
	movl	%eax, %ecx
	rep movsl
	call	_f
	nop
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 7.2.0"

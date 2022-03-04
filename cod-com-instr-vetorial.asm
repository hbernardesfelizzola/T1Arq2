	.file	"somaVetores.c"
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d \0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB33:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$64, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	call	___main
	movl	$1, 16(%esp)
	movl	$1, 20(%esp)
	movl	$1, 24(%esp)
	movl	$1, 28(%esp)
	movl	$2, 32(%esp)
	movl	$2, 36(%esp)
	movl	$2, 40(%esp)
	movl	$2, 44(%esp)
	vmovdqa	16(%esp), %xmm1
	leal	16(%esp), %ebx
	vpaddd	32(%esp), %xmm1, %xmm0
	leal	32(%esp), %esi
	vmovaps	%xmm0, 48(%esp)
L2:
	movl	(%ebx), %eax
	movl	$LC0, (%esp)
	movl	%eax, 4(%esp)
	addl	$4, %ebx
	call	_printf
	cmpl	%esi, %ebx
	jne	L2
	movl	$10, (%esp)
	leal	48(%esp), %esi
	call	_putchar
L3:
	movl	(%ebx), %edx
	movl	$LC0, (%esp)
	movl	%edx, 4(%esp)
	addl	$4, %ebx
	call	_printf
	cmpl	%esi, %ebx
	jne	L3
	movl	$10, (%esp)
	leal	64(%esp), %esi
	call	_putchar
L4:
	movl	(%ebx), %ecx
	movl	$LC0, (%esp)
	movl	%ecx, 4(%esp)
	addl	$4, %ebx
	call	_printf
	cmpl	%esi, %ebx
	jne	L4
	movl	$10, (%esp)
	call	_putchar
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE33:
	.ident	"GCC: (MinGW.org GCC Build-2) 9.2.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef

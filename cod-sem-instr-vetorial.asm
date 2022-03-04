	.file	"somaVetores.c"
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d \0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB23:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$80, %esp
	call	___main
	movl	$1, 48(%esp)
	movl	$1, 52(%esp)
	movl	$1, 56(%esp)
	movl	$1, 60(%esp)
	movl	$2, 32(%esp)
	movl	$2, 36(%esp)
	movl	$2, 40(%esp)
	movl	$2, 44(%esp)
	movl	$0, 76(%esp)
	jmp	L2
L3:
	movl	76(%esp), %eax
	movl	32(%esp,%eax,4), %edx
	movl	76(%esp), %eax
	movl	48(%esp,%eax,4), %eax
	addl	%eax, %edx
	movl	76(%esp), %eax
	movl	%edx, 16(%esp,%eax,4)
	addl	$1, 76(%esp)
L2:
	cmpl	$3, 76(%esp)
	jle	L3
	movl	$0, 72(%esp)
	jmp	L4
L5:
	movl	72(%esp), %eax
	movl	48(%esp,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	addl	$1, 72(%esp)
L4:
	cmpl	$3, 72(%esp)
	jle	L5
	movl	$10, (%esp)
	call	_putchar
	movl	$0, 68(%esp)
	jmp	L6
L7:
	movl	68(%esp), %eax
	movl	32(%esp,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	addl	$1, 68(%esp)
L6:
	cmpl	$3, 68(%esp)
	jle	L7
	movl	$10, (%esp)
	call	_putchar
	movl	$0, 64(%esp)
	jmp	L8
L9:
	movl	64(%esp), %eax
	movl	16(%esp,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	addl	$1, 64(%esp)
L8:
	cmpl	$3, 64(%esp)
	jle	L9
	movl	$10, (%esp)
	call	_putchar
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE23:
	.ident	"GCC: (MinGW.org GCC Build-2) 9.2.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef

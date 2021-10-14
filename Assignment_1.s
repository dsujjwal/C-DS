	.file	"Assignment_1.c"
	.text
	.section	.rodata
.LC0:
	.string	"%f"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-36(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movss	-36(%rbp), %xmm1
	movss	-32(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-28(%rbp), %xmm1
	movss	.LC1(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-36(%rbp), %xmm1
	movss	-32(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-20(%rbp), %xmm1
	movss	.LC1(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	movss	-24(%rbp), %xmm0
	addss	-16(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	cvtss2sd	-12(%rbp), %xmm0
	leaq	.LC0(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC1:
	.long	1065353216
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits

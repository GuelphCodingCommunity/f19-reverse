	.file	"ex_1.c"
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
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
#APP
# 2 "ex_1.c" 1
	nop
# 0 "" 2
#NO_APP
	movl	$1, -20(%rbp)
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -24(%rbp)
#APP
# 5 "ex_1.c" 1
	nop
# 0 "" 2
#NO_APP
	movl	$1, -20(%rbp)
	movl	$2, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
#APP
# 8 "ex_1.c" 1
	nop
# 0 "" 2
#NO_APP
	leaq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
#APP
# 10 "ex_1.c" 1
	nop
# 0 "" 2
#NO_APP
	cmpl	$5, -20(%rbp)
	jle	.L2
	movl	$5, -24(%rbp)
	jmp	.L3
.L2:
	movl	$4, -24(%rbp)
.L3:
#APP
# 15 "ex_1.c" 1
	nop
# 0 "" 2
#NO_APP
	movl	$0, -20(%rbp)
	jmp	.L4
.L5:
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	addl	$1, -20(%rbp)
.L4:
	cmpl	$2, -20(%rbp)
	jle	.L5
#APP
# 19 "ex_1.c" 1
	nop
# 0 "" 2
#NO_APP
	movl	$0, -20(%rbp)
	jmp	.L6
.L7:
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	addl	$1, -20(%rbp)
.L6:
	cmpl	$2, -20(%rbp)
	jle	.L7
#APP
# 25 "ex_1.c" 1
	nop
# 0 "" 2
#NO_APP
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits

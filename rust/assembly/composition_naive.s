	.text
	.file	"composition_naive.3a1fbbbh-cgu.0"
	.section	.text._ZN17composition_naive17composition_naive17hdd4bd8b8950fc2fcE,"ax",@progbits
	.globl	_ZN17composition_naive17composition_naive17hdd4bd8b8950fc2fcE
	.p2align	4, 0x90
	.type	_ZN17composition_naive17composition_naive17hdd4bd8b8950fc2fcE,@function
_ZN17composition_naive17composition_naive17hdd4bd8b8950fc2fcE:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.LBB0_6
	leaq	-1(%rdi), %rdx
	movl	%edi, %r8d
	andl	$3, %r8d
	cmpq	$3, %rdx
	jae	.LBB0_7
	xorl	%edx, %edx
	jmp	.LBB0_3
.LBB0_7:
	subq	%r8, %rdi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_8:
	movq	(%rsi,%rdx,8), %rax
	movq	(%rcx,%rax,8), %rax
	movq	%rax, (%r9,%rdx,8)
	movq	8(%rsi,%rdx,8), %rax
	movq	(%rcx,%rax,8), %rax
	movq	%rax, 8(%r9,%rdx,8)
	movq	16(%rsi,%rdx,8), %rax
	movq	(%rcx,%rax,8), %rax
	movq	%rax, 16(%r9,%rdx,8)
	movq	24(%rsi,%rdx,8), %rax
	movq	(%rcx,%rax,8), %rax
	movq	%rax, 24(%r9,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %rdi
	jne	.LBB0_8
.LBB0_3:
	testq	%r8, %r8
	je	.LBB0_6
	leaq	(%r9,%rdx,8), %rdi
	leaq	(%rsi,%rdx,8), %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_5:
	movq	(%rdx,%rsi,8), %rax
	movq	(%rcx,%rax,8), %rax
	movq	%rax, (%rdi,%rsi,8)
	addq	$1, %rsi
	cmpq	%rsi, %r8
	jne	.LBB0_5
.LBB0_6:
	retq
.Lfunc_end0:
	.size	_ZN17composition_naive17composition_naive17hdd4bd8b8950fc2fcE, .Lfunc_end0-_ZN17composition_naive17composition_naive17hdd4bd8b8950fc2fcE
	.cfi_endproc

	.section	".note.GNU-stack","",@progbits

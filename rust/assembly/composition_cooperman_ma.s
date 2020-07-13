	.text
	.file	"composition_cooperman_ma.3a1fbbbh-cgu.0"
	.section	.text._ZN4core3ptr13drop_in_place17h1ab9af538ccbe371E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr13drop_in_place17h1ab9af538ccbe371E,@function
_ZN4core3ptr13drop_in_place17h1ab9af538ccbe371E:
	.cfi_startproc
	movq	8(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB0_3
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB0_3
	shlq	$3, %rsi
	testq	%rsi, %rsi
	je	.LBB0_3
	movl	$8, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB0_3:
	retq
.Lfunc_end0:
	.size	_ZN4core3ptr13drop_in_place17h1ab9af538ccbe371E, .Lfunc_end0-_ZN4core3ptr13drop_in_place17h1ab9af538ccbe371E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h75d484eb4b09f8f2E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h75d484eb4b09f8f2E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h75d484eb4b09f8f2E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*_ZN5alloc5alloc18handle_alloc_error17h4708e9620f23812bE@GOTPCREL(%rip)
	ud2
.Lfunc_end1:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h75d484eb4b09f8f2E, .Lfunc_end1-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h75d484eb4b09f8f2E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h94c6334c7c183e4eE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h94c6334c7c183e4eE,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h94c6334c7c183e4eE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*_ZN5alloc7raw_vec17capacity_overflow17hdeab58106aa834b9E@GOTPCREL(%rip)
	ud2
.Lfunc_end2:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h94c6334c7c183e4eE, .Lfunc_end2-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h94c6334c7c183e4eE
	.cfi_endproc

	.section	.text._ZN24composition_cooperman_ma24composition_cooperman_ma17h72deead023bffe8bE,"ax",@progbits
	.globl	_ZN24composition_cooperman_ma24composition_cooperman_ma17h72deead023bffe8bE
	.p2align	4, 0x90
	.type	_ZN24composition_cooperman_ma24composition_cooperman_ma17h72deead023bffe8bE,@function
_ZN24composition_cooperman_ma24composition_cooperman_ma17h72deead023bffe8bE:
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, 96(%rsp)
	movq	%r8, 80(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%rdx, %r15
	movq	%rsi, 88(%rsp)
	movq	%rdi, %r12
	movq	_ZN24composition_cooperman_ma10CACHE_SIZE17h1f6e91545a796a82E@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shrq	$4, %rax
	cvtsi2sd	%rax, %xmm0
	callq	*log2@GOTPCREL(%rip)
	cvttsd2si	%xmm0, %ecx
	movzbl	%cl, %r13d
	movl	$2, %ebx
	movl	$1, %r8d
	movl	$1, %edx
	movl	%r13d, %esi
	cmpb	$2, %r13b
	jb	.LBB3_3
	movl	$1, %edi
	movl	$2, %ebx
	movl	%r13d, %ebp
	movl	$1, %edx
	movl	%r13d, %esi
	.p2align	4, 0x90
.LBB3_2:
	testb	$1, %bpl
	movq	%rbx, %rax
	cmoveq	%rdi, %rax
	imulq	%rax, %rdx
	shrl	%esi
	imulq	%rbx, %rbx
	cmpl	$3, %ebp
	movl	%esi, %ebp
	ja	.LBB3_2
.LBB3_3:
	cmpl	$1, %esi
	cmoveq	%rbx, %r8
	imulq	%rdx, %r8
	leaq	(%r12,%r8), %r14
	addq	$-1, %r14
	shrq	%cl, %r14
	movl	$8, %ecx
	xorl	%ebx, %ebx
	movq	%r12, %rax
	mulq	%rcx
	movq	%rax, %rbp
	setno	%al
	jo	.LBB3_61
	movq	%r8, (%rsp)
	movq	%r15, 64(%rsp)
	movb	%al, %bl
	shlq	$3, %rbx
	testq	%rbp, %rbp
	je	.LBB3_6
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*__rust_alloc_zeroed@GOTPCREL(%rip)
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB3_62
.LBB3_8:
	movq	%rbp, %rcx
	shrq	$3, %rcx
	movl	$8, %edx
	xorl	%esi, %esi
	movq	%r14, %rax
	mulq	%rdx
	setno	%dl
	movq	%r15, 32(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%r12, 48(%rsp)
	jo	.LBB3_9
	movb	%dl, %sil
	shlq	$3, %rsi
	testq	%rax, %rax
	movq	%rsi, 56(%rsp)
	je	.LBB3_13
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	(%rsp), %rsi
	testq	%rax, %rax
	je	.LBB3_63
.LBB3_15:
	shrq	$3, %rbx
	movq	%rax, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	%r14, 24(%rsp)
	testq	%r14, %r14
	je	.LBB3_19
	leaq	(,%rsi,8), %rcx
	xorl	%edi, %edi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB3_17:
	cmpq	%r12, %rdi
	jae	.LBB3_18
	cmpq	%rdx, %r14
	je	.LBB3_25
	movq	%r15, (%rax,%rdx,8)
	addq	$1, %rdx
	addq	%rsi, %rdi
	addq	%rcx, %r15
	cmpq	%rdx, %r14
	jne	.LBB3_17
	jmp	.LBB3_20
.LBB3_6:
	movq	%rbx, %r15
	testq	%r15, %r15
	jne	.LBB3_8
.LBB3_62:
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h75d484eb4b09f8f2E
	ud2
.LBB3_13:
	movq	%rax, %rbx
	movq	%rsi, %rax
	movq	(%rsp), %rsi
	testq	%rax, %rax
	jne	.LBB3_15
.LBB3_63:
	movq	%rbx, %rdi
	movq	56(%rsp), %rsi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h75d484eb4b09f8f2E
	ud2
.LBB3_19:
	testq	%r12, %r12
	je	.LBB3_42
.LBB3_20:
	movq	%rbp, %r11
	andl	$63, %r13d
	movq	160(%rsp), %rdi
	movq	8(%rsp), %rdx
	movq	24(%rsp), %rsi
	xorl	%ebp, %ebp
	movq	64(%rsp), %r9
	movq	88(%rsp), %r10
	.p2align	4, 0x90
.LBB3_21:
	cmpq	%rbp, %r9
	je	.LBB3_57
	movq	(%r10,%rbp,8), %rbx
	movq	%rbx, %rax
	movl	%r13d, %ecx
	shrq	%cl, %rax
	cmpq	%rax, %rsi
	jbe	.LBB3_23
	addq	$1, %rbp
	movq	(%rdx,%rax,8), %rcx
	movq	%rbx, (%rcx)
	addq	$8, (%rdx,%rax,8)
	cmpq	%rbp, %r12
	jne	.LBB3_21
	movq	32(%rsp), %rcx
	xorl	%edx, %edx
	movq	80(%rsp), %rsi
	movq	72(%rsp), %rbp
	.p2align	4, 0x90
.LBB3_29:
	movq	(%rcx,%rdx,8), %rax
	cmpq	%rsi, %rax
	jae	.LBB3_58
	movq	(%rbp,%rax,8), %rax
	movq	%rax, (%rcx,%rdx,8)
	addq	$1, %rdx
	cmpq	%rdx, %r12
	jne	.LBB3_29
	testq	%r14, %r14
	je	.LBB3_38
	movq	8(%rsp), %rcx
	movq	24(%rsp), %r8
	movq	32(%rsp), %rdx
	movq	(%rsp), %rax
	leaq	(,%rax,8), %rbp
	xorl	%eax, %eax
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB3_33:
	cmpq	%r12, %rax
	jae	.LBB3_34
	cmpq	%rsi, %r8
	je	.LBB3_36
	movq	%rdx, (%rcx,%rsi,8)
	addq	$1, %rsi
	addq	(%rsp), %rax
	addq	%rbp, %rdx
	cmpq	%rsi, %r14
	jne	.LBB3_33
.LBB3_38:
	movq	8(%rsp), %rax
	movq	24(%rsp), %rsi
	xorl	%edx, %edx
	movq	96(%rsp), %rbx
	.p2align	4, 0x90
.LBB3_39:
	cmpq	%rdx, %r9
	je	.LBB3_59
	movq	(%r10,%rdx,8), %rbp
	movl	%r13d, %ecx
	shrq	%cl, %rbp
	cmpq	%rbp, %rsi
	jbe	.LBB3_41
	cmpq	%rdx, %rdi
	je	.LBB3_60
	movq	(%rax,%rbp,8), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rbx,%rdx,8)
	addq	$1, %rdx
	addq	$8, (%rax,%rbp,8)
	cmpq	%rdx, %r12
	jne	.LBB3_39
	movq	%r11, %rbp
	movq	16(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB3_47
.LBB3_44:
	testq	%rax, %rax
	je	.LBB3_47
	shlq	$3, %rsi
	testq	%rsi, %rsi
	je	.LBB3_47
	movl	$8, %edx
	movq	%rax, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB3_47:
	testq	%rbp, %rbp
	je	.LBB3_50
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB3_50
	movl	$8, %edx
	movq	%rbp, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB3_50:
	addq	$104, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB3_42:
	.cfi_def_cfa_offset 160
	movq	8(%rsp), %rax
	movq	16(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB3_44
	jmp	.LBB3_47
.LBB3_23:
.Ltmp4:
	leaq	.L__unnamed_1(%rip), %rdx
	movq	%rax, %rdi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp5:
	jmp	.LBB3_10
.LBB3_57:
.Ltmp18:
	leaq	.L__unnamed_2(%rip), %rdx
	movq	%r9, %rdi
	movq	%r9, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp19:
	jmp	.LBB3_10
.LBB3_58:
.Ltmp6:
	leaq	.L__unnamed_3(%rip), %rdx
	movq	%rax, %rdi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp7:
	jmp	.LBB3_10
.LBB3_41:
.Ltmp12:
	leaq	.L__unnamed_4(%rip), %rdx
	movq	%rbp, %rdi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp13:
	jmp	.LBB3_10
.LBB3_59:
.Ltmp16:
	leaq	.L__unnamed_5(%rip), %rdx
	movq	%r9, %rdi
	movq	%r9, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp17:
	jmp	.LBB3_10
.LBB3_60:
.Ltmp14:
	leaq	.L__unnamed_6(%rip), %rdx
	movq	%rdi, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp15:
	jmp	.LBB3_10
.LBB3_18:
.Ltmp0:
	leaq	.L__unnamed_7(%rip), %rdx
	movq	%r12, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp1:
	jmp	.LBB3_10
.LBB3_25:
.Ltmp2:
	leaq	.L__unnamed_8(%rip), %rdx
	movq	%r14, %rdi
	movq	%r14, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp3:
	jmp	.LBB3_10
.LBB3_34:
.Ltmp8:
	leaq	.L__unnamed_9(%rip), %rdx
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp9:
	jmp	.LBB3_10
.LBB3_36:
.Ltmp10:
	leaq	.L__unnamed_10(%rip), %rdx
	movq	%r8, %rdi
	movq	%r8, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp11:
.LBB3_10:
	ud2
.LBB3_61:
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h94c6334c7c183e4eE
	ud2
.LBB3_9:
.Ltmp21:
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h94c6334c7c183e4eE
.Ltmp22:
	jmp	.LBB3_10
.LBB3_54:
.Ltmp23:
	movq	%rax, %rbx
	jmp	.LBB3_56
.LBB3_55:
.Ltmp20:
	movq	%rax, %rbx
	leaq	8(%rsp), %rdi
	callq	_ZN4core3ptr13drop_in_place17h1ab9af538ccbe371E
.LBB3_56:
	leaq	32(%rsp), %rdi
	callq	_ZN4core3ptr13drop_in_place17h1ab9af538ccbe371E
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.Lfunc_end3:
	.size	_ZN24composition_cooperman_ma24composition_cooperman_ma17h72deead023bffe8bE, .Lfunc_end3-_ZN24composition_cooperman_ma24composition_cooperman_ma17h72deead023bffe8bE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table3:
.Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0
	.uleb128 .Ltmp4-.Lfunc_begin0
	.byte	0
	.byte	0
	.uleb128 .Ltmp4-.Lfunc_begin0
	.uleb128 .Ltmp11-.Ltmp4
	.uleb128 .Ltmp20-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp11-.Lfunc_begin0
	.uleb128 .Ltmp21-.Ltmp11
	.byte	0
	.byte	0
	.uleb128 .Ltmp21-.Lfunc_begin0
	.uleb128 .Ltmp22-.Ltmp21
	.uleb128 .Ltmp23-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp22-.Lfunc_begin0
	.uleb128 .Lfunc_end3-.Ltmp22
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2

	.type	_ZN24composition_cooperman_ma10CACHE_SIZE17h1f6e91545a796a82E,@object
	.section	.data._ZN24composition_cooperman_ma10CACHE_SIZE17h1f6e91545a796a82E,"aw",@progbits
	.globl	_ZN24composition_cooperman_ma10CACHE_SIZE17h1f6e91545a796a82E
	.p2align	3
_ZN24composition_cooperman_ma10CACHE_SIZE17h1f6e91545a796a82E:
	.asciz	"\000\001\000\000\000\000\000"
	.size	_ZN24composition_cooperman_ma10CACHE_SIZE17h1f6e91545a796a82E, 8

	.type	.L__unnamed_11,@object
	.section	.rodata..L__unnamed_11,"a",@progbits
.L__unnamed_11:
	.ascii	"../src/composition_cooperman_ma.rs"
	.size	.L__unnamed_11, 34

	.type	.L__unnamed_7,@object
	.section	.data.rel.ro..L__unnamed_7,"aw",@progbits
	.p2align	3
.L__unnamed_7:
	.quad	.L__unnamed_11
	.asciz	"\"\000\000\000\000\000\000\000 \000\000\000!\000\000"
	.size	.L__unnamed_7, 24

	.type	.L__unnamed_8,@object
	.section	.data.rel.ro..L__unnamed_8,"aw",@progbits
	.p2align	3
.L__unnamed_8:
	.quad	.L__unnamed_11
	.asciz	"\"\000\000\000\000\000\000\000 \000\000\000\t\000\000"
	.size	.L__unnamed_8, 24

	.type	.L__unnamed_2,@object
	.section	.data.rel.ro..L__unnamed_2,"aw",@progbits
	.p2align	3
.L__unnamed_2:
	.quad	.L__unnamed_11
	.asciz	"\"\000\000\000\000\000\000\000$\000\000\000\031\000\000"
	.size	.L__unnamed_2, 24

	.type	.L__unnamed_1,@object
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
	.p2align	3
.L__unnamed_1:
	.quad	.L__unnamed_11
	.asciz	"\"\000\000\000\000\000\000\000%\000\000\000\023\000\000"
	.size	.L__unnamed_1, 24

	.type	.L__unnamed_3,@object
	.section	.data.rel.ro..L__unnamed_3,"aw",@progbits
	.p2align	3
.L__unnamed_3:
	.quad	.L__unnamed_11
	.asciz	"\"\000\000\000\000\000\000\000,\000\000\000\020\000\000"
	.size	.L__unnamed_3, 24

	.type	.L__unnamed_9,@object
	.section	.data.rel.ro..L__unnamed_9,"aw",@progbits
	.p2align	3
.L__unnamed_9:
	.quad	.L__unnamed_11
	.asciz	"\"\000\000\000\000\000\000\0001\000\000\000!\000\000"
	.size	.L__unnamed_9, 24

	.type	.L__unnamed_10,@object
	.section	.data.rel.ro..L__unnamed_10,"aw",@progbits
	.p2align	3
.L__unnamed_10:
	.quad	.L__unnamed_11
	.asciz	"\"\000\000\000\000\000\000\0001\000\000\000\t\000\000"
	.size	.L__unnamed_10, 24

	.type	.L__unnamed_5,@object
	.section	.data.rel.ro..L__unnamed_5,"aw",@progbits
	.p2align	3
.L__unnamed_5:
	.quad	.L__unnamed_11
	.asciz	"\"\000\000\000\000\000\000\0005\000\000\000\031\000\000"
	.size	.L__unnamed_5, 24

	.type	.L__unnamed_4,@object
	.section	.data.rel.ro..L__unnamed_4,"aw",@progbits
	.p2align	3
.L__unnamed_4:
	.quad	.L__unnamed_11
	.asciz	"\"\000\000\000\000\000\000\0006\000\000\000\032\000\000"
	.size	.L__unnamed_4, 24

	.type	.L__unnamed_6,@object
	.section	.data.rel.ro..L__unnamed_6,"aw",@progbits
	.p2align	3
.L__unnamed_6:
	.quad	.L__unnamed_11
	.asciz	"\"\000\000\000\000\000\000\0006\000\000\000\t\000\000"
	.size	.L__unnamed_6, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality

	.section	".note.GNU-stack","",@progbits

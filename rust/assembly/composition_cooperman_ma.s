	.text
	.file	"composition_cooperman_ma.3a1fbbbh-cgu.0"
	.section	.text._ZN4core3ptr13drop_in_place17h183a52fd63af6b43E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr13drop_in_place17h183a52fd63af6b43E,@function
_ZN4core3ptr13drop_in_place17h183a52fd63af6b43E:
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
	.size	_ZN4core3ptr13drop_in_place17h183a52fd63af6b43E, .Lfunc_end0-_ZN4core3ptr13drop_in_place17h183a52fd63af6b43E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h2c217ee49dee44b6E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h2c217ee49dee44b6E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h2c217ee49dee44b6E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*_ZN5alloc5alloc18handle_alloc_error17hb4f79dda046419e4E@GOTPCREL(%rip)
	ud2
.Lfunc_end1:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h2c217ee49dee44b6E, .Lfunc_end1-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h2c217ee49dee44b6E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17haa08250ff997f218E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17haa08250ff997f218E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17haa08250ff997f218E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*_ZN5alloc7raw_vec17capacity_overflow17hcd0a6cb6204bc841E@GOTPCREL(%rip)
	ud2
.Lfunc_end2:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17haa08250ff997f218E, .Lfunc_end2-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17haa08250ff997f218E
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI3_0:
	.quad	4643176031446892544
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%rcx, %r13
	movq	%rsi, 64(%rsp)
	movq	%rdi, %r15
	movq	_ZN24composition_cooperman_ma10CACHE_SIZE17h1f6e91545a796a82E@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shrq	$4, %rax
	cvtsi2sd	%rax, %xmm0
	callq	*log2@GOTPCREL(%rip)
	ucomisd	.LCPI3_0(%rip), %xmm0
	xorpd	%xmm1, %xmm1
	maxsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	$255, %ecx
	cmovbel	%eax, %ecx
	movzbl	%cl, %r12d
	movl	$1, %r8d
	movl	$2, %ebx
	movl	$1, %edx
	movl	%r12d, %esi
	cmpb	$2, %r12b
	jb	.LBB3_3
	movl	$2, %ebx
	movl	$1, %edi
	movl	%r12d, %ebp
	movl	$1, %edx
	movl	%r12d, %esi
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
	leaq	(%r15,%r8), %rax
	addq	$-1, %rax
	shrq	%cl, %rax
	movq	%rax, 8(%rsp)
	movl	$8, %ecx
	xorl	%ebp, %ebp
	movq	%r15, 56(%rsp)
	movq	%r15, %rax
	mulq	%rcx
	movq	%rax, %r15
	setno	%al
	jo	.LBB3_62
	movq	%r8, 40(%rsp)
	movb	%al, %bpl
	shlq	$3, %rbp
	testq	%r15, %r15
	je	.LBB3_5
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	%rax, %rsi
	testq	%rsi, %rsi
	je	.LBB3_63
.LBB3_8:
	movq	%r14, %rbx
	shrq	$3, %r15
	movl	$8, %ecx
	xorl	%r14d, %r14d
	movq	8(%rsp), %rax
	mulq	%rcx
	movq	%rax, %rdi
	setno	%al
	movq	%rsi, 16(%rsp)
	movq	%r15, 24(%rsp)
	movq	$0, 32(%rsp)
	jo	.LBB3_9
	movb	%al, %r14b
	shlq	$3, %r14
	testq	%rdi, %rdi
	movq	56(%rsp), %r15
	movq	%rdi, 48(%rsp)
	je	.LBB3_12
	movq	%rsi, %rbp
	movq	%r14, %rsi
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	%rbp, %rsi
	movq	40(%rsp), %r10
	testq	%rax, %rax
	je	.LBB3_52
.LBB3_15:
	andl	$63, %r12d
	cmpq	$0, 8(%rsp)
	movq	%rbx, %r11
	movq	64(%rsp), %r14
	je	.LBB3_23
	movq	%rsi, (%rax)
	cmpq	$1, 8(%rsp)
	je	.LBB3_23
	movq	8(%rsp), %rcx
	leal	-1(%rcx), %r8d
	addq	$-2, %rcx
	andl	$3, %r8d
	movl	$1, %edx
	cmpq	$3, %rcx
	jb	.LBB3_20
	movq	40(%rsp), %rcx
	movq	%rcx, %r10
	shlq	$5, %r10
	leaq	(,%rcx,8), %rdi
	leaq	(%rdi,%rdi,2), %rbp
	shlq	$4, %rcx
	movq	8(%rsp), %r9
	subq	%r8, %r9
	movl	$1, %edx
	movq	%r10, %rsi
	.p2align	4, 0x90
.LBB3_19:
	movq	16(%rsp), %rbx
	addq	%rdi, %rbx
	movq	%rbx, (%rax,%rdx,8)
	movq	16(%rsp), %rbx
	addq	%rcx, %rbx
	movq	%rbx, 8(%rax,%rdx,8)
	movq	16(%rsp), %rbx
	addq	%rbp, %rbx
	movq	%rbx, 16(%rax,%rdx,8)
	movq	16(%rsp), %rbx
	addq	%rsi, %rbx
	movq	%rbx, 24(%rax,%rdx,8)
	addq	$4, %rdx
	addq	%r10, %rsi
	addq	%r10, %rbp
	addq	%r10, %rdi
	addq	%r10, %rcx
	cmpq	%rdx, %r9
	jne	.LBB3_19
.LBB3_20:
	testq	%r8, %r8
	movq	40(%rsp), %r10
	je	.LBB3_23
	leaq	(%rax,%rdx,8), %rcx
	imulq	%r10, %rdx
	shlq	$3, %rdx
	leaq	(,%r10,8), %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB3_22:
	movq	16(%rsp), %rbp
	addq	%rdx, %rbp
	movq	%rbp, (%rcx,%rdi,8)
	addq	$1, %rdi
	addq	%rsi, %rdx
	cmpq	%rdi, %r8
	jne	.LBB3_22
.LBB3_23:
	movq	%r15, 32(%rsp)
	testq	%r15, %r15
	je	.LBB3_34
	movl	%r15d, %edx
	andl	$1, %edx
	cmpq	$1, %r15
	jne	.LBB3_54
	xorl	%esi, %esi
	jmp	.LBB3_26
.LBB3_5:
	movq	%rbp, %rsi
	testq	%rsi, %rsi
	jne	.LBB3_8
.LBB3_63:
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h2c217ee49dee44b6E
	ud2
.LBB3_12:
	movq	%r14, %rax
	movq	40(%rsp), %r10
	testq	%rax, %rax
	jne	.LBB3_15
.LBB3_52:
	movq	48(%rsp), %rdi
	movq	%r14, %rsi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h2c217ee49dee44b6E
	ud2
.LBB3_54:
	movq	%r15, %rdi
	subq	%rdx, %rdi
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB3_55:
	movq	(%r14,%rsi,8), %rbx
	movq	%rbx, %rbp
	movl	%r12d, %ecx
	shrq	%cl, %rbp
	movq	(%rax,%rbp,8), %rcx
	movq	%rbx, (%rcx)
	addq	$8, (%rax,%rbp,8)
	movq	8(%r14,%rsi,8), %rbx
	movq	%rbx, %rbp
	movl	%r12d, %ecx
	shrq	%cl, %rbp
	addq	$2, %rsi
	movq	(%rax,%rbp,8), %rcx
	movq	%rbx, (%rcx)
	addq	$8, (%rax,%rbp,8)
	cmpq	%rsi, %rdi
	jne	.LBB3_55
.LBB3_26:
	testq	%rdx, %rdx
	je	.LBB3_28
	movq	(%r14,%rsi,8), %rdx
	movq	%rdx, %rsi
	movl	%r12d, %ecx
	shrq	%cl, %rsi
	movq	(%rax,%rsi,8), %rcx
	movq	%rdx, (%rcx)
	addq	$8, (%rax,%rsi,8)
.LBB3_28:
	testq	%r15, %r15
	je	.LBB3_34
	movq	16(%rsp), %rdx
	leaq	-1(%r15), %rsi
	movl	%r15d, %ecx
	andl	$3, %ecx
	cmpq	$3, %rsi
	jae	.LBB3_56
	xorl	%esi, %esi
	jmp	.LBB3_31
.LBB3_56:
	movq	%r15, %rdi
	subq	%rcx, %rdi
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB3_57:
	movq	(%rdx,%rsi,8), %rbp
	movq	8(%rdx,%rsi,8), %rbx
	movq	(%r13,%rbp,8), %rbp
	movq	%rbp, (%rdx,%rsi,8)
	movq	(%r13,%rbx,8), %rbp
	movq	%rbp, 8(%rdx,%rsi,8)
	movq	16(%rdx,%rsi,8), %rbp
	movq	(%r13,%rbp,8), %rbp
	movq	%rbp, 16(%rdx,%rsi,8)
	movq	24(%rdx,%rsi,8), %rbp
	movq	(%r13,%rbp,8), %rbp
	movq	%rbp, 24(%rdx,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB3_57
.LBB3_31:
	testq	%rcx, %rcx
	je	.LBB3_34
	leaq	(%rdx,%rsi,8), %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB3_33:
	movq	(%rdx,%rsi,8), %rdi
	movq	(%r13,%rdi,8), %rdi
	movq	%rdi, (%rdx,%rsi,8)
	addq	$1, %rsi
	cmpq	%rsi, %rcx
	jne	.LBB3_33
.LBB3_34:
	movq	8(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB3_40
	leaq	-1(%rsi), %rcx
	movl	%esi, %r8d
	andl	$3, %r8d
	cmpq	$3, %rcx
	jae	.LBB3_58
	xorl	%edx, %edx
	jmp	.LBB3_37
.LBB3_58:
	subq	%r8, %rsi
	leaq	(,%r10,8), %r13
	leaq	(,%r13,2), %r9
	addq	%r13, %r9
	movq	%r10, %rbp
	shlq	$5, %rbp
	movq	%r10, %rbx
	shlq	$4, %rbx
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB3_59:
	movq	16(%rsp), %rdi
	addq	%rcx, %rdi
	movq	%rdi, (%rax,%rdx,8)
	movq	16(%rsp), %rdi
	addq	%r13, %rdi
	addq	%rcx, %rdi
	movq	%rdi, 8(%rax,%rdx,8)
	movq	16(%rsp), %rdi
	addq	%rbx, %rdi
	addq	%rcx, %rdi
	movq	%rdi, 16(%rax,%rdx,8)
	movq	16(%rsp), %rdi
	addq	%r9, %rdi
	addq	%rcx, %rdi
	movq	%rdi, 24(%rax,%rdx,8)
	addq	$4, %rdx
	addq	%rbp, %rcx
	cmpq	%rdx, %rsi
	jne	.LBB3_59
.LBB3_37:
	testq	%r8, %r8
	je	.LBB3_40
	leaq	(%rax,%rdx,8), %rcx
	imulq	%r10, %rdx
	shlq	$3, %rdx
	shlq	$3, %r10
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB3_39:
	movq	16(%rsp), %rdi
	addq	%rdx, %rdi
	movq	%rdi, (%rcx,%rsi,8)
	addq	$1, %rsi
	addq	%r10, %rdx
	cmpq	%rsi, %r8
	jne	.LBB3_39
.LBB3_40:
	testq	%r15, %r15
	je	.LBB3_45
	movl	%r15d, %esi
	andl	$1, %esi
	cmpq	$1, %r15
	jne	.LBB3_60
	xorl	%edx, %edx
	jmp	.LBB3_43
.LBB3_60:
	subq	%rsi, %r15
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB3_61:
	movq	(%r14,%rdx,8), %rdi
	movl	%r12d, %ecx
	shrq	%cl, %rdi
	movq	(%rax,%rdi,8), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%r11,%rdx,8)
	addq	$8, (%rax,%rdi,8)
	movq	8(%r14,%rdx,8), %rdi
	movl	%r12d, %ecx
	shrq	%cl, %rdi
	movq	(%rax,%rdi,8), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 8(%r11,%rdx,8)
	addq	$2, %rdx
	addq	$8, (%rax,%rdi,8)
	cmpq	%rdx, %r15
	jne	.LBB3_61
.LBB3_43:
	testq	%rsi, %rsi
	je	.LBB3_45
	movq	(%r14,%rdx,8), %rsi
	movl	%r12d, %ecx
	shrq	%cl, %rsi
	movq	(%rax,%rsi,8), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%r11,%rdx,8)
	addq	$8, (%rax,%rsi,8)
.LBB3_45:
	movq	48(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB3_47
	movl	$8, %edx
	movq	%rax, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB3_47:
	movq	24(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB3_51
	movq	16(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB3_51
	shlq	$3, %rsi
	testq	%rsi, %rsi
	je	.LBB3_51
	movl	$8, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB3_51:
	addq	$72, %rsp
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
.LBB3_62:
	.cfi_def_cfa_offset 128
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17haa08250ff997f218E
	ud2
.LBB3_9:
.Ltmp0:
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17haa08250ff997f218E
.Ltmp1:
	ud2
.LBB3_53:
.Ltmp2:
	movq	%rax, %rbx
	leaq	16(%rsp), %rdi
	callq	_ZN4core3ptr13drop_in_place17h183a52fd63af6b43E
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
	.uleb128 .Ltmp0-.Lfunc_begin0
	.byte	0
	.byte	0
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp1-.Ltmp0
	.uleb128 .Ltmp2-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp1-.Lfunc_begin0
	.uleb128 .Lfunc_end3-.Ltmp1
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

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.section	".note.GNU-stack","",@progbits

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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, 80(%rsp)
	movq	%r8, 96(%rsp)
	movq	%rcx, 88(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rdi, %r12
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
	movzbl	%cl, %r13d
	movl	$1, %r15d
	movl	$2, %ebx
	movl	$1, %edx
	movl	%r13d, %esi
	cmpb	$2, %r13b
	jb	.LBB3_3
	movl	$2, %ebx
	movl	$1, %edi
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
	cmoveq	%rbx, %r15
	imulq	%rdx, %r15
	leaq	(%r12,%r15), %r14
	addq	$-1, %r14
	shrq	%cl, %r14
	movl	$8, %ecx
	xorl	%esi, %esi
	movq	%r12, %rax
	mulq	%rcx
	movq	%rax, %rbx
	setno	%al
	jo	.LBB3_61
	movb	%al, %sil
	shlq	$3, %rsi
	testq	%rbx, %rbx
	movq	%rsi, (%rsp)
	je	.LBB3_6
	movq	%rbx, %rdi
	callq	*__rust_alloc_zeroed@GOTPCREL(%rip)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB3_62
.LBB3_8:
	movq	%rbx, %rcx
	shrq	$3, %rcx
	movl	$8, %edx
	xorl	%esi, %esi
	movq	%r14, %rax
	mulq	%rdx
	setno	%dl
	movq	%rbp, 48(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%r12, 64(%rsp)
	jo	.LBB3_9
	movq	%rbx, (%rsp)
	movb	%dl, %sil
	shlq	$3, %rsi
	testq	%rax, %rax
	movq	%rsi, 72(%rsp)
	je	.LBB3_13
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	40(%rsp), %r8
	movq	32(%rsp), %r9
	testq	%rax, %rax
	je	.LBB3_63
.LBB3_15:
	shrq	$3, %rbx
	movq	%rax, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	%r14, 24(%rsp)
	testq	%r14, %r14
	movq	(%rsp), %r10
	je	.LBB3_22
	leaq	(,%r15,8), %rcx
	xorl	%edi, %edi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB3_17:
	cmpq	%r12, %rdi
	jae	.LBB3_18
	cmpq	%rdx, %r14
	je	.LBB3_20
	movq	%rbp, (%rax,%rdx,8)
	addq	$1, %rdx
	addq	%r15, %rdi
	addq	%rcx, %rbp
	cmpq	%rdx, %r14
	jne	.LBB3_17
.LBB3_22:
	andl	$63, %r13d
	testq	%r8, %r8
	je	.LBB3_27
	movq	8(%rsp), %rax
	movq	24(%rsp), %rsi
	leaq	(,%r8,8), %rdx
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB3_24:
	movq	(%r9,%rbp), %rbx
	movq	%rbx, %rdi
	movl	%r13d, %ecx
	shrq	%cl, %rdi
	cmpq	%rdi, %rsi
	jbe	.LBB3_25
	movq	(%rax,%rdi,8), %rcx
	movq	%rbx, (%rcx)
	addq	$8, (%rax,%rdi,8)
	addq	$8, %rbp
	cmpq	%rbp, %rdx
	jne	.LBB3_24
.LBB3_27:
	testq	%r12, %r12
	movq	%r10, %rbx
	movq	96(%rsp), %rsi
	movq	88(%rsp), %rbp
	je	.LBB3_31
	movq	48(%rsp), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB3_29:
	movq	(%rax,%rcx,8), %rdi
	cmpq	%rsi, %rdi
	jae	.LBB3_58
	movq	(%rbp,%rdi,8), %rdx
	movq	%rdx, (%rax,%rcx,8)
	addq	$1, %rcx
	cmpq	%rcx, %r12
	jne	.LBB3_29
.LBB3_31:
	testq	%r14, %r14
	je	.LBB3_36
	movq	8(%rsp), %rcx
	movq	24(%rsp), %rdi
	movq	48(%rsp), %rdx
	leaq	(,%r15,8), %rsi
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB3_33:
	cmpq	%r12, %rax
	jae	.LBB3_34
	cmpq	%rbp, %rdi
	je	.LBB3_47
	movq	%rdx, (%rcx,%rbp,8)
	addq	$1, %rbp
	addq	%r15, %rax
	addq	%rsi, %rdx
	cmpq	%rbp, %r14
	jne	.LBB3_33
.LBB3_36:
	testq	%r12, %r12
	je	.LBB3_37
	movq	160(%rsp), %rax
	movq	8(%rsp), %rdi
	movq	24(%rsp), %rsi
	xorl	%edx, %edx
	movq	80(%rsp), %rbx
	.p2align	4, 0x90
.LBB3_49:
	cmpq	%rdx, %r8
	je	.LBB3_59
	movq	(%r9,%rdx,8), %rbp
	movl	%r13d, %ecx
	shrq	%cl, %rbp
	cmpq	%rbp, %rsi
	jbe	.LBB3_51
	cmpq	%rdx, %rax
	je	.LBB3_60
	movq	(%rdi,%rbp,8), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rbx,%rdx,8)
	addq	$1, %rdx
	addq	$8, (%rdi,%rbp,8)
	cmpq	%rdx, %r12
	jne	.LBB3_49
	movq	%r10, %rbx
	movq	16(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB3_39
	jmp	.LBB3_42
.LBB3_6:
	movq	%rsi, %rbp
	testq	%rbp, %rbp
	jne	.LBB3_8
.LBB3_62:
	movq	%rbx, %rdi
	movq	(%rsp), %rsi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h2c217ee49dee44b6E
	ud2
.LBB3_13:
	movq	%rax, %rbx
	movq	%rsi, %rax
	movq	40(%rsp), %r8
	movq	32(%rsp), %r9
	testq	%rax, %rax
	jne	.LBB3_15
.LBB3_63:
	movq	%rbx, %rdi
	movq	72(%rsp), %rsi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h2c217ee49dee44b6E
	ud2
.LBB3_37:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB3_42
.LBB3_39:
	testq	%rdi, %rdi
	je	.LBB3_42
	shlq	$3, %rsi
	testq	%rsi, %rsi
	je	.LBB3_42
	movl	$8, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB3_42:
	testq	%rbx, %rbx
	je	.LBB3_45
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB3_45
	movl	$8, %edx
	movq	%rbx, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB3_45:
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
.LBB3_18:
	.cfi_def_cfa_offset 160
.Ltmp0:
	leaq	.L__unnamed_1(%rip), %rdx
	movq	%r12, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17ha5d508118eb53f4eE@GOTPCREL(%rip)
.Ltmp1:
	jmp	.LBB3_10
.LBB3_20:
.Ltmp2:
	leaq	.L__unnamed_2(%rip), %rdx
	movq	%r14, %rdi
	movq	%r14, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17ha5d508118eb53f4eE@GOTPCREL(%rip)
.Ltmp3:
	jmp	.LBB3_10
.LBB3_25:
.Ltmp4:
	leaq	.L__unnamed_3(%rip), %rdx
	callq	*_ZN4core9panicking18panic_bounds_check17ha5d508118eb53f4eE@GOTPCREL(%rip)
.Ltmp5:
	jmp	.LBB3_10
.LBB3_58:
.Ltmp6:
	leaq	.L__unnamed_4(%rip), %rdx
	callq	*_ZN4core9panicking18panic_bounds_check17ha5d508118eb53f4eE@GOTPCREL(%rip)
.Ltmp7:
	jmp	.LBB3_10
.LBB3_34:
.Ltmp8:
	leaq	.L__unnamed_5(%rip), %rdx
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17ha5d508118eb53f4eE@GOTPCREL(%rip)
.Ltmp9:
	jmp	.LBB3_10
.LBB3_47:
.Ltmp10:
	leaq	.L__unnamed_6(%rip), %rdx
	movq	%rdi, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17ha5d508118eb53f4eE@GOTPCREL(%rip)
.Ltmp11:
	jmp	.LBB3_10
.LBB3_51:
.Ltmp12:
	leaq	.L__unnamed_7(%rip), %rdx
	movq	%rbp, %rdi
	callq	*_ZN4core9panicking18panic_bounds_check17ha5d508118eb53f4eE@GOTPCREL(%rip)
.Ltmp13:
	jmp	.LBB3_10
.LBB3_59:
.Ltmp16:
	leaq	.L__unnamed_8(%rip), %rdx
	movq	%r8, %rdi
	movq	%r8, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17ha5d508118eb53f4eE@GOTPCREL(%rip)
.Ltmp17:
	jmp	.LBB3_10
.LBB3_60:
.Ltmp14:
	leaq	.L__unnamed_9(%rip), %rdx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17ha5d508118eb53f4eE@GOTPCREL(%rip)
.Ltmp15:
.LBB3_10:
	ud2
.LBB3_61:
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17haa08250ff997f218E
	ud2
.LBB3_9:
.Ltmp19:
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17haa08250ff997f218E
.Ltmp20:
	jmp	.LBB3_10
.LBB3_55:
.Ltmp21:
	movq	%rax, %rbx
	jmp	.LBB3_57
.LBB3_56:
.Ltmp18:
	movq	%rax, %rbx
	leaq	8(%rsp), %rdi
	callq	_ZN4core3ptr13drop_in_place17h183a52fd63af6b43E
.LBB3_57:
	leaq	48(%rsp), %rdi
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
	.uleb128 .Ltmp15-.Ltmp0
	.uleb128 .Ltmp18-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp15-.Lfunc_begin0
	.uleb128 .Ltmp19-.Ltmp15
	.byte	0
	.byte	0
	.uleb128 .Ltmp19-.Lfunc_begin0
	.uleb128 .Ltmp20-.Ltmp19
	.uleb128 .Ltmp21-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp20-.Lfunc_begin0
	.uleb128 .Lfunc_end3-.Ltmp20
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

	.type	.L__unnamed_10,@object
	.section	.rodata..L__unnamed_10,"a",@progbits
.L__unnamed_10:
	.ascii	"../src/composition_cooperman_ma.rs"
	.size	.L__unnamed_10, 34

	.type	.L__unnamed_1,@object
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
	.p2align	3
.L__unnamed_1:
	.quad	.L__unnamed_10
	.asciz	"\"\000\000\000\000\000\000\000 \000\000\000!\000\000"
	.size	.L__unnamed_1, 24

	.type	.L__unnamed_2,@object
	.section	.data.rel.ro..L__unnamed_2,"aw",@progbits
	.p2align	3
.L__unnamed_2:
	.quad	.L__unnamed_10
	.asciz	"\"\000\000\000\000\000\000\000 \000\000\000\t\000\000"
	.size	.L__unnamed_2, 24

	.type	.L__unnamed_3,@object
	.section	.data.rel.ro..L__unnamed_3,"aw",@progbits
	.p2align	3
.L__unnamed_3:
	.quad	.L__unnamed_10
	.asciz	"\"\000\000\000\000\000\000\000%\000\000\000\023\000\000"
	.size	.L__unnamed_3, 24

	.type	.L__unnamed_4,@object
	.section	.data.rel.ro..L__unnamed_4,"aw",@progbits
	.p2align	3
.L__unnamed_4:
	.quad	.L__unnamed_10
	.asciz	"\"\000\000\000\000\000\000\000,\000\000\000\020\000\000"
	.size	.L__unnamed_4, 24

	.type	.L__unnamed_5,@object
	.section	.data.rel.ro..L__unnamed_5,"aw",@progbits
	.p2align	3
.L__unnamed_5:
	.quad	.L__unnamed_10
	.asciz	"\"\000\000\000\000\000\000\0001\000\000\000!\000\000"
	.size	.L__unnamed_5, 24

	.type	.L__unnamed_6,@object
	.section	.data.rel.ro..L__unnamed_6,"aw",@progbits
	.p2align	3
.L__unnamed_6:
	.quad	.L__unnamed_10
	.asciz	"\"\000\000\000\000\000\000\0001\000\000\000\t\000\000"
	.size	.L__unnamed_6, 24

	.type	.L__unnamed_8,@object
	.section	.data.rel.ro..L__unnamed_8,"aw",@progbits
	.p2align	3
.L__unnamed_8:
	.quad	.L__unnamed_10
	.asciz	"\"\000\000\000\000\000\000\0005\000\000\000\032\000\000"
	.size	.L__unnamed_8, 24

	.type	.L__unnamed_7,@object
	.section	.data.rel.ro..L__unnamed_7,"aw",@progbits
	.p2align	3
.L__unnamed_7:
	.quad	.L__unnamed_10
	.asciz	"\"\000\000\000\000\000\000\0006\000\000\000\032\000\000"
	.size	.L__unnamed_7, 24

	.type	.L__unnamed_9,@object
	.section	.data.rel.ro..L__unnamed_9,"aw",@progbits
	.p2align	3
.L__unnamed_9:
	.quad	.L__unnamed_10
	.asciz	"\"\000\000\000\000\000\000\0006\000\000\000\t\000\000"
	.size	.L__unnamed_9, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.section	".note.GNU-stack","",@progbits

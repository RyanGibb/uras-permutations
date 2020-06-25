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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	_ZN24composition_cooperman_ma10CACHE_SIZE17h1f6e91545a796a82E@GOTPCREL(%rip), %rax
	movq	(%rax), %r12
	cmpq	$16, %r12
	jb	.LBB3_61
	movq	%rcx, 96(%rsp)
	movq	%r8, 104(%rsp)
	movq	%r9, 120(%rsp)
	shrq	$4, %r12
	je	.LBB3_53
	movq	%rdx, %rbp
	movq	%rdi, %r13
	addq	%r12, %rdi
	addq	$-1, %rdi
	movq	%rdi, %rax
	xorl	%edx, %edx
	divq	%r12
	movq	%rax, %r15
	movl	$8, %ecx
	xorl	%r14d, %r14d
	movq	%r13, %rax
	mulq	%rcx
	setno	%cl
	jo	.LBB3_62
	movq	%rdi, 8(%rsp)
	movq	%rsi, 112(%rsp)
	movq	%rbp, 128(%rsp)
	movb	%cl, %r14b
	shlq	$3, %r14
	testq	%rax, %rax
	movq	%rax, (%rsp)
	je	.LBB3_5
	movq	%rax, %rdi
	movq	%r14, %rbp
	movq	%r14, %rsi
	callq	*__rust_alloc_zeroed@GOTPCREL(%rip)
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB3_63
.LBB3_7:
	movq	(%rsp), %rcx
	shrq	$3, %rcx
	movl	$8, %edx
	xorl	%esi, %esi
	movq	%r15, %rax
	mulq	%rdx
	movq	%rax, %rbp
	setno	%al
	movq	%r14, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r13, 80(%rsp)
	jo	.LBB3_8
	movb	%al, %sil
	shlq	$3, %rsi
	testq	%rbp, %rbp
	movq	%rsi, 88(%rsp)
	je	.LBB3_12
	movq	%rbp, %rdi
	callq	*__rust_alloc@GOTPCREL(%rip)
	movq	8(%rsp), %r11
	testq	%rax, %rax
	je	.LBB3_64
.LBB3_14:
	shrq	$3, %rbp
	movq	%rax, 16(%rsp)
	movq	%rbp, 24(%rsp)
	movq	%r15, 32(%rsp)
	cmpq	%r11, %r12
	jbe	.LBB3_15
	testq	%r13, %r13
	jne	.LBB3_19
	movq	16(%rsp), %rcx
	movq	(%rsp), %rbx
	movq	24(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB3_46
.LBB3_43:
	testq	%rcx, %rcx
	je	.LBB3_46
	shlq	$3, %rsi
	testq	%rsi, %rsi
	je	.LBB3_46
	movl	$8, %edx
	movq	%rcx, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	testq	%rbx, %rbx
	jne	.LBB3_47
	jmp	.LBB3_49
.LBB3_15:
	leaq	(,%r12,8), %rcx
	xorl	%edi, %edi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB3_16:
	cmpq	%r13, %rdi
	jae	.LBB3_17
	cmpq	%r15, %rdx
	je	.LBB3_24
	movq	%r14, (%rax,%rdx,8)
	addq	$1, %rdx
	addq	%r12, %rdi
	addq	%rcx, %r14
	cmpq	%r15, %rdx
	jb	.LBB3_16
.LBB3_19:
	movq	(%rsp), %r8
	movq	192(%rsp), %rdi
	movq	16(%rsp), %rbp
	movq	32(%rsp), %rsi
	xorl	%ebx, %ebx
	movq	128(%rsp), %r9
	movq	112(%rsp), %r10
	.p2align	4, 0x90
.LBB3_20:
	cmpq	%rbx, %r9
	je	.LBB3_57
	movq	(%r10,%rbx,8), %rcx
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%r12
	cmpq	%rax, %rsi
	jbe	.LBB3_22
	addq	$1, %rbx
	movq	(%rbp,%rax,8), %rdx
	movq	%rcx, (%rdx)
	addq	$8, (%rbp,%rax,8)
	cmpq	%rbx, %r13
	jne	.LBB3_20
	movq	64(%rsp), %rcx
	xorl	%edx, %edx
	movq	104(%rsp), %rsi
	movq	96(%rsp), %rbp
	.p2align	4, 0x90
.LBB3_28:
	movq	(%rcx,%rdx,8), %rax
	cmpq	%rsi, %rax
	jae	.LBB3_58
	movq	(%rbp,%rax,8), %rax
	movq	%rax, (%rcx,%rdx,8)
	addq	$1, %rdx
	cmpq	%rdx, %r13
	jne	.LBB3_28
	cmpq	%r11, %r12
	ja	.LBB3_37
	movq	16(%rsp), %rcx
	movq	32(%rsp), %rsi
	movq	64(%rsp), %rdx
	leaq	(,%r12,8), %rbp
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB3_32:
	cmpq	%r13, %rax
	jae	.LBB3_33
	cmpq	%rbx, %rsi
	je	.LBB3_35
	movq	%rdx, (%rcx,%rbx,8)
	addq	$1, %rbx
	addq	%r12, %rax
	addq	%rbp, %rdx
	cmpq	%r15, %rbx
	jb	.LBB3_32
.LBB3_37:
	movq	16(%rsp), %rcx
	movq	32(%rsp), %rsi
	xorl	%ebp, %ebp
	movq	120(%rsp), %rbx
	.p2align	4, 0x90
.LBB3_38:
	cmpq	%rbp, %r9
	je	.LBB3_59
	movq	(%r10,%rbp,8), %rax
	xorl	%edx, %edx
	divq	%r12
	cmpq	%rax, %rsi
	jbe	.LBB3_40
	cmpq	%rbp, %rdi
	je	.LBB3_60
	movq	(%rcx,%rax,8), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rbx,%rbp,8)
	addq	$1, %rbp
	addq	$8, (%rcx,%rax,8)
	cmpq	%rbp, %r13
	jne	.LBB3_38
	movq	%r8, %rbx
	movq	24(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB3_43
.LBB3_46:
	testq	%rbx, %rbx
	je	.LBB3_49
.LBB3_47:
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB3_49
	movl	$8, %edx
	movq	%rbx, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB3_49:
	addq	$136, %rsp
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
.LBB3_5:
	.cfi_def_cfa_offset 192
	movq	%r14, %rbp
	testq	%r14, %r14
	jne	.LBB3_7
.LBB3_63:
	movq	(%rsp), %rdi
	movq	%rbp, %rsi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h75d484eb4b09f8f2E
	ud2
.LBB3_12:
	movq	%rsi, %rax
	movq	8(%rsp), %r11
	testq	%rax, %rax
	jne	.LBB3_14
.LBB3_64:
	movq	%rbp, %rdi
	movq	88(%rsp), %rsi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h75d484eb4b09f8f2E
	ud2
.LBB3_22:
.Ltmp4:
	leaq	.L__unnamed_1(%rip), %rdx
	movq	%rax, %rdi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp5:
	jmp	.LBB3_9
.LBB3_57:
.Ltmp18:
	leaq	.L__unnamed_2(%rip), %rdx
	movq	%r9, %rdi
	movq	%r9, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp19:
	jmp	.LBB3_9
.LBB3_58:
.Ltmp6:
	leaq	.L__unnamed_3(%rip), %rdx
	movq	%rax, %rdi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp7:
	jmp	.LBB3_9
.LBB3_40:
.Ltmp12:
	leaq	.L__unnamed_4(%rip), %rdx
	movq	%rax, %rdi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp13:
	jmp	.LBB3_9
.LBB3_59:
.Ltmp16:
	leaq	.L__unnamed_5(%rip), %rdx
	movq	%r9, %rdi
	movq	%r9, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp17:
	jmp	.LBB3_9
.LBB3_60:
.Ltmp14:
	leaq	.L__unnamed_6(%rip), %rdx
	movq	%rdi, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp15:
	jmp	.LBB3_9
.LBB3_17:
.Ltmp0:
	leaq	.L__unnamed_7(%rip), %rdx
	movq	%r13, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp1:
	jmp	.LBB3_9
.LBB3_24:
.Ltmp2:
	leaq	.L__unnamed_8(%rip), %rdx
	movq	%r15, %rdi
	movq	%r15, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp3:
	jmp	.LBB3_9
.LBB3_33:
.Ltmp8:
	leaq	.L__unnamed_9(%rip), %rdx
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp9:
	jmp	.LBB3_9
.LBB3_35:
.Ltmp10:
	leaq	.L__unnamed_10(%rip), %rdx
	movq	%rsi, %rdi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp11:
.LBB3_9:
	ud2
.LBB3_61:
	leaq	.L__unnamed_11(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	leaq	.L__unnamed_12(%rip), %rax
	movq	%rax, 48(%rsp)
	movq	$0, 56(%rsp)
	leaq	16(%rsp), %rdi
	callq	*_ZN3std2io5stdio7_eprint17h56e0814799ae2244E@GOTPCREL(%rip)
	movl	$1, %edi
	callq	*_ZN3std7process4exit17ha914539e52c28348E@GOTPCREL(%rip)
	ud2
.LBB3_53:
	leaq	str.0(%rip), %rdi
	leaq	.L__unnamed_13(%rip), %rdx
	movl	$25, %esi
	callq	*_ZN4core9panicking5panic17h57854ec308e1f8abE@GOTPCREL(%rip)
	ud2
.LBB3_62:
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h94c6334c7c183e4eE
	ud2
.LBB3_8:
.Ltmp21:
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h94c6334c7c183e4eE
.Ltmp22:
	jmp	.LBB3_9
.LBB3_54:
.Ltmp23:
	movq	%rax, %rbx
	jmp	.LBB3_56
.LBB3_55:
.Ltmp20:
	movq	%rax, %rbx
	leaq	16(%rsp), %rdi
	callq	_ZN4core3ptr13drop_in_place17h1ab9af538ccbe371E
.LBB3_56:
	leaq	64(%rsp), %rdi
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

	.type	.L__unnamed_12,@object
	.section	.rodata..L__unnamed_12,"a",@progbits
	.p2align	3
.L__unnamed_12:
	.size	.L__unnamed_12, 0

	.type	str.0,@object
	.section	.rodata.str.0,"a",@progbits
	.p2align	4
str.0:
	.ascii	"attempt to divide by zero"
	.size	str.0, 25

	.type	_ZN24composition_cooperman_ma10CACHE_SIZE17h1f6e91545a796a82E,@object
	.section	.data._ZN24composition_cooperman_ma10CACHE_SIZE17h1f6e91545a796a82E,"aw",@progbits
	.globl	_ZN24composition_cooperman_ma10CACHE_SIZE17h1f6e91545a796a82E
	.p2align	3
_ZN24composition_cooperman_ma10CACHE_SIZE17h1f6e91545a796a82E:
	.asciz	"\000\001\000\000\000\000\000"
	.size	_ZN24composition_cooperman_ma10CACHE_SIZE17h1f6e91545a796a82E, 8

	.type	.L__unnamed_14,@object
	.section	.rodata..L__unnamed_14,"a",@progbits
.L__unnamed_14:
	.ascii	"Cache size must be large enough to fit at least two indices.\n"
	.size	.L__unnamed_14, 61

	.type	.L__unnamed_11,@object
	.section	.data.rel.ro..L__unnamed_11,"aw",@progbits
	.p2align	3
.L__unnamed_11:
	.quad	.L__unnamed_14
	.asciz	"=\000\000\000\000\000\000"
	.size	.L__unnamed_11, 16

	.type	.L__unnamed_15,@object
	.section	.rodata..L__unnamed_15,"a",@progbits
.L__unnamed_15:
	.ascii	"../src/composition_cooperman_ma.rs"
	.size	.L__unnamed_15, 34

	.type	.L__unnamed_13,@object
	.section	.data.rel.ro..L__unnamed_13,"aw",@progbits
	.p2align	3
.L__unnamed_13:
	.quad	.L__unnamed_15
	.asciz	"\"\000\000\000\000\000\000\000\023\000\000\000\034\000\000"
	.size	.L__unnamed_13, 24

	.type	.L__unnamed_7,@object
	.section	.data.rel.ro..L__unnamed_7,"aw",@progbits
	.p2align	3
.L__unnamed_7:
	.quad	.L__unnamed_15
	.asciz	"\"\000\000\000\000\000\000\000\035\000\000\000!\000\000"
	.size	.L__unnamed_7, 24

	.type	.L__unnamed_8,@object
	.section	.data.rel.ro..L__unnamed_8,"aw",@progbits
	.p2align	3
.L__unnamed_8:
	.quad	.L__unnamed_15
	.asciz	"\"\000\000\000\000\000\000\000\035\000\000\000\t\000\000"
	.size	.L__unnamed_8, 24

	.type	.L__unnamed_2,@object
	.section	.data.rel.ro..L__unnamed_2,"aw",@progbits
	.p2align	3
.L__unnamed_2:
	.quad	.L__unnamed_15
	.asciz	"\"\000\000\000\000\000\000\000 \000\000\000 \000\000"
	.size	.L__unnamed_2, 24

	.type	.L__unnamed_1,@object
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
	.p2align	3
.L__unnamed_1:
	.quad	.L__unnamed_15
	.asciz	"\"\000\000\000\000\000\000\000!\000\000\000\023\000\000"
	.size	.L__unnamed_1, 24

	.type	.L__unnamed_3,@object
	.section	.data.rel.ro..L__unnamed_3,"aw",@progbits
	.p2align	3
.L__unnamed_3:
	.quad	.L__unnamed_15
	.asciz	"\"\000\000\000\000\000\000\000(\000\000\000\020\000\000"
	.size	.L__unnamed_3, 24

	.type	.L__unnamed_9,@object
	.section	.data.rel.ro..L__unnamed_9,"aw",@progbits
	.p2align	3
.L__unnamed_9:
	.quad	.L__unnamed_15
	.asciz	"\"\000\000\000\000\000\000\000-\000\000\000!\000\000"
	.size	.L__unnamed_9, 24

	.type	.L__unnamed_10,@object
	.section	.data.rel.ro..L__unnamed_10,"aw",@progbits
	.p2align	3
.L__unnamed_10:
	.quad	.L__unnamed_15
	.asciz	"\"\000\000\000\000\000\000\000-\000\000\000\t\000\000"
	.size	.L__unnamed_10, 24

	.type	.L__unnamed_5,@object
	.section	.data.rel.ro..L__unnamed_5,"aw",@progbits
	.p2align	3
.L__unnamed_5:
	.quad	.L__unnamed_15
	.asciz	"\"\000\000\000\000\000\000\0000\000\000\000\031\000\000"
	.size	.L__unnamed_5, 24

	.type	.L__unnamed_4,@object
	.section	.data.rel.ro..L__unnamed_4,"aw",@progbits
	.p2align	3
.L__unnamed_4:
	.quad	.L__unnamed_15
	.asciz	"\"\000\000\000\000\000\000\0001\000\000\000\032\000\000"
	.size	.L__unnamed_4, 24

	.type	.L__unnamed_6,@object
	.section	.data.rel.ro..L__unnamed_6,"aw",@progbits
	.p2align	3
.L__unnamed_6:
	.quad	.L__unnamed_15
	.asciz	"\"\000\000\000\000\000\000\0001\000\000\000\t\000\000"
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

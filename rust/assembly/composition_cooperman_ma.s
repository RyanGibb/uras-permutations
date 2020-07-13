	.text
	.file	"composition_cooperman_ma.3a1fbbbh-cgu.0"
	.section	.text._ZN4core3ptr13drop_in_place17h4726e1a204ecd691E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr13drop_in_place17h4726e1a204ecd691E,@function
_ZN4core3ptr13drop_in_place17h4726e1a204ecd691E:
	.cfi_startproc
	movq	8(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB0_3
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB0_3
	shlq	$2, %rsi
	testq	%rsi, %rsi
	je	.LBB0_3
	movl	$4, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB0_3:
	retq
.Lfunc_end0:
	.size	_ZN4core3ptr13drop_in_place17h4726e1a204ecd691E, .Lfunc_end0-_ZN4core3ptr13drop_in_place17h4726e1a204ecd691E
	.cfi_endproc

	.section	.text._ZN4core3ptr13drop_in_place17hde34e209fddf0699E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr13drop_in_place17hde34e209fddf0699E,@function
_ZN4core3ptr13drop_in_place17hde34e209fddf0699E:
	.cfi_startproc
	movq	8(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB1_3
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB1_3
	shlq	$3, %rsi
	testq	%rsi, %rsi
	je	.LBB1_3
	movl	$8, %edx
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB1_3:
	retq
.Lfunc_end1:
	.size	_ZN4core3ptr13drop_in_place17hde34e209fddf0699E, .Lfunc_end1-_ZN4core3ptr13drop_in_place17hde34e209fddf0699E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h80b9c8488d6893f8E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h80b9c8488d6893f8E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h80b9c8488d6893f8E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*_ZN5alloc5alloc18handle_alloc_error17h4708e9620f23812bE@GOTPCREL(%rip)
	ud2
.Lfunc_end2:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h80b9c8488d6893f8E, .Lfunc_end2-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h80b9c8488d6893f8E
	.cfi_endproc

	.section	".text._ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17he8440ce6627a33c0E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17he8440ce6627a33c0E,@function
_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17he8440ce6627a33c0E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*_ZN5alloc7raw_vec17capacity_overflow17hdeab58106aa834b9E@GOTPCREL(%rip)
	ud2
.Lfunc_end3:
	.size	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17he8440ce6627a33c0E, .Lfunc_end3-_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17he8440ce6627a33c0E
	.cfi_endproc

	.section	.text._ZN24composition_cooperman_ma24composition_cooperman_ma17h1e480e27682be846E,"ax",@progbits
	.globl	_ZN24composition_cooperman_ma24composition_cooperman_ma17h1e480e27682be846E
	.p2align	4, 0x90
	.type	_ZN24composition_cooperman_ma24composition_cooperman_ma17h1e480e27682be846E,@function
_ZN24composition_cooperman_ma24composition_cooperman_ma17h1e480e27682be846E:
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
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, 112(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rcx, 104(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%rsi, 64(%rsp)
	movl	%edi, %r15d
	movq	_ZN24composition_cooperman_ma10CACHE_SIZE17h1f6e91545a796a82E@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	shrq	$3, %rax
	cvtsi2sd	%rax, %xmm0
	callq	*log2@GOTPCREL(%rip)
	cvttsd2si	%xmm0, %ecx
	movzbl	%cl, %r8d
	movl	$2, %ebp
	movl	$1, %r12d
	movl	$1, %edx
	movl	%r8d, %esi
	cmpb	$2, %r8b
	jb	.LBB4_3
	movl	$1, %edi
	movl	$2, %ebp
	movl	%r8d, %ebx
	movl	$1, %edx
	movl	%r8d, %esi
	.p2align	4, 0x90
.LBB4_2:
	testb	$1, %bl
	movq	%rbp, %rax
	cmoveq	%rdi, %rax
	imulq	%rax, %rdx
	shrl	%esi
	imulq	%rbp, %rbp
	cmpl	$3, %ebx
	movl	%esi, %ebx
	ja	.LBB4_2
.LBB4_3:
	movq	%r8, 48(%rsp)
	cmpl	$1, %esi
	cmoveq	%rbp, %r12
	imulq	%rdx, %r12
	movl	%r15d, %r13d
	leaq	(%r12,%r13), %r14
	addq	$-1, %r14
	shrq	%cl, %r14
	leaq	(,%r13,4), %rdi
	movl	%r15d, 36(%rsp)
	testl	%r15d, %r15d
	movq	%rdi, 40(%rsp)
	je	.LBB4_4
	movl	$4, %esi
	callq	*__rust_alloc_zeroed@GOTPCREL(%rip)
	movq	%rax, %r15
	testq	%rax, %rax
	jne	.LBB4_6
	movl	$4, %esi
	movq	40(%rsp), %rdi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h80b9c8488d6893f8E
	ud2
.LBB4_4:
	movl	$4, %r15d
.LBB4_6:
	movl	$8, %ecx
	xorl	%esi, %esi
	movq	%r14, %rax
	mulq	%rcx
	setno	%cl
	movq	%r15, 80(%rsp)
	movq	%r13, 88(%rsp)
	movq	%r13, 96(%rsp)
	jo	.LBB4_7
	movb	%cl, %sil
	shlq	$3, %rsi
	testq	%rax, %rax
	je	.LBB4_11
	movq	%rax, %rbp
	movq	%rax, %rdi
	movq	%rsi, %rbx
	callq	*__rust_alloc@GOTPCREL(%rip)
	jmp	.LBB4_12
.LBB4_11:
	movq	%rax, %rbp
	movq	%rsi, %rbx
	movq	%rsi, %rax
.LBB4_12:
	movq	72(%rsp), %r8
	movq	64(%rsp), %r9
	movq	48(%rsp), %r10
	movq	56(%rsp), %r11
	testq	%rax, %rax
	je	.LBB4_61
	shrq	$3, %rbp
	movq	%rax, 8(%rsp)
	movq	%rbp, 16(%rsp)
	movq	%r14, 24(%rsp)
	testq	%r14, %r14
	je	.LBB4_18
	leaq	(,%r12,4), %rcx
	xorl	%edi, %edi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB4_15:
	cmpq	%r13, %rdi
	jae	.LBB4_16
	cmpq	%rdx, %r14
	je	.LBB4_24
	movq	%r15, (%rax,%rdx,8)
	addq	$1, %rdx
	addq	%r12, %rdi
	addq	%rcx, %r15
	cmpq	%rdx, %r14
	jne	.LBB4_15
.LBB4_18:
	movl	36(%rsp), %r15d
	testl	%r15d, %r15d
	je	.LBB4_30
	movl	%r10d, %ecx
	andl	$31, %ecx
	movq	8(%rsp), %rax
	movq	24(%rsp), %rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB4_20:
	cmpq	%rdx, %r8
	je	.LBB4_56
	movl	(%r9,%rdx,4), %ebx
	movq	%rbx, %rdi
	shrq	%cl, %rdi
	cmpq	%rdi, %rsi
	jbe	.LBB4_22
	addq	$1, %rdx
	movq	(%rax,%rdi,8), %rbp
	movl	%ebx, (%rbp)
	addq	$4, (%rax,%rdi,8)
	cmpq	%rdx, %r13
	jne	.LBB4_20
	testl	%r15d, %r15d
	movq	104(%rsp), %rsi
	je	.LBB4_30
	movq	80(%rsp), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB4_28:
	movl	(%rax,%rcx,4), %edi
	cmpq	%r11, %rdi
	jae	.LBB4_57
	movl	(%rsi,%rdi,4), %edx
	movl	%edx, (%rax,%rcx,4)
	addq	$1, %rcx
	cmpq	%rcx, %r13
	jne	.LBB4_28
.LBB4_30:
	testq	%r14, %r14
	je	.LBB4_35
	movq	8(%rsp), %rcx
	movq	24(%rsp), %rdi
	movq	80(%rsp), %rdx
	leaq	(,%r12,4), %rsi
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB4_32:
	cmpq	%r13, %rax
	jae	.LBB4_33
	cmpq	%rbx, %rdi
	je	.LBB4_46
	movq	%rdx, (%rcx,%rbx,8)
	addq	$1, %rbx
	addq	%r12, %rax
	addq	%rsi, %rdx
	cmpq	%rbx, %r14
	jne	.LBB4_32
.LBB4_35:
	testl	%r15d, %r15d
	je	.LBB4_36
	movq	176(%rsp), %rax
	andl	$31, %r10d
	movq	8(%rsp), %rdi
	movq	24(%rsp), %rsi
	xorl	%edx, %edx
	movq	112(%rsp), %rbp
	.p2align	4, 0x90
.LBB4_48:
	cmpq	%rdx, %r8
	je	.LBB4_58
	movl	(%r9,%rdx,4), %ebx
	movl	%r10d, %ecx
	shrq	%cl, %rbx
	cmpq	%rbx, %rsi
	jbe	.LBB4_50
	cmpq	%rdx, %rax
	je	.LBB4_59
	movq	(%rdi,%rbx,8), %rcx
	movl	(%rcx), %ecx
	movl	%ecx, (%rbp,%rdx,4)
	addq	$1, %rdx
	addq	$4, (%rdi,%rbx,8)
	cmpq	%rdx, %r13
	jne	.LBB4_48
	movq	16(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB4_41
.LBB4_38:
	testq	%rdi, %rdi
	je	.LBB4_41
	shlq	$3, %rsi
	testq	%rsi, %rsi
	je	.LBB4_41
	movl	$8, %edx
	callq	*__rust_dealloc@GOTPCREL(%rip)
	testl	%r15d, %r15d
	jne	.LBB4_42
	jmp	.LBB4_44
.LBB4_36:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB4_38
.LBB4_41:
	testl	%r15d, %r15d
	je	.LBB4_44
.LBB4_42:
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB4_44
	movl	$4, %edx
	movq	40(%rsp), %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB4_44:
	addq	$120, %rsp
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
.LBB4_16:
	.cfi_def_cfa_offset 176
.Ltmp0:
	leaq	.L__unnamed_1(%rip), %rdx
	movq	%r13, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp1:
	jmp	.LBB4_8
.LBB4_24:
.Ltmp2:
	leaq	.L__unnamed_2(%rip), %rdx
	movq	%r14, %rdi
	movq	%r14, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp3:
	jmp	.LBB4_8
.LBB4_22:
	movl	%edi, %edi
.Ltmp4:
	leaq	.L__unnamed_3(%rip), %rdx
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp5:
	jmp	.LBB4_8
.LBB4_56:
.Ltmp8:
	leaq	.L__unnamed_4(%rip), %rdx
	movq	%r8, %rdi
	movq	%r8, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp9:
	jmp	.LBB4_8
.LBB4_33:
.Ltmp10:
	leaq	.L__unnamed_5(%rip), %rdx
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp11:
	jmp	.LBB4_8
.LBB4_46:
.Ltmp12:
	leaq	.L__unnamed_6(%rip), %rdx
	movq	%rdi, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp13:
	jmp	.LBB4_8
.LBB4_50:
	movl	%ebx, %edi
.Ltmp14:
	leaq	.L__unnamed_7(%rip), %rdx
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp15:
	jmp	.LBB4_8
.LBB4_59:
.Ltmp16:
	leaq	.L__unnamed_8(%rip), %rdx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp17:
	jmp	.LBB4_8
.LBB4_58:
.Ltmp18:
	leaq	.L__unnamed_9(%rip), %rdx
	movq	%r8, %rdi
	movq	%r8, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp19:
	jmp	.LBB4_8
.LBB4_57:
.Ltmp6:
	leaq	.L__unnamed_10(%rip), %rdx
	movq	%r11, %rsi
	callq	*_ZN4core9panicking18panic_bounds_check17h111737a547b9c0f6E@GOTPCREL(%rip)
.Ltmp7:
.LBB4_8:
	ud2
.LBB4_7:
.Ltmp21:
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17he8440ce6627a33c0E
.Ltmp22:
	jmp	.LBB4_8
.LBB4_61:
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17h80b9c8488d6893f8E
	ud2
.LBB4_53:
.Ltmp23:
	movq	%rax, %rbx
	jmp	.LBB4_55
.LBB4_54:
.Ltmp20:
	movq	%rax, %rbx
	leaq	8(%rsp), %rdi
	callq	_ZN4core3ptr13drop_in_place17hde34e209fddf0699E
.LBB4_55:
	leaq	80(%rsp), %rdi
	callq	_ZN4core3ptr13drop_in_place17h4726e1a204ecd691E
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.Lfunc_end4:
	.size	_ZN24composition_cooperman_ma24composition_cooperman_ma17h1e480e27682be846E, .Lfunc_end4-_ZN24composition_cooperman_ma24composition_cooperman_ma17h1e480e27682be846E
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table4:
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
	.uleb128 .Ltmp7-.Ltmp0
	.uleb128 .Ltmp20-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp21-.Lfunc_begin0
	.uleb128 .Ltmp22-.Ltmp21
	.uleb128 .Ltmp23-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp22-.Lfunc_begin0
	.uleb128 .Lfunc_end4-.Ltmp22
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

	.type	.L__unnamed_1,@object
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
	.p2align	3
.L__unnamed_1:
	.quad	.L__unnamed_11
	.asciz	"\"\000\000\000\000\000\000\000 \000\000\000!\000\000"
	.size	.L__unnamed_1, 24

	.type	.L__unnamed_2,@object
	.section	.data.rel.ro..L__unnamed_2,"aw",@progbits
	.p2align	3
.L__unnamed_2:
	.quad	.L__unnamed_11
	.asciz	"\"\000\000\000\000\000\000\000 \000\000\000\t\000\000"
	.size	.L__unnamed_2, 24

	.type	.L__unnamed_4,@object
	.section	.data.rel.ro..L__unnamed_4,"aw",@progbits
	.p2align	3
.L__unnamed_4:
	.quad	.L__unnamed_11
	.asciz	"\"\000\000\000\000\000\000\000#\000\000\000\032\000\000"
	.size	.L__unnamed_4, 24

	.type	.L__unnamed_3,@object
	.section	.data.rel.ro..L__unnamed_3,"aw",@progbits
	.p2align	3
.L__unnamed_3:
	.quad	.L__unnamed_11
	.asciz	"\"\000\000\000\000\000\000\000$\000\000\000\023\000\000"
	.size	.L__unnamed_3, 24

	.type	.L__unnamed_10,@object
	.section	.data.rel.ro..L__unnamed_10,"aw",@progbits
	.p2align	3
.L__unnamed_10:
	.quad	.L__unnamed_11
	.asciz	"\"\000\000\000\000\000\000\000+\000\000\000\020\000\000"
	.size	.L__unnamed_10, 24

	.type	.L__unnamed_5,@object
	.section	.data.rel.ro..L__unnamed_5,"aw",@progbits
	.p2align	3
.L__unnamed_5:
	.quad	.L__unnamed_11
	.asciz	"\"\000\000\000\000\000\000\0000\000\000\000!\000\000"
	.size	.L__unnamed_5, 24

	.type	.L__unnamed_6,@object
	.section	.data.rel.ro..L__unnamed_6,"aw",@progbits
	.p2align	3
.L__unnamed_6:
	.quad	.L__unnamed_11
	.asciz	"\"\000\000\000\000\000\000\0000\000\000\000\t\000\000"
	.size	.L__unnamed_6, 24

	.type	.L__unnamed_9,@object
	.section	.data.rel.ro..L__unnamed_9,"aw",@progbits
	.p2align	3
.L__unnamed_9:
	.quad	.L__unnamed_11
	.asciz	"\"\000\000\000\000\000\000\0003\000\000\000\032\000\000"
	.size	.L__unnamed_9, 24

	.type	.L__unnamed_7,@object
	.section	.data.rel.ro..L__unnamed_7,"aw",@progbits
	.p2align	3
.L__unnamed_7:
	.quad	.L__unnamed_11
	.asciz	"\"\000\000\000\000\000\000\0004\000\000\000\032\000\000"
	.size	.L__unnamed_7, 24

	.type	.L__unnamed_8,@object
	.section	.data.rel.ro..L__unnamed_8,"aw",@progbits
	.p2align	3
.L__unnamed_8:
	.quad	.L__unnamed_11
	.asciz	"\"\000\000\000\000\000\000\0004\000\000\000\t\000\000"
	.size	.L__unnamed_8, 24

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality

	.section	".note.GNU-stack","",@progbits

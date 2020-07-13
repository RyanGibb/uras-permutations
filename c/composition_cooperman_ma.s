	.file	"composition_cooperman_ma.c"
# GNU C99 (GCC) version 10.1.1 20200507 (Red Hat 10.1.1-1) (x86_64-redhat-linux)
#	compiled by GNU C version 10.1.1 20200507 (Red Hat 10.1.1-1), GMP version 6.1.2, MPFR version 4.0.2-p7, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  composition_cooperman_ma.c -mtune=generic -march=x86-64
# -O3 -Wall -std=c99 -fverbose-asm
# options enabled:  -faggressive-loop-optimizations -falign-functions
# -falign-jumps -falign-labels -falign-loops -fallocation-dce
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
# -fcaller-saves -fcode-hoisting -fcombine-stack-adjustments -fcompare-elim
# -fcprop-registers -fcrossjumping -fcse-follow-jumps -fdefer-pop
# -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-symbols
# -feliminate-unused-debug-types -fexpensive-optimizations
# -fforward-propagate -ffp-int-builtin-inexact -ffunction-cse -fgcse
# -fgcse-after-reload -fgcse-lm -fgnu-unique -fguess-branch-probability
# -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
# -findirect-inlining -finline -finline-atomics -finline-functions
# -finline-functions-called-once -finline-small-functions -fipa-bit-cp
# -fipa-cp -fipa-cp-clone -fipa-icf -fipa-icf-functions -fipa-icf-variables
# -fipa-profile -fipa-pure-const -fipa-ra -fipa-reference
# -fipa-reference-addressable -fipa-sra -fipa-stack-alignment -fipa-vrp
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -floop-interchange
# -floop-unroll-and-jam -flra-remat -fmath-errno -fmerge-constants
# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
# -foptimize-sibling-calls -foptimize-strlen -fpartial-inlining
# -fpeel-loops -fpeephole -fpeephole2 -fplt -fpredictive-commoning
# -fprefetch-loop-arrays -free -freg-struct-return -freorder-blocks
# -freorder-blocks-and-partition -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fschedule-insns2
# -fsemantic-interposition -fshow-column -fshrink-wrap
# -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
# -fsplit-loops -fsplit-paths -fsplit-wide-types -fssa-backprop
# -fssa-phiopt -fstdarg-opt -fstore-merging -fstrict-aliasing
# -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
# -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop -ftree-cselim
# -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-distribute-patterns -ftree-loop-distribution
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-loop-vectorize -ftree-parallelize-loops=
# -ftree-partial-pre -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc
# -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-slsr -ftree-sra
# -ftree-switch-conversion -ftree-tail-merge -ftree-ter -ftree-vrp
# -funit-at-a-time -funswitch-loops -funwind-tables -fverbose-asm
# -fversion-loops-for-strides -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -malign-stringops
# -mavx256-split-unaligned-load -mavx256-split-unaligned-store
# -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp
# -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msse -msse2
# -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
	.p2align 4
	.globl	composition_cooperman_ma
	.type	composition_cooperman_ma, @function
composition_cooperman_ma:
.LFB5:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
# composition_cooperman_ma.c:16: 	char block_length_shift = (char) floor(log2(block_length));
	pxor	%xmm0, %xmm0	# tmp141
# composition_cooperman_ma.c:12: void composition_cooperman_ma(size_t n, perm_t x[], perm_t y[], perm_t z[]) {
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rcx, %r14	# tmp178, z
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r13	# tmp176, x
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp	# tmp175, n
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %rbx	# tmp177, y
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
# composition_cooperman_ma.c:14: 	size_t block_length = cache_size/2/sizeof(perm_t);
	movq	cache_size(%rip), %rax	# cache_size, block_length
	shrq	$4, %rax	#, block_length
# composition_cooperman_ma.c:16: 	char block_length_shift = (char) floor(log2(block_length));
	cvtsi2sdq	%rax, %xmm0	# block_length, tmp141
	call	log2	#
	movsd	.LC1(%rip), %xmm2	#, tmp146
	movsd	.LC0(%rip), %xmm4	#, tmp142
	movapd	%xmm0, %xmm3	# _3, tmp144
	andpd	%xmm2, %xmm3	# tmp146, tmp144
	ucomisd	%xmm3, %xmm4	# tmp144, tmp142
	jbe	.L2	#,
	cvttsd2siq	%xmm0, %rax	# _3, tmp147
	pxor	%xmm3, %xmm3	# tmp144
	movapd	%xmm0, %xmm1	# tmp179, _3
	andnpd	%xmm1, %xmm2	# _3, tmp151
	cvtsi2sdq	%rax, %xmm3	# tmp147, tmp144
	movapd	%xmm3, %xmm4	# tmp144, tmp149
	cmpnlesd	%xmm0, %xmm4	#, _3, tmp149
	movsd	.LC2(%rip), %xmm0	#, tmp148
	andpd	%xmm0, %xmm4	# tmp148, tmp149
	subsd	%xmm4, %xmm3	# tmp149, tmp144
	movapd	%xmm3, %xmm0	# tmp144, _3
	orpd	%xmm2, %xmm0	# tmp151, _3
.L2:
# composition_cooperman_ma.c:16: 	char block_length_shift = (char) floor(log2(block_length));
	cvttsd2sil	%xmm0, %ecx	# _3, tmp152
# composition_cooperman_ma.c:18: 	block_length = (size_t) pow(2, block_length_shift);
	pxor	%xmm1, %xmm1	#
	movsd	.LC3(%rip), %xmm0	#,
	movsbl	%cl, %ecx	# tmp152, _9
	cvtsi2sdl	%ecx, %xmm1	# _9,
	movl	%ecx, (%rsp)	# _9, %sfp
	call	pow	#
# composition_cooperman_ma.c:18: 	block_length = (size_t) pow(2, block_length_shift);
	movsd	.LC4(%rip), %xmm1	#, tmp156
	movl	(%rsp), %ecx	# %sfp, _9
	comisd	%xmm1, %xmm0	# tmp156, _6
	jnb	.L3	#,
	cvttsd2siq	%xmm0, %r12	# _6, block_length
.L4:
# composition_cooperman_ma.c:22: 	perm_t* d = malloc(n * sizeof(perm_t));
	leaq	0(,%rbp,8), %r8	#, _10
# composition_cooperman_ma.c:21: 	size_t number_of_blocks = (n + block_length - 1) >> block_length_shift;
	leaq	-1(%r12,%rbp), %r15	#, tmp161
# composition_cooperman_ma.c:21: 	size_t number_of_blocks = (n + block_length - 1) >> block_length_shift;
	movl	%ecx, 20(%rsp)	# _9, %sfp
	shrq	%cl, %r15	# _9, number_of_blocks
# composition_cooperman_ma.c:22: 	perm_t* d = malloc(n * sizeof(perm_t));
	movq	%r8, %rdi	# _10,
	movq	%r8, 8(%rsp)	# _10, %sfp
	call	malloc	#
# composition_cooperman_ma.c:23: 	perm_t** d_ptr = malloc(number_of_blocks * sizeof(perm_t*));
	leaq	0(,%r15,8), %rdi	#, _11
# composition_cooperman_ma.c:22: 	perm_t* d = malloc(n * sizeof(perm_t));
	movq	%rax, (%rsp)	# d, %sfp
# composition_cooperman_ma.c:23: 	perm_t** d_ptr = malloc(number_of_blocks * sizeof(perm_t*));
	movq	%rdi, 24(%rsp)	# _11, %sfp
	call	malloc	#
# composition_cooperman_ma.c:28: 	for (block_num = 0; block_num < number_of_blocks; block_num++) {
	testq	%r15, %r15	# number_of_blocks
	movq	(%rsp), %r9	# %sfp, d
	movl	20(%rsp), %ecx	# %sfp, _9
	movq	8(%rsp), %r8	# %sfp, _10
# composition_cooperman_ma.c:23: 	perm_t** d_ptr = malloc(number_of_blocks * sizeof(perm_t*));
	movq	%rax, %rsi	# tmp182, d_ptr
# composition_cooperman_ma.c:28: 	for (block_num = 0; block_num < number_of_blocks; block_num++) {
	je	.L5	#,
	movq	24(%rsp), %rdi	# %sfp, _11
	leaq	0(,%r12,8), %r10	#, _127
	movq	%r9, %rdx	# d, ivtmp.32
	addq	%rax, %rdi	# d_ptr, _119
	.p2align 4,,10
	.p2align 3
.L6:
# composition_cooperman_ma.c:29: 		d_ptr[block_num] = &d[block_num * block_length];
	movq	%rdx, (%rax)	# ivtmp.32, MEM[base: _122, offset: 0B]
# composition_cooperman_ma.c:28: 	for (block_num = 0; block_num < number_of_blocks; block_num++) {
	addq	$8, %rax	#, ivtmp.33
	addq	%r10, %rdx	# _127, ivtmp.32
	cmpq	%rax, %rdi	# ivtmp.33, _119
	jne	.L6	#,
# composition_cooperman_ma.c:31: 	for (i = 0; i < n; i++) {
	testq	%rbp, %rbp	# n
	je	.L15	#,
.L16:
	movq	%r13, %rdx	# x, ivtmp.28
	leaq	(%r8,%r13), %r10	#, _130
	.p2align 4,,10
	.p2align 3
.L8:
# composition_cooperman_ma.c:33: 		block_num = x[i] >> block_length_shift;
	movq	(%rdx), %rdi	# MEM[base: _139, offset: 0B], _19
# composition_cooperman_ma.c:31: 	for (i = 0; i < n; i++) {
	addq	$8, %rdx	#, ivtmp.28
# composition_cooperman_ma.c:33: 		block_num = x[i] >> block_length_shift;
	movq	%rdi, %rax	# _19, block_num
	shrq	%cl, %rax	# _9, block_num
# composition_cooperman_ma.c:34: 		*d_ptr[block_num] = x[i];
	leaq	(%rsi,%rax,8), %r11	#, _21
	movq	(%r11), %rax	# *_21, _22
# composition_cooperman_ma.c:34: 		*d_ptr[block_num] = x[i];
	movq	%rdi, (%rax)	# _19, *_22
# composition_cooperman_ma.c:35: 		d_ptr[block_num]++;
	addq	$8, %rax	#, tmp166
	movq	%rax, (%r11)	# tmp166, *_21
# composition_cooperman_ma.c:31: 	for (i = 0; i < n; i++) {
	cmpq	%rdx, %r10	# ivtmp.28, _130
	jne	.L8	#,
	movq	%r9, %rax	# d, ivtmp.24
	addq	%r9, %r8	# d, _146
	.p2align 4,,10
	.p2align 3
.L9:
# composition_cooperman_ma.c:41: 		d[i] = y[d[i]];
	movq	(%rax), %rdx	# MEM[base: _153, offset: 0B], MEM[base: _153, offset: 0B]
# composition_cooperman_ma.c:40: 	for (i = 0; i < n; i++) {
	addq	$8, %rax	#, ivtmp.24
# composition_cooperman_ma.c:41: 		d[i] = y[d[i]];
	movq	(%rbx,%rdx,8), %rdx	# *_28, *_28
	movq	%rdx, -8(%rax)	# *_28, MEM[base: _153, offset: 0B]
# composition_cooperman_ma.c:40: 	for (i = 0; i < n; i++) {
	cmpq	%r8, %rax	# _146, ivtmp.24
	jne	.L9	#,
# composition_cooperman_ma.c:45: 	for (block_num = 0; block_num < number_of_blocks; block_num++) {
	testq	%r15, %r15	# number_of_blocks
	je	.L12	#,
.L15:
	leaq	0(,%r12,8), %rax	#, _53
	movq	%r9, %rbx	# d, ivtmp.19
# composition_cooperman_ma.c:45: 	for (block_num = 0; block_num < number_of_blocks; block_num++) {
	xorl	%edx, %edx	# block_num
	.p2align 4,,10
	.p2align 3
.L11:
# composition_cooperman_ma.c:46: 		d_ptr[block_num] = &d[block_num * block_length];
	movq	%rbx, (%rsi,%rdx,8)	# ivtmp.19, MEM[base: d_ptr_67, index: block_num_97, step: 8, offset: 0B]
# composition_cooperman_ma.c:45: 	for (block_num = 0; block_num < number_of_blocks; block_num++) {
	addq	$1, %rdx	#, block_num
# composition_cooperman_ma.c:45: 	for (block_num = 0; block_num < number_of_blocks; block_num++) {
	addq	%rax, %rbx	# _53, ivtmp.19
	cmpq	%rdx, %r15	# block_num, number_of_blocks
	ja	.L11	#,
# composition_cooperman_ma.c:48: 	for (i = 0; i < n; i++) {
	testq	%rbp, %rbp	# n
	je	.L1	#,
.L12:
# composition_cooperman_ma.c:50: 		block_num = x[i] >> block_length;
	movl	%r12d, %ecx	# block_length, _163
	xorl	%eax, %eax	# i
	.p2align 4,,10
	.p2align 3
.L13:
# composition_cooperman_ma.c:50: 		block_num = x[i] >> block_length;
	movq	0(%r13,%rax,8), %rdx	# MEM[base: x_68(D), index: i_99, step: 8, offset: 0B], block_num
	shrq	%cl, %rdx	# _163, block_num
# composition_cooperman_ma.c:51: 		z[i] = *d_ptr[block_num];
	leaq	(%rsi,%rdx,8), %rdi	#, _40
	movq	(%rdi), %rdx	# *_40, _41
# composition_cooperman_ma.c:51: 		z[i] = *d_ptr[block_num];
	movq	(%rdx), %r8	# *_41, *_41
# composition_cooperman_ma.c:52: 		d_ptr[block_num]++;
	addq	$8, %rdx	#, tmp173
	movq	%rdx, (%rdi)	# tmp173, *_40
# composition_cooperman_ma.c:51: 		z[i] = *d_ptr[block_num];
	movq	%r8, (%r14,%rax,8)	# *_41, MEM[base: z_70(D), index: i_99, step: 8, offset: 0B]
# composition_cooperman_ma.c:48: 	for (i = 0; i < n; i++) {
	addq	$1, %rax	#, i
# composition_cooperman_ma.c:48: 	for (i = 0; i < n; i++) {
	cmpq	%rax, %rbp	# i, n
	ja	.L13	#,
.L1:
# composition_cooperman_ma.c:54: }
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L3:
	.cfi_restore_state
# composition_cooperman_ma.c:18: 	block_length = (size_t) pow(2, block_length_shift);
	subsd	%xmm1, %xmm0	# tmp156, tmp157
	cvttsd2siq	%xmm0, %r12	# tmp157, block_length
	btcq	$63, %r12	#, block_length
	jmp	.L4	#
	.p2align 4,,10
	.p2align 3
.L5:
# composition_cooperman_ma.c:31: 	for (i = 0; i < n; i++) {
	testq	%rbp, %rbp	# n
	jne	.L16	#,
	jmp	.L1	#
	.cfi_endproc
.LFE5:
	.size	composition_cooperman_ma, .-composition_cooperman_ma
	.globl	cache_size
	.data
	.align 8
	.type	cache_size, @object
	.size	cache_size, 8
cache_size:
	.quad	256
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1127219200
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC2:
	.long	0
	.long	1072693248
	.align 8
.LC3:
	.long	0
	.long	1073741824
	.align 8
.LC4:
	.long	0
	.long	1138753536
	.ident	"GCC: (GNU) 10.1.1 20200507 (Red Hat 10.1.1-1)"
	.section	.note.GNU-stack,"",@progbits

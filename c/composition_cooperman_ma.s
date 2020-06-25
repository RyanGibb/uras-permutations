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
.LFB8:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
# composition_cooperman_ma.c:16: 	char block_length_shift = (char) floor(log2(block_length));
	pxor	%xmm0, %xmm0	# tmp141
# composition_cooperman_ma.c:14: void composition_cooperman_ma(size_t n, perm_t x[], perm_t y[], perm_t z[]) {
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r13	# tmp173, z
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12	# tmp171, x
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp	# tmp170, n
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
# composition_cooperman_ma.c:15: 	size_t block_length = cache_size/2/sizeof(perm_t);
	movq	cache_size(%rip), %r14	# cache_size, block_length
# composition_cooperman_ma.c:14: void composition_cooperman_ma(size_t n, perm_t x[], perm_t y[], perm_t z[]) {
	movq	%rdx, (%rsp)	# y, %sfp
# composition_cooperman_ma.c:15: 	size_t block_length = cache_size/2/sizeof(perm_t);
	shrq	$4, %r14	#, block_length
# composition_cooperman_ma.c:16: 	char block_length_shift = (char) floor(log2(block_length));
	cvtsi2sdq	%r14, %xmm0	# block_length, tmp141
	call	log2	#
	movsd	.LC1(%rip), %xmm2	#, tmp146
	movq	(%rsp), %r9	# %sfp, y
	movsd	.LC0(%rip), %xmm4	#, tmp142
	movapd	%xmm0, %xmm3	# _3, tmp144
	andpd	%xmm2, %xmm3	# tmp146, tmp144
	ucomisd	%xmm3, %xmm4	# tmp144, tmp142
	jbe	.L2	#,
	cvttsd2siq	%xmm0, %rax	# _3, tmp147
	pxor	%xmm3, %xmm3	# tmp144
	movapd	%xmm0, %xmm1	# tmp174, _3
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
	cvttsd2sil	%xmm0, %ecx	# _3, tmp153
# composition_cooperman_ma.c:18: 	size_t number_of_blocks = (n + block_length - 1) >> block_length_shift;
	leaq	-1(%r14,%rbp), %r15	#, tmp155
	movq	%r9, 16(%rsp)	# y, %sfp
# composition_cooperman_ma.c:19: 	perm_t* d = malloc(n * sizeof(perm_t));
	leaq	0(,%rbp,8), %r8	#, _8
	movq	%r8, %rdi	# _8,
	movq	%r8, (%rsp)	# _8, %sfp
# composition_cooperman_ma.c:18: 	size_t number_of_blocks = (n + block_length - 1) >> block_length_shift;
	movsbl	%cl, %r10d	# tmp153, _7
# composition_cooperman_ma.c:18: 	size_t number_of_blocks = (n + block_length - 1) >> block_length_shift;
	shrq	%cl, %r15	# tmp153, number_of_blocks
# composition_cooperman_ma.c:18: 	size_t number_of_blocks = (n + block_length - 1) >> block_length_shift;
	movl	%r10d, 12(%rsp)	# _7, %sfp
# composition_cooperman_ma.c:19: 	perm_t* d = malloc(n * sizeof(perm_t));
	call	malloc	#
# composition_cooperman_ma.c:20: 	perm_t** d_ptr = malloc(number_of_blocks * sizeof(perm_t*));
	leaq	0(,%r15,8), %rcx	#, _9
	movq	%rcx, %rdi	# _9,
	movq	%rcx, 24(%rsp)	# _9, %sfp
# composition_cooperman_ma.c:19: 	perm_t* d = malloc(n * sizeof(perm_t));
	movq	%rax, %rbx	# tmp175, d
# composition_cooperman_ma.c:20: 	perm_t** d_ptr = malloc(number_of_blocks * sizeof(perm_t*));
	call	malloc	#
# composition_cooperman_ma.c:25: 	for (block_num= 0; block_num < number_of_blocks; block_num++) {
	testq	%r15, %r15	# number_of_blocks
	movq	(%rsp), %r8	# %sfp, _8
	movl	12(%rsp), %r10d	# %sfp, _7
	movq	16(%rsp), %r9	# %sfp, y
# composition_cooperman_ma.c:20: 	perm_t** d_ptr = malloc(number_of_blocks * sizeof(perm_t*));
	movq	%rax, %rsi	# tmp176, d_ptr
# composition_cooperman_ma.c:25: 	for (block_num= 0; block_num < number_of_blocks; block_num++) {
	je	.L3	#,
	movq	24(%rsp), %rcx	# %sfp, _9
	leaq	0(,%r14,8), %rdi	#, _155
	movq	%rbx, %rdx	# d, ivtmp.37
	addq	%rax, %rcx	# d_ptr, _147
	.p2align 4,,10
	.p2align 3
.L4:
# composition_cooperman_ma.c:26: 		d_ptr[block_num] = &d[block_num * block_length];
	movq	%rdx, (%rax)	# ivtmp.37, MEM[base: _150, offset: 0B]
# composition_cooperman_ma.c:25: 	for (block_num= 0; block_num < number_of_blocks; block_num++) {
	addq	$8, %rax	#, ivtmp.38
	addq	%rdi, %rdx	# _155, ivtmp.37
	cmpq	%rax, %rcx	# ivtmp.38, _147
	jne	.L4	#,
# composition_cooperman_ma.c:28: 	for (i = 0; i < n; i++) {
	testq	%rbp, %rbp	# n
	je	.L13	#,
.L14:
	movq	%r12, %rdx	# x, ivtmp.32
	leaq	(%r8,%r12), %r11	#, _169
	.p2align 4,,10
	.p2align 3
.L6:
# composition_cooperman_ma.c:30: 		block_num = x[i] >> block_length_shift;
	movq	(%rdx), %rdi	# MEM[base: _172, offset: 0B], _18
# composition_cooperman_ma.c:30: 		block_num = x[i] >> block_length_shift;
	movl	%r10d, %ecx	# _7, tmp182
# composition_cooperman_ma.c:28: 	for (i = 0; i < n; i++) {
	addq	$8, %rdx	#, ivtmp.32
# composition_cooperman_ma.c:30: 		block_num = x[i] >> block_length_shift;
	movq	%rdi, %rax	# _18, tmp158
	shrq	%cl, %rax	# tmp182, tmp158
# composition_cooperman_ma.c:31: 		*d_ptr[block_num] = x[i];
	cltq
	leaq	(%rsi,%rax,8), %rcx	#, _22
	movq	(%rcx), %rax	# *_22, _23
# composition_cooperman_ma.c:31: 		*d_ptr[block_num] = x[i];
	movq	%rdi, (%rax)	# _18, *_23
# composition_cooperman_ma.c:32: 		d_ptr[block_num]++;
	addq	$8, %rax	#, tmp161
	movq	%rax, (%rcx)	# tmp161, *_22
# composition_cooperman_ma.c:28: 	for (i = 0; i < n; i++) {
	cmpq	%rdx, %r11	# ivtmp.32, _169
	jne	.L6	#,
	movq	%rbx, %rax	# d, ivtmp.27
	addq	%rbx, %r8	# d, _180
	.p2align 4,,10
	.p2align 3
.L7:
# composition_cooperman_ma.c:38: 		d[i] = y[d[i]];
	movq	(%rax), %rdx	# MEM[base: _184, offset: 0B], MEM[base: _184, offset: 0B]
# composition_cooperman_ma.c:37: 	for (i = 0; i < n; i++) {
	addq	$8, %rax	#, ivtmp.27
# composition_cooperman_ma.c:38: 		d[i] = y[d[i]];
	movq	(%r9,%rdx,8), %rdx	# *_30, *_30
	movq	%rdx, -8(%rax)	# *_30, MEM[base: _184, offset: 0B]
# composition_cooperman_ma.c:37: 	for (i = 0; i < n; i++) {
	cmpq	%rax, %r8	# ivtmp.27, _180
	jne	.L7	#,
# composition_cooperman_ma.c:42: 	for (block_num = 0; block_num < number_of_blocks; block_num++) {
	testq	%r15, %r15	# number_of_blocks
	je	.L10	#,
.L13:
	leaq	0(,%r14,8), %rax	#, _202
# composition_cooperman_ma.c:14: void composition_cooperman_ma(size_t n, perm_t x[], perm_t y[], perm_t z[]) {
	xorl	%edx, %edx	# ivtmp.18
	.p2align 4,,10
	.p2align 3
.L9:
# composition_cooperman_ma.c:43: 		d_ptr[block_num] = &d[block_num * block_length];
	movq	%rbx, (%rsi,%rdx,8)	# ivtmp.21, MEM[base: d_ptr_72, index: ivtmp.18_56, step: 8, offset: 0B]
# composition_cooperman_ma.c:42: 	for (block_num = 0; block_num < number_of_blocks; block_num++) {
	addq	$1, %rdx	#, ivtmp.18
	addq	%rax, %rbx	# _202, ivtmp.21
	cmpq	%r15, %rdx	# number_of_blocks, ivtmp.18
	jb	.L9	#,
# composition_cooperman_ma.c:45: 	for (i = 0; i < n; i++) {
	testq	%rbp, %rbp	# n
	je	.L1	#,
.L10:
# composition_cooperman_ma.c:47: 		block_num = x[i] >> block_length;
	movl	%r14d, %ecx	# block_length, _198
	xorl	%edx, %edx	# ivtmp.10
	.p2align 4,,10
	.p2align 3
.L11:
# composition_cooperman_ma.c:47: 		block_num = x[i] >> block_length;
	movq	(%r12,%rdx,8), %rax	# MEM[base: x_73(D), index: ivtmp.10_124, step: 8, offset: 0B], tmp164
	shrq	%cl, %rax	# _198, tmp164
# composition_cooperman_ma.c:48: 		z[i] = *d_ptr[block_num];
	cltq
	leaq	(%rsi,%rax,8), %rdi	#, _47
	movq	(%rdi), %rax	# *_47, _48
# composition_cooperman_ma.c:48: 		z[i] = *d_ptr[block_num];
	movq	(%rax), %r8	# *_48, *_48
# composition_cooperman_ma.c:49: 		d_ptr[block_num]++;
	addq	$8, %rax	#, tmp169
	movq	%rax, (%rdi)	# tmp169, *_47
# composition_cooperman_ma.c:48: 		z[i] = *d_ptr[block_num];
	movq	%r8, 0(%r13,%rdx,8)	# *_48, MEM[base: z_75(D), index: ivtmp.10_124, step: 8, offset: 0B]
# composition_cooperman_ma.c:45: 	for (i = 0; i < n; i++) {
	addq	$1, %rdx	#, ivtmp.10
	cmpq	%rbp, %rdx	# n, ivtmp.10
	jb	.L11	#,
.L1:
# composition_cooperman_ma.c:51: }
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
# composition_cooperman_ma.c:28: 	for (i = 0; i < n; i++) {
	testq	%rbp, %rbp	# n
	jne	.L14	#,
	jmp	.L1	#
	.cfi_endproc
.LFE8:
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
	.ident	"GCC: (GNU) 10.1.1 20200507 (Red Hat 10.1.1-1)"
	.section	.note.GNU-stack,"",@progbits

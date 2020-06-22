	.file	"composition_cooperman_ma.c"
# GNU C17 (GCC) version 10.1.1 20200507 (Red Hat 10.1.1-1) (x86_64-redhat-linux)
#	compiled by GNU C version 10.1.1 20200507 (Red Hat 10.1.1-1), GMP version 6.1.2, MPFR version 4.0.2-p7, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  composition_cooperman_ma.c -mtune=generic -march=x86-64
# -O3 -Wall -fverbose-asm
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
.LFB22:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
# composition_cooperman_ma.c:15: 	perm_t* d = malloc(n * sizeof(perm_t));
	leaq	0(,%rdi,8), %r10	#, _4
# composition_cooperman_ma.c:11: void composition_cooperman_ma(size_t n, perm_t x[], perm_t y[], perm_t z[]) {
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r13	# tmp155, z
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12	# tmp153, x
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp	# tmp152, n
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
# composition_cooperman_ma.c:12: 	size_t block_length = cache_size/2/sizeof(perm_t);
	movq	cache_size(%rip), %rbx	# cache_size, block_length
# composition_cooperman_ma.c:11: void composition_cooperman_ma(size_t n, perm_t x[], perm_t y[], perm_t z[]) {
	movq	%rdx, 24(%rsp)	# y, %sfp
# composition_cooperman_ma.c:14: 	size_t number_of_blocks = (n + block_length - 1) / block_length;
	xorl	%edx, %edx	# tmp133
# composition_cooperman_ma.c:12: 	size_t block_length = cache_size/2/sizeof(perm_t);
	shrq	$4, %rbx	#, block_length
# composition_cooperman_ma.c:15: 	perm_t* d = malloc(n * sizeof(perm_t));
	movq	%r10, 8(%rsp)	# _4, %sfp
# composition_cooperman_ma.c:14: 	size_t number_of_blocks = (n + block_length - 1) / block_length;
	leaq	-1(%rbx,%rdi), %r9	#, _3
# composition_cooperman_ma.c:15: 	perm_t* d = malloc(n * sizeof(perm_t));
	movq	%r10, %rdi	# _4,
# composition_cooperman_ma.c:14: 	size_t number_of_blocks = (n + block_length - 1) / block_length;
	movq	%r9, %rax	# _3, tmp132
	movq	%r9, 16(%rsp)	# _3, %sfp
	divq	%rbx	# block_length
	movq	%rax, %r15	# tmp132, tmp132
# composition_cooperman_ma.c:15: 	perm_t* d = malloc(n * sizeof(perm_t));
	call	malloc	#
# composition_cooperman_ma.c:16: 	perm_t** d_ptr = malloc(n * sizeof(perm_t));
	movq	8(%rsp), %r10	# %sfp, _4
# composition_cooperman_ma.c:15: 	perm_t* d = malloc(n * sizeof(perm_t));
	movq	%rax, %r14	# tmp156, d
# composition_cooperman_ma.c:16: 	perm_t** d_ptr = malloc(n * sizeof(perm_t));
	movq	%r10, %rdi	# _4,
	call	malloc	#
# composition_cooperman_ma.c:21: 	for (block_num= 0; block_num < number_of_blocks; block_num++) {
	movq	16(%rsp), %r9	# %sfp, _3
	movq	8(%rsp), %r10	# %sfp, _4
	movq	24(%rsp), %r8	# %sfp, y
# composition_cooperman_ma.c:16: 	perm_t** d_ptr = malloc(n * sizeof(perm_t));
	movq	%rax, %rsi	# tmp157, d_ptr
# composition_cooperman_ma.c:21: 	for (block_num= 0; block_num < number_of_blocks; block_num++) {
	cmpq	%rbx, %r9	# block_length, _3
	jb	.L2	#,
	leaq	0(,%rbx,8), %rcx	#, _138
	movq	%r14, %rdx	# d, ivtmp.37
	xorl	%eax, %eax	# ivtmp.34
	.p2align 4,,10
	.p2align 3
.L3:
# composition_cooperman_ma.c:22: 		d_ptr[block_num] = &d[block_num * block_length];
	movq	%rdx, (%rsi,%rax,8)	# ivtmp.37, MEM[base: d_ptr_63, index: ivtmp.34_142, step: 8, offset: 0B]
# composition_cooperman_ma.c:21: 	for (block_num= 0; block_num < number_of_blocks; block_num++) {
	addq	$1, %rax	#, ivtmp.34
	addq	%rcx, %rdx	# _138, ivtmp.37
	cmpq	%rax, %r15	# ivtmp.34, tmp132
	ja	.L3	#,
# composition_cooperman_ma.c:24: 	for (i = 0; i < n; i++) {
	testq	%rbp, %rbp	# n
	je	.L11	#,
.L13:
	movq	%r12, %rcx	# x, ivtmp.32
	leaq	(%r10,%r12), %r11	#, _143
	.p2align 4,,10
	.p2align 3
.L5:
# composition_cooperman_ma.c:25: 		block_num = x[i] / block_length;
	movq	(%rcx), %rdi	# MEM[base: _153, offset: 0B], _13
# composition_cooperman_ma.c:25: 		block_num = x[i] / block_length;
	xorl	%edx, %edx	# tmp138
# composition_cooperman_ma.c:24: 	for (i = 0; i < n; i++) {
	addq	$8, %rcx	#, ivtmp.32
# composition_cooperman_ma.c:25: 		block_num = x[i] / block_length;
	movq	%rdi, %rax	# _13, tmp137
	divq	%rbx	# block_length
# composition_cooperman_ma.c:26: 		*d_ptr[block_num] = x[i];
	cltq
	leaq	(%rsi,%rax,8), %rdx	#, _17
	movq	(%rdx), %rax	# *_17, _18
# composition_cooperman_ma.c:26: 		*d_ptr[block_num] = x[i];
	movq	%rdi, (%rax)	# _13, *_18
# composition_cooperman_ma.c:27: 		d_ptr[block_num]++;
	addq	$8, %rax	#, tmp141
	movq	%rax, (%rdx)	# tmp141, *_17
# composition_cooperman_ma.c:24: 	for (i = 0; i < n; i++) {
	cmpq	%rcx, %r11	# ivtmp.32, _143
	jne	.L5	#,
	movq	%r14, %rax	# d, ivtmp.27
	addq	%r14, %r10	# d, _161
	.p2align 4,,10
	.p2align 3
.L6:
# composition_cooperman_ma.c:33: 		d[i] = y[d[i]];
	movq	(%rax), %rdx	# MEM[base: _165, offset: 0B], MEM[base: _165, offset: 0B]
# composition_cooperman_ma.c:32: 	for (i = 0; i < n; i++) {
	addq	$8, %rax	#, ivtmp.27
# composition_cooperman_ma.c:33: 		d[i] = y[d[i]];
	movq	(%r8,%rdx,8), %rdx	# *_25, *_25
	movq	%rdx, -8(%rax)	# *_25, MEM[base: _165, offset: 0B]
# composition_cooperman_ma.c:32: 	for (i = 0; i < n; i++) {
	cmpq	%rax, %r10	# ivtmp.27, _161
	jne	.L6	#,
# composition_cooperman_ma.c:37: 	for (block_num = 0; block_num < number_of_blocks; block_num++) {
	cmpq	%rbx, %r9	# block_length, _3
	jb	.L12	#,
.L11:
	leaq	0(,%rbx,8), %rax	#, _186
# composition_cooperman_ma.c:21: 	for (block_num= 0; block_num < number_of_blocks; block_num++) {
	xorl	%edx, %edx	# ivtmp.18
	.p2align 4,,10
	.p2align 3
.L8:
# composition_cooperman_ma.c:38: 		d_ptr[block_num] = &d[block_num * block_length];
	movq	%r14, (%rsi,%rdx,8)	# ivtmp.21, MEM[base: d_ptr_63, index: ivtmp.18_107, step: 8, offset: 0B]
# composition_cooperman_ma.c:37: 	for (block_num = 0; block_num < number_of_blocks; block_num++) {
	addq	$1, %rdx	#, ivtmp.18
	addq	%rax, %r14	# _186, ivtmp.21
	cmpq	%rdx, %r15	# ivtmp.18, tmp132
	ja	.L8	#,
# composition_cooperman_ma.c:40: 	for (i = 0; i < n; i++) {
	testq	%rbp, %rbp	# n
	je	.L1	#,
.L12:
# composition_cooperman_ma.c:21: 	for (block_num= 0; block_num < number_of_blocks; block_num++) {
	xorl	%ecx, %ecx	# ivtmp.10
	.p2align 4,,10
	.p2align 3
.L10:
# composition_cooperman_ma.c:41: 		block_num = x[i] / block_length;
	movq	(%r12,%rcx,8), %rax	# MEM[base: x_64(D), index: ivtmp.10_51, step: 8, offset: 0B], MEM[base: x_64(D), index: ivtmp.10_51, step: 8, offset: 0B]
	xorl	%edx, %edx	# tmp146
	divq	%rbx	# block_length
# composition_cooperman_ma.c:42: 		z[i] = *d_ptr[block_num];
	cltq
	leaq	(%rsi,%rax,8), %rdx	#, _40
	movq	(%rdx), %rax	# *_40, _41
# composition_cooperman_ma.c:42: 		z[i] = *d_ptr[block_num];
	movq	(%rax), %rdi	# *_41, *_41
# composition_cooperman_ma.c:43: 		d_ptr[block_num]++;
	addq	$8, %rax	#, tmp151
	movq	%rax, (%rdx)	# tmp151, *_40
# composition_cooperman_ma.c:42: 		z[i] = *d_ptr[block_num];
	movq	%rdi, 0(%r13,%rcx,8)	# *_41, MEM[base: z_66(D), index: ivtmp.10_51, step: 8, offset: 0B]
# composition_cooperman_ma.c:40: 	for (i = 0; i < n; i++) {
	addq	$1, %rcx	#, ivtmp.10
	cmpq	%rbp, %rcx	# n, ivtmp.10
	jb	.L10	#,
.L1:
# composition_cooperman_ma.c:45: }
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
.L2:
	.cfi_restore_state
# composition_cooperman_ma.c:24: 	for (i = 0; i < n; i++) {
	testq	%rbp, %rbp	# n
	jne	.L13	#,
	jmp	.L1	#
	.cfi_endproc
.LFE22:
	.size	composition_cooperman_ma, .-composition_cooperman_ma
	.globl	cache_size
	.data
	.align 8
	.type	cache_size, @object
	.size	cache_size, 8
cache_size:
	.quad	256
	.ident	"GCC: (GNU) 10.1.1 20200507 (Red Hat 10.1.1-1)"
	.section	.note.GNU-stack,"",@progbits

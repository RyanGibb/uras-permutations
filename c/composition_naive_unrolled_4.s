	.file	"composition_naive_unrolled.c"
# GNU C99 (GCC) version 10.1.1 20200507 (Red Hat 10.1.1-1) (x86_64-redhat-linux)
#	compiled by GNU C version 10.1.1 20200507 (Red Hat 10.1.1-1), GMP version 6.1.2, MPFR version 4.0.2-p7, MPC version 1.1.0, isl version none
# warning: MPFR header version 4.0.2-p7 differs from library version 4.0.2-p9.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -D ROLLS=4 composition_naive_unrolled.c -mtune=generic
# -march=x86-64 -auxbase-strip composition_naive_unrolled_4.s -O3 -Wall
# -std=c99 -fverbose-asm
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
	.globl	composition
	.type	composition, @function
composition:
.LFB5:
	.cfi_startproc
# composition_naive_unrolled.c:10: 	for (size_t i = 0; i < n_rounded; i += ROLLS) {
	movq	%rdi, %r10	# n, n_rounded
# composition_naive_unrolled.c:7: void composition(size_t n, perm_t x[], perm_t y[], perm_t z[]) {
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 48
# composition_naive_unrolled.c:7: void composition(size_t n, perm_t x[], perm_t y[], perm_t z[]) {
	movq	%rdi, %r9	# tmp165, n
# composition_naive_unrolled.c:10: 	for (size_t i = 0; i < n_rounded; i += ROLLS) {
	andq	$-4, %r10	#, n_rounded
	je	.L2	#,
# composition_naive_unrolled.c:10: 	for (size_t i = 0; i < n_rounded; i += ROLLS) {
	xorl	%eax, %eax	# i
	.p2align 4,,10
	.p2align 3
.L3:
# composition_naive_unrolled.c:12: 			rolls[j] = y[x[i + j]];
	movq	16(%rsi,%rax,8), %r8	# MEM[base: x_41(D), index: i_59, step: 8, offset: 16B], MEM[base: x_41(D), index: i_59, step: 8, offset: 16B]
	movq	24(%rsi,%rax,8), %rdi	# MEM[base: x_41(D), index: i_59, step: 8, offset: 24B], MEM[base: x_41(D), index: i_59, step: 8, offset: 24B]
	movq	(%rdx,%r8,8), %xmm0	# *_111, *_111
	movq	(%rsi,%rax,8), %r8	# MEM[base: x_41(D), index: i_59, step: 8, offset: 0B], MEM[base: x_41(D), index: i_59, step: 8, offset: 0B]
	movhps	(%rdx,%rdi,8), %xmm0	# *_122, tmp136
	movq	(%rdx,%r8,8), %xmm1	# *_89, *_89
	movq	8(%rsi,%rax,8), %rdi	# MEM[base: x_41(D), index: i_59, step: 8, offset: 8B], MEM[base: x_41(D), index: i_59, step: 8, offset: 8B]
	movhps	(%rdx,%rdi,8), %xmm1	# *_100, tmp141
# composition_naive_unrolled.c:15: 			z[i + j] = rolls[j];
	movups	%xmm0, 16(%rcx,%rax,8)	# tmp136, MEM[base: z_38(D), index: i_59, step: 8, offset: 16B]
	movups	%xmm1, (%rcx,%rax,8)	# tmp141, MEM[base: z_38(D), index: i_59, step: 8, offset: 0B]
# composition_naive_unrolled.c:10: 	for (size_t i = 0; i < n_rounded; i += ROLLS) {
	addq	$4, %rax	#, i
# composition_naive_unrolled.c:10: 	for (size_t i = 0; i < n_rounded; i += ROLLS) {
	cmpq	%rax, %r10	# i, n_rounded
	ja	.L3	#,
	movaps	%xmm1, (%rsp)	# tmp141, MEM <vector(2) long unsigned int> [(long unsigned int *)&rolls]
	movaps	%xmm0, 16(%rsp)	# tmp136, MEM <vector(2) long unsigned int> [(long unsigned int *)&rolls + 16B]
.L2:
# composition_naive_unrolled.c:20: 	for (size_t j = 0; j < leftover_n; j++) {
	movq	%r9, %rax	# n, n
	subq	%r10, %rax	# n_rounded, n
	je	.L1	#,
# composition_naive_unrolled.c:21: 		rolls[j] = y[x[i + j]];
	movq	(%rsi,%r10,8), %r8	# *_21, *_21
# composition_naive_unrolled.c:21: 		rolls[j] = y[x[i + j]];
	leaq	0(,%r10,8), %rdi	#, _20
# composition_naive_unrolled.c:21: 		rolls[j] = y[x[i + j]];
	movq	(%rdx,%r8,8), %r8	# *_40, *_40
	movq	%r8, (%rsp)	# *_40, rolls
# composition_naive_unrolled.c:20: 	for (size_t j = 0; j < leftover_n; j++) {
	cmpq	$1, %rax	#, leftover_n
	je	.L5	#,
# composition_naive_unrolled.c:21: 		rolls[j] = y[x[i + j]];
	movq	8(%rsi,%r10,8), %r8	# *_146, *_146
# composition_naive_unrolled.c:21: 		rolls[j] = y[x[i + j]];
	movq	(%rdx,%r8,8), %r8	# *_133, *_133
	movq	%r8, 8(%rsp)	# *_133, rolls
# composition_naive_unrolled.c:20: 	for (size_t j = 0; j < leftover_n; j++) {
	cmpq	$2, %rax	#, leftover_n
	je	.L5	#,
# composition_naive_unrolled.c:21: 		rolls[j] = y[x[i + j]];
	movq	16(%rsi,%r10,8), %r8	# *_125, *_125
# composition_naive_unrolled.c:21: 		rolls[j] = y[x[i + j]];
	movq	(%rdx,%r8,8), %r8	# *_114, *_114
	movq	%r8, 16(%rsp)	# *_114, rolls
# composition_naive_unrolled.c:20: 	for (size_t j = 0; j < leftover_n; j++) {
	cmpq	$3, %rax	#, leftover_n
	je	.L5	#,
# composition_naive_unrolled.c:21: 		rolls[j] = y[x[i + j]];
	movq	24(%rsi,%r10,8), %rsi	# *_14, *_14
# composition_naive_unrolled.c:21: 		rolls[j] = y[x[i + j]];
	movq	(%rdx,%rsi,8), %rdx	# *_17, *_17
	movq	%rdx, 24(%rsp)	# *_17, rolls
.L5:
# composition_naive_unrolled.c:24: 		z[i + j] = rolls[j];
	addq	%rcx, %rdi	# z, tmp157
	leaq	0(,%rax,8), %rdx	#, tmp158
	movq	%rsp, %rsi	#,
	call	memcpy	#
.L1:
# composition_naive_unrolled.c:26: }
	addq	$40, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE5:
	.size	composition, .-composition
	.ident	"GCC: (GNU) 10.1.1 20200507 (Red Hat 10.1.1-1)"
	.section	.note.GNU-stack,"",@progbits

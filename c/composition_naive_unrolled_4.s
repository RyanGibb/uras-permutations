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
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdi, %r10	# tmp165, n
	movq	%rsi, %r11	# tmp166, x
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rcx, %r12	# tmp168, z
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
# composition_naive_unrolled.c:10: 	for (size_t i = 0; i < n_rounded; i += ROLLS) {
	movq	%rdi, %rbp	# n, n_rounded
# composition_naive_unrolled.c:7: void composition(size_t n, perm_t x[], perm_t y[], perm_t z[]) {
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdx, %rbx	# tmp167, y
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 80
# composition_naive_unrolled.c:10: 	for (size_t i = 0; i < n_rounded; i += ROLLS) {
	andq	$-4, %rbp	#, n_rounded
	je	.L2	#,
	movq	%rsi, %rax	# x, ivtmp.17
	movq	%rcx, %rdx	# z, ivtmp.18
	leaq	(%rsi,%rbp,8), %r13	#, _11
	.p2align 4,,10
	.p2align 3
.L3:
# composition_naive_unrolled.c:12: 			rolls[j] = x[i + j];
	movq	(%rax), %rsi	# MEM[base: _77, offset: 0B], _99
	movq	8(%rax), %r8	# MEM[base: _77, offset: 8B], _107
# composition_naive_unrolled.c:10: 	for (size_t i = 0; i < n_rounded; i += ROLLS) {
	addq	$32, %rax	#, ivtmp.17
	addq	$32, %rdx	#, ivtmp.18
# composition_naive_unrolled.c:12: 			rolls[j] = x[i + j];
	movq	-16(%rax), %rcx	# MEM[base: _77, offset: 16B], _115
	movq	-8(%rax), %rdi	# MEM[base: _77, offset: 24B], _123
# composition_naive_unrolled.c:15: 			z[i + j] = y[rolls[j]];
	movq	(%rbx,%rsi,8), %r9	# *_54, _58
# composition_naive_unrolled.c:15: 			z[i + j] = y[rolls[j]];
	movq	%r9, -32(%rdx)	# _58, MEM[base: _103, offset: 0B]
# composition_naive_unrolled.c:15: 			z[i + j] = y[rolls[j]];
	movq	(%rbx,%r8,8), %r9	# *_65, _69
# composition_naive_unrolled.c:15: 			z[i + j] = y[rolls[j]];
	movq	%r9, -24(%rdx)	# _69, MEM[base: _103, offset: 8B]
# composition_naive_unrolled.c:15: 			z[i + j] = y[rolls[j]];
	movq	(%rbx,%rcx,8), %r9	# *_76, _80
# composition_naive_unrolled.c:15: 			z[i + j] = y[rolls[j]];
	movq	%r9, -16(%rdx)	# _80, MEM[base: _103, offset: 16B]
# composition_naive_unrolled.c:15: 			z[i + j] = y[rolls[j]];
	movq	(%rbx,%rdi,8), %r9	# *_87, _91
# composition_naive_unrolled.c:15: 			z[i + j] = y[rolls[j]];
	movq	%r9, -8(%rdx)	# _91, MEM[base: _103, offset: 24B]
# composition_naive_unrolled.c:10: 	for (size_t i = 0; i < n_rounded; i += ROLLS) {
	cmpq	%rax, %r13	# ivtmp.17, _11
	jne	.L3	#,
	movq	%rsi, %xmm0	# _99, tmp148
	movq	%r8, %xmm1	# _107, _107
	movq	%rdi, %xmm2	# _123, _123
	punpcklqdq	%xmm1, %xmm0	# _107, tmp148
	movaps	%xmm0, (%rsp)	# tmp148, MEM <vector(2) long unsigned int> [(long unsigned int *)&rolls]
	movq	%rcx, %xmm0	# _115, tmp149
	punpcklqdq	%xmm2, %xmm0	# _123, tmp149
	movaps	%xmm0, 16(%rsp)	# tmp149, MEM <vector(2) long unsigned int> [(long unsigned int *)&rolls + 16B]
.L2:
# composition_naive_unrolled.c:20: 	for (size_t j = 0; j < leftover_n; j++) {
	subq	%rbp, %r10	# n_rounded, n
	movq	%r10, %r13	# n, leftover_n
	je	.L1	#,
# composition_naive_unrolled.c:21: 		rolls[j] = x[i + j];
	leaq	0(,%r10,8), %rdx	#, tmp151
	leaq	(%r11,%rbp,8), %rsi	#, tmp152
	movq	%rsp, %rdi	#,
	call	memcpy	#
# composition_naive_unrolled.c:24: 		z[i + j] = y[rolls[j]];
	movq	(%rsp), %rax	# rolls, rolls
	movq	(%rbx,%rax,8), %rax	# *_14, _145
# composition_naive_unrolled.c:24: 		z[i + j] = y[rolls[j]];
	movq	%rax, (%r12,%rbp,8)	# _145, *_44
# composition_naive_unrolled.c:23: 	for (size_t j = 0; j < leftover_n; j++) {
	cmpq	$1, %r13	#, leftover_n
	je	.L1	#,
# composition_naive_unrolled.c:24: 		z[i + j] = y[rolls[j]];
	movq	8(%rsp), %rax	# rolls, rolls
	movq	(%rbx,%rax,8), %rax	# *_126, _117
# composition_naive_unrolled.c:24: 		z[i + j] = y[rolls[j]];
	movq	%rax, 8(%r12,%rbp,8)	# _117, *_118
# composition_naive_unrolled.c:23: 	for (size_t j = 0; j < leftover_n; j++) {
	cmpq	$2, %r13	#, leftover_n
	je	.L1	#,
# composition_naive_unrolled.c:24: 		z[i + j] = y[rolls[j]];
	movq	16(%rsp), %rax	# rolls, rolls
	movq	(%rbx,%rax,8), %rax	# *_100, _89
# composition_naive_unrolled.c:24: 		z[i + j] = y[rolls[j]];
	movq	%rax, 16(%r12,%rbp,8)	# _89, *_93
# composition_naive_unrolled.c:23: 	for (size_t j = 0; j < leftover_n; j++) {
	cmpq	$3, %r13	#, leftover_n
	je	.L1	#,
# composition_naive_unrolled.c:24: 		z[i + j] = y[rolls[j]];
	movq	24(%rsp), %rax	# rolls, rolls
	movq	(%rbx,%rax,8), %rax	# *_18, _22
# composition_naive_unrolled.c:24: 		z[i + j] = y[rolls[j]];
	movq	%rax, 24(%r12,%rbp,8)	# _22, *_21
.L1:
# composition_naive_unrolled.c:26: }
	addq	$40, %rsp	#,
	.cfi_def_cfa_offset 40
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE5:
	.size	composition, .-composition
	.ident	"GCC: (GNU) 10.1.1 20200507 (Red Hat 10.1.1-1)"
	.section	.note.GNU-stack,"",@progbits

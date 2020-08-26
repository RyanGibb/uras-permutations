	.file	"composition_naive_unrolled.c"
# GNU C99 (GCC) version 10.1.1 20200507 (Red Hat 10.1.1-1) (x86_64-redhat-linux)
#	compiled by GNU C version 10.1.1 20200507 (Red Hat 10.1.1-1), GMP version 6.1.2, MPFR version 4.0.2-p7, MPC version 1.1.0, isl version none
# warning: MPFR header version 4.0.2-p7 differs from library version 4.0.2-p9.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -D ROLLS=4 composition_naive_unrolled.c -mtune=generic
# -march=x86-64 -O3 -Wall -std=c99 -fverbose-asm
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
	movq	%rdi, %r9	# tmp177, n
	movq	%rsi, %r10	# tmp178, x
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rcx, %r12	# tmp180, z
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
# composition_naive_unrolled.c:10: 	for (size_t i = 0; i < n_rounded; i += ROLLS) {
	movq	%rdi, %rbp	# n, n_rounded
# composition_naive_unrolled.c:7: void composition(size_t n, perm_t x[], perm_t y[], perm_t z[]) {
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdx, %rbx	# tmp179, y
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 64
# composition_naive_unrolled.c:10: 	for (size_t i = 0; i < n_rounded; i += ROLLS) {
	andq	$-4, %rbp	#, n_rounded
	je	.L2	#,
	movq	%rsi, %rax	# x, ivtmp.17
	movq	%rcx, %rdx	# z, ivtmp.18
	leaq	(%rsi,%rbp,4), %r13	#, _66
	.p2align 4,,10
	.p2align 3
.L3:
# composition_naive_unrolled.c:12: 			rolls[j] = x[i + j];
	movl	(%rax), %r11d	# MEM[base: _88, offset: 0B],
	movl	4(%rax), %edi	# MEM[base: _88, offset: 4B], _113
# composition_naive_unrolled.c:10: 	for (size_t i = 0; i < n_rounded; i += ROLLS) {
	addq	$16, %rax	#, ivtmp.17
	addq	$16, %rdx	#, ivtmp.18
# composition_naive_unrolled.c:12: 			rolls[j] = x[i + j];
	movl	-8(%rax), %esi	# MEM[base: _88, offset: 8B], _121
	movl	-4(%rax), %r8d	# MEM[base: _88, offset: 12B], _129
	movq	%r11, %rcx	#,
# composition_naive_unrolled.c:15: 			z[i + j] = y[rolls[j]];
	movl	(%rbx,%r11,4), %r11d	# *_57, _61
# composition_naive_unrolled.c:15: 			z[i + j] = y[rolls[j]];
	movl	%r11d, -16(%rdx)	# _61, MEM[base: _99, offset: 0B]
# composition_naive_unrolled.c:15: 			z[i + j] = y[rolls[j]];
	movl	%edi, %r11d	# _113, _113
# composition_naive_unrolled.c:15: 			z[i + j] = y[rolls[j]];
	movl	(%rbx,%r11,4), %r11d	# *_69, _73
# composition_naive_unrolled.c:15: 			z[i + j] = y[rolls[j]];
	movl	%r11d, -12(%rdx)	# _73, MEM[base: _99, offset: 4B]
# composition_naive_unrolled.c:15: 			z[i + j] = y[rolls[j]];
	movl	%esi, %r11d	# _121, _121
# composition_naive_unrolled.c:15: 			z[i + j] = y[rolls[j]];
	movl	(%rbx,%r11,4), %r11d	# *_81, _85
# composition_naive_unrolled.c:15: 			z[i + j] = y[rolls[j]];
	movl	%r11d, -8(%rdx)	# _85, MEM[base: _99, offset: 8B]
# composition_naive_unrolled.c:15: 			z[i + j] = y[rolls[j]];
	movl	%r8d, %r11d	# _129, _129
# composition_naive_unrolled.c:15: 			z[i + j] = y[rolls[j]];
	movl	(%rbx,%r11,4), %r11d	# *_93, _97
# composition_naive_unrolled.c:15: 			z[i + j] = y[rolls[j]];
	movl	%r11d, -4(%rdx)	# _97, MEM[base: _99, offset: 12B]
# composition_naive_unrolled.c:10: 	for (size_t i = 0; i < n_rounded; i += ROLLS) {
	cmpq	%rax, %r13	# ivtmp.17, _66
	jne	.L3	#,
	movd	%esi, %xmm1	# _121, tmp160
	movd	%r8d, %xmm2	# _129, _129
	movd	%ecx, %xmm0	# _105, tmp161
	movd	%edi, %xmm3	# _113, _113
	punpckldq	%xmm2, %xmm1	# _129, tmp160
	punpckldq	%xmm3, %xmm0	# _113, tmp161
	punpcklqdq	%xmm1, %xmm0	# tmp160, tmp159
	movaps	%xmm0, (%rsp)	# tmp159, MEM <vector(4) unsigned int> [(unsigned int *)&rolls]
.L2:
# composition_naive_unrolled.c:20: 	for (size_t j = 0; j < leftover_n; j++) {
	subq	%rbp, %r9	# n_rounded, n
	movq	%r9, %r13	# n, leftover_n
	je	.L1	#,
# composition_naive_unrolled.c:21: 		rolls[j] = x[i + j];
	leaq	0(,%r9,4), %rdx	#, tmp163
	leaq	(%r10,%rbp,4), %rsi	#, tmp164
	movq	%rsp, %rdi	#,
	call	memcpy	#
# composition_naive_unrolled.c:24: 		z[i + j] = y[rolls[j]];
	movl	(%rsp), %eax	# rolls, rolls
# composition_naive_unrolled.c:24: 		z[i + j] = y[rolls[j]];
	movl	(%rbx,%rax,4), %eax	# *_16, _160
# composition_naive_unrolled.c:24: 		z[i + j] = y[rolls[j]];
	movl	%eax, (%r12,%rbp,4)	# _160, *_161
# composition_naive_unrolled.c:23: 	for (size_t j = 0; j < leftover_n; j++) {
	cmpq	$1, %r13	#, leftover_n
	je	.L1	#,
# composition_naive_unrolled.c:24: 		z[i + j] = y[rolls[j]];
	movl	4(%rsp), %eax	# rolls, rolls
# composition_naive_unrolled.c:24: 		z[i + j] = y[rolls[j]];
	movl	(%rbx,%rax,4), %eax	# *_140, _136
# composition_naive_unrolled.c:24: 		z[i + j] = y[rolls[j]];
	movl	%eax, 4(%r12,%rbp,4)	# _136, *_137
# composition_naive_unrolled.c:23: 	for (size_t j = 0; j < leftover_n; j++) {
	cmpq	$2, %r13	#, leftover_n
	je	.L1	#,
# composition_naive_unrolled.c:24: 		z[i + j] = y[rolls[j]];
	movl	8(%rsp), %eax	# rolls, rolls
# composition_naive_unrolled.c:24: 		z[i + j] = y[rolls[j]];
	movl	(%rbx,%rax,4), %eax	# *_123, _114
# composition_naive_unrolled.c:24: 		z[i + j] = y[rolls[j]];
	movl	%eax, 8(%r12,%rbp,4)	# _114, *_115
# composition_naive_unrolled.c:23: 	for (size_t j = 0; j < leftover_n; j++) {
	cmpq	$3, %r13	#, leftover_n
	je	.L1	#,
# composition_naive_unrolled.c:24: 		z[i + j] = y[rolls[j]];
	movl	12(%rsp), %eax	# rolls, rolls
# composition_naive_unrolled.c:24: 		z[i + j] = y[rolls[j]];
	movl	(%rbx,%rax,4), %eax	# *_20, _24
# composition_naive_unrolled.c:24: 		z[i + j] = y[rolls[j]];
	movl	%eax, 12(%r12,%rbp,4)	# _24, *_23
.L1:
# composition_naive_unrolled.c:26: }
	addq	$24, %rsp	#,
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

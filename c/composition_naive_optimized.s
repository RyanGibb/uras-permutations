	.file	"composition_naive_optimized.c"
# GNU C99 (GCC) version 10.1.1 20200507 (Red Hat 10.1.1-1) (x86_64-redhat-linux)
#	compiled by GNU C version 10.1.1 20200507 (Red Hat 10.1.1-1), GMP version 6.1.2, MPFR version 4.0.2-p7, MPC version 1.1.0, isl version none
# warning: MPFR header version 4.0.2-p7 differs from library version 4.0.2-p9.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -D SIGNED composition_naive_optimized.c -march=haswell
# -mmmx -mno-3dnow -msse -msse2 -msse3 -mssse3 -mno-sse4a -mcx16 -msahf
# -mmovbe -maes -mno-sha -mpclmul -mpopcnt -mabm -mno-lwp -mfma -mno-fma4
# -mno-xop -mbmi -mno-sgx -mbmi2 -mno-pconfig -mno-wbnoinvd -mno-tbm -mavx
# -mavx2 -msse4.2 -msse4.1 -mlzcnt -mno-rtm -mno-hle -mrdrnd -mf16c
# -mfsgsbase -mno-rdseed -mno-prfchw -mno-adx -mfxsr -mxsave -mxsaveopt
# -mno-avx512f -mno-avx512er -mno-avx512cd -mno-avx512pf -mno-prefetchwt1
# -mno-clflushopt -mno-xsavec -mno-xsaves -mno-avx512dq -mno-avx512bw
# -mno-avx512vl -mno-avx512ifma -mno-avx512vbmi -mno-avx5124fmaps
# -mno-avx5124vnniw -mno-clwb -mno-mwaitx -mno-clzero -mno-pku -mno-rdpid
# -mno-gfni -mno-shstk -mno-avx512vbmi2 -mno-avx512vnni -mno-vaes
# -mno-vpclmulqdq -mno-avx512bitalg -mno-movdiri -mno-movdir64b
# -mno-waitpkg -mno-cldemote -mno-ptwrite -mno-avx512bf16 -mno-enqcmd
# -mno-avx512vp2intersect --param=l1-cache-size=32
# --param=l1-cache-line-size=64 --param=l2-cache-size=8192 -mtune=haswell
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
# -m128bit-long-double -m64 -m80387 -mabm -maes -malign-stringops -mavx
# -mavx2 -mbmi -mbmi2 -mcx16 -mf16c -mfancy-math-387 -mfma -mfp-ret-in-387
# -mfsgsbase -mfxsr -mglibc -mhle -mieee-fp -mlong-double-80 -mlzcnt -mmmx
# -mmovbe -mpclmul -mpopcnt -mpush-args -mrdrnd -mred-zone -msahf -msse
# -msse2 -msse3 -msse4 -msse4.1 -msse4.2 -mssse3 -mstv
# -mtls-direct-seg-refs -mvzeroupper -mxsave -mxsaveopt

	.text
	.p2align 4
	.globl	composition
	.type	composition, @function
composition:
.LFB5:
	.cfi_startproc
# composition_naive_optimized.c:10: void composition(size_t n, perm_t* restrict x, perm_t* restrict y, perm_t* restrict z) {
	movq	%rsi, %r8	# tmp131, x
	movq	%rdx, %rsi	# tmp132, y
# composition_naive_optimized.c:11: 	for (size_t i = 0; i < n; i++) {
	testq	%rdi, %rdi	# n
	je	.L12	#,
	leaq	-1(%rdi), %rax	#, tmp119
	cmpq	$2, %rax	#, tmp119
	jbe	.L6	#,
	movq	%rdi, %rdx	# n, bnd.5
	xorl	%eax, %eax	# ivtmp.17
# composition_naive_optimized.c:12: 		z[i] = y[x[i]];
	vpcmpeqd	%ymm1, %ymm1, %ymm1	# tmp123
	shrq	$2, %rdx	#, bnd.5
	salq	$5, %rdx	#, _61
	.p2align 4,,10
	.p2align 3
.L4:
# composition_naive_optimized.c:12: 		z[i] = y[x[i]];
	vmovdqu	(%r8,%rax), %ymm3	# MEM[base: x_13(D), index: ivtmp.17_1, offset: 0B], tmp137
	vmovdqa	%ymm1, %ymm2	# tmp123, tmp134
	vpgatherqq	%ymm2, (%rsi,%ymm3,8), %ymm0	# y, tmp134,, vect__8.11
# composition_naive_optimized.c:12: 		z[i] = y[x[i]];
	vmovdqu	%ymm0, (%rcx,%rax)	# vect__8.11, MEM[base: z_15(D), index: ivtmp.17_1, offset: 0B]
	addq	$32, %rax	#, ivtmp.17
	cmpq	%rdx, %rax	# _61, ivtmp.17
	jne	.L4	#,
	movq	%rdi, %rax	# n, niters_vector_mult_vf.6
	andq	$-4, %rax	#, niters_vector_mult_vf.6
	testb	$3, %dil	#, n
	je	.L14	#,
	vzeroupper
.L3:
# composition_naive_optimized.c:12: 		z[i] = y[x[i]];
	movq	(%r8,%rax,8), %rdx	# *_3, *_3
# composition_naive_optimized.c:12: 		z[i] = y[x[i]];
	movq	(%rsi,%rdx,8), %rdx	# *_7, *_7
	movq	%rdx, (%rcx,%rax,8)	# *_7, *_8
# composition_naive_optimized.c:11: 	for (size_t i = 0; i < n; i++) {
	leaq	1(%rax), %rdx	#, i
# composition_naive_optimized.c:11: 	for (size_t i = 0; i < n; i++) {
	cmpq	%rdx, %rdi	# i, n
	jbe	.L12	#,
# composition_naive_optimized.c:12: 		z[i] = y[x[i]];
	movq	(%r8,%rdx,8), %r9	# *_52, *_52
# composition_naive_optimized.c:11: 	for (size_t i = 0; i < n; i++) {
	addq	$2, %rax	#, i
# composition_naive_optimized.c:12: 		z[i] = y[x[i]];
	movq	(%rsi,%r9,8), %r9	# *_56, *_56
	movq	%r9, (%rcx,%rdx,8)	# *_56, *_57
# composition_naive_optimized.c:11: 	for (size_t i = 0; i < n; i++) {
	cmpq	%rax, %rdi	# i, n
	jbe	.L12	#,
# composition_naive_optimized.c:12: 		z[i] = y[x[i]];
	movq	(%r8,%rax,8), %rdx	# *_34, *_34
# composition_naive_optimized.c:12: 		z[i] = y[x[i]];
	movq	(%rsi,%rdx,8), %rdx	# *_26, *_26
	movq	%rdx, (%rcx,%rax,8)	# *_26, *_25
.L12:
# composition_naive_optimized.c:14: }
	ret	
	.p2align 4,,10
	.p2align 3
.L14:
	vzeroupper
	ret	
.L6:
# composition_naive_optimized.c:11: 	for (size_t i = 0; i < n; i++) {
	xorl	%eax, %eax	# niters_vector_mult_vf.6
	jmp	.L3	#
	.cfi_endproc
.LFE5:
	.size	composition, .-composition
	.ident	"GCC: (GNU) 10.1.1 20200507 (Red Hat 10.1.1-1)"
	.section	.note.GNU-stack,"",@progbits

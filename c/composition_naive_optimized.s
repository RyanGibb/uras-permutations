	.file	"composition_naive_optimized.c"
# GNU C99 (GCC) version 10.1.1 20200507 (Red Hat 10.1.1-1) (x86_64-redhat-linux)
#	compiled by GNU C version 10.1.1 20200507 (Red Hat 10.1.1-1), GMP version 6.1.2, MPFR version 4.0.2-p7, MPC version 1.1.0, isl version none
# warning: MPFR header version 4.0.2-p7 differs from library version 4.0.2-p9.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  composition_naive_optimized.c -march=haswell -mmmx
# -mno-3dnow -msse -msse2 -msse3 -mssse3 -mno-sse4a -mcx16 -msahf -mmovbe
# -maes -mno-sha -mpclmul -mpopcnt -mabm -mno-lwp -mfma -mno-fma4 -mno-xop
# -mbmi -mno-sgx -mbmi2 -mno-pconfig -mno-wbnoinvd -mno-tbm -mavx -mavx2
# -msse4.2 -msse4.1 -mlzcnt -mno-rtm -mno-hle -mrdrnd -mf16c -mfsgsbase
# -mno-rdseed -mno-prfchw -mno-adx -mfxsr -mxsave -mxsaveopt -mno-avx512f
# -mno-avx512er -mno-avx512cd -mno-avx512pf -mno-prefetchwt1
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
# composition_naive_optimized.c:12: 	for (size_t i = 0; i < n; i++) {
	testq	%rdi, %rdi	# n
	je	.L14	#,
	leaq	-1(%rdi), %r9	#, _31
	cmpq	$6, %r9	#, _31
	jbe	.L8	#,
	movq	%rdi, %r8	# n, bnd.5
	xorl	%eax, %eax	# ivtmp.27
# composition_naive_optimized.c:13: 		z[i] = y[x[i]];
	vpcmpeqd	%ymm1, %ymm1, %ymm1	# tmp130
	shrq	$3, %r8	#, bnd.5
	salq	$5, %r8	#, _92
	.p2align 4,,10
	.p2align 3
.L4:
# composition_naive_optimized.c:13: 		z[i] = y[x[i]];
	vmovdqu	(%rsi,%rax), %ymm3	# MEM[base: x_13(D), index: ivtmp.27_1, offset: 0B], tmp152
	vmovdqa	%ymm1, %ymm2	# tmp130, tmp148
	vpgatherdd	%ymm2, (%rdx,%ymm3,4), %ymm0	# y, tmp148,, vect__8.11
# composition_naive_optimized.c:13: 		z[i] = y[x[i]];
	vmovdqu	%ymm0, (%rcx,%rax)	# vect__8.11, MEM[base: z_15(D), index: ivtmp.27_1, offset: 0B]
	addq	$32, %rax	#, ivtmp.27
	cmpq	%r8, %rax	# _92, ivtmp.27
	jne	.L4	#,
	movq	%rdi, %rax	# n, tmp.17
	andq	$-8, %rax	#, tmp.17
	testb	$7, %dil	#, n
	je	.L16	#,
	vzeroupper
.L3:
	movq	%rdi, %r10	# n, niters.14
	subq	%rax, %r9	# tmp.17, tmp131
	subq	%rax, %r10	# tmp.17, niters.14
	cmpq	$2, %r9	#, tmp131
	jbe	.L6	#,
# composition_naive_optimized.c:13: 		z[i] = y[x[i]];
	vmovdqu	(%rsi,%rax,4), %xmm5	# MEM <vector(4) int> [(s_perm_t *)vectp_x.19_79], tmp156
	vpcmpeqd	%xmm0, %xmm0, %xmm0	# tmp134
	movq	%r10, %r8	# niters.14, niters_vector_mult_vf.16
	vmovdqa	%xmm0, %xmm4	# tmp134, tmp149
	andq	$-4, %r8	#, niters_vector_mult_vf.16
	vpgatherdd	%xmm4, (%rdx,%xmm5,4), %xmm0	# y, tmp149,, vect__10.21
# composition_naive_optimized.c:13: 		z[i] = y[x[i]];
	vmovdqu	%xmm0, (%rcx,%rax,4)	# vect__10.21, MEM <vector(4) int> [(s_perm_t *)vectp_z.23_87]
	addq	%r8, %rax	# niters_vector_mult_vf.16, tmp.17
	cmpq	%r8, %r10	# niters_vector_mult_vf.16, niters.14
	je	.L14	#,
.L6:
# composition_naive_optimized.c:13: 		z[i] = y[x[i]];
	movslq	(%rsi,%rax,4), %r8	# *_3, *_3
# composition_naive_optimized.c:13: 		z[i] = y[x[i]];
	movl	(%rdx,%r8,4), %r8d	# *_7, *_7
	movl	%r8d, (%rcx,%rax,4)	# *_7, *_8
# composition_naive_optimized.c:12: 	for (size_t i = 0; i < n; i++) {
	leaq	1(%rax), %r8	#, i
# composition_naive_optimized.c:12: 	for (size_t i = 0; i < n; i++) {
	cmpq	%r8, %rdi	# i, n
	jbe	.L14	#,
# composition_naive_optimized.c:13: 		z[i] = y[x[i]];
	movslq	(%rsi,%r8,4), %r9	# *_23, *_23
# composition_naive_optimized.c:12: 	for (size_t i = 0; i < n; i++) {
	addq	$2, %rax	#, i
# composition_naive_optimized.c:13: 		z[i] = y[x[i]];
	movl	(%rdx,%r9,4), %r9d	# *_32, *_32
	movl	%r9d, (%rcx,%r8,4)	# *_32, *_29
# composition_naive_optimized.c:12: 	for (size_t i = 0; i < n; i++) {
	cmpq	%rax, %rdi	# i, n
	jbe	.L14	#,
# composition_naive_optimized.c:13: 		z[i] = y[x[i]];
	movslq	(%rsi,%rax,4), %rsi	# *_61, *_61
# composition_naive_optimized.c:13: 		z[i] = y[x[i]];
	movl	(%rdx,%rsi,4), %edx	# *_65, *_65
	movl	%edx, (%rcx,%rax,4)	# *_65, *_66
.L14:
# composition_naive_optimized.c:15: }
	ret	
	.p2align 4,,10
	.p2align 3
.L16:
	vzeroupper
	ret	
.L8:
# composition_naive_optimized.c:12: 	for (size_t i = 0; i < n; i++) {
	xorl	%eax, %eax	# tmp.17
	jmp	.L3	#
	.cfi_endproc
.LFE5:
	.size	composition, .-composition
	.ident	"GCC: (GNU) 10.1.1 20200507 (Red Hat 10.1.1-1)"
	.section	.note.GNU-stack,"",@progbits

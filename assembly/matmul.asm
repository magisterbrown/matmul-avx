matmul:
.LFB5012:
	.loc 1 14 1
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r13
	push	r12
	push	rbx
	and	rsp, -32
	sub	rsp, 384
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	mov	QWORD PTR 56[rsp], rdi
	mov	QWORD PTR 48[rsp], rsi
	mov	QWORD PTR 40[rsp], rdx
	mov	QWORD PTR 32[rsp], rcx
	mov	QWORD PTR 24[rsp], r8
	mov	QWORD PTR 16[rsp], r9
	.loc 1 14 1
	mov	rbx, QWORD PTR 48[rsp]
	.loc 1 13 54
	mov	rax, rbx
	sub	rax, 1
	mov	QWORD PTR 152[rsp], rax
	.loc 1 14 1
	mov	r12, QWORD PTR 40[rsp]
	.loc 1 13 77
	mov	rax, r12
	sub	rax, 1
	mov	QWORD PTR 160[rsp], rax
	.loc 1 14 1
	mov	r13, QWORD PTR 40[rsp]
	.loc 1 13 100
	mov	rax, r13
	sub	rax, 1
	mov	QWORD PTR 168[rsp], rax
	.loc 1 15 5
	mov	rax, QWORD PTR 48[rsp]
	and	eax, 7
	test	rax, rax
	je	.L7
	.loc 1 15 5 is_stmt 0 discriminator 1
	lea	rax, __PRETTY_FUNCTION__.0[rip]
	mov	rcx, rax
	mov	edx, 15
	lea	rax, .LC1[rip]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	call	__assert_fail@PLT
.L7:
	.loc 1 16 18 is_stmt 1
	mov	esi, 32
	mov	edi, 32
	call	aligned_alloc@PLT
	mov	QWORD PTR 176[rsp], rax
.LBB17:
	.loc 1 17 13
	mov	DWORD PTR 72[rsp], 0
	.loc 1 17 5
	jmp	.L8
.L18:
.LBB18:
	.loc 1 19 17
	mov	DWORD PTR 76[rsp], 0
	.loc 1 19 9
	jmp	.L9
.L17:
	.loc 1 21 16
	mov	eax, DWORD PTR 72[rsp]
	cdqe
	imul	rax, r13
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR 16[rsp]
	add	rdx, rax
	.loc 1 21 23
	mov	eax, DWORD PTR 76[rsp]
	cdqe
	vxorps	xmm0, xmm0, xmm0
	vmovss	DWORD PTR [rdx+rax*4], xmm0
.LBB19:
	.loc 1 22 21
	mov	DWORD PTR 80[rsp], 0
	.loc 1 22 13
	jmp	.L10
.L16:
.LBB20:
	.loc 1 24 144
	mov	eax, DWORD PTR 72[rsp]
	cdqe
	imul	rax, rbx
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR 32[rsp]
	add	rdx, rax
	.loc 1 24 149
	mov	eax, DWORD PTR 80[rsp]
	add	eax, 7
	.loc 1 24 30
	cdqe
	vmovss	xmm0, DWORD PTR [rdx+rax*4]
	.loc 1 24 130
	mov	eax, DWORD PTR 72[rsp]
	cdqe
	imul	rax, rbx
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR 32[rsp]
	add	rdx, rax
	.loc 1 24 135
	mov	eax, DWORD PTR 80[rsp]
	add	eax, 6
	.loc 1 24 30
	cdqe
	vmovss	xmm1, DWORD PTR [rdx+rax*4]
	.loc 1 24 116
	mov	eax, DWORD PTR 72[rsp]
	cdqe
	imul	rax, rbx
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR 32[rsp]
	add	rdx, rax
	.loc 1 24 121
	mov	eax, DWORD PTR 80[rsp]
	add	eax, 5
	.loc 1 24 30
	cdqe
	vmovss	xmm2, DWORD PTR [rdx+rax*4]
	.loc 1 24 102
	mov	eax, DWORD PTR 72[rsp]
	cdqe
	imul	rax, rbx
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR 32[rsp]
	add	rdx, rax
	.loc 1 24 107
	mov	eax, DWORD PTR 80[rsp]
	add	eax, 4
	.loc 1 24 30
	cdqe
	vmovss	xmm3, DWORD PTR [rdx+rax*4]
	.loc 1 24 88
	mov	eax, DWORD PTR 72[rsp]
	cdqe
	imul	rax, rbx
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR 32[rsp]
	add	rdx, rax
	.loc 1 24 93
	mov	eax, DWORD PTR 80[rsp]
	add	eax, 3
	.loc 1 24 30
	cdqe
	vmovss	xmm4, DWORD PTR [rdx+rax*4]
	.loc 1 24 74
	mov	eax, DWORD PTR 72[rsp]
	cdqe
	imul	rax, rbx
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR 32[rsp]
	add	rdx, rax
	.loc 1 24 79
	mov	eax, DWORD PTR 80[rsp]
	add	eax, 2
	.loc 1 24 30
	cdqe
	vmovss	xmm5, DWORD PTR [rdx+rax*4]
	.loc 1 24 60
	mov	eax, DWORD PTR 72[rsp]
	cdqe
	imul	rax, rbx
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR 32[rsp]
	add	rdx, rax
	.loc 1 24 65
	mov	eax, DWORD PTR 80[rsp]
	add	eax, 1
	.loc 1 24 30
	cdqe
	vmovss	xmm6, DWORD PTR [rdx+rax*4]
	.loc 1 24 48
	mov	eax, DWORD PTR 72[rsp]
	cdqe
	imul	rax, rbx
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR 32[rsp]
	add	rdx, rax
	.loc 1 24 30
	mov	eax, DWORD PTR 80[rsp]
	cdqe
	vmovss	xmm7, DWORD PTR [rdx+rax*4]
	vmovss	DWORD PTR 120[rsp], xmm7
	vmovss	DWORD PTR 124[rsp], xmm6
	vmovss	DWORD PTR 128[rsp], xmm5
	vmovss	DWORD PTR 132[rsp], xmm4
	vmovss	DWORD PTR 136[rsp], xmm3
	vmovss	DWORD PTR 140[rsp], xmm2
	vmovss	DWORD PTR 144[rsp], xmm1
	vmovss	DWORD PTR 148[rsp], xmm0
.LBB21:
.LBB22:
	.file 2 "/usr/lib/gcc/x86_64-pc-linux-gnu/14.1.1/include/avxintrin.h"
	.loc 2 1268 10
	vmovss	xmm1, DWORD PTR 120[rsp]
	vmovss	xmm0, DWORD PTR 124[rsp]
	vunpcklps	xmm1, xmm0, xmm1
	vmovss	xmm2, DWORD PTR 128[rsp]
	vmovss	xmm0, DWORD PTR 132[rsp]
	vunpcklps	xmm0, xmm0, xmm2
	vmovlhps	xmm1, xmm0, xmm1
	vmovss	xmm2, DWORD PTR 136[rsp]
	vmovss	xmm0, DWORD PTR 140[rsp]
	vunpcklps	xmm2, xmm0, xmm2
	vmovss	xmm3, DWORD PTR 144[rsp]
	vmovss	xmm0, DWORD PTR 148[rsp]
	vunpcklps	xmm0, xmm0, xmm3
	vmovlhps	xmm0, xmm0, xmm2
	vinsertf128	ymm0, ymm0, xmm1, 0x1
.LBE22:
.LBE21:
	.loc 1 24 30
	vmovaps	YMMWORD PTR 192[rsp], ymm0
	.loc 1 25 146
	mov	eax, DWORD PTR 80[rsp]
	add	eax, 7
	cdqe
	.loc 1 25 144
	imul	rax, r12
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR 24[rsp]
	add	rdx, rax
	.loc 1 25 30
	mov	eax, DWORD PTR 76[rsp]
	cdqe
	vmovss	xmm0, DWORD PTR [rdx+rax*4]
	.loc 1 25 132
	mov	eax, DWORD PTR 80[rsp]
	add	eax, 6
	cdqe
	.loc 1 25 130
	imul	rax, r12
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR 24[rsp]
	add	rdx, rax
	.loc 1 25 30
	mov	eax, DWORD PTR 76[rsp]
	cdqe
	vmovss	xmm1, DWORD PTR [rdx+rax*4]
	.loc 1 25 118
	mov	eax, DWORD PTR 80[rsp]
	add	eax, 5
	cdqe
	.loc 1 25 116
	imul	rax, r12
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR 24[rsp]
	add	rdx, rax
	.loc 1 25 30
	mov	eax, DWORD PTR 76[rsp]
	cdqe
	vmovss	xmm2, DWORD PTR [rdx+rax*4]
	.loc 1 25 104
	mov	eax, DWORD PTR 80[rsp]
	add	eax, 4
	cdqe
	.loc 1 25 102
	imul	rax, r12
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR 24[rsp]
	add	rdx, rax
	.loc 1 25 30
	mov	eax, DWORD PTR 76[rsp]
	cdqe
	vmovss	xmm3, DWORD PTR [rdx+rax*4]
	.loc 1 25 90
	mov	eax, DWORD PTR 80[rsp]
	add	eax, 3
	cdqe
	.loc 1 25 88
	imul	rax, r12
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR 24[rsp]
	add	rdx, rax
	.loc 1 25 30
	mov	eax, DWORD PTR 76[rsp]
	cdqe
	vmovss	xmm4, DWORD PTR [rdx+rax*4]
	.loc 1 25 76
	mov	eax, DWORD PTR 80[rsp]
	add	eax, 2
	cdqe
	.loc 1 25 74
	imul	rax, r12
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR 24[rsp]
	add	rdx, rax
	.loc 1 25 30
	mov	eax, DWORD PTR 76[rsp]
	cdqe
	vmovss	xmm5, DWORD PTR [rdx+rax*4]
	.loc 1 25 62
	mov	eax, DWORD PTR 80[rsp]
	add	eax, 1
	cdqe
	.loc 1 25 60
	imul	rax, r12
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR 24[rsp]
	add	rdx, rax
	.loc 1 25 30
	mov	eax, DWORD PTR 76[rsp]
	cdqe
	vmovss	xmm6, DWORD PTR [rdx+rax*4]
	.loc 1 25 48
	mov	eax, DWORD PTR 80[rsp]
	cdqe
	imul	rax, r12
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR 24[rsp]
	add	rdx, rax
	.loc 1 25 30
	mov	eax, DWORD PTR 76[rsp]
	cdqe
	vmovss	xmm7, DWORD PTR [rdx+rax*4]
	vmovss	DWORD PTR 88[rsp], xmm7
	vmovss	DWORD PTR 92[rsp], xmm6
	vmovss	DWORD PTR 96[rsp], xmm5
	vmovss	DWORD PTR 100[rsp], xmm4
	vmovss	DWORD PTR 104[rsp], xmm3
	vmovss	DWORD PTR 108[rsp], xmm2
	vmovss	DWORD PTR 112[rsp], xmm1
	vmovss	DWORD PTR 116[rsp], xmm0
.LBB23:
.LBB24:
	.loc 2 1268 10
	vmovss	xmm1, DWORD PTR 88[rsp]
	vmovss	xmm0, DWORD PTR 92[rsp]
	vunpcklps	xmm1, xmm0, xmm1
	vmovss	xmm2, DWORD PTR 96[rsp]
	vmovss	xmm0, DWORD PTR 100[rsp]
	vunpcklps	xmm0, xmm0, xmm2
	vmovlhps	xmm1, xmm0, xmm1
	vmovss	xmm2, DWORD PTR 104[rsp]
	vmovss	xmm0, DWORD PTR 108[rsp]
	vunpcklps	xmm2, xmm0, xmm2
	vmovss	xmm3, DWORD PTR 112[rsp]
	vmovss	xmm0, DWORD PTR 116[rsp]
	vunpcklps	xmm0, xmm0, xmm3
	vmovlhps	xmm0, xmm0, xmm2
	vinsertf128	ymm0, ymm0, xmm1, 0x1
.LBE24:
.LBE23:
	.loc 1 25 30
	vmovaps	YMMWORD PTR 224[rsp], ymm0
	vmovaps	ymm0, YMMWORD PTR 192[rsp]
	vmovaps	YMMWORD PTR 320[rsp], ymm0
	vmovaps	ymm0, YMMWORD PTR 224[rsp]
	vmovaps	YMMWORD PTR 352[rsp], ymm0
.LBB25:
.LBB26:
	.loc 2 320 10
	vmovaps	ymm0, YMMWORD PTR 320[rsp]
	vmulps	ymm0, ymm0, YMMWORD PTR 352[rsp]
.LBE26:
.LBE25:
	.loc 1 26 32
	vmovaps	YMMWORD PTR 256[rsp], ymm0
	mov	rax, QWORD PTR 176[rsp]
	mov	QWORD PTR 184[rsp], rax
	vmovaps	ymm0, YMMWORD PTR 256[rsp]
	vmovaps	YMMWORD PTR 288[rsp], ymm0
.LBB27:
.LBB28:
	.loc 2 887 18
	mov	rax, QWORD PTR 184[rsp]
	vmovaps	ymm0, YMMWORD PTR 288[rsp]
	vmovaps	YMMWORD PTR [rax], ymm0
	.loc 2 888 1
	nop
.LBE28:
.LBE27:
.LBB29:
	.loc 1 28 25
	mov	DWORD PTR 84[rsp], 0
	.loc 1 28 17
	jmp	.L14
.L15:
	.loc 1 29 24
	mov	eax, DWORD PTR 72[rsp]
	cdqe
	imul	rax, r13
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR 16[rsp]
	add	rdx, rax
	.loc 1 29 27
	mov	eax, DWORD PTR 76[rsp]
	cdqe
	vmovss	xmm1, DWORD PTR [rdx+rax*4]
	.loc 1 29 35
	mov	eax, DWORD PTR 84[rsp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR 176[rsp]
	add	rax, rdx
	vmovss	xmm0, DWORD PTR [rax]
	.loc 1 29 24
	mov	eax, DWORD PTR 72[rsp]
	cdqe
	imul	rax, r13
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR 16[rsp]
	add	rdx, rax
	.loc 1 29 30
	vaddss	xmm0, xmm1, xmm0
	mov	eax, DWORD PTR 76[rsp]
	cdqe
	vmovss	DWORD PTR [rdx+rax*4], xmm0
	.loc 1 28 34 discriminator 3
	add	DWORD PTR 84[rsp], 1
.L14:
	.loc 1 28 30 discriminator 1
	cmp	DWORD PTR 84[rsp], 7
	jle	.L15
.LBE29:
.LBE20:
	.loc 1 22 35 discriminator 2
	add	DWORD PTR 80[rsp], 8
.L10:
	.loc 1 22 26 discriminator 1
	mov	eax, DWORD PTR 80[rsp]
	cdqe
	cmp	rax, QWORD PTR 48[rsp]
	jb	.L16
.LBE19:
	.loc 1 19 26 discriminator 2
	add	DWORD PTR 76[rsp], 1
.L9:
	.loc 1 19 22 discriminator 1
	mov	eax, DWORD PTR 76[rsp]
	cdqe
	cmp	rax, QWORD PTR 40[rsp]
	jb	.L17
.LBE18:
	.loc 1 17 22 discriminator 2
	add	DWORD PTR 72[rsp], 1
.L8:
	.loc 1 17 18 discriminator 1
	mov	eax, DWORD PTR 72[rsp]
	cdqe
	cmp	rax, QWORD PTR 56[rsp]
	jb	.L18
.LBE17:
	.loc 1 33 5
	mov	rax, QWORD PTR 176[rsp]
	mov	rdi, rax
	call	free@PLT
	.loc 1 34 1
	nop
	lea	rsp, -24[rbp]
	pop	rbx
	pop	r12
	pop	r13
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5012:

matmul:
.LFB5012:
	.loc 1 14 1
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 96
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	QWORD PTR -72[rbp], rdx
	mov	QWORD PTR -80[rbp], rcx
	mov	QWORD PTR -88[rbp], r8
	mov	QWORD PTR -96[rbp], r9
	.loc 1 14 1
	mov	rdx, QWORD PTR -64[rbp]
	.loc 1 13 54
	mov	rax, rdx
	sub	rax, 1
	mov	QWORD PTR -24[rbp], rax
	.loc 1 14 1
	mov	rcx, QWORD PTR -72[rbp]
	.loc 1 13 77
	mov	rax, rcx
	sub	rax, 1
	mov	QWORD PTR -16[rbp], rax
	.loc 1 14 1
	mov	rax, QWORD PTR -72[rbp]
	.loc 1 13 100
	mov	rsi, rax
	sub	rsi, 1
	mov	QWORD PTR -8[rbp], rsi
	.loc 1 15 5
	mov	rsi, QWORD PTR -64[rbp]
	and	esi, 7
	test	rsi, rsi
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
.LBB4:
	.loc 1 16 13 is_stmt 1
	mov	DWORD PTR -36[rbp], 0
	.loc 1 16 5
	jmp	.L8
.L13:
.LBB5:
	.loc 1 18 17
	mov	DWORD PTR -32[rbp], 0
	.loc 1 18 9
	jmp	.L9
.L12:
	.loc 1 20 16
	mov	esi, DWORD PTR -36[rbp]
	movsx	rsi, esi
	imul	rsi, rax
	lea	rdi, 0[0+rsi*4]
	mov	rsi, QWORD PTR -96[rbp]
	add	rdi, rsi
	.loc 1 20 23
	mov	esi, DWORD PTR -32[rbp]
	movsx	rsi, esi
	pxor	xmm0, xmm0
	movss	DWORD PTR [rdi+rsi*4], xmm0
.LBB6:
	.loc 1 21 21
	mov	DWORD PTR -28[rbp], 0
	.loc 1 21 13
	jmp	.L10
.L11:
	.loc 1 23 32
	mov	esi, DWORD PTR -36[rbp]
	movsx	rsi, esi
	imul	rsi, rdx
	lea	rdi, 0[0+rsi*4]
	mov	rsi, QWORD PTR -80[rbp]
	add	rdi, rsi
	.loc 1 23 35
	mov	esi, DWORD PTR -28[rbp]
	movsx	rsi, esi
	movss	xmm1, DWORD PTR [rdi+rsi*4]
	.loc 1 23 43
	mov	esi, DWORD PTR -28[rbp]
	movsx	rsi, esi
	imul	rsi, rcx
	lea	rdi, 0[0+rsi*4]
	mov	rsi, QWORD PTR -88[rbp]
	add	rdi, rsi
	.loc 1 23 46
	mov	esi, DWORD PTR -32[rbp]
	movsx	rsi, esi
	movss	xmm0, DWORD PTR [rdi+rsi*4]
	.loc 1 23 38
	mulss	xmm1, xmm0
	.loc 1 23 20
	mov	esi, DWORD PTR -36[rbp]
	movsx	rsi, esi
	imul	rsi, rax
	lea	rdi, 0[0+rsi*4]
	mov	rsi, QWORD PTR -96[rbp]
	add	rdi, rsi
	.loc 1 23 23
	mov	esi, DWORD PTR -32[rbp]
	movsx	rsi, esi
	movss	xmm0, DWORD PTR [rdi+rsi*4]
	.loc 1 23 20
	mov	esi, DWORD PTR -36[rbp]
	movsx	rsi, esi
	imul	rsi, rax
	lea	rdi, 0[0+rsi*4]
	mov	rsi, QWORD PTR -96[rbp]
	add	rdi, rsi
	.loc 1 23 26
	addss	xmm0, xmm1
	mov	esi, DWORD PTR -32[rbp]
	movsx	rsi, esi
	movss	DWORD PTR [rdi+rsi*4], xmm0
	.loc 1 21 35 discriminator 3
	add	DWORD PTR -28[rbp], 1
.L10:
	.loc 1 21 26 discriminator 1
	mov	esi, DWORD PTR -28[rbp]
	movsx	rsi, esi
	cmp	rsi, QWORD PTR -64[rbp]
	jb	.L11
.LBE6:
	.loc 1 18 26 discriminator 2
	add	DWORD PTR -32[rbp], 1
.L9:
	.loc 1 18 22 discriminator 1
	mov	esi, DWORD PTR -32[rbp]
	movsx	rsi, esi
	cmp	rsi, QWORD PTR -72[rbp]
	jb	.L12
.LBE5:
	.loc 1 16 22 discriminator 2
	add	DWORD PTR -36[rbp], 1
.L8:
	.loc 1 16 18 discriminator 1
	mov	esi, DWORD PTR -36[rbp]
	movsx	rsi, esi
	cmp	rsi, QWORD PTR -56[rbp]
	jb	.L13
.LBE4:
	.loc 1 27 1
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5012:

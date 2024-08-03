matmul:
.LFB7:
	.loc 1 13 1
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -64[rbp], rsi
	mov	QWORD PTR -72[rbp], rdx
	mov	QWORD PTR -80[rbp], rcx
	mov	QWORD PTR -88[rbp], r8
	mov	QWORD PTR -96[rbp], r9
	.loc 1 13 1
	mov	rdx, QWORD PTR -64[rbp]
	.loc 1 12 52
	mov	rax, rdx
	sub	rax, 1
	mov	QWORD PTR -24[rbp], rax
	.loc 1 13 1
	mov	rcx, QWORD PTR -72[rbp]
	.loc 1 12 73
	mov	rax, rcx
	sub	rax, 1
	mov	QWORD PTR -16[rbp], rax
	.loc 1 13 1
	mov	rax, QWORD PTR -72[rbp]
	.loc 1 12 94
	mov	rsi, rax
	sub	rsi, 1
	mov	QWORD PTR -8[rbp], rsi
.LBB4:
	.loc 1 14 13
	mov	DWORD PTR -36[rbp], 0
	.loc 1 14 5
	jmp	.L7
.L12:
.LBB5:
	.loc 1 16 17
	mov	DWORD PTR -32[rbp], 0
	.loc 1 16 9
	jmp	.L8
.L11:
	.loc 1 18 16
	mov	esi, DWORD PTR -36[rbp]
	movsx	rsi, esi
	imul	rsi, rax
	lea	rdi, 0[0+rsi*4]
	mov	rsi, QWORD PTR -96[rbp]
	add	rdi, rsi
	.loc 1 18 23
	mov	esi, DWORD PTR -32[rbp]
	movsx	rsi, esi
	mov	DWORD PTR [rdi+rsi*4], 0
.LBB6:
	.loc 1 19 21
	mov	DWORD PTR -28[rbp], 0
	.loc 1 19 13
	jmp	.L9
.L10:
	.loc 1 20 32
	mov	esi, DWORD PTR -36[rbp]
	movsx	rsi, esi
	imul	rsi, rdx
	lea	rdi, 0[0+rsi*4]
	mov	rsi, QWORD PTR -80[rbp]
	add	rdi, rsi
	.loc 1 20 35
	mov	esi, DWORD PTR -28[rbp]
	movsx	rsi, esi
	mov	edi, DWORD PTR [rdi+rsi*4]
	.loc 1 20 43
	mov	esi, DWORD PTR -28[rbp]
	movsx	rsi, esi
	imul	rsi, rcx
	lea	r8, 0[0+rsi*4]
	mov	rsi, QWORD PTR -88[rbp]
	add	r8, rsi
	.loc 1 20 46
	mov	esi, DWORD PTR -32[rbp]
	movsx	rsi, esi
	mov	esi, DWORD PTR [r8+rsi*4]
	.loc 1 20 38
	imul	edi, esi
	mov	r9d, edi
	.loc 1 20 20
	mov	esi, DWORD PTR -36[rbp]
	movsx	rsi, esi
	imul	rsi, rax
	lea	rdi, 0[0+rsi*4]
	mov	rsi, QWORD PTR -96[rbp]
	add	rdi, rsi
	.loc 1 20 23
	mov	esi, DWORD PTR -32[rbp]
	movsx	rsi, esi
	mov	r8d, DWORD PTR [rdi+rsi*4]
	.loc 1 20 20
	mov	esi, DWORD PTR -36[rbp]
	movsx	rsi, esi
	imul	rsi, rax
	lea	rdi, 0[0+rsi*4]
	mov	rsi, QWORD PTR -96[rbp]
	add	rdi, rsi
	.loc 1 20 26
	add	r8d, r9d
	mov	esi, DWORD PTR -32[rbp]
	movsx	rsi, esi
	mov	DWORD PTR [rdi+rsi*4], r8d
	.loc 1 19 35 discriminator 3
	add	DWORD PTR -28[rbp], 1
.L9:
	.loc 1 19 26 discriminator 1
	mov	esi, DWORD PTR -28[rbp]
	movsx	rsi, esi
	cmp	rsi, QWORD PTR -64[rbp]
	jb	.L10
.LBE6:
	.loc 1 16 26 discriminator 2
	add	DWORD PTR -32[rbp], 1
.L8:
	.loc 1 16 22 discriminator 1
	mov	esi, DWORD PTR -32[rbp]
	movsx	rsi, esi
	cmp	rsi, QWORD PTR -72[rbp]
	jb	.L11
.LBE5:
	.loc 1 14 22 discriminator 2
	add	DWORD PTR -36[rbp], 1
.L7:
	.loc 1 14 18 discriminator 1
	mov	esi, DWORD PTR -36[rbp]
	movsx	rsi, esi
	cmp	rsi, QWORD PTR -56[rbp]
	jb	.L12
.LBE4:
	.loc 1 23 1
	nop
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:

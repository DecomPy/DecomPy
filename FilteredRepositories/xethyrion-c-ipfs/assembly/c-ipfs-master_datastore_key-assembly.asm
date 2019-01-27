	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ipfs_datastore_key_new ## -- Begin function ipfs_datastore_key_new
	.p2align	4, 0x90
_ipfs_datastore_key_new:                ## @ipfs_datastore_key_new
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 80
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	qword ptr [rbp - 32], rdx
	mov	qword ptr [rbp - 40], rcx
	mov	rdi, qword ptr [rbp - 16]
	call	_strlen
	add	rax, 1
	cmp	rax, qword ptr [rbp - 32]
	jbe	LBB0_2
## %bb.1:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_3
LBB0_2:
	mov	rcx, -1
	mov	rdi, qword ptr [rbp - 24]
	mov	rsi, qword ptr [rbp - 16]
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 48], rdi ## 8-byte Spill
	mov	rdi, rax
	mov	qword ptr [rbp - 56], rcx ## 8-byte Spill
	mov	qword ptr [rbp - 64], rsi ## 8-byte Spill
	call	_strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 48] ## 8-byte Reload
	mov	rsi, qword ptr [rbp - 64] ## 8-byte Reload
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 56] ## 8-byte Reload
	call	___memcpy_chk
	mov	dword ptr [rbp - 4], 1
	mov	qword ptr [rbp - 72], rax ## 8-byte Spill
LBB0_3:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 80
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols

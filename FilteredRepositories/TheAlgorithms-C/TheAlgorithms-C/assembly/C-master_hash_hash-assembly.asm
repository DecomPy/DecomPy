	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_sdbm                   ## -- Begin function sdbm
	.p2align	4, 0x90
_sdbm:                                  ## @sdbm
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], 0
	mov	dword ptr [rbp - 20], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 0
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	rax, byte ptr [rax + rcx]
	mov	rcx, qword ptr [rbp - 16]
	shl	rcx, 6
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 16]
	shl	rcx, 16
	add	rax, rcx
	sub	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 16], rax
	mov	edx, dword ptr [rbp - 20]
	add	edx, 1
	mov	dword ptr [rbp - 20], edx
	jmp	LBB0_1
LBB0_3:
	mov	rax, qword ptr [rbp - 16]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_djb2                   ## -- Begin function djb2
	.p2align	4, 0x90
_djb2:                                  ## @djb2
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], 5381
	mov	dword ptr [rbp - 20], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 0
	je	LBB1_3
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	shl	rax, 5
	add	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 20]
	movsx	rcx, byte ptr [rcx + rdx]
	add	rax, rcx
	mov	qword ptr [rbp - 16], rax
	mov	esi, dword ptr [rbp - 20]
	add	esi, 1
	mov	dword ptr [rbp - 20], esi
	jmp	LBB1_1
LBB1_3:
	mov	rax, qword ptr [rbp - 16]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_xor8                   ## -- Begin function xor8
	.p2align	4, 0x90
_xor8:                                  ## @xor8
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], 0
	mov	dword ptr [rbp - 16], 0
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 0
	je	LBB2_3
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 16]
	movsx	esi, byte ptr [rcx + rdx]
	add	eax, esi
	and	eax, 255
	mov	dword ptr [rbp - 12], eax
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB2_1
LBB2_3:
	mov	eax, dword ptr [rbp - 12]
	xor	eax, 255
	add	eax, 1
	and	eax, 255
	mov	cl, al
	movsx	eax, cl
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_adler_32               ## -- Begin function adler_32
	.p2align	4, 0x90
_adler_32:                              ## @adler_32
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], 1
	mov	dword ptr [rbp - 16], 0
	mov	dword ptr [rbp - 20], 65521
	mov	dword ptr [rbp - 24], 0
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 24]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 0
	je	LBB3_3
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 24]
	movsx	esi, byte ptr [rcx + rdx]
	add	eax, esi
	cdq
	mov	esi, 65521
	idiv	esi
	mov	dword ptr [rbp - 12], edx
	mov	edx, dword ptr [rbp - 16]
	add	edx, dword ptr [rbp - 12]
	mov	eax, edx
	cdq
	idiv	esi
	mov	dword ptr [rbp - 16], edx
	mov	edx, dword ptr [rbp - 24]
	add	edx, 1
	mov	dword ptr [rbp - 24], edx
	jmp	LBB3_1
LBB3_3:
	mov	eax, dword ptr [rbp - 16]
	shl	eax, 16
	or	eax, dword ptr [rbp - 12]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols

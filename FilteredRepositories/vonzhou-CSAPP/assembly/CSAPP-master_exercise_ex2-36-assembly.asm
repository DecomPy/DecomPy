	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_tmult_ok               ## -- Begin function tmult_ok
	.p2align	4, 0x90
_tmult_ok:                              ## @tmult_ok
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	movsxd	rax, dword ptr [rbp - 4]
	movsxd	rcx, dword ptr [rbp - 8]
	imul	rax, rcx
	mov	qword ptr [rbp - 16], rax
	mov	esi, dword ptr [rbp - 4]
	imul	esi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 20], esi
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	cmp	rax, rcx
	sete	dl
	and	dl, 1
	movzx	eax, dl
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_book_tmult_ok          ## -- Begin function book_tmult_ok
	.p2align	4, 0x90
_book_tmult_ok:                         ## @book_tmult_ok
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	movsxd	rax, dword ptr [rbp - 4]
	movsxd	rcx, dword ptr [rbp - 8]
	imul	rax, rcx
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 16]
	mov	esi, ecx
	movsxd	rcx, esi
	cmp	rax, rcx
	sete	dl
	and	dl, 1
	movzx	eax, dl
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols

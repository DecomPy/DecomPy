	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_div16                  ## -- Begin function div16
	.p2align	4, 0x90
_div16:                                 ## @div16
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	and	edi, -2147483648
	sar	edi, 31
	mov	dword ptr [rbp - 8], edi
	mov	edi, dword ptr [rbp - 4]
	mov	eax, dword ptr [rbp - 8]
	and	eax, 15
	add	edi, eax
	sar	edi, 4
	mov	eax, edi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_book_div16             ## -- Begin function book_div16
	.p2align	4, 0x90
_book_div16:                            ## @book_div16
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	sar	edi, 31
	and	edi, 15
	mov	dword ptr [rbp - 8], edi
	mov	edi, dword ptr [rbp - 4]
	add	edi, dword ptr [rbp - 8]
	sar	edi, 4
	mov	eax, edi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols

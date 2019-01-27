	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ilog2                  ## -- Begin function ilog2
	.p2align	4, 0x90
_ilog2:                                 ## @ilog2
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	eax, dword ptr [rbp - 4]
	sar	eax, 1
	or	edi, eax
	mov	dword ptr [rbp - 4], edi
	mov	eax, dword ptr [rbp - 4]
	mov	edi, dword ptr [rbp - 4]
	sar	edi, 2
	or	eax, edi
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [rbp - 4]
	mov	edi, dword ptr [rbp - 4]
	sar	edi, 4
	or	eax, edi
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [rbp - 4]
	mov	edi, dword ptr [rbp - 4]
	sar	edi, 8
	or	eax, edi
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [rbp - 4]
	mov	edi, dword ptr [rbp - 4]
	sar	edi, 16
	or	eax, edi
	mov	dword ptr [rbp - 4], eax
	mov	dword ptr [rbp - 8], 21845
	mov	eax, dword ptr [rbp - 8]
	mov	edi, dword ptr [rbp - 8]
	shl	edi, 16
	or	eax, edi
	mov	dword ptr [rbp - 8], eax
	mov	dword ptr [rbp - 12], 13107
	mov	eax, dword ptr [rbp - 12]
	mov	edi, dword ptr [rbp - 12]
	shl	edi, 16
	or	eax, edi
	mov	dword ptr [rbp - 12], eax
	mov	dword ptr [rbp - 16], 3855
	mov	eax, dword ptr [rbp - 16]
	mov	edi, dword ptr [rbp - 16]
	shl	edi, 16
	or	eax, edi
	mov	dword ptr [rbp - 16], eax
	mov	dword ptr [rbp - 20], 16711935
	mov	dword ptr [rbp - 24], 65535
	mov	eax, dword ptr [rbp - 4]
	and	eax, dword ptr [rbp - 8]
	mov	edi, dword ptr [rbp - 4]
	sar	edi, 1
	and	edi, dword ptr [rbp - 8]
	add	eax, edi
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [rbp - 4]
	and	eax, dword ptr [rbp - 12]
	mov	edi, dword ptr [rbp - 4]
	sar	edi, 2
	and	edi, dword ptr [rbp - 12]
	add	eax, edi
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [rbp - 4]
	and	eax, dword ptr [rbp - 16]
	mov	edi, dword ptr [rbp - 4]
	sar	edi, 4
	and	edi, dword ptr [rbp - 16]
	add	eax, edi
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [rbp - 4]
	and	eax, dword ptr [rbp - 20]
	mov	edi, dword ptr [rbp - 4]
	sar	edi, 8
	and	edi, dword ptr [rbp - 20]
	add	eax, edi
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [rbp - 4]
	and	eax, dword ptr [rbp - 24]
	mov	edi, dword ptr [rbp - 4]
	sar	edi, 16
	and	edi, dword ptr [rbp - 24]
	add	eax, edi
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [rbp - 4]
	add	eax, -1
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols

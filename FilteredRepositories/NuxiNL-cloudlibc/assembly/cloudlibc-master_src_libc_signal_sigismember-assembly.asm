	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_sigismember            ## -- Begin function sigismember
	.p2align	4, 0x90
_sigismember:                           ## @sigismember
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], esi
	mov	rdi, qword ptr [rbp - 16]
	mov	esi, dword ptr [rdi]
	mov	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 4], eax
	cmp	dword ptr [rbp - 4], 32
	mov	dword ptr [rbp - 24], esi ## 4-byte Spill
	jle	LBB0_2
## %bb.1:
	xor	eax, eax
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	jmp	LBB0_3
LBB0_2:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 1
	mov	ecx, eax
                                        ## kill: def $cl killed $ecx
	mov	eax, 1
	shl	eax, cl
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
LBB0_3:
	mov	eax, dword ptr [rbp - 28] ## 4-byte Reload
	mov	ecx, dword ptr [rbp - 24] ## 4-byte Reload
	and	ecx, eax
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols

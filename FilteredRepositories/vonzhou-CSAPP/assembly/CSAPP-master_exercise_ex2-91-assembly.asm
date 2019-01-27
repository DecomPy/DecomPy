	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_float_absval           ## -- Begin function float_absval
	.p2align	4, 0x90
_float_absval:                          ## @float_absval
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	mov	edi, dword ptr [rbp - 8]
	shr	edi, 23
	and	edi, 255
	mov	dword ptr [rbp - 12], edi
	mov	edi, dword ptr [rbp - 8]
	and	edi, 8388607
	mov	dword ptr [rbp - 16], edi
	cmp	dword ptr [rbp - 12], 255
	jne	LBB0_3
## %bb.1:
	cmp	dword ptr [rbp - 16], 0
	je	LBB0_3
## %bb.2:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_4
LBB0_3:
	mov	eax, dword ptr [rbp - 12]
	shl	eax, 23
	or	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 4], eax
LBB0_4:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_f2u                    ## -- Begin function f2u
	.p2align	4, 0x90
_f2u:                                   ## @f2u
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movss	dword ptr [rbp - 4], xmm0
	movss	xmm0, dword ptr [rbp - 4] ## xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 8], xmm0
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2               ## -- Begin function main
LCPI2_0:
	.long	3212836864              ## float -1
LCPI2_1:
	.long	1065353216              ## float 1
LCPI2_2:
	.long	2147483648              ## float -0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 128
	movss	xmm0, dword ptr [rip + LCPI2_2] ## xmm0 = mem[0],zero,zero,zero
	mov	dword ptr [rbp - 4], 0
	movss	dword ptr [rbp - 8], xmm0
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	call	_f2u
	mov	dword ptr [rbp - 12], eax
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	mov	esi, dword ptr [rbp - 12]
	mov	edi, dword ptr [rbp - 12]
	movsd	qword ptr [rbp - 24], xmm0 ## 8-byte Spill
	mov	dword ptr [rbp - 28], esi ## 4-byte Spill
	call	_float_absval
	mov	edi, eax
	call	_u2f
	cvtss2sd	xmm1, xmm0
	lea	rdi, [rip + L_.str]
	movsd	xmm0, qword ptr [rbp - 24] ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mov	esi, dword ptr [rbp - 28] ## 4-byte Reload
	mov	al, 2
	call	_printf
	xorps	xmm0, xmm0
	movss	dword ptr [rbp - 8], xmm0
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	call	_f2u
	mov	dword ptr [rbp - 12], eax
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	mov	esi, dword ptr [rbp - 12]
	mov	edi, dword ptr [rbp - 12]
	movsd	qword ptr [rbp - 40], xmm0 ## 8-byte Spill
	mov	dword ptr [rbp - 44], esi ## 4-byte Spill
	call	_float_absval
	mov	edi, eax
	call	_u2f
	cvtss2sd	xmm1, xmm0
	lea	rdi, [rip + L_.str]
	movsd	xmm0, qword ptr [rbp - 40] ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mov	esi, dword ptr [rbp - 44] ## 4-byte Reload
	mov	al, 2
	call	_printf
	movss	xmm0, dword ptr [rip + LCPI2_1] ## xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 8], xmm0
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	call	_f2u
	mov	dword ptr [rbp - 12], eax
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	mov	esi, dword ptr [rbp - 12]
	mov	edi, dword ptr [rbp - 12]
	movsd	qword ptr [rbp - 56], xmm0 ## 8-byte Spill
	mov	dword ptr [rbp - 60], esi ## 4-byte Spill
	call	_float_absval
	mov	edi, eax
	call	_u2f
	cvtss2sd	xmm1, xmm0
	lea	rdi, [rip + L_.str]
	movsd	xmm0, qword ptr [rbp - 56] ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mov	esi, dword ptr [rbp - 60] ## 4-byte Reload
	mov	al, 2
	call	_printf
	movss	xmm0, dword ptr [rip + LCPI2_0] ## xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 8], xmm0
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	mov	dword ptr [rbp - 64], eax ## 4-byte Spill
	call	_f2u
	mov	dword ptr [rbp - 12], eax
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	mov	esi, dword ptr [rbp - 12]
	mov	edi, dword ptr [rbp - 12]
	movsd	qword ptr [rbp - 72], xmm0 ## 8-byte Spill
	mov	dword ptr [rbp - 76], esi ## 4-byte Spill
	call	_float_absval
	mov	edi, eax
	call	_u2f
	cvtss2sd	xmm1, xmm0
	lea	rdi, [rip + L_.str]
	movsd	xmm0, qword ptr [rbp - 72] ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mov	esi, dword ptr [rbp - 76] ## 4-byte Reload
	mov	al, 2
	call	_printf
	mov	edi, 2139095040
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
	call	_u2f
	movss	dword ptr [rbp - 8], xmm0
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	call	_f2u
	mov	dword ptr [rbp - 12], eax
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	mov	esi, dword ptr [rbp - 12]
	mov	edi, dword ptr [rbp - 12]
	movsd	qword ptr [rbp - 88], xmm0 ## 8-byte Spill
	mov	dword ptr [rbp - 92], esi ## 4-byte Spill
	call	_float_absval
	mov	edi, eax
	call	_u2f
	cvtss2sd	xmm1, xmm0
	lea	rdi, [rip + L_.str]
	movsd	xmm0, qword ptr [rbp - 88] ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mov	esi, dword ptr [rbp - 92] ## 4-byte Reload
	mov	al, 2
	call	_printf
	mov	edi, 4286578688
	mov	dword ptr [rbp - 96], eax ## 4-byte Spill
	call	_u2f
	movss	dword ptr [rbp - 8], xmm0
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	call	_f2u
	mov	dword ptr [rbp - 12], eax
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	mov	esi, dword ptr [rbp - 12]
	mov	edi, dword ptr [rbp - 12]
	movsd	qword ptr [rbp - 104], xmm0 ## 8-byte Spill
	mov	dword ptr [rbp - 108], esi ## 4-byte Spill
	call	_float_absval
	mov	edi, eax
	call	_u2f
	cvtss2sd	xmm1, xmm0
	lea	rdi, [rip + L_.str]
	movsd	xmm0, qword ptr [rbp - 104] ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mov	esi, dword ptr [rbp - 108] ## 4-byte Reload
	mov	al, 2
	call	_printf
	mov	edi, 2139095041
	mov	dword ptr [rbp - 112], eax ## 4-byte Spill
	call	_u2f
	movss	dword ptr [rbp - 8], xmm0
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	call	_f2u
	mov	dword ptr [rbp - 12], eax
	movss	xmm0, dword ptr [rbp - 8] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	mov	esi, dword ptr [rbp - 12]
	mov	edi, dword ptr [rbp - 12]
	movsd	qword ptr [rbp - 120], xmm0 ## 8-byte Spill
	mov	dword ptr [rbp - 124], esi ## 4-byte Spill
	call	_float_absval
	mov	edi, eax
	call	_u2f
	cvtss2sd	xmm1, xmm0
	lea	rdi, [rip + L_.str]
	movsd	xmm0, qword ptr [rbp - 120] ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mov	esi, dword ptr [rbp - 124] ## 4-byte Reload
	mov	al, 2
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 128], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 128
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%f(0x%X): %f\n"


.subsections_via_symbols

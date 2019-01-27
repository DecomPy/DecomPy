	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_calc                   ## -- Begin function calc
	.p2align	4, 0x90
_calc:                                  ## @calc
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 20], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 20], 6
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	imul	eax, dword ptr [rbp - 4], 5
	sub	eax, 10
	mov	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 20]
	cdq
	idiv	ecx
	cvtsi2sd	xmm0, eax
	addsd	xmm0, qword ptr [rbp - 16]
	movsd	qword ptr [rbp - 16], xmm0
	mov	esi, dword ptr [rbp - 4]
	mov	eax, dword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 20]
	movsd	xmm0, qword ptr [rbp - 16] ## xmm0 = mem[0],zero
	lea	rdi, [rip + L_.str]
	mov	edx, eax
	mov	al, 1
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_1
LBB0_4:
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 165
	mov	dword ptr [rbp - 24], 4
	mov	edi, dword ptr [rbp - 20]
	mov	esi, dword ptr [rbp - 24]
	call	_calc
	xor	eax, eax
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"(%d * 5 - 17 ) / %d = %f\n"


.subsections_via_symbols

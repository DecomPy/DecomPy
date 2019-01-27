	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
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
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 8]
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	call	_square
	mov	edi, dword ptr [rbp - 8]
	call	_cube
	mov	esi, dword ptr [rbp - 8]
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 20], esi ## 4-byte Spill
	call	_percent60
	cvtss2sd	xmm0, xmm0
	lea	rdi, [rip + L_.str.2]
	mov	esi, dword ptr [rbp - 20] ## 4-byte Reload
	mov	al, 1
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_square                 ## -- Begin function square
	.p2align	4, 0x90
_square:                                ## @square
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], edi
	mov	esi, dword ptr [rbp - 4]
	mov	edi, dword ptr [rbp - 4]
	imul	edi, dword ptr [rbp - 4]
	lea	rax, [rip + L_.str.3]
	mov	dword ptr [rbp - 8], edi ## 4-byte Spill
	mov	rdi, rax
	mov	edx, dword ptr [rbp - 8] ## 4-byte Reload
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_cube                   ## -- Begin function cube
	.p2align	4, 0x90
_cube:                                  ## @cube
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], edi
	mov	esi, dword ptr [rbp - 4]
	mov	edi, dword ptr [rbp - 4]
	imul	edi, dword ptr [rbp - 4]
	imul	edi, dword ptr [rbp - 4]
	lea	rax, [rip + L_.str.4]
	mov	dword ptr [rbp - 8], edi ## 4-byte Spill
	mov	rdi, rax
	mov	edx, dword ptr [rbp - 8] ## 4-byte Reload
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function percent60
LCPI3_0:
	.quad	4603579539098121011     ## double 0.59999999999999998
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_percent60
	.p2align	4, 0x90
_percent60:                             ## @percent60
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movsd	xmm0, qword ptr [rip + LCPI3_0] ## xmm0 = mem[0],zero
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	cvtsi2sd	xmm1, edi
	mulsd	xmm0, xmm1
	cvtsd2ss	xmm0, xmm0
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter value of n: "

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"60 percent of %d = %f\n"

L_.str.3:                               ## @.str.3
	.asciz	"Square of %d = %d\n"

L_.str.4:                               ## @.str.4
	.asciz	"Cube of %d = %d\n"


.subsections_via_symbols

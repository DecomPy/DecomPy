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
	lea	rdx, [rbp - 12]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	call	_gcd
	mov	dword ptr [rbp - 16], eax
	cmp	dword ptr [rbp - 16], 0
	jge	LBB0_2
## %bb.1:
	imul	eax, dword ptr [rbp - 16], -1
	mov	dword ptr [rbp - 16], eax
LBB0_2:
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 12]
	mov	ecx, dword ptr [rbp - 16]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_gcd                    ## -- Begin function gcd
	.p2align	4, 0x90
_gcd:                                   ## @gcd
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 12], esi
	cmp	dword ptr [rbp - 12], 0
	jne	LBB1_2
## %bb.1:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB1_3
LBB1_2:
	mov	edi, dword ptr [rbp - 12]
	mov	eax, dword ptr [rbp - 8]
	cdq
	idiv	dword ptr [rbp - 12]
	mov	esi, edx
	call	_gcd
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
LBB1_3:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter a and b:\n"

L_.str.1:                               ## @.str.1
	.asciz	"%d%d"

L_.str.2:                               ## @.str.2
	.asciz	"GCD(%d, %d) = %d\n"


.subsections_via_symbols

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
	mov	dword ptr [rbp - 8], 26
	mov	dword ptr [rbp - 12], 100
	cmp	dword ptr [rbp - 8], 20
	jle	LBB0_5
## %bb.1:
	cmp	dword ptr [rbp - 8], 30
	jle	LBB0_3
## %bb.2:
	mov	eax, dword ptr [rbp - 12]
	add	eax, 35
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	jmp	LBB0_4
LBB0_3:
	mov	eax, dword ptr [rbp - 12]
	add	eax, 25
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
LBB0_4:
	mov	eax, dword ptr [rbp - 16] ## 4-byte Reload
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	jmp	LBB0_6
LBB0_5:
	mov	eax, dword ptr [rbp - 12]
	add	eax, 15
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
LBB0_6:
	mov	eax, dword ptr [rbp - 20] ## 4-byte Reload
	mov	dword ptr [rbp - 8], eax
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	xor	edx, edx
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	eax, edx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"a = %d b = %d \n"


.subsections_via_symbols

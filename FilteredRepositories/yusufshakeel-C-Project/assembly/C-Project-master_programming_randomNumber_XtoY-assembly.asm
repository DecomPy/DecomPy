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
	xor	eax, eax
	mov	edi, eax
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 12], 10
	mov	dword ptr [rbp - 16], 20
	mov	eax, dword ptr [rbp - 16]
	sub	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 20], eax
	call	_time
	mov	ecx, eax
	mov	edi, ecx
	call	_srand
	call	_rand
	mov	ecx, dword ptr [rbp - 20]
	add	ecx, 1
	cdq
	idiv	ecx
	add	edx, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 8], edx
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Random Number from 10 to 20: %d"


.subsections_via_symbols

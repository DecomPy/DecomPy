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
	mov	dword ptr [rbp - 8], 6
	mov	eax, dword ptr [rbp - 8]
	shl	eax, 2
	add	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 12], eax
	mov	esi, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str]
	mov	edx, 5
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rbp - 8]
	shl	ecx, 3
	add	ecx, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 12], ecx
	mov	esi, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str]
	mov	edx, 9
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rbp - 8]
	shl	ecx, 5
	mov	edx, dword ptr [rbp - 8]
	shl	edx, 1
	sub	ecx, edx
	mov	dword ptr [rbp - 12], ecx
	mov	esi, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str]
	mov	edx, 30
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rbp - 8]
	shl	ecx, 3
	mov	edx, dword ptr [rbp - 8]
	shl	edx, 6
	sub	ecx, edx
	mov	dword ptr [rbp - 12], ecx
	mov	esi, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str]
	mov	edx, 4294967240
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
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
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d * %d = %d\n"


.subsections_via_symbols

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
	mov	ecx, dword ptr [rip + _b]
                                        ## kill: def $cl killed $ecx
	mov	eax, 1
	shl	eax, cl
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rip + _b]
                                        ## kill: def $cl killed $ecx
	mov	esi, 1
	shl	esi, cl
	sub	esi, 1
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str]
                                        ## implicit-def: $esi
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str]
                                        ## implicit-def: $esi
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str]
                                        ## implicit-def: $esi
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_b                      ## @b
	.p2align	2
_b:
	.long	32                      ## 0x20

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%x\n"

	.comm	_dt,12,2                ## @dt
	.comm	_a,4,2                  ## @a

.subsections_via_symbols

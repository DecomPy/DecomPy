	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_henry                  ## -- Begin function henry
	.p2align	4, 0x90
_henry:                                 ## @henry
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	esi, dword ptr [rip + _henry.fred]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rip + _henry.fred]
	add	esi, 1
	mov	dword ptr [rip + _henry.fred], esi
	mov	dword ptr [rbp - 4], eax ## 4-byte Spill
	add	rsp, 16
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
	sub	rsp, 16
	mov	esi, dword ptr [rip + _fred]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], eax ## 4-byte Spill
	call	_henry
	call	_henry
	call	_henry
	call	_henry
	mov	esi, dword ptr [rip + _fred]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rip + _fred], 8901
	mov	dword ptr [rip + _joe], 2345
	mov	esi, dword ptr [rip + _fred]
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rip + _joe]
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.p2align	2               ## @henry.fred
_henry.fred:
	.long	4567                    ## 0x11d7

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d\n"

	.section	__DATA,__data
	.p2align	2               ## @fred
_fred:
	.long	1234                    ## 0x4d2

.zerofill __DATA,__bss,_joe,4,2         ## @joe

.subsections_via_symbols

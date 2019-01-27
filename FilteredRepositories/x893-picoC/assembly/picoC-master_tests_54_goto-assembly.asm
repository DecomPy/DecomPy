	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_fred                   ## -- Begin function fred
	.p2align	4, 0x90
_fred:                                  ## @fred
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], eax ## 4-byte Spill
## %bb.1:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_joe                    ## -- Begin function joe
	.p2align	4, 0x90
_joe:                                   ## @joe
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 5678
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 8], 1234
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
## %bb.1:
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
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
	sub	rsp, 32
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
## %bb.1:
	mov	dword ptr [rbp - 8], 1234
	mov	esi, dword ptr [rbp - 8]
	lea	rdi, [rip + L_.str.6]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
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
	call	_fred
	call	_joe
	call	_henry
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"In fred()\n"

L_.str.1:                               ## @.str.1
	.asciz	"At end\n"

L_.str.2:                               ## @.str.2
	.asciz	"In joe()\n"

L_.str.3:                               ## @.str.3
	.asciz	"c = %d\n"

L_.str.4:                               ## @.str.4
	.asciz	"done\n"

L_.str.5:                               ## @.str.5
	.asciz	"In henry()\n"

L_.str.6:                               ## @.str.6
	.asciz	"b = %d\n"


.subsections_via_symbols

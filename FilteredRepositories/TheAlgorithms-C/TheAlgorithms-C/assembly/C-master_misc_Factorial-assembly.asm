	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_fat                    ## -- Begin function fat
	.p2align	4, 0x90
_fat:                                   ## @fat
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 1
	je	LBB0_2
## %bb.1:
	cmp	dword ptr [rbp - 8], 0
	jne	LBB0_3
LBB0_2:
	mov	dword ptr [rbp - 4], 1
	jmp	LBB0_4
LBB0_3:
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 8]
	sub	ecx, 1
	mov	edi, ecx
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	call	_fat
	mov	ecx, dword ptr [rbp - 12] ## 4-byte Reload
	imul	ecx, eax
	mov	dword ptr [rbp - 4], ecx
LBB0_4:
	mov	eax, dword ptr [rbp - 4]
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
	call	_fat
	lea	rdi, [rip + L_.str.2]
	mov	esi, eax
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Number: "

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"%d\n"


.subsections_via_symbols

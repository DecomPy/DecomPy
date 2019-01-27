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
	sub	rsp, 48
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rip + L_.str]
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rbp - 8]
	mov	al, cl
	call	_scanf
	mov	edx, dword ptr [rbp - 8]
	mov	r8d, edx
	sub	r8d, 1
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	dword ptr [rbp - 16], edx ## 4-byte Spill
	mov	dword ptr [rbp - 20], r8d ## 4-byte Spill
	je	LBB0_1
	jmp	LBB0_6
LBB0_6:
	mov	eax, dword ptr [rbp - 16] ## 4-byte Reload
	sub	eax, 2
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	je	LBB0_2
	jmp	LBB0_7
LBB0_7:
	mov	eax, dword ptr [rbp - 16] ## 4-byte Reload
	sub	eax, 3
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	je	LBB0_3
	jmp	LBB0_4
LBB0_1:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	jmp	LBB0_5
LBB0_2:
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	jmp	LBB0_5
LBB0_3:
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	jmp	LBB0_5
LBB0_4:
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
LBB0_5:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"

L_.str.1:                               ## @.str.1
	.asciz	"ONE"

L_.str.2:                               ## @.str.2
	.asciz	"TWO"

L_.str.3:                               ## @.str.3
	.asciz	"THREE"

L_.str.4:                               ## @.str.4
	.asciz	"Some other number"


.subsections_via_symbols

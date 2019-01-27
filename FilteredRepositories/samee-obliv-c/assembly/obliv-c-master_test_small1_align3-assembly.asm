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
	sub	rsp, 16
	mov	eax, 4
	mov	ecx, eax
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rip + L_.str]
	mov	rsi, rcx
	mov	rdx, rcx
	mov	al, 0
	call	_printf
	mov	r8d, 4
	mov	esi, r8d
	mov	r8d, 1
	mov	edx, r8d
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	r8d, 4
	mov	esi, r8d
	mov	r8d, 16
	mov	edx, r8d
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	r8d, r8d
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	eax, r8d
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d, %d\n"

	.comm	_s1_1,6,1               ## @s1_1
	.comm	_s1_2,6,1               ## @s1_2
	.comm	_s1_4,6,2               ## @s1_4
	.comm	_s1_128,6,7             ## @s1_128
	.comm	_s4_4,4,4               ## @s4_4
	.comm	_s4_int,4,2             ## @s4_int
	.comm	_s4_db,4,2              ## @s4_db
	.comm	_foo,16,4               ## @foo
	.comm	_s5_4,16,4              ## @s5_4
	.comm	_i,4,2                  ## @i
	.comm	_i_1,4,2                ## @i_1

.subsections_via_symbols

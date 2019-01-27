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
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 0
	mov	dword ptr [rbp - 24], 0
	cmp	dword ptr [rbp - 24], 5
	je	LBB0_2
## %bb.1:
	cmp	dword ptr [rbp - 24], 6
	jne	LBB0_3
LBB0_2:
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
LBB0_3:
	mov	esi, dword ptr [rbp - 24]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	esi, 4
                                        ## kill: def $rsi killed $esi
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	ecx, 4
	mov	esi, ecx
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Cong\303\251\n"

L_.str.1:                               ## @.str.1
	.asciz	"jour: %d\n"

L_.str.2:                               ## @.str.2
	.asciz	"sizeof(day) %ld\n"

L_.str.3:                               ## @.str.3
	.asciz	"sizeof(bit_t) %ld\n"


.subsections_via_symbols

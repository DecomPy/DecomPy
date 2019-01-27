	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_f                      ## -- Begin function f
	.p2align	4, 0x90
_f:                                     ## @f
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	rax, qword ptr [rip + _g1@GOTPCREL]
	xor	ecx, ecx
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 12], 2
	sub	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 16], ecx
	mov	ecx, dword ptr [rax]
	add	ecx, 1
	mov	dword ptr [rax], ecx
	mov	esi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rax]
	mov	ecx, dword ptr [rbp - 16]
	mov	r8d, dword ptr [rbp - 8]
	mov	r9d, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + _g1@GOTPCREL]
	mov	ecx, dword ptr [rbp - 4]
	imul	ecx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], ecx
	mov	ecx, dword ptr [rdi]
	add	ecx, 1
	mov	dword ptr [rdi], ecx
	mov	ecx, dword ptr [rbp - 16]
	add	ecx, 1
	mov	dword ptr [rbp - 16], ecx
	mov	esi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rdi]
	mov	ecx, dword ptr [rbp - 16]
	mov	r8d, dword ptr [rbp - 8]
	mov	r9d, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
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
	sub	rsp, 64
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 24], 1
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rip + _g1@GOTPCREL]
	mov	esi, dword ptr [rsi]
	mov	edx, dword ptr [rip + _g2]
	mov	ecx, dword ptr [rbp - 20]
	mov	r8d, dword ptr [rbp - 24]
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + _g1@GOTPCREL]
	mov	dword ptr [rbp - 20], 1252
	mov	dword ptr [rbp - 24], 1234
	mov	ecx, dword ptr [rdi]
	add	ecx, 1
	mov	dword ptr [rdi], ecx
	mov	ecx, dword ptr [rdi]
	add	ecx, 2
	mov	dword ptr [rdi], ecx
	mov	esi, dword ptr [rdi]
	mov	edx, dword ptr [rip + _g2]
	mov	ecx, dword ptr [rbp - 20]
	mov	r8d, dword ptr [rbp - 24]
	lea	rdi, [rip + L_.str.5]
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 28], 1
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 28], 3
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rip + _g1@GOTPCREL]
	xor	ecx, ecx
	mov	edx, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 32], edx
	sub	ecx, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 36], ecx
	mov	ecx, dword ptr [rbp - 32]
	add	ecx, 1
	mov	dword ptr [rbp - 32], ecx
	mov	ecx, dword ptr [rax]
	shl	ecx, 1
	mov	dword ptr [rax], ecx
	mov	edi, dword ptr [rbp - 28]
	call	_f
	mov	rax, qword ptr [rip + _g1@GOTPCREL]
	mov	esi, dword ptr [rbp - 28]
	mov	edx, dword ptr [rax]
	mov	ecx, dword ptr [rbp - 36]
	mov	r8d, dword ptr [rbp - 32]
	mov	r9d, dword ptr [rbp - 24]
	lea	rdi, [rip + L_.str.6]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB1_1
LBB1_4:
	mov	edi, 7
	call	_f
	mov	rax, qword ptr [rip + _g1@GOTPCREL]
	imul	edi, dword ptr [rax], 3
	mov	dword ptr [rax], edi
	mov	edi, dword ptr [rip + _g2]
	add	edi, 2
	mov	dword ptr [rip + _g2], edi
	mov	esi, dword ptr [rax]
	mov	edx, dword ptr [rip + _g2]
	mov	ecx, dword ptr [rbp - 20]
	mov	r8d, dword ptr [rbp - 24]
	lea	rdi, [rip + L_.str.7]
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_g2                     ## @g2
	.p2align	2
_g2:
	.long	1                       ## 0x1

	.comm	_g1,4,2                 ## @g1
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"[f-%da] \t\t %d \t %d \t %d \t %d\n"

L_.str.1:                               ## @.str.1
	.asciz	"[f-%db] \t\t %d \t %d \t %d \t %d\n"

L_.str.2:                               ## @.str.2
	.asciz	"Valeurs de : \t g1 \t g2\t loc\t loc2\n"

L_.str.3:                               ## @.str.3
	.asciz	"===================================================\n"

L_.str.4:                               ## @.str.4
	.asciz	"[main1] \t %d \t %d \t %d \t %d\n"

L_.str.5:                               ## @.str.5
	.asciz	"[main2] \t %d \t %d \t %d \t %d\n"

L_.str.6:                               ## @.str.6
	.asciz	"[main-for-%d] \t %d \t %d \t %d \t %d\n"

L_.str.7:                               ## @.str.7
	.asciz	"[main3] \t %d \t %d \t %d \t %d\n"


.subsections_via_symbols

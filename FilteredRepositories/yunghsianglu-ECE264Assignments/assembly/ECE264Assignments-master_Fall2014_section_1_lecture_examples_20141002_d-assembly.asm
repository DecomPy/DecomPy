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
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 16]
	mov	edi, dword ptr [rsi]
	add	edi, 1
	mov	dword ptr [rsi], edi
	cmp	dword ptr [rbp - 8], 0
	jne	LBB0_2
## %bb.1:
	mov	dword ptr [rbp - 4], 0
	jmp	LBB0_5
LBB0_2:
	cmp	dword ptr [rbp - 8], 1
	jne	LBB0_4
## %bb.3:
	mov	dword ptr [rbp - 4], 1
	jmp	LBB0_5
LBB0_4:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 2
	mov	rsi, qword ptr [rbp - 16]
	mov	edi, eax
	call	_f
	mov	edi, dword ptr [rbp - 8]
	sub	edi, 1
	mov	rsi, qword ptr [rbp - 16]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	call	_f
	mov	edi, dword ptr [rbp - 20] ## 4-byte Reload
	add	edi, eax
	mov	dword ptr [rbp - 4], edi
LBB0_5:
	mov	eax, dword ptr [rbp - 4]
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
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 20], 8
	jg	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	dword ptr [rbp - 24], 0
	mov	edi, dword ptr [rbp - 20]
	lea	rsi, [rbp - 24]
	call	_f
	mov	dword ptr [rbp - 28], eax
	mov	esi, dword ptr [rbp - 20]
	mov	edx, dword ptr [rbp - 28]
	mov	ecx, dword ptr [rbp - 24]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB1_1
LBB1_4:
	xor	eax, eax
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"f(%d) == %d : called f %d times\n"


.subsections_via_symbols

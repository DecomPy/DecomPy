	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_print_bin              ## -- Begin function print_bin
	.p2align	4, 0x90
_print_bin:                             ## @print_bin
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 64
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 52], edi
	mov	edi, dword ptr [rbp - 52]
	mov	dword ptr [rbp - 60], edi
	mov	dword ptr [rbp - 56], 33
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 56]
	add	eax, -1
	mov	dword ptr [rbp - 56], eax
	cmp	eax, 0
	jl	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 60]
	and	eax, 1
	cmp	eax, 0
	mov	eax, 49
	mov	ecx, 48
	cmovne	ecx, eax
	mov	dl, cl
	movsxd	rsi, dword ptr [rbp - 56]
	mov	byte ptr [rbp + rsi - 48], dl
	mov	eax, dword ptr [rbp - 60]
	sar	eax, 1
	mov	dword ptr [rbp - 60], eax
	jmp	LBB0_1
LBB0_3:
	lea	rcx, [rbp - 48]
	mov	esi, dword ptr [rbp - 52]
	mov	edx, dword ptr [rbp - 52]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdi, qword ptr [rbp - 8]
	cmp	rcx, rdi
	mov	dword ptr [rbp - 64], eax ## 4-byte Spill
	jne	LBB0_5
## %bb.4:
	add	rsp, 64
	pop	rbp
	ret
LBB0_5:
	call	___stack_chk_fail
	ud2
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
	mov	dword ptr [rbp - 20], 7654321
	mov	edi, dword ptr [rbp - 20]
	call	_print_bin
	mov	edi, 123
	call	_print_bin
	mov	edi, 987654321
	call	_print_bin
	xor	eax, eax
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"La valeur de %d en hexad\303\251cimal est %x  et en binaire : %s\n"


.subsections_via_symbols

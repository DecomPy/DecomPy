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
	sub	rsp, 64
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 24], 0
	mov	dword ptr [rbp - 28], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 18]
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	lea	rdi, [rbp - 18]
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	call	_strlen
	sub	rax, 1
	mov	ecx, eax
	mov	dword ptr [rbp - 32], ecx
	movsxd	rax, dword ptr [rbp - 32]
	movsx	edi, byte ptr [rbp + rax - 18]
	call	_indexOf
	movsxd	rsi, eax
	lea	rdx, [rip + _decimal]
	mov	eax, dword ptr [rdx + 4*rsi]
	add	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 32]
	mov	dword ptr [rbp - 36], eax
	mov	eax, dword ptr [rbp - 32]
	add	eax, -1
	mov	dword ptr [rbp - 32], eax
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 32], 0
	jl	LBB0_6
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 32]
	movsx	edi, byte ptr [rbp + rax - 18]
	call	_indexOf
	movsxd	rcx, dword ptr [rbp - 36]
	movsx	edi, byte ptr [rbp + rcx - 18]
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	call	_indexOf
	mov	edi, dword ptr [rbp - 48] ## 4-byte Reload
	cmp	edi, eax
	jl	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 32]
	movsx	edi, byte ptr [rbp + rax - 18]
	call	_indexOf
	movsxd	rcx, eax
	lea	rdx, [rip + _decimal]
	mov	eax, dword ptr [rdx + 4*rcx]
	add	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 28], eax
	jmp	LBB0_5
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 32]
	movsx	edi, byte ptr [rbp + rax - 18]
	call	_indexOf
	movsxd	rcx, eax
	lea	rdx, [rip + _decimal]
	mov	eax, dword ptr [rdx + 4*rcx]
	mov	edi, dword ptr [rbp - 28]
	sub	edi, eax
	mov	dword ptr [rbp - 28], edi
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 32]
	add	eax, -1
	mov	dword ptr [rbp - 32], eax
	mov	eax, dword ptr [rbp - 36]
	add	eax, -1
	mov	dword ptr [rbp - 36], eax
	jmp	LBB0_1
LBB0_6:
	mov	esi, dword ptr [rbp - 28]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rdi, rcx
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	jne	LBB0_8
## %bb.7:
	xor	eax, eax
	add	rsp, 64
	pop	rbp
	ret
LBB0_8:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_indexOf                ## -- Begin function indexOf
	.p2align	4, 0x90
_indexOf:                               ## @indexOf
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	al, dil
	mov	byte ptr [rbp - 5], al
	mov	dword ptr [rbp - 12], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 12], 7
	jge	LBB1_6
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movsxd	rax, dword ptr [rbp - 12]
	lea	rcx, [rip + _roman]
	movsx	edx, byte ptr [rcx + rax]
	movsx	esi, byte ptr [rbp - 5]
	cmp	edx, esi
	jne	LBB1_4
## %bb.3:
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB1_7
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_5
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB1_1
LBB1_6:
	mov	dword ptr [rbp - 4], -1
LBB1_7:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_roman                  ## @roman
_roman:
	.asciz	"IVXLCDM"

	.globl	_decimal                ## @decimal
	.p2align	4
_decimal:
	.long	1                       ## 0x1
	.long	5                       ## 0x5
	.long	10                      ## 0xa
	.long	50                      ## 0x32
	.long	100                     ## 0x64
	.long	500                     ## 0x1f4
	.long	1000                    ## 0x3e8

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter Roman Number: "

L_.str.1:                               ## @.str.1
	.asciz	"%s"

L_.str.2:                               ## @.str.2
	.asciz	"Number = %d\n"


.subsections_via_symbols

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
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	lea	rsi, [rbp - 8]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	cmp	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	jge	LBB0_2
## %bb.1:
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	jmp	LBB0_45
LBB0_2:
	cmp	dword ptr [rbp - 8], 0
	jne	LBB0_4
## %bb.3:
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	jmp	LBB0_44
LBB0_4:
	cmp	dword ptr [rbp - 8], 4000
	jl	LBB0_6
## %bb.5:
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	jmp	LBB0_43
LBB0_6:
	jmp	LBB0_7
LBB0_7:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_9 Depth 2
                                        ##     Child Loop BB0_15 Depth 2
                                        ##     Child Loop BB0_21 Depth 2
	cmp	dword ptr [rbp - 8], 0
	jle	LBB0_42
## %bb.8:                               ##   in Loop: Header=BB0_7 Depth=1
	mov	dword ptr [rbp - 12], 6
LBB0_9:                                 ##   Parent Loop BB0_7 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 12], 0
	jle	LBB0_14
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=2
	mov	eax, dword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	lea	rdx, [rip + _decimal]
	cmp	eax, dword ptr [rdx + 4*rcx]
	jl	LBB0_12
## %bb.11:                              ##   in Loop: Header=BB0_7 Depth=1
	jmp	LBB0_14
LBB0_12:                                ##   in Loop: Header=BB0_9 Depth=2
	jmp	LBB0_13
LBB0_13:                                ##   in Loop: Header=BB0_9 Depth=2
	mov	eax, dword ptr [rbp - 12]
	add	eax, -1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB0_9
LBB0_14:                                ##   in Loop: Header=BB0_7 Depth=1
	mov	dword ptr [rbp - 16], 0
LBB0_15:                                ##   Parent Loop BB0_7 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 16], 7
	jge	LBB0_20
## %bb.16:                              ##   in Loop: Header=BB0_15 Depth=2
	mov	eax, dword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	lea	rdx, [rip + _decimal]
	cmp	eax, dword ptr [rdx + 4*rcx]
	jg	LBB0_18
## %bb.17:                              ##   in Loop: Header=BB0_7 Depth=1
	jmp	LBB0_20
LBB0_18:                                ##   in Loop: Header=BB0_15 Depth=2
	jmp	LBB0_19
LBB0_19:                                ##   in Loop: Header=BB0_15 Depth=2
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB0_15
LBB0_20:                                ##   in Loop: Header=BB0_7 Depth=1
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 20], eax
LBB0_21:                                ##   Parent Loop BB0_7 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 20], 0
	je	LBB0_25
## %bb.22:                              ##   in Loop: Header=BB0_21 Depth=2
	mov	eax, dword ptr [rbp - 20]
	cdq
	mov	ecx, 10
	idiv	ecx
	mov	dword ptr [rbp - 20], eax
	cmp	dword ptr [rbp - 20], 10
	jge	LBB0_24
## %bb.23:                              ##   in Loop: Header=BB0_7 Depth=1
	jmp	LBB0_25
LBB0_24:                                ##   in Loop: Header=BB0_21 Depth=2
	jmp	LBB0_21
LBB0_25:                                ##   in Loop: Header=BB0_7 Depth=1
	cmp	dword ptr [rbp - 8], 10
	jge	LBB0_28
## %bb.26:                              ##   in Loop: Header=BB0_7 Depth=1
	cmp	dword ptr [rbp - 8], 4
	jne	LBB0_28
## %bb.27:                              ##   in Loop: Header=BB0_7 Depth=1
	movsxd	rax, dword ptr [rbp - 12]
	lea	rcx, [rip + _roman]
	movsx	esi, byte ptr [rcx + rax]
	movsxd	rax, dword ptr [rbp - 16]
	movsx	edx, byte ptr [rcx + rax]
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	jmp	LBB0_41
LBB0_28:                                ##   in Loop: Header=BB0_7 Depth=1
	cmp	dword ptr [rbp - 8], 10
	jle	LBB0_31
## %bb.29:                              ##   in Loop: Header=BB0_7 Depth=1
	cmp	dword ptr [rbp - 20], 4
	jne	LBB0_31
## %bb.30:                              ##   in Loop: Header=BB0_7 Depth=1
	movsxd	rax, dword ptr [rbp - 12]
	lea	rcx, [rip + _roman]
	movsx	esi, byte ptr [rcx + rax]
	movsxd	rax, dword ptr [rbp - 16]
	movsx	edx, byte ptr [rcx + rax]
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	movsxd	rcx, dword ptr [rbp - 16]
	lea	rdi, [rip + _decimal]
	mov	edx, dword ptr [rdi + 4*rcx]
	movsxd	rcx, dword ptr [rbp - 12]
	sub	edx, dword ptr [rdi + 4*rcx]
	mov	esi, dword ptr [rbp - 8]
	sub	esi, edx
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	jmp	LBB0_40
LBB0_31:                                ##   in Loop: Header=BB0_7 Depth=1
	cmp	dword ptr [rbp - 8], 10
	jge	LBB0_34
## %bb.32:                              ##   in Loop: Header=BB0_7 Depth=1
	cmp	dword ptr [rbp - 8], 9
	jne	LBB0_34
## %bb.33:                              ##   in Loop: Header=BB0_7 Depth=1
	mov	eax, dword ptr [rbp - 12]
	sub	eax, 1
	movsxd	rcx, eax
	lea	rdx, [rip + _roman]
	movsx	esi, byte ptr [rdx + rcx]
	movsxd	rcx, dword ptr [rbp - 16]
	movsx	edx, byte ptr [rdx + rcx]
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
	jmp	LBB0_39
LBB0_34:                                ##   in Loop: Header=BB0_7 Depth=1
	cmp	dword ptr [rbp - 8], 10
	jle	LBB0_37
## %bb.35:                              ##   in Loop: Header=BB0_7 Depth=1
	cmp	dword ptr [rbp - 20], 9
	jne	LBB0_37
## %bb.36:                              ##   in Loop: Header=BB0_7 Depth=1
	mov	eax, dword ptr [rbp - 12]
	sub	eax, 1
	movsxd	rcx, eax
	lea	rdx, [rip + _roman]
	movsx	esi, byte ptr [rdx + rcx]
	movsxd	rcx, dword ptr [rbp - 16]
	movsx	edx, byte ptr [rdx + rcx]
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	movsxd	rcx, dword ptr [rbp - 16]
	lea	rdi, [rip + _decimal]
	mov	edx, dword ptr [rdi + 4*rcx]
	mov	esi, dword ptr [rbp - 12]
	sub	esi, 1
	movsxd	rcx, esi
	sub	edx, dword ptr [rdi + 4*rcx]
	mov	esi, dword ptr [rbp - 8]
	sub	esi, edx
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	jmp	LBB0_38
LBB0_37:                                ##   in Loop: Header=BB0_7 Depth=1
	movsxd	rax, dword ptr [rbp - 12]
	lea	rcx, [rip + _roman]
	movsx	esi, byte ptr [rcx + rax]
	lea	rdi, [rip + L_.str.6]
	mov	al, 0
	call	_printf
	movsxd	rcx, dword ptr [rbp - 12]
	lea	rdi, [rip + _decimal]
	mov	esi, dword ptr [rdi + 4*rcx]
	mov	edx, dword ptr [rbp - 8]
	sub	edx, esi
	mov	dword ptr [rbp - 8], edx
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
LBB0_38:                                ##   in Loop: Header=BB0_7 Depth=1
	jmp	LBB0_39
LBB0_39:                                ##   in Loop: Header=BB0_7 Depth=1
	jmp	LBB0_40
LBB0_40:                                ##   in Loop: Header=BB0_7 Depth=1
	jmp	LBB0_41
LBB0_41:                                ##   in Loop: Header=BB0_7 Depth=1
	jmp	LBB0_7
LBB0_42:
	jmp	LBB0_43
LBB0_43:
	jmp	LBB0_44
LBB0_44:
	jmp	LBB0_45
LBB0_45:
	xor	eax, eax
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_roman                  ## @roman
_roman:
	.ascii	"IVXLCDM"

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
	.asciz	"Enter n: "

L_.str.1:                               ## @.str.1
	.asciz	"%d"

L_.str.2:                               ## @.str.2
	.asciz	"You entered a negative number!\n"

L_.str.3:                               ## @.str.3
	.asciz	"You entered Zero or Nulla!\n"

L_.str.4:                               ## @.str.4
	.asciz	"This code has a limit from 1 to 3999.\n"

L_.str.5:                               ## @.str.5
	.asciz	"%c%c"

L_.str.6:                               ## @.str.6
	.asciz	"%c"


.subsections_via_symbols

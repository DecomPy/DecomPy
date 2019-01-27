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
	sub	rsp, 320
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 276], 0
	mov	byte ptr [rbp - 286], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 284], 0
	mov	dword ptr [rbp - 292], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	call	_getchar
	mov	cl, al
	mov	byte ptr [rbp - 285], cl
	movsx	eax, cl
	cmp	eax, 10
	je	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 285]
	movsxd	rcx, dword ptr [rbp - 284]
	mov	byte ptr [rbp + rcx - 272], al
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 284]
	add	eax, 1
	mov	dword ptr [rbp - 284], eax
	jmp	LBB0_1
LBB0_4:
	movsxd	rax, dword ptr [rbp - 284]
	mov	byte ptr [rbp + rax - 272], 0
	mov	ecx, dword ptr [rbp - 284]
	add	ecx, -1
	mov	dword ptr [rbp - 284], ecx
	movsxd	rax, dword ptr [rbp - 284]
	mov	dl, byte ptr [rbp + rax - 272]
	mov	byte ptr [rbp - 285], dl
	movsx	ecx, byte ptr [rbp - 285]
	cmp	ecx, 46
	je	LBB0_7
## %bb.5:
	movsx	eax, byte ptr [rbp - 285]
	cmp	eax, 63
	je	LBB0_7
## %bb.6:
	movsx	eax, byte ptr [rbp - 285]
	cmp	eax, 33
	jne	LBB0_8
LBB0_7:
	mov	al, byte ptr [rbp - 285]
	mov	byte ptr [rbp - 286], al
	movsxd	rcx, dword ptr [rbp - 284]
	mov	byte ptr [rbp + rcx - 272], 0
LBB0_8:
	jmp	LBB0_9
LBB0_9:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_15 Depth 2
	cmp	dword ptr [rbp - 284], 0
	jl	LBB0_26
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=1
	movsxd	rax, dword ptr [rbp - 284]
	movsx	ecx, byte ptr [rbp + rax - 272]
	cmp	ecx, 32
	je	LBB0_12
## %bb.11:                              ##   in Loop: Header=BB0_9 Depth=1
	cmp	dword ptr [rbp - 284], 0
	jne	LBB0_25
LBB0_12:                                ##   in Loop: Header=BB0_9 Depth=1
	mov	eax, dword ptr [rbp - 284]
	mov	dword ptr [rbp - 280], eax
	movsxd	rcx, dword ptr [rbp - 284]
	movsx	eax, byte ptr [rbp + rcx - 272]
	cmp	eax, 32
	jne	LBB0_14
## %bb.13:                              ##   in Loop: Header=BB0_9 Depth=1
	mov	eax, dword ptr [rbp - 284]
	add	eax, 1
	mov	dword ptr [rbp - 284], eax
LBB0_14:                                ##   in Loop: Header=BB0_9 Depth=1
	jmp	LBB0_15
LBB0_15:                                ##   Parent Loop BB0_9 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 284]
	movsx	eax, byte ptr [rbp + rdx - 272]
	cmp	eax, 32
	mov	byte ptr [rbp - 293], cl ## 1-byte Spill
	je	LBB0_17
## %bb.16:                              ##   in Loop: Header=BB0_15 Depth=2
	movsxd	rax, dword ptr [rbp - 284]
	movsx	ecx, byte ptr [rbp + rax - 272]
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 293], dl ## 1-byte Spill
LBB0_17:                                ##   in Loop: Header=BB0_15 Depth=2
	mov	al, byte ptr [rbp - 293] ## 1-byte Reload
	test	al, 1
	jne	LBB0_18
	jmp	LBB0_19
LBB0_18:                                ##   in Loop: Header=BB0_15 Depth=2
	movsxd	rax, dword ptr [rbp - 284]
	movsx	esi, byte ptr [rbp + rax - 272]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 284]
	add	esi, 1
	mov	dword ptr [rbp - 284], esi
	mov	dword ptr [rbp - 300], eax ## 4-byte Spill
	jmp	LBB0_15
LBB0_19:                                ##   in Loop: Header=BB0_9 Depth=1
	mov	eax, dword ptr [rbp - 280]
	mov	dword ptr [rbp - 284], eax
	cmp	dword ptr [rbp - 284], 0
	jne	LBB0_23
## %bb.20:                              ##   in Loop: Header=BB0_9 Depth=1
	cmp	byte ptr [rbp - 286], 0
	je	LBB0_22
## %bb.21:                              ##   in Loop: Header=BB0_9 Depth=1
	movsx	esi, byte ptr [rbp - 286]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 304], eax ## 4-byte Spill
LBB0_22:                                ##   in Loop: Header=BB0_9 Depth=1
	jmp	LBB0_24
LBB0_23:                                ##   in Loop: Header=BB0_9 Depth=1
	lea	rdi, [rip + L_.str.1]
	mov	esi, 32
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 308], eax ## 4-byte Spill
LBB0_24:                                ##   in Loop: Header=BB0_9 Depth=1
	jmp	LBB0_25
LBB0_25:                                ##   in Loop: Header=BB0_9 Depth=1
	mov	eax, dword ptr [rbp - 284]
	add	eax, -1
	mov	dword ptr [rbp - 284], eax
	jmp	LBB0_9
LBB0_26:
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rdi, rcx
	mov	dword ptr [rbp - 312], eax ## 4-byte Spill
	jne	LBB0_28
## %bb.27:
	xor	eax, eax
	add	rsp, 320
	pop	rbp
	ret
LBB0_28:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter a sentence: "

L_.str.1:                               ## @.str.1
	.asciz	"%c"

L_.str.2:                               ## @.str.2
	.asciz	"\n"


.subsections_via_symbols

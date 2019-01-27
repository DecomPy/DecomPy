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
	sub	rsp, 240
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 212], 0
	mov	dword ptr [rbp - 216], 0
	mov	dword ptr [rbp - 220], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 208]
	mov	dword ptr [rbp - 224], eax ## 4-byte Spill
	call	_gets
	mov	dword ptr [rbp - 220], 0
	mov	qword ptr [rbp - 232], rax ## 8-byte Spill
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_5 Depth 2
	movsxd	rax, dword ptr [rbp - 220]
	movsx	ecx, byte ptr [rbp + rax - 208]
	cmp	ecx, 0
	je	LBB0_12
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 220]
	movsx	ecx, byte ptr [rbp + rax - 208]
	cmp	ecx, 32
	je	LBB0_10
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 220]
	movsx	ecx, byte ptr [rbp + rax - 208]
	cmp	ecx, 9
	je	LBB0_10
## %bb.4:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 216]
	add	eax, 1
	mov	dword ptr [rbp - 216], eax
LBB0_5:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xor	eax, eax
	mov	cl, al
	movsxd	rdx, dword ptr [rbp - 220]
	movsx	eax, byte ptr [rbp + rdx - 208]
	cmp	eax, 32
	mov	byte ptr [rbp - 233], cl ## 1-byte Spill
	je	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=2
	movsxd	rax, dword ptr [rbp - 220]
	movsx	ecx, byte ptr [rbp + rax - 208]
	cmp	ecx, 9
	setne	dl
	mov	byte ptr [rbp - 233], dl ## 1-byte Spill
LBB0_7:                                 ##   in Loop: Header=BB0_5 Depth=2
	mov	al, byte ptr [rbp - 233] ## 1-byte Reload
	test	al, 1
	jne	LBB0_8
	jmp	LBB0_9
LBB0_8:                                 ##   in Loop: Header=BB0_5 Depth=2
	mov	eax, dword ptr [rbp - 220]
	add	eax, 1
	mov	dword ptr [rbp - 220], eax
	jmp	LBB0_5
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_10
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_11
LBB0_11:                                ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 220]
	add	eax, 1
	mov	dword ptr [rbp - 220], eax
	jmp	LBB0_1
LBB0_12:
	mov	esi, dword ptr [rbp - 216]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rdi, rcx
	mov	dword ptr [rbp - 240], eax ## 4-byte Spill
	jne	LBB0_14
## %bb.13:
	xor	eax, eax
	add	rsp, 240
	pop	rbp
	ret
LBB0_14:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter your sentence:\n"

L_.str.1:                               ## @.str.1
	.asciz	"No. of words = %d\n"


.subsections_via_symbols

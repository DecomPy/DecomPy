	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
	.quad	4616189618054758400     ## double 4
LCPI0_1:
	.quad	4607182418800017408     ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 96
	lea	rdx, [rbp - 53]
	lea	rax, [rbp - 47]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rbp - 24], 0
	mov	dword ptr [rbp - 28], edi
	mov	qword ptr [rbp - 40], rsi
	mov	edi, dword ptr [rip + L_main.weekday]
	mov	dword ptr [rbp - 47], edi
	mov	r8w, word ptr [rip + L_main.weekday+4]
	mov	word ptr [rbp - 43], r8w
	mov	r9b, byte ptr [rip + L_main.weekday+6]
	mov	byte ptr [rbp - 41], r9b
	mov	edi, dword ptr [rip + L_main.month]
	mov	dword ptr [rbp - 53], edi
	mov	r8w, word ptr [rip + L_main.month+4]
	mov	word ptr [rbp - 49], r8w
	mov	dword ptr [rbp - 60], 1
	mov	dword ptr [rbp - 64], 12
	mov	dword ptr [rbp - 68], 42
	mov	rcx, qword ptr [rip + L_main.str]
	mov	qword ptr [rbp - 17], rcx
	mov	r9b, byte ptr [rip + L_main.str+8]
	mov	byte ptr [rbp - 9], r9b
	mov	ecx, dword ptr [rbp - 60]
	mov	r8d, dword ptr [rbp - 64]
	mov	r9d, dword ptr [rbp - 68]
	lea	rdi, [rip + L_.str]
	mov	rsi, rax
	mov	al, 0
	call	_printf
	movsd	xmm0, qword ptr [rip + LCPI0_1] ## xmm0 = mem[0],zero
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
	call	_atan
	movsd	xmm1, qword ptr [rip + LCPI0_0] ## xmm1 = mem[0],zero
	mulsd	xmm1, xmm0
	lea	rdi, [rip + L_.str.1]
	movaps	xmm0, xmm1
	mov	al, 1
	call	_printf
	mov	dword ptr [rbp - 72], 0
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movsxd	rax, dword ptr [rbp - 72]
	movsx	ecx, byte ptr [rbp + rax - 17]
	cmp	ecx, 0
	je	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 72]
	movsx	esi, byte ptr [rbp + rax - 17]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 84], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 72]
	add	eax, 1
	mov	dword ptr [rbp - 72], eax
	jmp	LBB0_1
LBB0_4:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_6
## %bb.5:
	xor	eax, eax
	add	rsp, 96
	pop	rbp
	ret
LBB0_6:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_main.weekday:                         ## @main.weekday
	.asciz	"Monday"

L_main.month:                           ## @main.month
	.asciz	"April"

L_main.str:                             ## @main.str
	.asciz	"SINF1252"

L_.str:                                 ## @.str
	.asciz	"%s, %s %d, %d:%d\n"

L_.str.1:                               ## @.str.1
	.asciz	"PI = %f\n"

L_.str.2:                               ## @.str.2
	.asciz	"%c\n"


.subsections_via_symbols

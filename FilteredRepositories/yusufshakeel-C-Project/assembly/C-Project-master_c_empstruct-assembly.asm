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
	sub	rsp, 224
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 172], 0
	mov	dword ptr [rbp - 176], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 176], 3
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 176]
	add	eax, 1
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.1]
	mov	dword ptr [rbp - 184], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	movsxd	rdi, dword ptr [rbp - 176]
	imul	rdi, rdi, 40
	lea	rcx, [rbp - 128]
	add	rcx, rdi
	lea	rdi, [rip + L_.str.2]
	mov	rsi, rcx
	mov	dword ptr [rbp - 188], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	lea	rdi, [rip + L_.str.3]
	mov	dword ptr [rbp - 192], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	movsxd	rcx, dword ptr [rbp - 176]
	imul	rcx, rcx, 40
	lea	rsi, [rbp - 128]
	add	rsi, rcx
	add	rsi, 30
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 196], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 200], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	movsxd	rcx, dword ptr [rbp - 176]
	imul	rcx, rcx, 40
	lea	rsi, [rbp - 128]
	add	rsi, rcx
	add	rsi, 36
	lea	rdi, [rip + L_.str.5]
	mov	dword ptr [rbp - 204], eax ## 4-byte Spill
	mov	al, 0
	call	_scanf
	mov	dword ptr [rbp - 208], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 176]
	add	eax, 1
	mov	dword ptr [rbp - 176], eax
	jmp	LBB0_1
LBB0_4:
	mov	eax, 40
	mov	edx, eax
	mov	dword ptr [rbp - 180], 0
	movsxd	rcx, dword ptr [rbp - 180]
	imul	rcx, rcx, 40
	lea	rsi, [rbp - 128]
	add	rsi, rcx
	lea	rcx, [rbp - 168]
	mov	rdi, rcx
	call	_memcpy
	mov	dword ptr [rbp - 176], 1
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 176], 3
	jge	LBB0_10
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	movsxd	rax, dword ptr [rbp - 176]
	imul	rax, rax, 40
	lea	rcx, [rbp - 128]
	add	rcx, rax
	movss	xmm0, dword ptr [rcx + 36] ## xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, dword ptr [rbp - 132]
	jbe	LBB0_8
## %bb.7:                               ##   in Loop: Header=BB0_5 Depth=1
	mov	eax, 40
	mov	edx, eax
	mov	eax, dword ptr [rbp - 176]
	mov	dword ptr [rbp - 180], eax
	movsxd	rcx, dword ptr [rbp - 180]
	imul	rcx, rcx, 40
	lea	rsi, [rbp - 128]
	add	rsi, rcx
	lea	rcx, [rbp - 168]
	mov	rdi, rcx
	call	_memcpy
LBB0_8:                                 ##   in Loop: Header=BB0_5 Depth=1
	jmp	LBB0_9
LBB0_9:                                 ##   in Loop: Header=BB0_5 Depth=1
	mov	eax, dword ptr [rbp - 176]
	add	eax, 1
	mov	dword ptr [rbp - 176], eax
	jmp	LBB0_5
LBB0_10:
	lea	rdi, [rip + L_.str.6]
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 168]
	mov	rcx, rdi
	add	rcx, 30
	movss	xmm0, dword ptr [rbp - 132] ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	lea	rdx, [rip + L_.str.7]
	mov	qword ptr [rbp - 216], rdi ## 8-byte Spill
	mov	rdi, rdx
	mov	rsi, qword ptr [rbp - 216] ## 8-byte Reload
	mov	rdx, rcx
	mov	dword ptr [rbp - 220], eax ## 4-byte Spill
	mov	al, 1
	call	_printf
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 224], eax ## 4-byte Spill
	jne	LBB0_12
## %bb.11:
	xor	eax, eax
	add	rsp, 224
	pop	rbp
	ret
LBB0_12:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\nEnter emp #%d detail\n"

L_.str.1:                               ## @.str.1
	.asciz	"Name: "

L_.str.2:                               ## @.str.2
	.asciz	"%s"

L_.str.3:                               ## @.str.3
	.asciz	"Post: "

L_.str.4:                               ## @.str.4
	.asciz	"Salary: "

L_.str.5:                               ## @.str.5
	.asciz	"%f"

L_.str.6:                               ## @.str.6
	.asciz	"\nHighest Earner Detail\n"

L_.str.7:                               ## @.str.7
	.asciz	"Name: %s\nPost: %s\nSalary: %.2f\n"


.subsections_via_symbols

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
	sub	rsp, 4144
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 4116], 0
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	mov	rax, qword ptr [rip + ___stdinp@GOTPCREL]
	lea	rdi, [rbp - 4112]
	mov	rdx, qword ptr [rax]
	mov	esi, 4094
	call	_fgets
	cmp	rax, 0
	je	LBB0_8
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	dword ptr [rbp - 4120], 0
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 4120], 128
	jge	LBB0_7
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	movsxd	rax, dword ptr [rbp - 4120]
	movsx	esi, byte ptr [rbp + rax - 4112]
	mov	ecx, dword ptr [rbp - 4120]
	add	ecx, 1
	movsxd	rax, ecx
	movsx	edx, byte ptr [rbp + rax - 4112]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rbp - 4120]
	add	ecx, 2
	mov	dword ptr [rbp - 4120], ecx
	and	ecx, 31
	cmp	ecx, 0
	mov	dword ptr [rbp - 4124], eax ## 4-byte Spill
	jne	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=2
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4128], eax ## 4-byte Spill
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=2
	jmp	LBB0_3
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
LBB0_8:
	mov	eax, dword ptr [rbp - 4116]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 4132], eax ## 4-byte Spill
	jne	LBB0_10
## %bb.9:
	mov	eax, dword ptr [rbp - 4132] ## 4-byte Reload
	add	rsp, 4144
	pop	rbp
	ret
LBB0_10:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"0x%c%c, "

L_.str.1:                               ## @.str.1
	.asciz	"\n"


.subsections_via_symbols

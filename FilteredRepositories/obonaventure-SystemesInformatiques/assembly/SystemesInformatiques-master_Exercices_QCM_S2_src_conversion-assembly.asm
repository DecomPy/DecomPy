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
	sub	rsp, 112
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 36], 0
	mov	rax, qword ptr [rip + l_main.tab]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rip + l_main.tab+8]
	mov	qword ptr [rbp - 24], rax
	mov	ecx, dword ptr [rip + l_main.tab+16]
	mov	dword ptr [rbp - 16], ecx
	mov	dword ptr [rbp - 40], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 40], 5
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsxd	rax, dword ptr [rbp - 40]
	mov	ecx, dword ptr [rbp + 4*rax - 32]
	mov	dword ptr [rbp - 44], ecx
	mov	ecx, dword ptr [rbp - 44]
	mov	dx, cx
	mov	word ptr [rbp - 46], dx
	movsxd	rax, dword ptr [rbp - 44]
	mov	qword ptr [rbp - 56], rax
	mov	ecx, dword ptr [rbp - 44]
	mov	dword ptr [rbp - 60], ecx
	mov	ecx, dword ptr [rbp - 44]
	mov	sil, cl
	mov	byte ptr [rbp - 61], sil
	movsxd	rax, dword ptr [rbp - 44]
	mov	qword ptr [rbp - 72], rax
	mov	ecx, dword ptr [rbp - 44]
	mov	dx, cx
	mov	word ptr [rbp - 74], dx
	mov	esi, dword ptr [rbp - 44]
	movsx	edx, word ptr [rbp - 46]
	mov	rcx, qword ptr [rbp - 56]
	mov	r8d, dword ptr [rbp - 60]
	movzx	r9d, byte ptr [rbp - 61]
	mov	rax, qword ptr [rbp - 72]
	movzx	edi, word ptr [rbp - 74]
	lea	r10, [rip + L_.str]
	mov	dword ptr [rbp - 80], edi ## 4-byte Spill
	mov	rdi, r10
	mov	qword ptr [rsp], rax
	mov	r11d, dword ptr [rbp - 80] ## 4-byte Reload
	mov	dword ptr [rsp + 8], r11d
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 84], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 40]
	add	eax, 1
	mov	dword ptr [rbp - 40], eax
	jmp	LBB0_1
LBB0_4:
	mov	eax, dword ptr [rbp - 36]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 88], eax ## 4-byte Spill
	jne	LBB0_6
## %bb.5:
	mov	eax, dword ptr [rbp - 88] ## 4-byte Reload
	add	rsp, 112
	pop	rbp
	ret
LBB0_6:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.tab
l_main.tab:
	.long	1                       ## 0x1
	.long	4294967289              ## 0xfffffff9
	.long	1025                    ## 0x401
	.long	234567890               ## 0xdfb38d2
	.long	1949288395              ## 0x742fc7cb

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d -> %d (short) %ld (long) %d (unsigned int) %d (unsigned char) %ld (unsigned long) %d (unsigned short)\n"


.subsections_via_symbols

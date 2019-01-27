	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ceil_log2              ## -- Begin function ceil_log2
	.p2align	4, 0x90
_ceil_log2:                             ## @ceil_log2
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 8]
	sub	rcx, 1
	and	rdi, rcx
	cmp	rdi, 0
	mov	edx, 1
	cmove	edx, eax
	mov	dword ptr [rbp - 12], edx
	mov	dword ptr [rbp - 16], 32
	mov	dword ptr [rbp - 20], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 20], 6
	jge	LBB0_7
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	lea	rdx, [rip + _ceil_log2.t]
	and	rax, qword ptr [rdx + 8*rcx]
	cmp	rax, 0
	jne	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	xor	eax, eax
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	jmp	LBB0_5
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 28] ## 4-byte Reload
	mov	dword ptr [rbp - 24], eax
	mov	eax, dword ptr [rbp - 24]
	add	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 12], eax
	mov	eax, dword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 8]
	mov	eax, eax
	mov	edx, eax
	mov	qword ptr [rbp - 40], rcx ## 8-byte Spill
	mov	rcx, rdx
                                        ## kill: def $cl killed $rcx
	mov	rdx, qword ptr [rbp - 40] ## 8-byte Reload
	shr	rdx, cl
	mov	qword ptr [rbp - 8], rdx
	mov	eax, dword ptr [rbp - 16]
	sar	eax, 1
	mov	dword ptr [rbp - 16], eax
## %bb.6:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB0_1
LBB0_7:
	mov	eax, dword ptr [rbp - 12]
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
	mov	rsi, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rsi + 8]
	call	_atol
	mov	rdi, rax
	call	_ceil_log2
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @ceil_log2.t
_ceil_log2.t:
	.quad	-4294967296             ## 0xffffffff00000000
	.quad	4294901760              ## 0xffff0000
	.quad	65280                   ## 0xff00
	.quad	240                     ## 0xf0
	.quad	12                      ## 0xc
	.quad	2                       ## 0x2

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d\n"


.subsections_via_symbols

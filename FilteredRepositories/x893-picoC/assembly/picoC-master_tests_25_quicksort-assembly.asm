	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_swap                   ## -- Begin function swap
	.p2align	4, 0x90
_swap:                                  ## @swap
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	rax, qword ptr [rip + _array@GOTPCREL]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	movsxd	rcx, dword ptr [rbp - 4]
	mov	esi, dword ptr [rax + 4*rcx]
	mov	dword ptr [rbp - 12], esi
	movsxd	rcx, dword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 4*rcx]
	movsxd	rcx, dword ptr [rbp - 4]
	mov	dword ptr [rax + 4*rcx], esi
	mov	esi, dword ptr [rbp - 12]
	movsxd	rcx, dword ptr [rbp - 8]
	mov	dword ptr [rax + 4*rcx], esi
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_partition              ## -- Begin function partition
	.p2align	4, 0x90
_partition:                             ## @partition
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	rax, qword ptr [rip + _array@GOTPCREL]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 12], esi
	movsxd	rcx, dword ptr [rbp - 12]
	mov	esi, dword ptr [rax + 4*rcx]
	mov	dword ptr [rbp - 16], esi
	mov	esi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 20], esi
	mov	edi, dword ptr [rbp - 12]
	mov	esi, dword ptr [rbp - 8]
	call	_swap
	mov	esi, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 24], esi
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 8]
	jge	LBB1_6
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rip + _array@GOTPCREL]
	movsxd	rcx, dword ptr [rbp - 24]
	mov	edx, dword ptr [rax + 4*rcx]
	cmp	edx, dword ptr [rbp - 16]
	jge	LBB1_4
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	edi, dword ptr [rbp - 24]
	mov	esi, dword ptr [rbp - 20]
	call	_swap
	mov	esi, dword ptr [rbp - 20]
	add	esi, 1
	mov	dword ptr [rbp - 20], esi
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_5
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB1_1
LBB1_6:
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 20]
	call	_swap
	mov	eax, dword ptr [rbp - 20]
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_quicksort              ## -- Begin function quicksort
	.p2align	4, 0x90
_quicksort:                             ## @quicksort
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	cmp	esi, dword ptr [rbp - 8]
	jl	LBB2_2
## %bb.1:
	jmp	LBB2_3
LBB2_2:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	_partition
	mov	dword ptr [rbp - 12], eax
	mov	edi, dword ptr [rbp - 4]
	mov	eax, dword ptr [rbp - 12]
	sub	eax, 1
	mov	esi, eax
	call	_quicksort
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	esi, dword ptr [rbp - 8]
	mov	edi, eax
	call	_quicksort
LBB2_3:
	add	rsp, 16
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
	mov	rax, qword ptr [rip + _array@GOTPCREL]
	mov	dword ptr [rax], 62
	mov	dword ptr [rax + 4], 83
	mov	dword ptr [rax + 8], 4
	mov	dword ptr [rax + 12], 89
	mov	dword ptr [rax + 16], 36
	mov	dword ptr [rax + 20], 21
	mov	dword ptr [rax + 24], 74
	mov	dword ptr [rax + 28], 37
	mov	dword ptr [rax + 32], 65
	mov	dword ptr [rax + 36], 33
	mov	dword ptr [rax + 40], 96
	mov	dword ptr [rax + 44], 38
	mov	dword ptr [rax + 48], 53
	mov	dword ptr [rax + 52], 16
	mov	dword ptr [rax + 56], 74
	mov	dword ptr [rax + 60], 55
	mov	dword ptr [rbp - 4], 0
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 4], 16
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	rax, qword ptr [rip + _array@GOTPCREL]
	movsxd	rcx, dword ptr [rbp - 4]
	mov	esi, dword ptr [rax + 4*rcx]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	LBB3_1
LBB3_4:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	xor	edi, edi
	mov	esi, 15
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	call	_quicksort
	mov	dword ptr [rbp - 4], 0
LBB3_5:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 4], 16
	jge	LBB3_8
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	mov	rax, qword ptr [rip + _array@GOTPCREL]
	movsxd	rcx, dword ptr [rbp - 4]
	mov	esi, dword ptr [rax + 4*rcx]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
## %bb.7:                               ##   in Loop: Header=BB3_5 Depth=1
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	LBB3_5
LBB3_8:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.comm	_array,64,4             ## @array
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d "

L_.str.1:                               ## @.str.1
	.asciz	"\n"


.subsections_via_symbols

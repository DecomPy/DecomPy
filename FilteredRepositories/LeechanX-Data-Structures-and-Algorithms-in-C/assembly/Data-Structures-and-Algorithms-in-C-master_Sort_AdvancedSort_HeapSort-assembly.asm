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
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], edx
	mov	rdi, qword ptr [rbp - 8]
	movsxd	rax, dword ptr [rbp - 12]
	mov	edx, dword ptr [rdi + 4*rax]
	mov	dword ptr [rbp - 20], edx
	mov	rax, qword ptr [rbp - 8]
	movsxd	rdi, dword ptr [rbp - 16]
	mov	edx, dword ptr [rax + 4*rdi]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rdi, dword ptr [rbp - 12]
	mov	dword ptr [rax + 4*rdi], edx
	mov	edx, dword ptr [rbp - 20]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rdi, dword ptr [rbp - 16]
	mov	dword ptr [rax + 4*rdi], edx
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_heap_hold              ## -- Begin function heap_hold
	.p2align	4, 0x90
_heap_hold:                             ## @heap_hold
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], edx
	mov	edx, dword ptr [rbp - 16]
	shl	edx, 1
	add	edx, 1
	mov	dword ptr [rbp - 20], edx
	mov	edx, dword ptr [rbp - 16]
	shl	edx, 1
	add	edx, 2
	mov	dword ptr [rbp - 24], edx
	mov	edx, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 28], edx
	mov	edx, dword ptr [rbp - 24]
	cmp	edx, dword ptr [rbp - 12]
	jge	LBB1_3
## %bb.1:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 24]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 28]
	cmp	edx, dword ptr [rax + 4*rcx]
	jge	LBB1_3
## %bb.2:
	mov	eax, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 28], eax
LBB1_3:
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB1_6
## %bb.4:
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 28]
	cmp	edx, dword ptr [rax + 4*rcx]
	jge	LBB1_6
## %bb.5:
	mov	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 28], eax
LBB1_6:
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 16]
	je	LBB1_8
## %bb.7:
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 28]
	mov	edx, dword ptr [rbp - 16]
	call	_swap
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	edx, dword ptr [rbp - 28]
	call	_heap_hold
LBB1_8:
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_init_heap              ## -- Begin function init_heap
	.p2align	4, 0x90
_init_heap:                             ## @init_heap
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	esi, dword ptr [rbp - 12]
	sar	esi, 1
	sub	esi, 1
	mov	dword ptr [rbp - 16], esi
	mov	esi, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 20], esi
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 20], 0
	jl	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 12]
	mov	edx, dword ptr [rbp - 20]
	call	_heap_hold
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, -1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB2_1
LBB2_4:
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_delete_min             ## -- Begin function delete_min
	.p2align	4, 0x90
_delete_min:                            ## @delete_min
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi]
	mov	dword ptr [rbp - 20], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 16]
	mov	ecx, dword ptr [rsi]
	sub	ecx, 1
	mov	esi, eax
	mov	edx, ecx
	call	_swap
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 16]
	mov	eax, dword ptr [rdi]
	sub	eax, 1
	mov	rdi, qword ptr [rbp - 16]
	mov	dword ptr [rdi], eax
	mov	rdi, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 16]
	mov	esi, dword ptr [r8]
	call	_heap_hold
	mov	eax, dword ptr [rbp - 20]
	add	rsp, 32
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
	sub	rsp, 256
	lea	rax, [rbp - 208]
	lea	rcx, [rip + l_main.data]
	mov	edx, 200
                                        ## kill: def $rdx killed $edx
	mov	rsi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 212], 0
	mov	rsi, rax
	mov	rdi, rsi
	mov	rsi, rcx
	mov	qword ptr [rbp - 240], rax ## 8-byte Spill
	call	_memcpy
	mov	dword ptr [rbp - 216], 50
	mov	r8d, dword ptr [rbp - 216]
	mov	dword ptr [rbp - 220], r8d
	mov	esi, dword ptr [rbp - 220]
	mov	rdi, qword ptr [rbp - 240] ## 8-byte Reload
	call	_init_heap
	mov	dword ptr [rbp - 224], 0
LBB4_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 224]
	cmp	eax, dword ptr [rbp - 216]
	jge	LBB4_4
## %bb.2:                               ##   in Loop: Header=BB4_1 Depth=1
	lea	rdi, [rbp - 208]
	lea	rsi, [rbp - 220]
	call	_delete_min
	mov	dword ptr [rbp - 244], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB4_1 Depth=1
	mov	eax, dword ptr [rbp - 224]
	add	eax, 1
	mov	dword ptr [rbp - 224], eax
	jmp	LBB4_1
LBB4_4:
	mov	eax, dword ptr [rbp - 216]
	sub	eax, 1
	mov	dword ptr [rbp - 228], eax
LBB4_5:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 228], 0
	jl	LBB4_8
## %bb.6:                               ##   in Loop: Header=BB4_5 Depth=1
	movsxd	rax, dword ptr [rbp - 228]
	mov	esi, dword ptr [rbp + 4*rax - 208]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 248], eax ## 4-byte Spill
## %bb.7:                               ##   in Loop: Header=BB4_5 Depth=1
	mov	eax, dword ptr [rbp - 228]
	add	eax, -1
	mov	dword ptr [rbp - 228], eax
	jmp	LBB4_5
LBB4_8:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	ecx, dword ptr [rbp - 212]
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rdi, rdx
	mov	dword ptr [rbp - 252], eax ## 4-byte Spill
	mov	dword ptr [rbp - 256], ecx ## 4-byte Spill
	jne	LBB4_10
## %bb.9:
	mov	eax, dword ptr [rbp - 256] ## 4-byte Reload
	add	rsp, 256
	pop	rbp
	ret
LBB4_10:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @main.data
l_main.data:
	.long	60                      ## 0x3c
	.long	2                       ## 0x2
	.long	97                      ## 0x61
	.long	78                      ## 0x4e
	.long	0                       ## 0x0
	.long	84                      ## 0x54
	.long	68                      ## 0x44
	.long	23                      ## 0x17
	.long	48                      ## 0x30
	.long	22                      ## 0x16
	.long	63                      ## 0x3f
	.long	31                      ## 0x1f
	.long	43                      ## 0x2b
	.long	42                      ## 0x2a
	.long	82                      ## 0x52
	.long	9                       ## 0x9
	.long	57                      ## 0x39
	.long	21                      ## 0x15
	.long	42                      ## 0x2a
	.long	62                      ## 0x3e
	.long	83                      ## 0x53
	.long	98                      ## 0x62
	.long	64                      ## 0x40
	.long	72                      ## 0x48
	.long	96                      ## 0x60
	.long	31                      ## 0x1f
	.long	76                      ## 0x4c
	.long	13                      ## 0xd
	.long	70                      ## 0x46
	.long	49                      ## 0x31
	.long	10                      ## 0xa
	.long	60                      ## 0x3c
	.long	72                      ## 0x48
	.long	36                      ## 0x24
	.long	26                      ## 0x1a
	.long	4                       ## 0x4
	.long	56                      ## 0x38
	.long	54                      ## 0x36
	.long	13                      ## 0xd
	.long	9                       ## 0x9
	.long	98                      ## 0x62
	.long	45                      ## 0x2d
	.long	61                      ## 0x3d
	.long	90                      ## 0x5a
	.long	88                      ## 0x58
	.long	80                      ## 0x50
	.long	30                      ## 0x1e
	.long	50                      ## 0x32
	.long	77                      ## 0x4d
	.long	83                      ## 0x53

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d "

L_.str.1:                               ## @.str.1
	.asciz	"\n"


.subsections_via_symbols

	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_binarySearch           ## -- Begin function binarySearch
	.p2align	4, 0x90
_binarySearch:                          ## @binarySearch
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], esi
	mov	dword ptr [rbp - 24], edx
	mov	dword ptr [rbp - 28], ecx
	mov	ecx, dword ptr [rbp - 28]
	cmp	ecx, dword ptr [rbp - 24]
	jg	LBB0_5
## %bb.1:
	mov	eax, dword ptr [rbp - 20]
	mov	rcx, qword ptr [rbp - 16]
	movsxd	rdx, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rcx + 4*rdx]
	jle	LBB0_3
## %bb.2:
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	jmp	LBB0_4
LBB0_3:
	mov	eax, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
LBB0_4:
	mov	eax, dword ptr [rbp - 36] ## 4-byte Reload
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_10
LBB0_5:
	mov	eax, dword ptr [rbp - 24]
	add	eax, dword ptr [rbp - 28]
	cdq
	mov	ecx, 2
	idiv	ecx
	mov	dword ptr [rbp - 32], eax
	mov	eax, dword ptr [rbp - 20]
	mov	rsi, qword ptr [rbp - 16]
	movsxd	rdi, dword ptr [rbp - 32]
	cmp	eax, dword ptr [rsi + 4*rdi]
	jne	LBB0_7
## %bb.6:
	mov	eax, dword ptr [rbp - 32]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_10
LBB0_7:
	mov	eax, dword ptr [rbp - 20]
	mov	rcx, qword ptr [rbp - 16]
	movsxd	rdx, dword ptr [rbp - 32]
	cmp	eax, dword ptr [rcx + 4*rdx]
	jle	LBB0_9
## %bb.8:
	mov	rdi, qword ptr [rbp - 16]
	mov	esi, dword ptr [rbp - 20]
	mov	eax, dword ptr [rbp - 32]
	add	eax, 1
	mov	ecx, dword ptr [rbp - 28]
	mov	edx, eax
	call	_binarySearch
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_10
LBB0_9:
	mov	rdi, qword ptr [rbp - 16]
	mov	esi, dword ptr [rbp - 20]
	mov	edx, dword ptr [rbp - 24]
	mov	eax, dword ptr [rbp - 32]
	sub	eax, 1
	mov	ecx, eax
	call	_binarySearch
	mov	dword ptr [rbp - 4], eax
LBB0_10:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_insertionSort          ## -- Begin function insertionSort
	.p2align	4, 0x90
_insertionSort:                         ## @insertionSort
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
	mov	dword ptr [rbp - 16], 1
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_3 Depth 2
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB1_7
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	xor	edx, edx
	mov	eax, dword ptr [rbp - 16]
	sub	eax, 1
	mov	dword ptr [rbp - 24], eax
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rsi, dword ptr [rbp - 16]
	mov	eax, dword ptr [rcx + 4*rsi]
	mov	dword ptr [rbp - 32], eax
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 32]
	mov	ecx, dword ptr [rbp - 24]
	call	_binarySearch
	mov	dword ptr [rbp - 20], eax
LBB1_3:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 20]
	jl	LBB1_5
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 24]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 24]
	add	esi, 1
	movsxd	rcx, esi
	mov	dword ptr [rax + 4*rcx], edx
	mov	edx, dword ptr [rbp - 24]
	add	edx, -1
	mov	dword ptr [rbp - 24], edx
	jmp	LBB1_3
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 24]
	add	edx, 1
	movsxd	rsi, edx
	mov	dword ptr [rcx + 4*rsi], eax
## %bb.6:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB1_1
LBB1_7:
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
	sub	rsp, 64
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 12], 0
	lea	rdi, [rip + L_.str]
	xor	ecx, ecx
	mov	dl, cl
	lea	rsi, [rbp - 16]
	mov	al, dl
	call	_scanf
	mov	ecx, dword ptr [rbp - 16]
	mov	esi, ecx
	mov	rdi, rsp
	mov	qword ptr [rbp - 24], rdi
	lea	rdi, [4*rsi + 15]
	and	rdi, -16
	mov	r8, rsp
	sub	r8, rdi
	mov	rsp, r8
	mov	qword ptr [rbp - 32], rsi
	mov	dword ptr [rbp - 36], 0
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	mov	qword ptr [rbp - 48], r8 ## 8-byte Spill
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 36]
	cmp	eax, dword ptr [rbp - 16]
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movsxd	rax, dword ptr [rbp - 36]
	shl	rax, 2
	mov	rcx, qword ptr [rbp - 48] ## 8-byte Reload
	add	rcx, rax
	lea	rdi, [rip + L_.str]
	mov	rsi, rcx
	mov	al, 0
	call	_scanf
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 36]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax
	jmp	LBB2_1
LBB2_4:
	mov	esi, dword ptr [rbp - 16]
	mov	rdi, qword ptr [rbp - 48] ## 8-byte Reload
	call	_insertionSort
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 36], 0
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
LBB2_5:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 36]
	cmp	eax, dword ptr [rbp - 16]
	jge	LBB2_8
## %bb.6:                               ##   in Loop: Header=BB2_5 Depth=1
	movsxd	rax, dword ptr [rbp - 36]
	mov	rcx, qword ptr [rbp - 48] ## 8-byte Reload
	mov	esi, dword ptr [rcx + 4*rax]
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
## %bb.7:                               ##   in Loop: Header=BB2_5 Depth=1
	mov	eax, dword ptr [rbp - 36]
	add	eax, 1
	mov	dword ptr [rbp - 36], eax
	jmp	LBB2_5
LBB2_8:
	mov	dword ptr [rbp - 12], 0
	mov	rax, qword ptr [rbp - 24]
	mov	rsp, rax
	mov	eax, dword ptr [rbp - 12]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 64], eax ## 4-byte Spill
	jne	LBB2_10
## %bb.9:
	mov	eax, dword ptr [rbp - 64] ## 4-byte Reload
	mov	rsp, rbp
	pop	rbp
	ret
LBB2_10:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"

L_.str.1:                               ## @.str.1
	.asciz	"Sorted array: \n"

L_.str.2:                               ## @.str.2
	.asciz	"%d "


.subsections_via_symbols

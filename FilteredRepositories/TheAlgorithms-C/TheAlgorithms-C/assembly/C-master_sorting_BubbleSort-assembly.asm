	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_display                ## -- Begin function display
	.p2align	4, 0x90
_display:                               ## @display
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
	mov	dword ptr [rbp - 16], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	esi, dword ptr [rax + 4*rcx]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB0_1
LBB0_4:
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
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
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi]
	mov	dword ptr [rbp - 20], eax
	mov	rsi, qword ptr [rbp - 16]
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	dword ptr [rsi], eax
	mov	eax, dword ptr [rbp - 20]
	mov	rsi, qword ptr [rbp - 16]
	mov	dword ptr [rsi], eax
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_bubbleSort             ## -- Begin function bubbleSort
	.p2align	4, 0x90
_bubbleSort:                            ## @bubbleSort
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
	mov	dword ptr [rbp - 16], 0
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_3 Depth 2
	mov	eax, dword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 12]
	sub	ecx, 1
	cmp	eax, ecx
	jge	LBB2_10
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	dword ptr [rbp - 20], 0
LBB2_3:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 20]
	mov	ecx, dword ptr [rbp - 12]
	sub	ecx, 1
	cmp	eax, ecx
	jge	LBB2_8
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 20]
	add	esi, 1
	movsxd	rcx, esi
	cmp	edx, dword ptr [rax + 4*rcx]
	jle	LBB2_6
## %bb.5:                               ##   in Loop: Header=BB2_3 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 20]
	shl	rcx, 2
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 20]
	add	edx, 1
	movsxd	rsi, edx
	shl	rsi, 2
	add	rcx, rsi
	mov	rdi, rax
	mov	rsi, rcx
	call	_swap
LBB2_6:                                 ##   in Loop: Header=BB2_3 Depth=2
	jmp	LBB2_7
LBB2_7:                                 ##   in Loop: Header=BB2_3 Depth=2
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB2_3
LBB2_8:                                 ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_9
LBB2_9:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB2_1
LBB2_10:
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
	sub	rsp, 96
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 12], 0
	mov	dword ptr [rbp - 16], edi
	mov	qword ptr [rbp - 24], rsi
	lea	rdi, [rip + L_.str.2]
	xor	ecx, ecx
	mov	dl, cl
	mov	al, dl
	mov	byte ptr [rbp - 49], dl ## 1-byte Spill
	call	_printf
	lea	rdi, [rip + L_.str.3]
	lea	rsi, [rbp - 28]
	mov	dl, byte ptr [rbp - 49] ## 1-byte Reload
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	mov	al, dl
	call	_scanf
	lea	rdi, [rip + L_.str.4]
	mov	dl, byte ptr [rbp - 49] ## 1-byte Reload
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
	mov	al, dl
	call	_printf
	mov	ecx, dword ptr [rbp - 28]
	mov	esi, ecx
	mov	rdi, rsp
	mov	qword ptr [rbp - 40], rdi
	lea	rdi, [4*rsi + 15]
	and	rdi, -16
	mov	r8, rsp
	sub	r8, rdi
	mov	rsp, r8
	mov	qword ptr [rbp - 48], rsi
	mov	dword ptr [rbp - 32], 0
	mov	dword ptr [rbp - 64], eax ## 4-byte Spill
	mov	qword ptr [rbp - 72], r8 ## 8-byte Spill
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 32]
	cmp	eax, dword ptr [rbp - 28]
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movsxd	rax, dword ptr [rbp - 32]
	shl	rax, 2
	mov	rcx, qword ptr [rbp - 72] ## 8-byte Reload
	add	rcx, rax
	lea	rdi, [rip + L_.str.3]
	mov	rsi, rcx
	mov	al, 0
	call	_scanf
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [rbp - 32]
	add	eax, 1
	mov	dword ptr [rbp - 32], eax
	jmp	LBB3_1
LBB3_4:
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 28]
	mov	rdi, qword ptr [rbp - 72] ## 8-byte Reload
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
	call	_display
	mov	esi, dword ptr [rbp - 28]
	mov	rdi, qword ptr [rbp - 72] ## 8-byte Reload
	call	_bubbleSort
	lea	rdi, [rip + L_.str.6]
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 28]
	mov	rdi, qword ptr [rbp - 72] ## 8-byte Reload
	mov	dword ptr [rbp - 84], eax ## 4-byte Spill
	call	_display
	mov	dword ptr [rbp - 12], 0
	mov	rdi, qword ptr [rbp - 40]
	mov	rsp, rdi
	mov	eax, dword ptr [rbp - 12]
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rdi, rcx
	mov	dword ptr [rbp - 88], eax ## 4-byte Spill
	jne	LBB3_6
## %bb.5:
	mov	eax, dword ptr [rbp - 88] ## 4-byte Reload
	mov	rsp, rbp
	pop	rbp
	ret
LBB3_6:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d "

L_.str.1:                               ## @.str.1
	.asciz	"\n"

L_.str.2:                               ## @.str.2
	.asciz	"Enter size of array:\n"

L_.str.3:                               ## @.str.3
	.asciz	"%d"

L_.str.4:                               ## @.str.4
	.asciz	"Enter the elements of the array\n"

L_.str.5:                               ## @.str.5
	.asciz	"Original array: "

L_.str.6:                               ## @.str.6
	.asciz	"Sorted array: "


.subsections_via_symbols

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
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 24], 0
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_3 Depth 2
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 12]
	jge	LBB1_9
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 16], ecx
	movsxd	rdx, ecx
	mov	ecx, dword ptr [rax + 4*rdx]
	mov	dword ptr [rbp - 20], ecx
LBB1_3:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 16]
	add	eax, -1
	mov	dword ptr [rbp - 16], eax
	cmp	eax, 0
	mov	byte ptr [rbp - 25], cl ## 1-byte Spill
	jl	LBB1_5
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=2
	mov	eax, dword ptr [rbp - 20]
	mov	rcx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 16]
	cmp	eax, dword ptr [rcx + 4*rdx]
	setl	sil
	mov	byte ptr [rbp - 25], sil ## 1-byte Spill
LBB1_5:                                 ##   in Loop: Header=BB1_3 Depth=2
	mov	al, byte ptr [rbp - 25] ## 1-byte Reload
	test	al, 1
	jne	LBB1_6
	jmp	LBB1_7
LBB1_6:                                 ##   in Loop: Header=BB1_3 Depth=2
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 16]
	add	esi, 1
	movsxd	rcx, esi
	mov	dword ptr [rax + 4*rcx], edx
	mov	edx, dword ptr [rbp - 20]
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 16]
	mov	dword ptr [rax + 4*rcx], edx
	jmp	LBB1_3
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_8
LBB1_8:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB1_1
LBB1_9:
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
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 32]
	cmp	eax, dword ptr [rbp - 28]
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movsxd	rax, dword ptr [rbp - 32]
	shl	rax, 2
	mov	rcx, qword ptr [rbp - 72] ## 8-byte Reload
	add	rcx, rax
	lea	rdi, [rip + L_.str.3]
	mov	rsi, rcx
	mov	al, 0
	call	_scanf
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 32]
	add	eax, 1
	mov	dword ptr [rbp - 32], eax
	jmp	LBB2_1
LBB2_4:
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	esi, dword ptr [rbp - 28]
	mov	rdi, qword ptr [rbp - 72] ## 8-byte Reload
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
	call	_display
	mov	esi, dword ptr [rbp - 28]
	mov	rdi, qword ptr [rbp - 72] ## 8-byte Reload
	call	_insertionSort
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
	jne	LBB2_6
## %bb.5:
	mov	eax, dword ptr [rbp - 88] ## 4-byte Reload
	mov	rsp, rbp
	pop	rbp
	ret
LBB2_6:
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

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
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 12], 0
	call	_clear_digits_array
	lea	rdi, [rip + L_.str]
	mov	esi, 34
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	call	_getchar
	xor	ecx, ecx
	mov	dl, cl
	mov	sil, al
	mov	byte ptr [rbp - 5], sil
	movsx	eax, sil
	cmp	eax, 10
	mov	byte ptr [rbp - 17], dl ## 1-byte Spill
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	cmp	dword ptr [rbp - 12], 34
	setl	al
	mov	byte ptr [rbp - 17], al ## 1-byte Spill
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	al, byte ptr [rbp - 17] ## 1-byte Reload
	test	al, 1
	jne	LBB0_4
	jmp	LBB0_7
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movsx	edi, byte ptr [rbp - 5]
	call	_isdigit
	cmp	eax, 0
	je	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	movsx	eax, byte ptr [rbp - 5]
	sub	eax, 48
	mov	ecx, dword ptr [rbp - 12]
	shl	ecx, 2
	mov	edi, eax
	mov	esi, ecx
	call	_process_digit
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
LBB0_7:
	mov	eax, dword ptr [rbp - 12]
	shl	eax, 2
	mov	edi, eax
	call	_print_digits_array
	xor	eax, eax
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_clear_digits_array     ## -- Begin function clear_digits_array
	.p2align	4, 0x90
_clear_digits_array:                    ## @clear_digits_array
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], 0
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_3 Depth 2
	cmp	dword ptr [rbp - 4], 3
	jge	LBB1_8
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	dword ptr [rbp - 8], 0
LBB1_3:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 8], 136
	jge	LBB1_6
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=2
	jmp	LBB1_5
LBB1_5:                                 ##   in Loop: Header=BB1_3 Depth=2
	mov	rax, qword ptr [rip + _digits@GOTPCREL]
	movsxd	rcx, dword ptr [rbp - 4]
	imul	rcx, rcx, 136
	add	rax, rcx
	mov	edx, dword ptr [rbp - 8]
	mov	esi, edx
	add	esi, 1
	mov	dword ptr [rbp - 8], esi
	movsxd	rcx, edx
	mov	byte ptr [rax + rcx], 32
	jmp	LBB1_3
LBB1_6:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_7
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	LBB1_1
LBB1_8:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_process_digit          ## -- Begin function process_digit
	.p2align	4, 0x90
_process_digit:                         ## @process_digit
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rip + l_process_digit.display]
	mov	dword ptr [rbp - 15], esi
	mov	ax, word ptr [rip + l_process_digit.display+4]
	mov	word ptr [rbp - 11], ax
	mov	cl, byte ptr [rip + l_process_digit.display+6]
	mov	byte ptr [rbp - 9], cl
	mov	dword ptr [rbp - 28], 0
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 28], 7
	jge	LBB2_6
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movsxd	rax, dword ptr [rbp - 4]
	imul	rax, rax, 28
	lea	rcx, [rip + _segments_per_character]
	add	rcx, rax
	movsxd	rax, dword ptr [rbp - 28]
	cmp	dword ptr [rcx + 4*rax], 0
	je	LBB2_4
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rip + _digits@GOTPCREL]
	movsxd	rcx, dword ptr [rbp - 28]
	lea	rdx, [rip + _segment_coordinates]
	mov	esi, dword ptr [rdx + 8*rcx]
	mov	dword ptr [rbp - 20], esi
	mov	esi, dword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 28]
	add	esi, dword ptr [rdx + 8*rcx + 4]
	mov	dword ptr [rbp - 24], esi
	movsxd	rcx, dword ptr [rbp - 28]
	mov	dil, byte ptr [rbp + rcx - 15]
	movsxd	rcx, dword ptr [rbp - 20]
	imul	rcx, rcx, 136
	add	rax, rcx
	movsxd	rcx, dword ptr [rbp - 24]
	mov	byte ptr [rax + rcx], dil
LBB2_4:                                 ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_5
LBB2_5:                                 ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	jmp	LBB2_1
LBB2_6:
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_print_digits_array     ## -- Begin function print_digits_array
	.p2align	4, 0x90
_print_digits_array:                    ## @print_digits_array
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], 0
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 8], 3
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	rax, qword ptr [rip + _digits@GOTPCREL]
	mov	esi, dword ptr [rbp - 4]
	movsxd	rcx, dword ptr [rbp - 8]
	imul	rcx, rcx, 136
	add	rax, rcx
	lea	rdi, [rip + L_.str.1]
	mov	rdx, rax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	LBB3_1
LBB3_4:
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.globl	_segments_per_character ## @segments_per_character
	.p2align	4
_segments_per_character:
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	1                       ## 0x1

	.globl	_segment_coordinates    ## @segment_coordinates
	.p2align	4
_segment_coordinates:
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	2                       ## 0x2
	.long	2                       ## 0x2
	.long	2                       ## 0x2
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	1                       ## 0x1

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter a string with up to %d digits: "

	.comm	_digits,408,4           ## @digits
	.section	__TEXT,__const
l_process_digit.display:                ## @process_digit.display
	.ascii	"_||_||_"

	.section	__TEXT,__cstring,cstring_literals
L_.str.1:                               ## @.str.1
	.asciz	"%.*s\n"


.subsections_via_symbols

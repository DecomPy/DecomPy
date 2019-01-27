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
	sub	rsp, 16
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rip + L_.str]
	mov	esi, 10
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + _input@GOTPCREL]
	mov	rcx, qword ptr [rip + ___stdinp@GOTPCREL]
	mov	rdx, qword ptr [rcx]
	mov	esi, 255
	mov	dword ptr [rbp - 8], eax ## 4-byte Spill
	call	_fgets
	xor	esi, esi
	mov	r8d, 4294967295
	mov	edi, r8d
	mov	edx, r8d
	mov	qword ptr [rbp - 16], rax ## 8-byte Spill
	call	_print_row
	mov	edi, 5
	mov	esi, 6
	mov	edx, 1
	call	_print_row
	mov	edi, 4
	mov	esi, 3
	mov	edx, 2
	call	_print_row
	xor	eax, eax
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_print_row              ## -- Begin function print_row
	.p2align	4, 0x90
_print_row:                             ## @print_row
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 12], edx
	mov	dword ptr [rbp - 16], 0
	mov	dword ptr [rbp - 24], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rip + _input@GOTPCREL]
	movsxd	rsi, dword ptr [rbp - 16]
	movsx	eax, byte ptr [rdx + rsi]
	cmp	eax, 10
	mov	byte ptr [rbp - 25], cl ## 1-byte Spill
	je	LBB1_3
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	cmp	dword ptr [rbp - 24], 10
	setl	al
	mov	byte ptr [rbp - 25], al ## 1-byte Spill
LBB1_3:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	al, byte ptr [rbp - 25] ## 1-byte Reload
	test	al, 1
	jne	LBB1_4
	jmp	LBB1_8
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rip + _input@GOTPCREL]
	movsxd	rcx, dword ptr [rbp - 16]
	movsx	edi, byte ptr [rax + rcx]
	call	_isdigit
	cmp	eax, 0
	je	LBB1_6
## %bb.5:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rip + _input@GOTPCREL]
	movsxd	rcx, dword ptr [rbp - 16]
	movsx	edx, byte ptr [rax + rcx]
	sub	edx, 48
	mov	dword ptr [rbp - 20], edx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 20]
	call	_print_segment
	mov	edi, dword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 20]
	call	_print_segment
	mov	edi, dword ptr [rbp - 12]
	mov	esi, dword ptr [rbp - 20]
	call	_print_segment
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	edx, dword ptr [rbp - 24]
	add	edx, 1
	mov	dword ptr [rbp - 24], edx
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
LBB1_6:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_7
LBB1_7:                                 ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB1_1
LBB1_8:
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_print_segment          ## -- Begin function print_segment
	.p2align	4, 0x90
_print_segment:                         ## @print_segment
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 320
	lea	rax, [rip + l_print_segment.segments]
	mov	ecx, 280
	mov	edx, ecx
	mov	r8, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	r8, qword ptr [r8]
	mov	qword ptr [rbp - 8], r8
	mov	dword ptr [rbp - 292], edi
	mov	dword ptr [rbp - 296], esi
	lea	r8, [rbp - 288]
	mov	rdi, r8
	mov	rsi, rax
	call	_memcpy
	mov	ecx, dword ptr [rip + l_print_segment.display]
	mov	dword ptr [rbp - 303], ecx
	mov	r9w, word ptr [rip + l_print_segment.display+4]
	mov	word ptr [rbp - 299], r9w
	mov	r10b, byte ptr [rip + l_print_segment.display+6]
	mov	byte ptr [rbp - 297], r10b
	cmp	dword ptr [rbp - 292], 0
	jl	LBB2_3
## %bb.1:
	movsxd	rax, dword ptr [rbp - 296]
	imul	rax, rax, 28
	lea	rcx, [rbp - 288]
	add	rcx, rax
	movsxd	rax, dword ptr [rbp - 292]
	cmp	dword ptr [rcx + 4*rax], 0
	je	LBB2_3
## %bb.2:
	movsxd	rax, dword ptr [rbp - 292]
	movsx	esi, byte ptr [rbp + rax - 303]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 308], eax ## 4-byte Spill
	jmp	LBB2_4
LBB2_3:
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 312], eax ## 4-byte Spill
LBB2_4:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB2_6
## %bb.5:
	add	rsp, 320
	pop	rbp
	ret
LBB2_6:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter a number up to %d digits: "

	.comm	_input,255,4            ## @input
	.section	__TEXT,__const
	.p2align	4               ## @print_segment.segments
l_print_segment.segments:
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

l_print_segment.display:                ## @print_segment.display
	.ascii	"_||_||_"

	.section	__TEXT,__cstring,cstring_literals
L_.str.1:                               ## @.str.1
	.asciz	"%c"

L_.str.2:                               ## @.str.2
	.asciz	" "

L_.str.3:                               ## @.str.3
	.asciz	"\n"


.subsections_via_symbols

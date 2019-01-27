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
	sub	rsp, 48
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	cmp	dword ptr [rbp - 8], 2
	je	LBB0_2
## %bb.1:
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rax]
	lea	rsi, [rip + L_.str]
	xor	ecx, ecx
	mov	r8b, cl
	mov	al, r8b
	call	_fprintf
	mov	edi, 1
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	call	_exit
LBB0_2:
	mov	rax, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rax + 8]
	call	_atoi
	mov	dword ptr [rbp - 28], eax
	cmp	eax, 1
	jge	LBB0_4
## %bb.3:
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rax]
	lea	rsi, [rip + L_.str.1]
	xor	ecx, ecx
	mov	r8b, cl
	mov	al, r8b
	call	_fprintf
	mov	edi, 1
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	call	_exit
LBB0_4:
	jmp	LBB0_5
LBB0_5:
	mov	dword ptr [rbp - 24], 1
LBB0_6:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_8 Depth 2
                                        ##       Child Loop BB0_10 Depth 3
	call	_getchar
	mov	dword ptr [rbp - 20], eax
	cmp	eax, -1
	je	LBB0_24
## %bb.7:                               ##   in Loop: Header=BB0_6 Depth=1
	jmp	LBB0_8
LBB0_8:                                 ##   Parent Loop BB0_6 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_10 Depth 3
	mov	eax, dword ptr [rbp - 20]
	and	eax, 192
	cmp	eax, 0
	je	LBB0_18
## %bb.9:                               ##   in Loop: Header=BB0_8 Depth=2
	jmp	LBB0_10
LBB0_10:                                ##   Parent Loop BB0_6 Depth=1
                                        ##     Parent Loop BB0_8 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 28]
	jg	LBB0_12
## %bb.11:                              ##   in Loop: Header=BB0_10 Depth=3
	mov	edi, dword ptr [rbp - 20]
	call	_putchar
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
LBB0_12:                                ##   in Loop: Header=BB0_10 Depth=3
	jmp	LBB0_13
LBB0_13:                                ##   in Loop: Header=BB0_10 Depth=3
	call	_getchar
	xor	ecx, ecx
	mov	dl, cl
	mov	dword ptr [rbp - 20], eax
	cmp	eax, -1
	mov	byte ptr [rbp - 41], dl ## 1-byte Spill
	je	LBB0_16
## %bb.14:                              ##   in Loop: Header=BB0_10 Depth=3
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 20]
	and	eax, 128
	cmp	eax, 0
	mov	byte ptr [rbp - 41], cl ## 1-byte Spill
	je	LBB0_16
## %bb.15:                              ##   in Loop: Header=BB0_10 Depth=3
	mov	eax, dword ptr [rbp - 20]
	and	eax, 64
	cmp	eax, 0
	setne	cl
	xor	cl, -1
	mov	byte ptr [rbp - 41], cl ## 1-byte Spill
LBB0_16:                                ##   in Loop: Header=BB0_10 Depth=3
	mov	al, byte ptr [rbp - 41] ## 1-byte Reload
	test	al, 1
	jne	LBB0_10
## %bb.17:                              ##   in Loop: Header=BB0_8 Depth=2
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB0_8
LBB0_18:                                ##   in Loop: Header=BB0_6 Depth=1
	cmp	dword ptr [rbp - 20], 10
	jne	LBB0_20
## %bb.19:                              ##   in Loop: Header=BB0_6 Depth=1
	mov	dword ptr [rbp - 24], 0
LBB0_20:                                ##   in Loop: Header=BB0_6 Depth=1
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 28]
	jg	LBB0_22
## %bb.21:                              ##   in Loop: Header=BB0_6 Depth=1
	mov	edi, dword ptr [rbp - 20]
	call	_putchar
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
LBB0_22:                                ##   in Loop: Header=BB0_6 Depth=1
	jmp	LBB0_23
LBB0_23:                                ##   in Loop: Header=BB0_6 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	LBB0_6
LBB0_24:
	xor	edi, edi
	call	_exit
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"usage: %s width\n"

L_.str.1:                               ## @.str.1
	.asciz	"%s: please set width to > 0\n"


.subsections_via_symbols

	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ex2_61                 ## -- Begin function ex2_61
	.p2align	4, 0x90
_ex2_61:                                ## @ex2_61
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 144
	mov	dword ptr [rbp - 8], 32
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], -1
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	ecx, 0
	setne	dl
	xor	dl, -1
	test	dl, 1
	lea	rdi, [rip + L_.str.2]
	lea	r8, [rip + L_.str.3]
	cmovne	r8, rdi
	lea	rdi, [rip + L_.str.1]
	mov	rdx, r8
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], -2
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	cmp	ecx, 0
	setne	r9b
	xor	r9b, -1
	test	r9b, 1
	lea	rdx, [rip + L_.str.2]
	lea	rdi, [rip + L_.str.3]
	cmovne	rdi, rdx
	lea	rdx, [rip + L_.str.1]
	mov	qword ptr [rbp - 24], rdi ## 8-byte Spill
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 24] ## 8-byte Reload
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.4]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], 0
	mov	esi, dword ptr [rbp - 4]
	cmp	dword ptr [rbp - 4], 0
	setne	r9b
	xor	r9b, -1
	test	r9b, 1
	lea	rdx, [rip + L_.str.2]
	lea	rdi, [rip + L_.str.3]
	cmovne	rdi, rdx
	lea	rdx, [rip + L_.str.5]
	mov	qword ptr [rbp - 40], rdi ## 8-byte Spill
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 40] ## 8-byte Reload
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], 1
	mov	esi, dword ptr [rbp - 4]
	cmp	dword ptr [rbp - 4], 0
	setne	r9b
	xor	r9b, -1
	test	r9b, 1
	lea	rdx, [rip + L_.str.2]
	lea	rdi, [rip + L_.str.3]
	cmovne	rdi, rdx
	lea	rdx, [rip + L_.str.5]
	mov	qword ptr [rbp - 56], rdi ## 8-byte Spill
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 56] ## 8-byte Reload
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.6]
	mov	dword ptr [rbp - 64], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], -15584170
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 4]
	mov	r10d, dword ptr [rbp - 8]
	sub	r10d, 8
	mov	dword ptr [rbp - 68], ecx ## 4-byte Spill
	mov	ecx, r10d
                                        ## kill: def $cl killed $ecx
	mov	r10d, 255
	shl	r10d, cl
	mov	r11d, dword ptr [rbp - 68] ## 4-byte Reload
	and	r11d, r10d
	mov	r10d, dword ptr [rbp - 8]
	sub	r10d, 8
	mov	ecx, r10d
                                        ## kill: def $cl killed $ecx
	mov	r10d, 1
	shl	r10d, cl
	add	r11d, r10d
	cmp	r11d, 0
	setne	cl
	xor	cl, -1
	test	cl, 1
	lea	rdx, [rip + L_.str.2]
	lea	rdi, [rip + L_.str.3]
	cmovne	rdi, rdx
	lea	rdx, [rip + L_.str.7]
	mov	qword ptr [rbp - 80], rdi ## 8-byte Spill
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 80] ## 8-byte Reload
	mov	dword ptr [rbp - 84], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], -268435457
	mov	esi, dword ptr [rbp - 4]
	mov	r10d, dword ptr [rbp - 4]
	mov	r11d, dword ptr [rbp - 8]
	sub	r11d, 8
	mov	ecx, r11d
                                        ## kill: def $cl killed $ecx
	mov	r11d, 255
	shl	r11d, cl
	and	r10d, r11d
	mov	r11d, dword ptr [rbp - 8]
	sub	r11d, 8
	mov	ecx, r11d
                                        ## kill: def $cl killed $ecx
	mov	r11d, 1
	shl	r11d, cl
	add	r10d, r11d
	cmp	r10d, 0
	setne	cl
	xor	cl, -1
	test	cl, 1
	lea	rdx, [rip + L_.str.2]
	lea	rdi, [rip + L_.str.3]
	cmovne	rdi, rdx
	lea	rdx, [rip + L_.str.7]
	mov	qword ptr [rbp - 96], rdi ## 8-byte Spill
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 96] ## 8-byte Reload
	mov	dword ptr [rbp - 100], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rip + L_.str.8]
	mov	dword ptr [rbp - 104], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], 305419776
	mov	esi, dword ptr [rbp - 4]
	mov	r10d, dword ptr [rbp - 4]
	and	r10d, 255
	cmp	r10d, 0
	setne	cl
	xor	cl, -1
	test	cl, 1
	lea	rdx, [rip + L_.str.2]
	lea	rdi, [rip + L_.str.3]
	cmovne	rdi, rdx
	lea	rdx, [rip + L_.str.9]
	mov	qword ptr [rbp - 112], rdi ## 8-byte Spill
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 112] ## 8-byte Reload
	mov	dword ptr [rbp - 116], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], 305419777
	mov	esi, dword ptr [rbp - 4]
	mov	r10d, dword ptr [rbp - 4]
	and	r10d, 255
	cmp	r10d, 0
	setne	cl
	xor	cl, -1
	test	cl, 1
	lea	rdx, [rip + L_.str.2]
	lea	rdi, [rip + L_.str.3]
	cmovne	rdi, rdx
	lea	rdx, [rip + L_.str.9]
	mov	qword ptr [rbp - 128], rdi ## 8-byte Spill
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 128] ## 8-byte Reload
	mov	dword ptr [rbp - 132], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 136], eax ## 4-byte Spill
	add	rsp, 144
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"x=111...111 return 1\n"

L_.str.1:                               ## @.str.1
	.asciz	"!(0x%X+1): %s\n"

L_.str.2:                               ## @.str.2
	.asciz	"right"

L_.str.3:                               ## @.str.3
	.asciz	"wrong"

L_.str.4:                               ## @.str.4
	.asciz	"x=000...000 return 1\n"

L_.str.5:                               ## @.str.5
	.asciz	"!0x%X: %s\n"

L_.str.6:                               ## @.str.6
	.asciz	"x=_1111 1111_else return 1\n"

L_.str.7:                               ## @.str.7
	.asciz	"(0x%X & (0xFF << ((sizeof(int)-1) << 3))) + (1 << ((sizeof(int)-1) << 3)): %s\n"

L_.str.8:                               ## @.str.8
	.asciz	"x=else..._0000 0000_ return 1\n"

L_.str.9:                               ## @.str.9
	.asciz	"!(0x%X & 0xFF): %s\n"


.subsections_via_symbols

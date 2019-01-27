	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_ConvertMB2WC           ## -- Begin function ConvertMB2WC
	.p2align	4, 0x90
_ConvertMB2WC:                          ## @ConvertMB2WC
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rdi
	lea	rdi, [rip + l_.str.1]
	mov	al, 0
	call	_wprintf
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 16]
	cmp	byte ptr [rax], 0
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movzx	esi, byte ptr [rax]
	lea	rdi, [rip + l_.str.2]
	mov	al, 0
	call	_wprintf
	mov	rdi, qword ptr [rbp - 16]
	add	rdi, 1
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	jmp	LBB0_1
LBB0_3:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rax
	lea	rdi, [rip + l_.str.3]
	mov	al, 0
	call	_wprintf
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 16]
	cmp	byte ptr [rax], 0
	je	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_4 Depth=1
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rip + ___mb_cur_max@GOTPCREL]
	mov	rsi, qword ptr [rbp - 16]
	movsxd	rdx, dword ptr [rdx]
	lea	rdi, [rbp - 28]
	call	_mbrtowc
	mov	qword ptr [rbp - 24], rax
	mov	esi, dword ptr [rbp - 28]
	lea	rdi, [rip + l_.str.2]
	mov	al, 0
	call	_wprintf
	mov	rcx, qword ptr [rbp - 24]
	add	rcx, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 16], rcx
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	jmp	LBB0_4
LBB0_6:
	lea	rdi, [rip + l_.str.4]
	mov	al, 0
	call	_wprintf
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	add	rsp, 48
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
	mov	dword ptr [rbp - 4], 0
	lea	rax, [rip + l_.str.5]
	mov	qword ptr [rbp - 16], rax
	mov	dword ptr [rbp - 20], 0
	mov	edi, 2
	lea	rsi, [rip + L_.str.6]
	call	_setlocale
	mov	rsi, qword ptr [rbp - 16]
	lea	rdi, [rip + l_.str.7]
	mov	qword ptr [rbp - 32], rax ## 8-byte Spill
	mov	al, 0
	call	_wprintf
	mov	dword ptr [rbp - 20], 0
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movsxd	rax, dword ptr [rbp - 20]
	mov	rdi, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 48], rax ## 8-byte Spill
	call	_wcslen
	mov	rdi, qword ptr [rbp - 48] ## 8-byte Reload
	cmp	rdi, rax
	jae	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	esi, dword ptr [rax + 4*rcx]
	lea	rdi, [rip + l_.str.2]
	mov	al, 0
	call	_wprintf
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB1_1
LBB1_4:
	lea	rdi, [rip + l_.str.4]
	mov	al, 0
	call	_wprintf
	mov	rdi, qword ptr [rip + _cstr]
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
	call	_ConvertMB2WC
	lea	rdi, [rip + l_.str.8]
	mov	al, 0
	call	_wprintf
	lea	rdi, [rip + L_.str.9]
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 64], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 64
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"abc\344\275\240\345\245\275abc"

	.section	__DATA,__data
	.globl	_cstr                   ## @cstr
	.p2align	3
_cstr:
	.quad	L_.str

	.section	__TEXT,__const
	.p2align	2               ## @.str.1
l_.str.1:
	.long	109                     ## 0x6d
	.long	117                     ## 0x75
	.long	108                     ## 0x6c
	.long	116                     ## 0x74
	.long	105                     ## 0x69
	.long	112                     ## 0x70
	.long	108                     ## 0x6c
	.long	101                     ## 0x65
	.long	32                      ## 0x20
	.long	98                      ## 0x62
	.long	121                     ## 0x79
	.long	116                     ## 0x74
	.long	101                     ## 0x65
	.long	115                     ## 0x73
	.long	58                      ## 0x3a
	.long	10                      ## 0xa
	.long	0                       ## 0x0

	.p2align	2               ## @.str.2
l_.str.2:
	.long	48                      ## 0x30
	.long	120                     ## 0x78
	.long	37                      ## 0x25
	.long	120                     ## 0x78
	.long	32                      ## 0x20
	.long	0                       ## 0x0

	.p2align	2               ## @.str.3
l_.str.3:
	.long	10                      ## 0xa
	.long	119                     ## 0x77
	.long	105                     ## 0x69
	.long	100                     ## 0x64
	.long	101                     ## 0x65
	.long	32                      ## 0x20
	.long	99                      ## 0x63
	.long	104                     ## 0x68
	.long	97                      ## 0x61
	.long	114                     ## 0x72
	.long	115                     ## 0x73
	.long	58                      ## 0x3a
	.long	10                      ## 0xa
	.long	0                       ## 0x0

	.p2align	2               ## @.str.4
l_.str.4:
	.long	10                      ## 0xa
	.long	0                       ## 0x0

	.p2align	2               ## @.str.5
l_.str.5:
	.long	97                      ## 0x61
	.long	98                      ## 0x62
	.long	99                      ## 0x63
	.long	20320                   ## 0x4f60
	.long	22909                   ## 0x597d
	.long	97                      ## 0x61
	.long	98                      ## 0x62
	.long	99                      ## 0x63
	.long	0                       ## 0x0

	.section	__TEXT,__cstring,cstring_literals
L_.str.6:                               ## @.str.6
	.space	1

	.section	__TEXT,__const
	.p2align	2               ## @.str.7
l_.str.7:
	.long	37                      ## 0x25
	.long	83                      ## 0x53
	.long	10                      ## 0xa
	.long	0                       ## 0x0

	.p2align	2               ## @.str.8
l_.str.8:
	.long	20320                   ## 0x4f60
	.long	22909                   ## 0x597d
	.long	32                      ## 0x20
	.long	20320                   ## 0x4f60
	.long	22909                   ## 0x597d
	.long	10                      ## 0xa
	.long	0                       ## 0x0

	.section	__TEXT,__cstring,cstring_literals
L_.str.9:                               ## @.str.9
	.asciz	"not print at all,why ?\n"


.subsections_via_symbols

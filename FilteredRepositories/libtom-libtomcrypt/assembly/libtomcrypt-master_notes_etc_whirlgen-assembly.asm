	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_gf_mul                 ## -- Begin function gf_mul
	.p2align	4, 0x90
_gf_mul:                                ## @gf_mul
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 12], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 4], 0
	je	LBB0_5
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 4]
	and	eax, 1
	cmp	eax, 0
	je	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 8]
	xor	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 12], eax
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	xor	eax, eax
	mov	ecx, dword ptr [rbp - 4]
	shr	ecx, 1
	mov	dword ptr [rbp - 4], ecx
	mov	ecx, dword ptr [rbp - 8]
	shl	ecx, 1
	mov	edx, dword ptr [rbp - 8]
	and	edx, 128
	cmp	edx, 0
	mov	edx, 285
	cmovne	eax, edx
	xor	ecx, eax
	mov	dword ptr [rbp - 8], ecx
	jmp	LBB0_1
LBB0_5:
	mov	eax, dword ptr [rbp - 12]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_sbox                   ## -- Begin function sbox
	.p2align	4, 0x90
_sbox:                                  ## @sbox
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	rax, qword ptr [rip + _Ei@GOTPCREL]
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	shr	edi, 4
	mov	dword ptr [rbp - 8], edi
	mov	edi, dword ptr [rbp - 4]
	and	edi, 15
	mov	dword ptr [rbp - 12], edi
	mov	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	lea	rdx, [rip + _E]
	mov	edi, dword ptr [rdx + 4*rcx]
	mov	dword ptr [rbp - 8], edi
	mov	edi, dword ptr [rbp - 12]
	mov	ecx, edi
	mov	edi, dword ptr [rax + 4*rcx]
	mov	dword ptr [rbp - 12], edi
	mov	edi, dword ptr [rbp - 8]
	xor	edi, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 16], edi
	mov	edi, dword ptr [rbp - 16]
	mov	ecx, edi
	lea	rsi, [rip + _R]
	mov	edi, dword ptr [rsi + 4*rcx]
	mov	dword ptr [rbp - 16], edi
	mov	edi, dword ptr [rbp - 8]
	xor	edi, dword ptr [rbp - 16]
	mov	edi, edi
	mov	ecx, edi
	mov	edi, dword ptr [rdx + 4*rcx]
	mov	dword ptr [rbp - 8], edi
	mov	edi, dword ptr [rbp - 12]
	xor	edi, dword ptr [rbp - 16]
	mov	edi, edi
	mov	ecx, edi
	mov	edi, dword ptr [rax + 4*rcx]
	mov	dword ptr [rbp - 12], edi
	mov	edi, dword ptr [rbp - 8]
	shl	edi, 4
	or	edi, dword ptr [rbp - 12]
	mov	eax, edi
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
	sub	rsp, 112
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], 0
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 8], 16
	jae	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rip + _Ei@GOTPCREL]
	mov	ecx, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 8]
	mov	esi, edx
	lea	rdi, [rip + _E]
	mov	edx, dword ptr [rdi + 4*rsi]
	mov	esi, edx
	mov	dword ptr [rax + 4*rsi], ecx
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	LBB2_1
LBB2_4:
	mov	dword ptr [rbp - 12], 1
LBB2_5:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_7 Depth 2
	cmp	dword ptr [rbp - 12], 8
	jae	LBB2_12
## %bb.6:                               ##   in Loop: Header=BB2_5 Depth=1
	mov	dword ptr [rbp - 8], 0
LBB2_7:                                 ##   Parent Loop BB2_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 8], 8
	jae	LBB2_10
## %bb.8:                               ##   in Loop: Header=BB2_7 Depth=2
	mov	eax, dword ptr [rbp - 12]
	sub	eax, 1
	mov	eax, eax
	mov	ecx, eax
	shl	rcx, 5
	lea	rdx, [rip + _cir]
	mov	rsi, rdx
	add	rsi, rcx
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 1
	and	eax, 7
	mov	eax, eax
	mov	ecx, eax
	mov	eax, dword ptr [rsi + 4*rcx]
	mov	edi, dword ptr [rbp - 12]
	mov	ecx, edi
	shl	rcx, 5
	add	rdx, rcx
	mov	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	mov	dword ptr [rdx + 4*rcx], eax
## %bb.9:                               ##   in Loop: Header=BB2_7 Depth=2
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	LBB2_7
LBB2_10:                                ##   in Loop: Header=BB2_5 Depth=1
	jmp	LBB2_11
LBB2_11:                                ##   in Loop: Header=BB2_5 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB2_5
LBB2_12:
	mov	dword ptr [rbp - 12], 0
LBB2_13:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_15 Depth 2
	cmp	dword ptr [rbp - 12], 8
	jae	LBB2_23
## %bb.14:                              ##   in Loop: Header=BB2_13 Depth=1
	mov	esi, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
LBB2_15:                                ##   Parent Loop BB2_13 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 8], 256
	jae	LBB2_21
## %bb.16:                              ##   in Loop: Header=BB2_15 Depth=2
	mov	edi, dword ptr [rbp - 8]
	call	_sbox
	mov	edi, dword ptr [rbp - 12]
	mov	ecx, edi
	shl	rcx, 5
	lea	rdx, [rip + _cir]
	add	rdx, rcx
	mov	esi, dword ptr [rdx]
	mov	edi, eax
	call	_gf_mul
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	call	_sbox
	mov	esi, dword ptr [rbp - 12]
	mov	ecx, esi
	shl	rcx, 5
	lea	rdx, [rip + _cir]
	add	rdx, rcx
	mov	esi, dword ptr [rdx + 4]
	mov	edi, eax
	call	_gf_mul
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	call	_sbox
	mov	esi, dword ptr [rbp - 12]
	mov	ecx, esi
	shl	rcx, 5
	lea	rdx, [rip + _cir]
	add	rdx, rcx
	mov	esi, dword ptr [rdx + 8]
	mov	edi, eax
	call	_gf_mul
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	call	_sbox
	mov	esi, dword ptr [rbp - 12]
	mov	ecx, esi
	shl	rcx, 5
	lea	rdx, [rip + _cir]
	add	rdx, rcx
	mov	esi, dword ptr [rdx + 12]
	mov	edi, eax
	call	_gf_mul
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 32], eax ## 4-byte Spill
	call	_sbox
	mov	esi, dword ptr [rbp - 12]
	mov	ecx, esi
	shl	rcx, 5
	lea	rdx, [rip + _cir]
	add	rdx, rcx
	mov	esi, dword ptr [rdx + 16]
	mov	edi, eax
	call	_gf_mul
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	call	_sbox
	mov	esi, dword ptr [rbp - 12]
	mov	ecx, esi
	shl	rcx, 5
	lea	rdx, [rip + _cir]
	add	rdx, rcx
	mov	esi, dword ptr [rdx + 20]
	mov	edi, eax
	call	_gf_mul
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
	call	_sbox
	mov	esi, dword ptr [rbp - 12]
	mov	ecx, esi
	shl	rcx, 5
	lea	rdx, [rip + _cir]
	add	rdx, rcx
	mov	esi, dword ptr [rdx + 24]
	mov	edi, eax
	call	_gf_mul
	mov	edi, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 44], eax ## 4-byte Spill
	call	_sbox
	mov	esi, dword ptr [rbp - 12]
	mov	ecx, esi
	shl	rcx, 5
	lea	rdx, [rip + _cir]
	add	rdx, rcx
	mov	esi, dword ptr [rdx + 28]
	mov	edi, eax
	call	_gf_mul
	lea	rdi, [rip + L_.str.1]
	mov	esi, dword ptr [rbp - 20] ## 4-byte Reload
	mov	edx, dword ptr [rbp - 24] ## 4-byte Reload
	mov	ecx, dword ptr [rbp - 28] ## 4-byte Reload
	mov	r8d, dword ptr [rbp - 32] ## 4-byte Reload
	mov	r9d, dword ptr [rbp - 36] ## 4-byte Reload
	mov	r10d, dword ptr [rbp - 40] ## 4-byte Reload
	mov	dword ptr [rsp], r10d
	mov	r10d, dword ptr [rbp - 44] ## 4-byte Reload
	mov	dword ptr [rsp + 8], r10d
	mov	dword ptr [rsp + 16], eax
	mov	al, 0
	call	_printf
	cmp	dword ptr [rbp - 8], 255
	mov	dword ptr [rbp - 48], eax ## 4-byte Spill
	jae	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_15 Depth=2
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 52], eax ## 4-byte Spill
LBB2_18:                                ##   in Loop: Header=BB2_15 Depth=2
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	and	eax, 3
	cmp	eax, 0
	jne	LBB2_20
## %bb.19:                              ##   in Loop: Header=BB2_15 Depth=2
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 56], eax ## 4-byte Spill
LBB2_20:                                ##   in Loop: Header=BB2_15 Depth=2
	jmp	LBB2_15
LBB2_21:                                ##   in Loop: Header=BB2_13 Depth=1
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 60], eax ## 4-byte Spill
## %bb.22:                              ##   in Loop: Header=BB2_13 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB2_13
LBB2_23:
	lea	rdi, [rip + L_.str.5]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 12], 0
	mov	dword ptr [rbp - 64], eax ## 4-byte Spill
LBB2_24:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_26 Depth 2
	cmp	dword ptr [rbp - 12], 10
	ja	LBB2_31
## %bb.25:                              ##   in Loop: Header=BB2_24 Depth=1
	lea	rdi, [rip + L_.str.6]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 68], eax ## 4-byte Spill
LBB2_26:                                ##   Parent Loop BB2_24 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 8], 8
	jae	LBB2_29
## %bb.27:                              ##   in Loop: Header=BB2_26 Depth=2
	mov	eax, dword ptr [rbp - 12]
	shl	eax, 3
	add	eax, dword ptr [rbp - 8]
	and	eax, 255
	mov	edi, eax
	call	_sbox
	lea	rdi, [rip + L_.str.7]
	mov	esi, eax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 72], eax ## 4-byte Spill
## %bb.28:                              ##   in Loop: Header=BB2_26 Depth=2
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	LBB2_26
LBB2_29:                                ##   in Loop: Header=BB2_24 Depth=1
	lea	rdi, [rip + L_.str.8]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 76], eax ## 4-byte Spill
## %bb.30:                              ##   in Loop: Header=BB2_24 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB2_24
LBB2_31:
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 80], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 112
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_E                      ## @E
	.p2align	4
_E:
	.long	1                       ## 0x1
	.long	11                      ## 0xb
	.long	9                       ## 0x9
	.long	12                      ## 0xc
	.long	13                      ## 0xd
	.long	6                       ## 0x6
	.long	15                      ## 0xf
	.long	3                       ## 0x3
	.long	14                      ## 0xe
	.long	8                       ## 0x8
	.long	7                       ## 0x7
	.long	4                       ## 0x4
	.long	10                      ## 0xa
	.long	2                       ## 0x2
	.long	5                       ## 0x5
	.long	0                       ## 0x0

	.globl	_R                      ## @R
	.p2align	4
_R:
	.long	7                       ## 0x7
	.long	12                      ## 0xc
	.long	11                      ## 0xb
	.long	13                      ## 0xd
	.long	14                      ## 0xe
	.long	4                       ## 0x4
	.long	9                       ## 0x9
	.long	15                      ## 0xf
	.long	6                       ## 0x6
	.long	3                       ## 0x3
	.long	8                       ## 0x8
	.long	10                      ## 0xa
	.long	2                       ## 0x2
	.long	5                       ## 0x5
	.long	1                       ## 0x1
	.long	0                       ## 0x0

	.globl	_cir                    ## @cir
	.p2align	4
_cir:
	.long	1                       ## 0x1
	.long	1                       ## 0x1
	.long	4                       ## 0x4
	.long	1                       ## 0x1
	.long	8                       ## 0x8
	.long	5                       ## 0x5
	.long	2                       ## 0x2
	.long	9                       ## 0x9
	.space	32
	.space	32
	.space	32
	.space	32
	.space	32
	.space	32
	.space	32

	.comm	_Ei,64,4                ## @Ei
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"static const ulong64 sbox%d[] = {\n"

L_.str.1:                               ## @.str.1
	.asciz	"CONST64(0x%02x%02x%02x%02x%02x%02x%02x%02x)"

L_.str.2:                               ## @.str.2
	.asciz	", "

L_.str.3:                               ## @.str.3
	.asciz	"\n"

L_.str.4:                               ## @.str.4
	.asciz	"};\n\n"

L_.str.5:                               ## @.str.5
	.asciz	"static const ulong64 cont[] = {\n"

L_.str.6:                               ## @.str.6
	.asciz	"CONST64(0x"

L_.str.7:                               ## @.str.7
	.asciz	"%02x"

L_.str.8:                               ## @.str.8
	.asciz	"),\n"


.subsections_via_symbols

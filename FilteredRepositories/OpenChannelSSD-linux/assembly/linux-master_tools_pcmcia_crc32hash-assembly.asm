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
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], -1
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	jmp	LBB0_3
LBB0_2:
	mov	rax, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 16]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 32], rdi ## 8-byte Spill
	mov	rdi, rax
	call	_strlen
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 32] ## 8-byte Reload
	mov	esi, ecx
	call	_crc32
	mov	dword ptr [rbp - 20], eax
	mov	esi, dword ptr [rbp - 20]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
LBB0_3:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function crc32
_crc32:                                 ## @crc32
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 20], 0
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_3 Depth 2
	mov	eax, dword ptr [rbp - 12]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 12], ecx
	cmp	eax, 0
	je	LBB1_7
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	movzx	edx, byte ptr [rax]
	xor	edx, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 20], edx
	mov	dword ptr [rbp - 16], 0
LBB1_3:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 16], 8
	jge	LBB1_6
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=2
	xor	eax, eax
	mov	ecx, dword ptr [rbp - 20]
	shr	ecx, 1
	mov	edx, dword ptr [rbp - 20]
	and	edx, 1
	cmp	edx, 0
	mov	edx, 3988292384
	cmovne	eax, edx
	xor	ecx, eax
	mov	dword ptr [rbp - 20], ecx
## %bb.5:                               ##   in Loop: Header=BB1_3 Depth=2
	mov	eax, dword ptr [rbp - 16]
	add	eax, 1
	mov	dword ptr [rbp - 16], eax
	jmp	LBB1_3
LBB1_6:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_1
LBB1_7:
	mov	eax, dword ptr [rbp - 20]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"no string passed as argument\n"

L_.str.1:                               ## @.str.1
	.asciz	"0x%x\n"


.subsections_via_symbols

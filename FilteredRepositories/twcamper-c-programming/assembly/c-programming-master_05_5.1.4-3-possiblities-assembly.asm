	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_test                   ## -- Begin function test
	.p2align	4, 0x90
_test:                                  ## @test
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	cmp	esi, dword ptr [rbp - 8]
	jge	LBB0_2
## %bb.1:
	mov	eax, 4294967295
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	jmp	LBB0_3
LBB0_2:
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 8]
	setg	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
LBB0_3:
	mov	eax, dword ptr [rbp - 16] ## 4-byte Reload
	mov	dword ptr [rbp - 12], eax
	mov	esi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
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
	sub	rsp, 16
	mov	dword ptr [rbp - 4], 0
	mov	edi, 1
	mov	esi, 2
	call	_test
	mov	esi, 2
	mov	edi, esi
	call	_test
	mov	edi, 2
	mov	esi, 1
	call	_test
	xor	eax, eax
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"i=%d, j=%d: %d\n"


.subsections_via_symbols

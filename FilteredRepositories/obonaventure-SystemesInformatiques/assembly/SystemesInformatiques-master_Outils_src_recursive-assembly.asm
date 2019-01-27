	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_factTmp                ## -- Begin function factTmp
	.p2align	4, 0x90
_factTmp:                               ## @factTmp
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 12], esi
	mov	esi, dword ptr [rip + _factTmp.globalTmp]
	add	esi, 1
	mov	dword ptr [rip + _factTmp.globalTmp], esi
	mov	dword ptr [rbp - 16], 0
	mov	esi, dword ptr [rbp - 16]
	add	esi, 1
	mov	dword ptr [rbp - 16], esi
	cmp	dword ptr [rbp - 12], 1
	jg	LBB0_2
## %bb.1:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	LBB0_3
LBB0_2:
	mov	eax, dword ptr [rbp - 8]
	imul	eax, dword ptr [rbp - 12]
	mov	ecx, dword ptr [rbp - 12]
	sub	ecx, 1
	mov	edi, eax
	mov	esi, ecx
	call	_factTmp
	mov	dword ptr [rbp - 4], eax
LBB0_3:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_factTerminal           ## -- Begin function factTerminal
	.p2align	4, 0x90
_factTerminal:                          ## @factTerminal
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], 3
	mov	esi, dword ptr [rbp - 4]
	mov	edi, 1
	call	_factTmp
	add	rsp, 16
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
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	edi, 6
	call	_factTerminal
	lea	rdi, [rip + L_.str]
	mov	esi, eax
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_globalVar              ## @globalVar
	.p2align	2
_globalVar:
	.long	5                       ## 0x5

.zerofill __DATA,__bss,_factTmp.globalTmp,4,2 ## @factTmp.globalTmp
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"La factorielle de 6 est : %d\n"


.subsections_via_symbols

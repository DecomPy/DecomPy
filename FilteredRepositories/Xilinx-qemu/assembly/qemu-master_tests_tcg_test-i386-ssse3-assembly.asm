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
	sub	rsp, 160
	lea	rax, [rbp - 40]
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rbp - 84], 0
	mov	dword ptr [rbp - 88], edi
	mov	qword ptr [rbp - 96], rsi
	mov	rcx, qword ptr [rip + L_main.ehlo]
	mov	qword ptr [rbp - 40], rcx
	movabs	rcx, -9187202489428869119
	mov	qword ptr [rbp - 104], rcx
	mov	qword ptr [rbp - 112], 589831
	mov	qword ptr [rbp - 120], 0
	mov	rcx, qword ptr [rip + L_main.e]
	mov	qword ptr [rbp - 64], rcx
	mov	rcx, qword ptr [rip + L_main.e+8]
	mov	qword ptr [rbp - 56], rcx
	mov	rcx, qword ptr [rip + L_main.f]
	mov	qword ptr [rbp - 80], rcx
	mov	rcx, qword ptr [rip + L_main.f+8]
	mov	qword ptr [rbp - 72], rcx
	## InlineAsm Start
	movq	mm0, qword ptr [rax]
	## InlineAsm End
	## InlineAsm Start
	movq	mm1, qword ptr [rbp - 104]
	## InlineAsm End
	## InlineAsm Start
	pshufb	mm0, mm1
	## InlineAsm End
	## InlineAsm Start
	movq	qword ptr [rbp - 32], mm0
	## InlineAsm End
	lea	rsi, [rbp - 32]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rcx, [rbp - 40]
	## InlineAsm Start
	movq	mm0, qword ptr [rcx]
	## InlineAsm End
	## InlineAsm Start
	pshufb	mm0, qword ptr [rbp - 104]
	## InlineAsm End
	## InlineAsm Start
	movq	qword ptr [rbp - 32], mm0
	## InlineAsm End
	lea	rsi, [rbp - 32]
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 132], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rbp - 112]
	## InlineAsm Start
	movq	mm0, rcx
	## InlineAsm End
	## InlineAsm Start
	phsubsw	mm0, qword ptr [rbp - 120]
	## InlineAsm End
	## InlineAsm Start
	movq	qword ptr [rbp - 112], mm0
	## InlineAsm End
	xor	edx, edx
	mov	rcx, qword ptr [rbp - 112]
	mov	r8w, cx
	movsx	r9d, r8w
	sub	edx, r9d
	lea	rdi, [rip + L_.str.1]
	mov	esi, 9
	mov	r9d, 7
	mov	dword ptr [rbp - 136], edx ## 4-byte Spill
	mov	edx, r9d
	mov	ecx, dword ptr [rbp - 136] ## 4-byte Reload
	mov	dword ptr [rbp - 140], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	lea	rdi, [rbp - 64]
	## InlineAsm Start
	movdqa	xmm0, xmmword ptr [rdi]
	## InlineAsm End
	lea	rdi, [rbp - 80]
	## InlineAsm Start
	palignr	xmm0, xmmword ptr [rdi], 14 ## xmm0 = mem[14,15],xmm0[0,1,2,3,4,5,6,7,8,9,10,11,12,13]
	## InlineAsm End
	lea	rdi, [rbp - 32]
	## InlineAsm Start
	movdqa	xmmword ptr [rdi], xmm0
	## InlineAsm End
	lea	rsi, [rbp - 32]
	lea	rdi, [rip + L_.str.2]
	mov	dword ptr [rbp - 144], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 148], eax ## 4-byte Spill
	## InlineAsm Start
	movabs	rax, -8925852986203136925
	## InlineAsm End
	## InlineAsm Start
	popcnt	dx, ax
	## InlineAsm End
	## InlineAsm Start
	popcnt	ecx, eax
	## InlineAsm End
	## InlineAsm Start
	popcnt	rax, rax
	## InlineAsm End
	## InlineAsm Start
	mov	qword ptr [rbp - 112], rax
	## InlineAsm End
	## InlineAsm Start
	mov	dword ptr [rbp - 124], ecx
	## InlineAsm End
	## InlineAsm Start
	mov	word ptr [rbp - 126], dx
	## InlineAsm End
	mov	rax, qword ptr [rbp - 112]
	mov	ecx, eax
	mov	r8d, dword ptr [rbp - 124]
	movzx	r9d, word ptr [rbp - 126]
	add	r9d, 1
	lea	rdi, [rip + L_.str.3]
	mov	esi, 13
	mov	edx, ecx
	mov	ecx, 9
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rdi, qword ptr [rdi]
	mov	r10, qword ptr [rbp - 8]
	cmp	rdi, r10
	mov	dword ptr [rbp - 152], eax ## 4-byte Spill
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	add	rsp, 160
	pop	rbp
	ret
LBB0_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
L_main.ehlo:                            ## @main.ehlo
	.ascii	"EHLO    "

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## @main.e
L_main.e:
	.ascii	"LLOaaaaaaaaaaaaa"

	.p2align	4               ## @main.f
L_main.f:
	.ascii	"aaaaaaaaaaaaaaHE"

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%s\n"

L_.str.1:                               ## @.str.1
	.asciz	"%i - %i = %i\n"

L_.str.2:                               ## @.str.2
	.asciz	"%5.5s\n"

L_.str.3:                               ## @.str.3
	.asciz	"%i = %i\n%i = %i = %i\n"


.subsections_via_symbols

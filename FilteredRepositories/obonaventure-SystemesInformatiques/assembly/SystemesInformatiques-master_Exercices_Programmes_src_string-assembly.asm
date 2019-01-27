	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_strlen                 ## -- Begin function strlen
	.p2align	4, 0x90
_strlen:                                ## @strlen
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], 0
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsxd	rcx, dword ptr [rbp - 12]
	movsx	edx, byte ptr [rax + rcx]
	cmp	edx, 0
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB0_1
LBB0_3:
	movsxd	rax, dword ptr [rbp - 12]
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.globl	_strcat                 ## -- Begin function strcat
	.p2align	4, 0x90
_strcat:                                ## @strcat
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 64
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 0
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movsxd	rax, dword ptr [rbp - 20]
	mov	rdi, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax ## 8-byte Spill
	call	_strlen
	mov	rdi, qword ptr [rbp - 32] ## 8-byte Reload
	cmp	rdi, rax
	jae	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 20]
	mov	dl, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 33], dl ## 1-byte Spill
	mov	qword ptr [rbp - 48], rax ## 8-byte Spill
	call	_strlen
	mov	rcx, qword ptr [rbp - 48] ## 8-byte Reload
	add	rcx, rax
	movsxd	rax, dword ptr [rbp - 20]
	mov	dl, byte ptr [rbp - 33] ## 1-byte Reload
	mov	byte ptr [rcx + rax], dl
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	add	eax, 1
	mov	dword ptr [rbp - 20], eax
	jmp	LBB1_1
LBB1_4:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 56], rax ## 8-byte Spill
	call	_strlen
	mov	rdi, qword ptr [rbp - 56] ## 8-byte Reload
	add	rdi, rax
	movsxd	rax, dword ptr [rbp - 20]
	mov	byte ptr [rdi + rax], 0
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 64
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
	sub	rsp, 416
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 228], 0
	mov	dword ptr [rbp - 232], edi
	mov	qword ptr [rbp - 240], rsi
	lea	rax, [rip + L_.str]
	mov	qword ptr [rbp - 248], rax
	lea	rax, [rip + L_.str.1]
	mov	qword ptr [rbp - 256], rax
	mov	qword ptr [rbp - 264], 0
	mov	rsi, qword ptr [rbp - 248]
	mov	rdi, qword ptr [rbp - 248]
	mov	qword ptr [rbp - 280], rsi ## 8-byte Spill
	call	_strlen
	lea	rdi, [rip + L_.str.2]
	mov	rsi, qword ptr [rbp - 280] ## 8-byte Reload
	mov	rdx, rax
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rbp - 256]
	mov	rdi, qword ptr [rbp - 256]
	mov	dword ptr [rbp - 284], eax ## 4-byte Spill
	mov	qword ptr [rbp - 296], rsi ## 8-byte Spill
	call	_strlen
	lea	rdi, [rip + L_.str.2]
	mov	rsi, qword ptr [rbp - 296] ## 8-byte Reload
	mov	rdx, rax
	mov	al, 0
	call	_printf
	mov	rsi, qword ptr [rbp - 264]
	mov	rdi, qword ptr [rbp - 264]
	mov	dword ptr [rbp - 300], eax ## 4-byte Spill
	mov	qword ptr [rbp - 312], rsi ## 8-byte Spill
	call	_strlen
	lea	rdi, [rip + L_.str.2]
	mov	rsi, qword ptr [rbp - 312] ## 8-byte Reload
	mov	rdx, rax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 268], 0
	mov	dword ptr [rbp - 316], eax ## 4-byte Spill
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movsxd	rax, dword ptr [rbp - 268]
	mov	rdi, qword ptr [rbp - 248]
	mov	qword ptr [rbp - 328], rax ## 8-byte Spill
	call	_strlen
	mov	rdi, qword ptr [rbp - 328] ## 8-byte Reload
	cmp	rdi, rax
	jae	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 248]
	movsxd	rcx, dword ptr [rbp - 268]
	mov	dl, byte ptr [rax + rcx]
	movsxd	rax, dword ptr [rbp - 268]
	mov	byte ptr [rbp + rax - 112], dl
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [rbp - 268]
	add	eax, 1
	mov	dword ptr [rbp - 268], eax
	jmp	LBB2_1
LBB2_4:
	lea	rdi, [rbp - 112]
	mov	rsi, qword ptr [rbp - 248]
	mov	rdx, qword ptr [rbp - 256]
	mov	rax, qword ptr [rbp - 256]
	mov	qword ptr [rbp - 336], rsi ## 8-byte Spill
	mov	rsi, rax
	mov	qword ptr [rbp - 344], rdx ## 8-byte Spill
	call	_strcat
	lea	rdi, [rip + L_.str.3]
	mov	rsi, qword ptr [rbp - 336] ## 8-byte Reload
	mov	rdx, qword ptr [rbp - 344] ## 8-byte Reload
	mov	rcx, rax
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rbp - 240]
	mov	rsi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 240]
	mov	rdi, qword ptr [rcx + 8]
	mov	dword ptr [rbp - 348], eax ## 4-byte Spill
	mov	qword ptr [rbp - 360], rsi ## 8-byte Spill
	call	_strlen
	lea	rdi, [rip + L_.str.2]
	mov	rsi, qword ptr [rbp - 360] ## 8-byte Reload
	mov	rdx, rax
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rbp - 240]
	mov	rsi, qword ptr [rcx + 16]
	mov	rcx, qword ptr [rbp - 240]
	mov	rdi, qword ptr [rcx + 16]
	mov	dword ptr [rbp - 364], eax ## 4-byte Spill
	mov	qword ptr [rbp - 376], rsi ## 8-byte Spill
	call	_strlen
	lea	rdi, [rip + L_.str.2]
	mov	rsi, qword ptr [rbp - 376] ## 8-byte Reload
	mov	rdx, rax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 268], 0
	mov	dword ptr [rbp - 380], eax ## 4-byte Spill
LBB2_5:                                 ## =>This Inner Loop Header: Depth=1
	movsxd	rax, dword ptr [rbp - 268]
	mov	rcx, qword ptr [rbp - 240]
	mov	rdi, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 392], rax ## 8-byte Spill
	call	_strlen
	mov	rcx, qword ptr [rbp - 392] ## 8-byte Reload
	cmp	rcx, rax
	jae	LBB2_8
## %bb.6:                               ##   in Loop: Header=BB2_5 Depth=1
	mov	rax, qword ptr [rbp - 240]
	mov	rax, qword ptr [rax + 8]
	movsxd	rcx, dword ptr [rbp - 268]
	mov	dl, byte ptr [rax + rcx]
	movsxd	rax, dword ptr [rbp - 268]
	mov	byte ptr [rbp + rax - 112], dl
## %bb.7:                               ##   in Loop: Header=BB2_5 Depth=1
	mov	eax, dword ptr [rbp - 268]
	add	eax, 1
	mov	dword ptr [rbp - 268], eax
	jmp	LBB2_5
LBB2_8:
	lea	rdi, [rbp - 224]
	mov	rax, qword ptr [rbp - 240]
	mov	rsi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 240]
	mov	rdx, qword ptr [rax + 16]
	mov	rax, qword ptr [rbp - 240]
	mov	rax, qword ptr [rax + 16]
	mov	qword ptr [rbp - 400], rsi ## 8-byte Spill
	mov	rsi, rax
	mov	qword ptr [rbp - 408], rdx ## 8-byte Spill
	call	_strcat
	lea	rdi, [rip + L_.str.3]
	mov	rsi, qword ptr [rbp - 400] ## 8-byte Reload
	mov	rdx, qword ptr [rbp - 408] ## 8-byte Reload
	mov	rcx, rax
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, rdx
	mov	dword ptr [rbp - 412], eax ## 4-byte Spill
	jne	LBB2_10
## %bb.9:
	xor	eax, eax
	add	rsp, 416
	pop	rbp
	ret
LBB2_10:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Hello"

L_.str.1:                               ## @.str.1
	.asciz	" World!"

L_.str.2:                               ## @.str.2
	.asciz	"Length of %s: %lu\n"

L_.str.3:                               ## @.str.3
	.asciz	"Putting %s and %s together gives %s\n"


.subsections_via_symbols

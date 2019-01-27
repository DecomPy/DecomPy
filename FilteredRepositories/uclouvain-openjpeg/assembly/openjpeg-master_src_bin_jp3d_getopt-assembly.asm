	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.intel_syntax noprefix
	.globl	_getopt                 ## -- Begin function getopt
	.p2align	4, 0x90
_getopt:                                ## @getopt
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	rax, qword ptr [rip + _optreset@GOTPCREL]
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	cmp	dword ptr [rax], 0
	jne	LBB0_2
## %bb.1:
	mov	rax, qword ptr [rip + _getopt.place]
	cmp	byte ptr [rax], 0
	jne	LBB0_9
LBB0_2:
	mov	rax, qword ptr [rip + _optreset@GOTPCREL]
	mov	dword ptr [rax], 0
	mov	ecx, dword ptr [rip + _optind]
	cmp	ecx, dword ptr [rbp - 8]
	jge	LBB0_4
## %bb.3:
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rip + _optind]
	mov	rax, qword ptr [rax + 8*rcx]
	mov	qword ptr [rip + _getopt.place], rax
	movsx	edx, byte ptr [rax]
	cmp	edx, 45
	je	LBB0_5
LBB0_4:
	lea	rax, [rip + L_.str]
	mov	qword ptr [rip + _getopt.place], rax
	mov	dword ptr [rbp - 4], -1
	jmp	LBB0_35
LBB0_5:
	mov	rax, qword ptr [rip + _getopt.place]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	LBB0_8
## %bb.6:
	mov	rax, qword ptr [rip + _getopt.place]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rip + _getopt.place], rcx
	movsx	edx, byte ptr [rax + 1]
	cmp	edx, 45
	jne	LBB0_8
## %bb.7:
	mov	eax, dword ptr [rip + _optind]
	add	eax, 1
	mov	dword ptr [rip + _optind], eax
	lea	rcx, [rip + L_.str]
	mov	qword ptr [rip + _getopt.place], rcx
	mov	dword ptr [rbp - 4], -1
	jmp	LBB0_35
LBB0_8:
	jmp	LBB0_9
LBB0_9:
	mov	rax, qword ptr [rip + _optopt@GOTPCREL]
	mov	rcx, qword ptr [rip + _getopt.place]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rip + _getopt.place], rdx
	movsx	esi, byte ptr [rcx]
	mov	dword ptr [rax], esi
	cmp	esi, 58
	je	LBB0_11
## %bb.10:
	mov	rax, qword ptr [rip + _optopt@GOTPCREL]
	mov	rdi, qword ptr [rbp - 24]
	mov	esi, dword ptr [rax]
	call	_strchr
	mov	qword ptr [rbp - 32], rax
	cmp	rax, 0
	jne	LBB0_19
LBB0_11:
	mov	rax, qword ptr [rip + _optopt@GOTPCREL]
	cmp	dword ptr [rax], 45
	jne	LBB0_13
## %bb.12:
	mov	dword ptr [rbp - 4], -1
	jmp	LBB0_35
LBB0_13:
	mov	rax, qword ptr [rip + _getopt.place]
	cmp	byte ptr [rax], 0
	jne	LBB0_15
## %bb.14:
	mov	eax, dword ptr [rip + _optind]
	add	eax, 1
	mov	dword ptr [rip + _optind], eax
LBB0_15:
	cmp	dword ptr [rip + _opterr], 0
	je	LBB0_18
## %bb.16:
	mov	rax, qword ptr [rbp - 24]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 58
	je	LBB0_18
## %bb.17:
	mov	rax, qword ptr [rip + _optopt@GOTPCREL]
	mov	rcx, qword ptr [rip + ___stdoutp@GOTPCREL]
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rcx]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rip + L_.str.1]
	mov	al, 0
	call	_fprintf
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
LBB0_18:
	mov	dword ptr [rbp - 4], 63
	jmp	LBB0_35
LBB0_19:
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 32], rcx
	movsx	edx, byte ptr [rax + 1]
	cmp	edx, 58
	je	LBB0_23
## %bb.20:
	mov	rax, qword ptr [rip + _optarg@GOTPCREL]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rip + _getopt.place]
	cmp	byte ptr [rax], 0
	jne	LBB0_22
## %bb.21:
	mov	eax, dword ptr [rip + _optind]
	add	eax, 1
	mov	dword ptr [rip + _optind], eax
LBB0_22:
	jmp	LBB0_34
LBB0_23:
	mov	rax, qword ptr [rip + _getopt.place]
	cmp	byte ptr [rax], 0
	je	LBB0_25
## %bb.24:
	mov	rax, qword ptr [rip + _optarg@GOTPCREL]
	mov	rcx, qword ptr [rip + _getopt.place]
	mov	qword ptr [rax], rcx
	jmp	LBB0_33
LBB0_25:
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rip + _optind]
	add	ecx, 1
	mov	dword ptr [rip + _optind], ecx
	cmp	eax, ecx
	jg	LBB0_31
## %bb.26:
	lea	rax, [rip + L_.str]
	mov	qword ptr [rip + _getopt.place], rax
	mov	rax, qword ptr [rbp - 24]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 58
	jne	LBB0_28
## %bb.27:
	mov	dword ptr [rbp - 4], 58
	jmp	LBB0_35
LBB0_28:
	cmp	dword ptr [rip + _opterr], 0
	je	LBB0_30
## %bb.29:
	mov	rax, qword ptr [rip + _optopt@GOTPCREL]
	mov	rcx, qword ptr [rip + ___stdoutp@GOTPCREL]
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rcx]
	mov	ecx, dword ptr [rax]
	lea	rsi, [rip + L_.str.2]
	mov	al, 0
	call	_fprintf
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
LBB0_30:
	mov	dword ptr [rbp - 4], 63
	jmp	LBB0_35
LBB0_31:
	mov	rax, qword ptr [rip + _optarg@GOTPCREL]
	mov	rcx, qword ptr [rbp - 16]
	movsxd	rdx, dword ptr [rip + _optind]
	mov	rcx, qword ptr [rcx + 8*rdx]
	mov	qword ptr [rax], rcx
## %bb.32:
	jmp	LBB0_33
LBB0_33:
	lea	rax, [rip + L_.str]
	mov	qword ptr [rip + _getopt.place], rax
	mov	ecx, dword ptr [rip + _optind]
	add	ecx, 1
	mov	dword ptr [rip + _optind], ecx
LBB0_34:
	mov	rax, qword ptr [rip + _optopt@GOTPCREL]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 4], ecx
LBB0_35:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_opterr                 ## @opterr
	.p2align	2
_opterr:
	.long	1                       ## 0x1

	.globl	_optind                 ## @optind
	.p2align	2
_optind:
	.long	1                       ## 0x1

	.p2align	3               ## @getopt.place
_getopt.place:
	.quad	L_.str

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.space	1

	.comm	_optreset,4,2           ## @optreset
	.comm	_optopt,4,2             ## @optopt
L_.str.1:                               ## @.str.1
	.asciz	"[ERROR] %s: illegal option -- %c\n"

	.comm	_optarg,8,3             ## @optarg
L_.str.2:                               ## @.str.2
	.asciz	"[ERROR] %s: option requires an argument -- %c\n"


.subsections_via_symbols

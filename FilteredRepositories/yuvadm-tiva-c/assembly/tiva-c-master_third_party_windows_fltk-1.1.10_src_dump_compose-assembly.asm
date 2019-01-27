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
	mov	dword ptr [rbp - 8], 0
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	cmp	dword ptr [rbp - 8], 16
	jge	LBB0_11
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	mov	dword ptr [rbp - 12], 0
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 12], 6
	jge	LBB0_9
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	mov	eax, dword ptr [rbp - 12]
	shl	eax, 4
	add	eax, dword ptr [rbp - 8]
	shl	eax, 1
	movsxd	rcx, eax
	lea	rdx, [rip + L_.str]
	add	rdx, rcx
	mov	qword ptr [rbp - 24], rdx
	mov	rcx, qword ptr [rbp - 24]
	movsx	eax, byte ptr [rcx + 1]
	cmp	eax, 32
	jne	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=2
	mov	eax, 2
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 24]
	movsx	esi, byte ptr [rdx]
	mov	rdx, qword ptr [rbp - 24]
	lea	rdi, [rip + L_.str]
	sub	rdx, rdi
	mov	rax, rdx
	cqo
	idiv	rcx
	add	rax, 160
	lea	rdi, [rip + L_.str.1]
	mov	rdx, rax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	jmp	LBB0_7
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=2
	mov	eax, 2
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 24]
	movsx	esi, byte ptr [rdx]
	mov	rdx, qword ptr [rbp - 24]
	movsx	edx, byte ptr [rdx + 1]
	mov	rdi, qword ptr [rbp - 24]
	lea	r8, [rip + L_.str]
	sub	rdi, r8
	mov	rax, rdi
	mov	dword ptr [rbp - 32], edx ## 4-byte Spill
	cqo
	idiv	rcx
	add	rax, 160
	lea	rdi, [rip + L_.str.2]
	mov	r9d, dword ptr [rbp - 32] ## 4-byte Reload
	mov	edx, r9d
	mov	rcx, rax
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=2
	jmp	LBB0_8
LBB0_8:                                 ##   in Loop: Header=BB0_3 Depth=2
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB0_3
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 40], eax ## 4-byte Spill
## %bb.10:                              ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	LBB0_1
LBB0_11:
	xor	eax, eax
	add	rsp, 48
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"  ! @ # $ y=| & : c a <<~ - r _ * +-2 3 ' u p . , 1 o >>141234? A`A'A^A~A:A*AEC,E`E'E^E:I`I'I^I:D-N~O`O'O^O~O:x O/U`U'U^U:Y'DDssa`a'a^a~a:a*aec,e`e'e^e:i`i'i^i:d-n~o`o'o^o~o:-:o/u`u'u^u:y'ddy:"

L_.str.1:                               ## @.str.1
	.asciz	"<td><code>%c&nbsp</code>&nbsp&nbsp&nbsp%c\n"

L_.str.2:                               ## @.str.2
	.asciz	"<td><code>%c%c</code>&nbsp&nbsp&nbsp%c\n"

L_.str.3:                               ## @.str.3
	.asciz	"<tr>"


.subsections_via_symbols

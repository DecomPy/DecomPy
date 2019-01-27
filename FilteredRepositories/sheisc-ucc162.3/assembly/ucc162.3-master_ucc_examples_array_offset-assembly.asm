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
	sub	rsp, 32
	mov	rax, qword ptr [rip + _arr@GOTPCREL]
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], 2
	mov	dword ptr [rax], 5
	mov	esi, dword ptr [rax]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + _arr@GOTPCREL]
	mov	dword ptr [rdi + 8], 10
	mov	esi, dword ptr [rdi + 8]
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 12], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rdi, qword ptr [rip + _arr@GOTPCREL]
	movsxd	rcx, dword ptr [rbp - 8]
	shl	rcx, 4
	mov	rdx, rdi
	add	rdx, rcx
	mov	dword ptr [rdx + 8], 20
	mov	esi, dword ptr [rdi + 40]
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rip + _arr@GOTPCREL]
	mov	rdx, qword ptr [rip + _ptr]
	mov	dword ptr [rdx + 40], 30
	mov	esi, dword ptr [rcx + 40]
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 20], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	mov	rcx, qword ptr [rip + _arr@GOTPCREL]
	mov	rdx, qword ptr [rip + _ptr2]
	mov	rdx, qword ptr [rdx]
	mov	dword ptr [rdx + 40], 40
	mov	esi, dword ptr [rcx + 40]
	lea	rdi, [rip + L_.str]
	mov	dword ptr [rbp - 24], eax ## 4-byte Spill
	mov	al, 0
	call	_printf
	xor	esi, esi
	mov	dword ptr [rbp - 28], eax ## 4-byte Spill
	mov	eax, esi
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.comm	_arr,64,4               ## @arr
	.section	__DATA,__data
	.globl	_ptr                    ## @ptr
	.p2align	3
_ptr:
	.quad	_arr

	.globl	_ptr2                   ## @ptr2
	.p2align	3
_ptr2:
	.quad	_ptr

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d \n"


.subsections_via_symbols

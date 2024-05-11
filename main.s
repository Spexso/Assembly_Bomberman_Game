	.file	"main.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "Grid allocation failed\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB15:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	andl	$-16, %esp
	subl	$48, %esp
	.cfi_offset 3, -12
	call	___main
	movl	$16, 32(%esp)
	movl	$0, (%esp)
	call	_time
	movl	%eax, (%esp)
	call	_srand
	movl	32(%esp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, 28(%esp)
	cmpl	$0, 28(%esp)
	jne	L2
	movl	$LC0, (%esp)
	call	_printf
	movl	$1, (%esp)
	call	_exit
L2:
	movl	$0, 44(%esp)
	jmp	L3
L5:
	movl	44(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	28(%esp), %eax
	leal	(%edx,%eax), %ebx
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, (%ebx)
	movl	44(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	28(%esp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L4
	movl	$1, (%esp)
	call	_exit
L4:
	addl	$1, 44(%esp)
L3:
	movl	44(%esp), %eax
	cmpl	32(%esp), %eax
	jl	L5
	movl	$0, 40(%esp)
	jmp	L6
L12:
	movl	$0, 36(%esp)
	jmp	L7
L11:
	cmpl	$4, 40(%esp)
	jne	L8
	cmpl	$4, 36(%esp)
	jne	L8
	movl	40(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	28(%esp), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	36(%esp), %eax
	addl	%edx, %eax
	movb	$49, (%eax)
	jmp	L9
L8:
	cmpl	$5, 40(%esp)
	jne	L10
	cmpl	$5, 36(%esp)
	jne	L10
	movl	40(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	28(%esp), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	36(%esp), %eax
	addl	%edx, %eax
	movb	$49, (%eax)
	jmp	L9
L10:
	movl	40(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	28(%esp), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	36(%esp), %eax
	addl	%edx, %eax
	movb	$46, (%eax)
L9:
	addl	$1, 36(%esp)
L7:
	movl	36(%esp), %eax
	cmpl	32(%esp), %eax
	jl	L11
	addl	$1, 40(%esp)
L6:
	movl	40(%esp), %eax
	cmpl	32(%esp), %eax
	jl	L12
	movl	32(%esp), %eax
	movl	%eax, 4(%esp)
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	_print_grid
	movl	$5, 8(%esp)
	movl	32(%esp), %eax
	movl	%eax, 4(%esp)
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	_plantingBombs
	movl	32(%esp), %eax
	movl	%eax, 4(%esp)
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	_print_grid
	movl	32(%esp), %eax
	movl	%eax, 4(%esp)
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	_execute_bombing
	movl	32(%esp), %eax
	movl	%eax, 4(%esp)
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	_print_grid
	movl	$0, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.globl	_bomberMan
	.def	_bomberMan;	.scl	2;	.type	32;	.endef
_bomberMan:
LFB16:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE16:
	.section .rdata,"dr"
LC1:
	.ascii "%c \0"
LC2:
	.ascii "\12\12\0"
	.text
	.globl	_print_grid
	.def	_print_grid;	.scl	2;	.type	32;	.endef
_print_grid:
LFB17:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -12(%ebp)
	jmp	L16
L19:
	movl	$0, -16(%ebp)
	jmp	L17
L18:
	movl	-12(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	addl	$1, -16(%ebp)
L17:
	movl	-16(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	L18
	movl	$10, (%esp)
	call	_putchar
	addl	$1, -12(%ebp)
L16:
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	L19
	movl	$LC2, (%esp)
	call	_puts
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
	.globl	_plantingBombs
	.def	_plantingBombs;	.scl	2;	.type	32;	.endef
_plantingBombs:
LFB18:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$8, (%esp)
	call	_malloc
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
	jmp	L21
L22:
	leal	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_get_rand_loc_on_grid
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-16(%ebp), %edx
	addl	$4, %edx
	movl	(%edx), %edx
	addl	%edx, %eax
	movb	$48, (%eax)
	addl	$1, -12(%ebp)
L21:
	movl	-12(%ebp), %eax
	cmpl	16(%ebp), %eax
	jl	L22
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.globl	_execute_bombing
	.def	_execute_bombing;	.scl	2;	.type	32;	.endef
_execute_bombing:
LFB19:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	$0, -4(%ebp)
	jmp	L24
L31:
	movl	$0, -8(%ebp)
	jmp	L25
L30:
	movl	-4(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$48, %al
	jne	L26
	movl	-4(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movb	$46, (%eax)
	movl	-4(%ebp), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jge	L27
	movl	-4(%ebp), %eax
	addl	$1, %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movb	$46, (%eax)
L27:
	movl	-4(%ebp), %eax
	subl	$1, %eax
	testl	%eax, %eax
	js	L28
	movl	-4(%ebp), %eax
	addl	$1073741823, %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movb	$46, (%eax)
L28:
	movl	-8(%ebp), %eax
	subl	$1, %eax
	testl	%eax, %eax
	js	L29
	movl	-4(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-8(%ebp), %edx
	subl	$1, %edx
	addl	%edx, %eax
	movb	$46, (%eax)
L29:
	movl	-8(%ebp), %eax
	leal	1(%eax), %edx
	movl	12(%ebp), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jge	L26
	movl	-4(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	-8(%ebp), %edx
	addl	$1, %edx
	addl	%edx, %eax
	movb	$46, (%eax)
L26:
	addl	$1, -8(%ebp)
L25:
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	L30
	addl	$1, -4(%ebp)
L24:
	movl	-4(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	L31
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE19:
	.section .rdata,"dr"
	.align 4
LC3:
	.ascii "xy_coord couldnt allocate memory! \0"
LC4:
	.ascii "Coordinates are X:%d Y:%d \12\12\0"
	.text
	.globl	_get_rand_loc_on_grid
	.def	_get_rand_loc_on_grid;	.scl	2;	.type	32;	.endef
_get_rand_loc_on_grid:
LFB20:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	movl	$8, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L33
	movl	$LC3, (%esp)
	call	_puts
	movl	$1, (%esp)
	call	_exit
L33:
	call	_rand
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
	leal	4(%eax), %ebx
	call	_rand
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %ecx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%edx, %eax
	movl	%eax, (%ebx)
	movl	-12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	_printf
	movl	-12(%ebp), %eax
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE20:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_time;	.scl	2;	.type	32;	.endef
	.def	_srand;	.scl	2;	.type	32;	.endef
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_rand;	.scl	2;	.type	32;	.endef

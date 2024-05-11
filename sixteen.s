	.file	"sixteen.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$544, %esp
	call	___main
	movl	$16, 540(%esp)
	movl	540(%esp), %eax
	movl	%eax, 8(%esp)
	leal	28(%esp), %eax
	movl	%eax, 4(%esp)
	leal	284(%esp), %eax
	movl	%eax, (%esp)
	call	_fill_grids
	movl	540(%esp), %eax
	movl	%eax, 4(%esp)
	leal	284(%esp), %eax
	movl	%eax, (%esp)
	call	_print_grid
	movl	540(%esp), %eax
	movl	%eax, 4(%esp)
	leal	28(%esp), %eax
	movl	%eax, (%esp)
	call	_print_grid
	movl	540(%esp), %eax
	movl	%eax, 4(%esp)
	leal	284(%esp), %eax
	movl	%eax, (%esp)
	call	_plant_initial
	movl	540(%esp), %eax
	movl	%eax, 4(%esp)
	leal	28(%esp), %eax
	movl	%eax, (%esp)
	call	_plant_post
	movl	540(%esp), %eax
	movl	%eax, 4(%esp)
	leal	284(%esp), %eax
	movl	%eax, (%esp)
	call	_print_grid
	movl	540(%esp), %eax
	movl	%eax, 4(%esp)
	leal	28(%esp), %eax
	movl	%eax, (%esp)
	call	_print_grid
	movl	540(%esp), %eax
	movl	%eax, 8(%esp)
	leal	28(%esp), %eax
	movl	%eax, 4(%esp)
	leal	284(%esp), %eax
	movl	%eax, (%esp)
	call	_execute_order_66
	movl	540(%esp), %eax
	movl	%eax, 4(%esp)
	leal	284(%esp), %eax
	movl	%eax, (%esp)
	call	_print_grid
	movl	540(%esp), %eax
	movl	%eax, 4(%esp)
	leal	28(%esp), %eax
	movl	%eax, (%esp)
	call	_print_grid
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.globl	_plant_initial
	.def	_plant_initial;	.scl	2;	.type	32;	.endef
_plant_initial:
LFB11:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	addl	$48, %eax
	movb	$48, 5(%eax)
	movl	8(%ebp), %eax
	addl	$64, %eax
	movb	$48, 5(%eax)
	movl	8(%ebp), %eax
	addl	$80, %eax
	movb	$48, 5(%eax)
	movl	8(%ebp), %eax
	addl	$112, %eax
	movb	$48, 2(%eax)
	movl	8(%ebp), %eax
	subl	$-128, %eax
	movb	$48, 1(%eax)
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE11:
	.globl	_fill_grids
	.def	_fill_grids;	.scl	2;	.type	32;	.endef
_fill_grids:
LFB12:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	$0, -4(%ebp)
	jmp	L5
L8:
	movl	$0, -8(%ebp)
	jmp	L6
L7:
	movl	-4(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movb	$46, (%eax)
	movl	-4(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movb	$46, (%eax)
	addl	$1, -8(%ebp)
L6:
	movl	-8(%ebp), %eax
	cmpl	16(%ebp), %eax
	jl	L7
	addl	$1, -4(%ebp)
L5:
	movl	-4(%ebp), %eax
	cmpl	16(%ebp), %eax
	jl	L8
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE12:
	.globl	_plant_post
	.def	_plant_post;	.scl	2;	.type	32;	.endef
_plant_post:
LFB13:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	$0, -4(%ebp)
	jmp	L10
L14:
	movl	$0, -8(%ebp)
	jmp	L11
L13:
	movl	-4(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	jne	L12
	movl	-4(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movb	$48, (%eax)
L12:
	addl	$1, -8(%ebp)
L11:
	movl	-8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	L13
	addl	$1, -4(%ebp)
L10:
	movl	-4(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	L14
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.section .rdata,"dr"
LC0:
	.ascii "%c \0"
LC1:
	.ascii "\12\12\0"
	.text
	.globl	_print_grid
	.def	_print_grid;	.scl	2;	.type	32;	.endef
_print_grid:
LFB14:
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
	sall	$4, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
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
	movl	$LC1, (%esp)
	call	_puts
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
	.globl	_execute_order_66
	.def	_execute_order_66;	.scl	2;	.type	32;	.endef
_execute_order_66:
LFB15:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	$0, -4(%ebp)
	jmp	L21
L28:
	movl	$0, -8(%ebp)
	jmp	L22
L27:
	movl	-4(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$48, %al
	jne	L23
	movl	-4(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movb	$46, (%eax)
	movl	-4(%ebp), %eax
	leal	1(%eax), %edx
	movl	16(%ebp), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jge	L24
	movl	-4(%ebp), %eax
	addl	$1, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movb	$46, (%eax)
L24:
	movl	-4(%ebp), %eax
	subl	$1, %eax
	testl	%eax, %eax
	js	L25
	movl	-4(%ebp), %eax
	addl	$268435455, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	movb	$46, (%eax)
L25:
	movl	-8(%ebp), %eax
	subl	$1, %eax
	testl	%eax, %eax
	js	L26
	movl	-4(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	subl	$1, %eax
	movb	$46, (%edx,%eax)
L26:
	movl	-8(%ebp), %eax
	leal	1(%eax), %edx
	movl	16(%ebp), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jge	L23
	movl	-4(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	-8(%ebp), %eax
	addl	$1, %eax
	movb	$46, (%edx,%eax)
L23:
	addl	$1, -8(%ebp)
L22:
	movl	-8(%ebp), %eax
	cmpl	16(%ebp), %eax
	jl	L27
	addl	$1, -4(%ebp)
L21:
	movl	-4(%ebp), %eax
	cmpl	16(%ebp), %eax
	jl	L28
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef

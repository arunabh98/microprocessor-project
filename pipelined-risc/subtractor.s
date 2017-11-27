	.file	"subtractor.vhd"
	.section	.rodata
	.type	_UI00000000, @object
	.size	_UI00000000, 15
_UI00000000:
	.byte	115
	.byte	117
	.byte	98
	.byte	116
	.byte	114
	.byte	97
	.byte	99
	.byte	116
	.byte	111
	.byte	114
	.byte	46
	.byte	118
	.byte	104
	.byte	100
	.byte	0
	.type	work__subtractor__di__RTISTR, @object
	.size	work__subtractor__di__RTISTR, 3
work__subtractor__di__RTISTR:
	.byte	100
	.byte	105
	.byte	0
.globl work__subtractor__di__RTI
	.align 4
	.type	work__subtractor__di__RTI, @object
	.size	work__subtractor__di__RTI, 16
work__subtractor__di__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__subtractor__di__RTISTR
	.long	8
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__subtractor__xi__RTISTR, @object
	.size	work__subtractor__xi__RTISTR, 3
work__subtractor__xi__RTISTR:
	.byte	120
	.byte	105
	.byte	0
.globl work__subtractor__xi__RTI
	.align 4
	.type	work__subtractor__xi__RTI, @object
	.size	work__subtractor__xi__RTI, 16
work__subtractor__xi__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__subtractor__xi__RTISTR
	.long	12
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__subtractor__yi__RTISTR, @object
	.size	work__subtractor__yi__RTISTR, 3
work__subtractor__yi__RTISTR:
	.byte	121
	.byte	105
	.byte	0
.globl work__subtractor__yi__RTI
	.align 4
	.type	work__subtractor__yi__RTI, @object
	.size	work__subtractor__yi__RTI, 16
work__subtractor__yi__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__subtractor__yi__RTISTR
	.long	16
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__subtractor__do__RTISTR, @object
	.size	work__subtractor__do__RTISTR, 3
work__subtractor__do__RTISTR:
	.byte	100
	.byte	111
	.byte	0
.globl work__subtractor__do__RTI
	.align 4
	.type	work__subtractor__do__RTI, @object
	.size	work__subtractor__do__RTI, 16
work__subtractor__do__RTI:
	.byte	16
	.byte	1
	.byte	3
	.byte	0
	.long	work__subtractor__do__RTISTR
	.long	20
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__subtractor__so__RTISTR, @object
	.size	work__subtractor__so__RTISTR, 3
work__subtractor__so__RTISTR:
	.byte	115
	.byte	111
	.byte	0
.globl work__subtractor__so__RTI
	.align 4
	.type	work__subtractor__so__RTI, @object
	.size	work__subtractor__so__RTI, 16
work__subtractor__so__RTI:
	.byte	16
	.byte	1
	.byte	3
	.byte	0
	.long	work__subtractor__so__RTISTR
	.long	24
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__subtractor__RTISTR, @object
	.size	work__subtractor__RTISTR, 11
work__subtractor__RTISTR:
	.byte	115
	.byte	117
	.byte	98
	.byte	116
	.byte	114
	.byte	97
	.byte	99
	.byte	116
	.byte	111
	.byte	114
	.byte	0
	.align 4
	.type	work__subtractor__RTIARRAY, @object
	.size	work__subtractor__RTIARRAY, 24
work__subtractor__RTIARRAY:
	.long	work__subtractor__di__RTI
	.long	work__subtractor__xi__RTI
	.long	work__subtractor__yi__RTI
	.long	work__subtractor__do__RTI
	.long	work__subtractor__so__RTI
	.long	0
.globl work__subtractor__RTI
	.align 4
	.type	work__subtractor__RTI, @object
	.size	work__subtractor__RTI, 28
work__subtractor__RTI:
	.byte	4
	.byte	1
	.byte	0
	.byte	0
	.long	work__subtractor__RTISTR
	.long	0
	.long	work__RTI
	.long	28
	.long	5
	.long	work__subtractor__RTIARRAY
	.text
.globl work__subtractor__ELAB
	.type	work__subtractor__ELAB, @function
work__subtractor__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movzbl	ieee__std_logic_1164__ELABORATED, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L2
	call	ieee__std_logic_1164__ELAB_BODY
.L2:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$work__subtractor__di__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$work__subtractor__xi__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	$work__subtractor__yi__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	movl	$0, %eax
	movl	-8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_signal_init_e8
	movl	-8(%ebp), %eax
	movl	$work__subtractor__do__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	$0, %eax
	movl	-4(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_signal_init_e8
	movl	-4(%ebp), %eax
	movl	$work__subtractor__so__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	leave
	ret
	.size	work__subtractor__ELAB, .-work__subtractor__ELAB
.globl work__subtractor__ARCH__form__INSTSIZE
	.section	.rodata
	.align 4
	.type	work__subtractor__ARCH__form__INSTSIZE, @object
	.size	work__subtractor__ARCH__form__INSTSIZE, 4
work__subtractor__ARCH__form__INSTSIZE:
	.long	36
	.type	work__subtractor__ARCH__form__xor_i__RTISTR, @object
	.size	work__subtractor__ARCH__form__xor_i__RTISTR, 6
work__subtractor__ARCH__form__xor_i__RTISTR:
	.byte	120
	.byte	111
	.byte	114
	.byte	95
	.byte	105
	.byte	0
.globl work__subtractor__ARCH__form__xor_i__RTI
	.align 4
	.type	work__subtractor__ARCH__form__xor_i__RTI, @object
	.size	work__subtractor__ARCH__form__xor_i__RTI, 16
work__subtractor__ARCH__form__xor_i__RTI:
	.byte	14
	.byte	1
	.byte	0
	.byte	0
	.long	work__subtractor__ARCH__form__xor_i__RTISTR
	.long	28
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__subtractor__ARCH__form__P0__RTISTR, @object
	.size	work__subtractor__ARCH__form__P0__RTISTR, 3
work__subtractor__ARCH__form__P0__RTISTR:
	.byte	80
	.byte	48
	.byte	0
	.align 4
	.type	work__subtractor__ARCH__form__P0__RTIARRAY, @object
	.size	work__subtractor__ARCH__form__P0__RTIARRAY, 4
work__subtractor__ARCH__form__P0__RTIARRAY:
	.zero	4
.globl work__subtractor__ARCH__form__P0__RTI
	.align 4
	.type	work__subtractor__ARCH__form__P0__RTI, @object
	.size	work__subtractor__ARCH__form__P0__RTI, 28
work__subtractor__ARCH__form__P0__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.long	work__subtractor__ARCH__form__P0__RTISTR
	.long	32
	.long	work__subtractor__ARCH__form__RTI
	.long	1
	.long	0
	.long	work__subtractor__ARCH__form__P0__RTIARRAY
	.type	work__subtractor__ARCH__form__P1__RTISTR, @object
	.size	work__subtractor__ARCH__form__P1__RTISTR, 3
work__subtractor__ARCH__form__P1__RTISTR:
	.byte	80
	.byte	49
	.byte	0
	.align 4
	.type	work__subtractor__ARCH__form__P1__RTIARRAY, @object
	.size	work__subtractor__ARCH__form__P1__RTIARRAY, 4
work__subtractor__ARCH__form__P1__RTIARRAY:
	.zero	4
.globl work__subtractor__ARCH__form__P1__RTI
	.align 4
	.type	work__subtractor__ARCH__form__P1__RTI, @object
	.size	work__subtractor__ARCH__form__P1__RTI, 28
work__subtractor__ARCH__form__P1__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.long	work__subtractor__ARCH__form__P1__RTISTR
	.long	33
	.long	work__subtractor__ARCH__form__RTI
	.long	1
	.long	0
	.long	work__subtractor__ARCH__form__P1__RTIARRAY
	.type	work__subtractor__ARCH__form__P2__RTISTR, @object
	.size	work__subtractor__ARCH__form__P2__RTISTR, 3
work__subtractor__ARCH__form__P2__RTISTR:
	.byte	80
	.byte	50
	.byte	0
	.align 4
	.type	work__subtractor__ARCH__form__P2__RTIARRAY, @object
	.size	work__subtractor__ARCH__form__P2__RTIARRAY, 4
work__subtractor__ARCH__form__P2__RTIARRAY:
	.zero	4
.globl work__subtractor__ARCH__form__P2__RTI
	.align 4
	.type	work__subtractor__ARCH__form__P2__RTI, @object
	.size	work__subtractor__ARCH__form__P2__RTI, 28
work__subtractor__ARCH__form__P2__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.long	work__subtractor__ARCH__form__P2__RTISTR
	.long	34
	.long	work__subtractor__ARCH__form__RTI
	.long	1
	.long	0
	.long	work__subtractor__ARCH__form__P2__RTIARRAY
	.type	work__subtractor__ARCH__form__RTISTR, @object
	.size	work__subtractor__ARCH__form__RTISTR, 5
work__subtractor__ARCH__form__RTISTR:
	.byte	102
	.byte	111
	.byte	114
	.byte	109
	.byte	0
	.align 4
	.type	work__subtractor__ARCH__form__RTIARRAY, @object
	.size	work__subtractor__ARCH__form__RTIARRAY, 20
work__subtractor__ARCH__form__RTIARRAY:
	.long	work__subtractor__ARCH__form__xor_i__RTI
	.long	work__subtractor__ARCH__form__P0__RTI
	.long	work__subtractor__ARCH__form__P1__RTI
	.long	work__subtractor__ARCH__form__P2__RTI
	.long	0
.globl work__subtractor__ARCH__form__RTI
	.align 4
	.type	work__subtractor__ARCH__form__RTI, @object
	.size	work__subtractor__ARCH__form__RTI, 28
work__subtractor__ARCH__form__RTI:
	.byte	5
	.byte	1
	.byte	0
	.byte	0
	.long	work__subtractor__ARCH__form__RTISTR
	.long	0
	.long	work__subtractor__RTI
	.long	36
	.long	4
	.long	work__subtractor__ARCH__form__RTIARRAY
	.text
	.type	work__subtractor__ARCH__form__P0__PROC, @function
work__subtractor__ARCH__form__P0__PROC:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$32, %eax
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	(%eax), %eax
	movb	%dl, 4(%esp)
	movb	%al, (%esp)
	call	ieee__std_logic_1164__xorO1
	movl	%eax, %edx
	movl	-4(%ebp), %eax
	movb	%dl, (%eax)
	movl	-12(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L5
	movb	$1, -5(%ebp)
	jmp	.L6
.L5:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -5(%ebp)
.L6:
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-5(%ebp), %al
	testb	%al, %al
	je	.L8
	movl	-12(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L8:
	leave
	ret
	.size	work__subtractor__ARCH__form__P0__PROC, .-work__subtractor__ARCH__form__P0__PROC
	.type	work__subtractor__ARCH__form__P1__PROC, @function
work__subtractor__ARCH__form__P1__PROC:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$33, %eax
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movzbl	(%eax), %eax
	movb	%dl, 4(%esp)
	movb	%al, (%esp)
	call	ieee__std_logic_1164__xorO1
	movl	%eax, %edx
	movl	-4(%ebp), %eax
	movb	%dl, (%eax)
	movl	-12(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L10
	movb	$1, -5(%ebp)
	jmp	.L11
.L10:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -5(%ebp)
.L11:
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-5(%ebp), %al
	testb	%al, %al
	je	.L13
	movl	-12(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L13:
	leave
	ret
	.size	work__subtractor__ARCH__form__P1__PROC, .-work__subtractor__ARCH__form__P1__PROC
	.type	work__subtractor__ARCH__form__P2__PROC, @function
work__subtractor__ARCH__form__P2__PROC:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$32, %esp
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	addl	$34, %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, (%esp)
	call	ieee__std_logic_1164__notO1
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	(%eax), %eax
	movb	%dl, 4(%esp)
	movb	%al, (%esp)
	call	ieee__std_logic_1164__andO1
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	(%eax), %ebx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	(%eax), %eax
	movb	%al, (%esp)
	call	ieee__std_logic_1164__notO1
	movb	%bl, 4(%esp)
	movb	%al, (%esp)
	call	ieee__std_logic_1164__andO1
	movl	%esi, %edx
	movb	%dl, 4(%esp)
	movb	%al, (%esp)
	call	ieee__std_logic_1164__orO1
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movb	%dl, (%eax)
	movl	-20(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L15
	movb	$1, -13(%ebp)
	jmp	.L16
.L15:
	movl	-20(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -13(%ebp)
.L16:
	movl	-20(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-13(%ebp), %al
	testb	%al, %al
	je	.L18
	movl	-20(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-20(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L18:
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.size	work__subtractor__ARCH__form__P2__PROC, .-work__subtractor__ARCH__form__P2__PROC
.globl work__subtractor__ARCH__form__ELAB
	.type	work__subtractor__ARCH__form__ELAB, @function
work__subtractor__ARCH__form__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movl	$work__subtractor__ARCH__form__RTI, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	work__subtractor__ELAB
	movl	-4(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$work__subtractor__ARCH__form__RTI, 4(%esp)
	movl	$work__subtractor__ARCH__form__xor_i__RTI, (%esp)
	call	__ghdl_signal_name_rti
	movl	$ieee__std_logic_1164__resolved_RESOLV, %eax
	movl	$0, %edx
	movl	$0, 8(%esp)
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_create_signal_e8
	movl	%eax, %edx
	movl	-4(%ebp), %eax
	movl	%edx, 28(%eax)
	movl	-4(%ebp), %eax
	addl	$32, %eax
	movl	$work__subtractor__ARCH__form__P0__PROC, %edx
	movl	-4(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	$work__subtractor__ARCH__form__P0__RTI, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ghdl_sensitized_process_register
	movl	-4(%ebp), %eax
	leal	32(%eax), %edx
	movl	-4(%ebp), %eax
	movl	28(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	movl	-4(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	movl	-4(%ebp), %eax
	addl	$33, %eax
	movl	$work__subtractor__ARCH__form__P1__PROC, %edx
	movl	-4(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	$work__subtractor__ARCH__form__P1__RTI, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ghdl_sensitized_process_register
	movl	-4(%ebp), %eax
	leal	33(%eax), %edx
	movl	-4(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	movl	-4(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	movl	-4(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	movl	-4(%ebp), %eax
	addl	$34, %eax
	movl	$work__subtractor__ARCH__form__P2__PROC, %edx
	movl	-4(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	$work__subtractor__ARCH__form__P2__RTI, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ghdl_sensitized_process_register
	movl	-4(%ebp), %eax
	leal	34(%eax), %edx
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	movl	-4(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	movl	-4(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	movl	-4(%ebp), %eax
	movl	28(%eax), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	leave
	ret
	.size	work__subtractor__ARCH__form__ELAB, .-work__subtractor__ARCH__form__ELAB
	.ident	"GCC: (GNU) 4.3.4"
	.section	.note.GNU-stack,"",@progbits

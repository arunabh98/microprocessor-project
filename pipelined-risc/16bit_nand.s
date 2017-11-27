	.file	"16bit_nand.vhd"
	.section	.rodata
	.type	_UI00000000, @object
	.size	_UI00000000, 15
_UI00000000:
	.byte	49
	.byte	54
	.byte	98
	.byte	105
	.byte	116
	.byte	95
	.byte	110
	.byte	97
	.byte	110
	.byte	100
	.byte	46
	.byte	118
	.byte	104
	.byte	100
	.byte	0
.globl work__sixteenbitnand__x__OT__STB
	.align 4
	.type	work__sixteenbitnand__x__OT__STB, @object
	.size	work__sixteenbitnand__x__OT__STB, 16
work__sixteenbitnand__x__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
.globl work__sixteenbitnand__z__OT__STB
	.align 4
	.type	work__sixteenbitnand__z__OT__STB, @object
	.size	work__sixteenbitnand__z__OT__STB, 16
work__sixteenbitnand__z__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
.globl work__sixteenbitnand__x__OT__RTI
	.align 4
	.type	work__sixteenbitnand__x__OT__RTI, @object
	.size	work__sixteenbitnand__x__OT__RTI, 24
work__sixteenbitnand__x__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__sixteenbitnand__x__OT__STB
	.long	16
	.long	64
	.type	work__sixteenbitnand__x__RTISTR, @object
	.size	work__sixteenbitnand__x__RTISTR, 2
work__sixteenbitnand__x__RTISTR:
	.byte	120
	.byte	0
.globl work__sixteenbitnand__x__RTI
	.align 4
	.type	work__sixteenbitnand__x__RTI, @object
	.size	work__sixteenbitnand__x__RTI, 16
work__sixteenbitnand__x__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__sixteenbitnand__x__RTISTR
	.long	8
	.long	work__sixteenbitnand__x__OT__RTI
	.type	work__sixteenbitnand__y__RTISTR, @object
	.size	work__sixteenbitnand__y__RTISTR, 2
work__sixteenbitnand__y__RTISTR:
	.byte	121
	.byte	0
.globl work__sixteenbitnand__y__RTI
	.align 4
	.type	work__sixteenbitnand__y__RTI, @object
	.size	work__sixteenbitnand__y__RTI, 16
work__sixteenbitnand__y__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__sixteenbitnand__y__RTISTR
	.long	72
	.long	work__sixteenbitnand__x__OT__RTI
.globl work__sixteenbitnand__z__OT__RTI
	.align 4
	.type	work__sixteenbitnand__z__OT__RTI, @object
	.size	work__sixteenbitnand__z__OT__RTI, 24
work__sixteenbitnand__z__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__sixteenbitnand__z__OT__STB
	.long	16
	.long	64
	.type	work__sixteenbitnand__z__RTISTR, @object
	.size	work__sixteenbitnand__z__RTISTR, 2
work__sixteenbitnand__z__RTISTR:
	.byte	122
	.byte	0
.globl work__sixteenbitnand__z__RTI
	.align 4
	.type	work__sixteenbitnand__z__RTI, @object
	.size	work__sixteenbitnand__z__RTI, 16
work__sixteenbitnand__z__RTI:
	.byte	16
	.byte	1
	.byte	3
	.byte	0
	.long	work__sixteenbitnand__z__RTISTR
	.long	136
	.long	work__sixteenbitnand__z__OT__RTI
	.type	work__sixteenbitnand__RTISTR, @object
	.size	work__sixteenbitnand__RTISTR, 15
work__sixteenbitnand__RTISTR:
	.byte	115
	.byte	105
	.byte	120
	.byte	116
	.byte	101
	.byte	101
	.byte	110
	.byte	98
	.byte	105
	.byte	116
	.byte	110
	.byte	97
	.byte	110
	.byte	100
	.byte	0
	.align 4
	.type	work__sixteenbitnand__RTIARRAY, @object
	.size	work__sixteenbitnand__RTIARRAY, 16
work__sixteenbitnand__RTIARRAY:
	.long	work__sixteenbitnand__x__RTI
	.long	work__sixteenbitnand__y__RTI
	.long	work__sixteenbitnand__z__RTI
	.long	0
.globl work__sixteenbitnand__RTI
	.align 4
	.type	work__sixteenbitnand__RTI, @object
	.size	work__sixteenbitnand__RTI, 28
work__sixteenbitnand__RTI:
	.byte	4
	.byte	1
	.byte	0
	.byte	0
	.long	work__sixteenbitnand__RTISTR
	.long	0
	.long	work__RTI
	.long	200
	.long	3
	.long	work__sixteenbitnand__RTIARRAY
	.text
.globl work__sixteenbitnand__ELAB
	.type	work__sixteenbitnand__ELAB, @function
work__sixteenbitnand__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movzbl	ieee__std_logic_1164__ELABORATED, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L2
	call	ieee__std_logic_1164__ELAB_BODY
.L2:
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
.L4:
	cmpl	$16, -24(%ebp)
	jae	.L3
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	$work__sixteenbitnand__x__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	addl	$1, -24(%ebp)
	jmp	.L4
.L3:
	movl	8(%ebp), %eax
	addl	$72, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
.L6:
	cmpl	$16, -16(%ebp)
	jae	.L5
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	$work__sixteenbitnand__y__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	addl	$1, -16(%ebp)
	jmp	.L6
.L5:
	movl	8(%ebp), %eax
	addl	$136, %eax
	movl	%eax, -12(%ebp)
	movl	$0, -8(%ebp)
.L8:
	cmpl	$16, -8(%ebp)
	jae	.L9
	movl	-8(%ebp), %edx
	movl	-12(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -4(%ebp)
	movl	$0, %eax
	movl	-4(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_signal_init_e8
	movl	-4(%ebp), %eax
	movl	$work__sixteenbitnand__z__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	addl	$1, -8(%ebp)
	jmp	.L8
.L9:
	leave
	ret
	.size	work__sixteenbitnand__ELAB, .-work__sixteenbitnand__ELAB
.globl work__sixteenbitnand__ARCH__comp_nand__INSTSIZE
	.section	.rodata
	.align 4
	.type	work__sixteenbitnand__ARCH__comp_nand__INSTSIZE, @object
	.size	work__sixteenbitnand__ARCH__comp_nand__INSTSIZE, 4
work__sixteenbitnand__ARCH__comp_nand__INSTSIZE:
	.long	216
	.type	work__sixteenbitnand__ARCH__comp_nand__P0__RTISTR, @object
	.size	work__sixteenbitnand__ARCH__comp_nand__P0__RTISTR, 3
work__sixteenbitnand__ARCH__comp_nand__P0__RTISTR:
	.byte	80
	.byte	48
	.byte	0
	.align 4
	.type	work__sixteenbitnand__ARCH__comp_nand__P0__RTIARRAY, @object
	.size	work__sixteenbitnand__ARCH__comp_nand__P0__RTIARRAY, 4
work__sixteenbitnand__ARCH__comp_nand__P0__RTIARRAY:
	.zero	4
.globl work__sixteenbitnand__ARCH__comp_nand__P0__RTI
	.align 4
	.type	work__sixteenbitnand__ARCH__comp_nand__P0__RTI, @object
	.size	work__sixteenbitnand__ARCH__comp_nand__P0__RTI, 28
work__sixteenbitnand__ARCH__comp_nand__P0__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.long	work__sixteenbitnand__ARCH__comp_nand__P0__RTISTR
	.long	200
	.long	work__sixteenbitnand__ARCH__comp_nand__RTI
	.long	16
	.long	0
	.long	work__sixteenbitnand__ARCH__comp_nand__P0__RTIARRAY
	.type	work__sixteenbitnand__ARCH__comp_nand__RTISTR, @object
	.size	work__sixteenbitnand__ARCH__comp_nand__RTISTR, 10
work__sixteenbitnand__ARCH__comp_nand__RTISTR:
	.byte	99
	.byte	111
	.byte	109
	.byte	112
	.byte	95
	.byte	110
	.byte	97
	.byte	110
	.byte	100
	.byte	0
	.align 4
	.type	work__sixteenbitnand__ARCH__comp_nand__RTIARRAY, @object
	.size	work__sixteenbitnand__ARCH__comp_nand__RTIARRAY, 8
work__sixteenbitnand__ARCH__comp_nand__RTIARRAY:
	.long	work__sixteenbitnand__ARCH__comp_nand__P0__RTI
	.long	0
.globl work__sixteenbitnand__ARCH__comp_nand__RTI
	.align 4
	.type	work__sixteenbitnand__ARCH__comp_nand__RTI, @object
	.size	work__sixteenbitnand__ARCH__comp_nand__RTI, 28
work__sixteenbitnand__ARCH__comp_nand__RTI:
	.byte	5
	.byte	1
	.byte	0
	.byte	0
	.long	work__sixteenbitnand__ARCH__comp_nand__RTISTR
	.long	0
	.long	work__sixteenbitnand__RTI
	.long	216
	.long	1
	.long	work__sixteenbitnand__ARCH__comp_nand__RTIARRAY
	.text
	.type	work__sixteenbitnand__ARCH__comp_nand__P0__PROC, @function
work__sixteenbitnand__ARCH__comp_nand__P0__PROC:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$136, %esp
	call	__ghdl_stack2_mark
	movl	%eax, -44(%ebp)
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -36(%ebp)
	movl	$0, -32(%ebp)
.L12:
	cmpl	$16, -32(%ebp)
	jae	.L11
	movl	-32(%ebp), %ecx
	movl	-32(%ebp), %edx
	movl	-36(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -76(%ebp,%ecx)
	addl	$1, -32(%ebp)
	jmp	.L12
.L11:
	leal	-76(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	$work__sixteenbitnand__x__OT__STB, -80(%ebp)
	movl	8(%ebp), %eax
	addl	$72, %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
.L14:
	cmpl	$16, -24(%ebp)
	jae	.L13
	movl	-24(%ebp), %ecx
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -100(%ebp,%ecx)
	addl	$1, -24(%ebp)
	jmp	.L14
.L13:
	leal	-100(%ebp), %eax
	movl	%eax, -108(%ebp)
	movl	$work__sixteenbitnand__x__OT__STB, -104(%ebp)
	leal	-108(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-84(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	ieee__std_logic_1164__andO2
	leal	-60(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	ieee__std_logic_1164__notO2
	leal	-52(%ebp), %eax
	movl	%eax, -40(%ebp)
.L17:
	movl	-40(%ebp), %eax
	movl	4(%eax), %eax
	movl	12(%eax), %eax
	cmpl	$16, %eax
	jne	.L15
	movl	8(%ebp), %eax
	addl	$136, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	.L16
.L15:
	movl	$_UI00000000, %eax
	movl	$12, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_bound_check_failed_l1
	jmp	.L17
.L16:
	cmpl	$16, -16(%ebp)
	jae	.L18
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$200, %eax
	addl	-16(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-40(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-4(%ebp), %eax
	movb	%dl, (%eax)
	movl	-12(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L19
	movb	$1, -5(%ebp)
	jmp	.L20
.L19:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -5(%ebp)
.L20:
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-5(%ebp), %al
	testb	%al, %al
	je	.L21
	movl	-12(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L21:
	addl	$1, -16(%ebp)
	jmp	.L16
.L18:
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	__ghdl_stack2_release
	leave
	ret
	.size	work__sixteenbitnand__ARCH__comp_nand__P0__PROC, .-work__sixteenbitnand__ARCH__comp_nand__P0__PROC
.globl work__sixteenbitnand__ARCH__comp_nand__ELAB
	.type	work__sixteenbitnand__ARCH__comp_nand__ELAB, @function
work__sixteenbitnand__ARCH__comp_nand__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	$work__sixteenbitnand__ARCH__comp_nand__RTI, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	work__sixteenbitnand__ELAB
	movl	-28(%ebp), %eax
	addl	$200, %eax
	movl	$work__sixteenbitnand__ARCH__comp_nand__P0__PROC, %edx
	movl	-28(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	$work__sixteenbitnand__ARCH__comp_nand__P0__RTI, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ghdl_sensitized_process_register
	movl	-28(%ebp), %eax
	addl	$136, %eax
	movl	%eax, -24(%ebp)
	movl	$0, -20(%ebp)
.L25:
	cmpl	$16, -20(%ebp)
	jae	.L24
	movl	-28(%ebp), %eax
	addl	$200, %eax
	movl	%eax, %ecx
	addl	-20(%ebp), %ecx
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	addl	$1, -20(%ebp)
	jmp	.L25
.L24:
	movl	-28(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
.L27:
	cmpl	$16, -12(%ebp)
	jae	.L26
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	addl	$1, -12(%ebp)
	jmp	.L27
.L26:
	movl	-28(%ebp), %eax
	addl	$72, %eax
	movl	%eax, -8(%ebp)
	movl	$0, -4(%ebp)
.L29:
	cmpl	$16, -4(%ebp)
	jae	.L30
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	addl	$1, -4(%ebp)
	jmp	.L29
.L30:
	leave
	ret
	.size	work__sixteenbitnand__ARCH__comp_nand__ELAB, .-work__sixteenbitnand__ARCH__comp_nand__ELAB
	.ident	"GCC: (GNU) 4.3.4"
	.section	.note.GNU-stack,"",@progbits

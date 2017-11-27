	.file	"se10.vhd"
	.section	.rodata
	.type	_UI00000000, @object
	.size	_UI00000000, 9
_UI00000000:
	.byte	115
	.byte	101
	.byte	49
	.byte	48
	.byte	46
	.byte	118
	.byte	104
	.byte	100
	.byte	0
.globl work__se10__se_in__OT__STB
	.align 4
	.type	work__se10__se_in__OT__STB, @object
	.size	work__se10__se_in__OT__STB, 16
work__se10__se_in__OT__STB:
	.long	5
	.long	0
	.byte	1
	.zero	3
	.long	6
.globl work__se10__se_out__OT__STB
	.align 4
	.type	work__se10__se_out__OT__STB, @object
	.size	work__se10__se_out__OT__STB, 16
work__se10__se_out__OT__STB:
	.long	15
	.long	0
	.byte	1
	.zero	3
	.long	16
.globl work__se10__se_in__OT__RTI
	.align 4
	.type	work__se10__se_in__OT__RTI, @object
	.size	work__se10__se_in__OT__RTI, 24
work__se10__se_in__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__se10__se_in__OT__STB
	.long	6
	.long	24
	.type	work__se10__se_in__RTISTR, @object
	.size	work__se10__se_in__RTISTR, 6
work__se10__se_in__RTISTR:
	.byte	115
	.byte	101
	.byte	95
	.byte	105
	.byte	110
	.byte	0
.globl work__se10__se_in__RTI
	.align 4
	.type	work__se10__se_in__RTI, @object
	.size	work__se10__se_in__RTI, 16
work__se10__se_in__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__se10__se_in__RTISTR
	.long	8
	.long	work__se10__se_in__OT__RTI
.globl work__se10__se_out__OT__RTI
	.align 4
	.type	work__se10__se_out__OT__RTI, @object
	.size	work__se10__se_out__OT__RTI, 24
work__se10__se_out__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__se10__se_out__OT__STB
	.long	16
	.long	64
	.type	work__se10__se_out__RTISTR, @object
	.size	work__se10__se_out__RTISTR, 7
work__se10__se_out__RTISTR:
	.byte	115
	.byte	101
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__se10__se_out__RTI
	.align 4
	.type	work__se10__se_out__RTI, @object
	.size	work__se10__se_out__RTI, 16
work__se10__se_out__RTI:
	.byte	16
	.byte	1
	.byte	3
	.byte	0
	.long	work__se10__se_out__RTISTR
	.long	32
	.long	work__se10__se_out__OT__RTI
	.type	work__se10__RTISTR, @object
	.size	work__se10__RTISTR, 5
work__se10__RTISTR:
	.byte	115
	.byte	101
	.byte	49
	.byte	48
	.byte	0
	.align 4
	.type	work__se10__RTIARRAY, @object
	.size	work__se10__RTIARRAY, 12
work__se10__RTIARRAY:
	.long	work__se10__se_in__RTI
	.long	work__se10__se_out__RTI
	.long	0
.globl work__se10__RTI
	.align 4
	.type	work__se10__RTI, @object
	.size	work__se10__RTI, 28
work__se10__RTI:
	.byte	4
	.byte	1
	.byte	0
	.byte	0
	.long	work__se10__RTISTR
	.long	0
	.long	work__RTI
	.long	96
	.long	2
	.long	work__se10__RTIARRAY
	.text
.globl work__se10__ELAB
	.type	work__se10__ELAB, @function
work__se10__ELAB:
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
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
.L4:
	cmpl	$6, -16(%ebp)
	jae	.L3
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	$work__se10__se_in__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	addl	$1, -16(%ebp)
	jmp	.L4
.L3:
	movl	8(%ebp), %eax
	addl	$32, %eax
	movl	%eax, -12(%ebp)
	movl	$0, -8(%ebp)
.L6:
	cmpl	$16, -8(%ebp)
	jae	.L7
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
	movl	$work__se10__se_out__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	addl	$1, -8(%ebp)
	jmp	.L6
.L7:
	leave
	ret
	.size	work__se10__ELAB, .-work__se10__ELAB
.globl work__se10__ARCH__behave_se10__INSTSIZE
	.section	.rodata
	.align 4
	.type	work__se10__ARCH__behave_se10__INSTSIZE, @object
	.size	work__se10__ARCH__behave_se10__INSTSIZE, 4
work__se10__ARCH__behave_se10__INSTSIZE:
	.long	272
	.type	work__se10__ARCH__behave_se10__P0__RTISTR, @object
	.size	work__se10__ARCH__behave_se10__P0__RTISTR, 3
work__se10__ARCH__behave_se10__P0__RTISTR:
	.byte	80
	.byte	48
	.byte	0
	.align 4
	.type	work__se10__ARCH__behave_se10__P0__RTIARRAY, @object
	.size	work__se10__ARCH__behave_se10__P0__RTIARRAY, 4
work__se10__ARCH__behave_se10__P0__RTIARRAY:
	.zero	4
.globl work__se10__ARCH__behave_se10__P0__RTI
	.align 4
	.type	work__se10__ARCH__behave_se10__P0__RTI, @object
	.size	work__se10__ARCH__behave_se10__P0__RTI, 28
work__se10__ARCH__behave_se10__P0__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.long	work__se10__ARCH__behave_se10__P0__RTISTR
	.long	96
	.long	work__se10__ARCH__behave_se10__RTI
	.long	16
	.long	0
	.long	work__se10__ARCH__behave_se10__P0__RTIARRAY
	.type	work__se10__ARCH__behave_se10__P1__RTISTR, @object
	.size	work__se10__ARCH__behave_se10__P1__RTISTR, 3
work__se10__ARCH__behave_se10__P1__RTISTR:
	.byte	80
	.byte	49
	.byte	0
	.align 4
	.type	work__se10__ARCH__behave_se10__P1__RTIARRAY, @object
	.size	work__se10__ARCH__behave_se10__P1__RTIARRAY, 4
work__se10__ARCH__behave_se10__P1__RTIARRAY:
	.zero	4
.globl work__se10__ARCH__behave_se10__P1__RTI
	.align 4
	.type	work__se10__ARCH__behave_se10__P1__RTI, @object
	.size	work__se10__ARCH__behave_se10__P1__RTI, 28
work__se10__ARCH__behave_se10__P1__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.long	work__se10__ARCH__behave_se10__P1__RTISTR
	.long	112
	.long	work__se10__ARCH__behave_se10__RTI
	.long	16
	.long	0
	.long	work__se10__ARCH__behave_se10__P1__RTIARRAY
	.type	work__se10__ARCH__behave_se10__P2__RTISTR, @object
	.size	work__se10__ARCH__behave_se10__P2__RTISTR, 3
work__se10__ARCH__behave_se10__P2__RTISTR:
	.byte	80
	.byte	50
	.byte	0
	.align 4
	.type	work__se10__ARCH__behave_se10__P2__RTIARRAY, @object
	.size	work__se10__ARCH__behave_se10__P2__RTIARRAY, 4
work__se10__ARCH__behave_se10__P2__RTIARRAY:
	.zero	4
.globl work__se10__ARCH__behave_se10__P2__RTI
	.align 4
	.type	work__se10__ARCH__behave_se10__P2__RTI, @object
	.size	work__se10__ARCH__behave_se10__P2__RTI, 28
work__se10__ARCH__behave_se10__P2__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.long	work__se10__ARCH__behave_se10__P2__RTISTR
	.long	128
	.long	work__se10__ARCH__behave_se10__RTI
	.long	16
	.long	0
	.long	work__se10__ARCH__behave_se10__P2__RTIARRAY
	.type	work__se10__ARCH__behave_se10__P3__RTISTR, @object
	.size	work__se10__ARCH__behave_se10__P3__RTISTR, 3
work__se10__ARCH__behave_se10__P3__RTISTR:
	.byte	80
	.byte	51
	.byte	0
	.align 4
	.type	work__se10__ARCH__behave_se10__P3__RTIARRAY, @object
	.size	work__se10__ARCH__behave_se10__P3__RTIARRAY, 4
work__se10__ARCH__behave_se10__P3__RTIARRAY:
	.zero	4
.globl work__se10__ARCH__behave_se10__P3__RTI
	.align 4
	.type	work__se10__ARCH__behave_se10__P3__RTI, @object
	.size	work__se10__ARCH__behave_se10__P3__RTI, 28
work__se10__ARCH__behave_se10__P3__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.long	work__se10__ARCH__behave_se10__P3__RTISTR
	.long	144
	.long	work__se10__ARCH__behave_se10__RTI
	.long	16
	.long	0
	.long	work__se10__ARCH__behave_se10__P3__RTIARRAY
	.type	work__se10__ARCH__behave_se10__P4__RTISTR, @object
	.size	work__se10__ARCH__behave_se10__P4__RTISTR, 3
work__se10__ARCH__behave_se10__P4__RTISTR:
	.byte	80
	.byte	52
	.byte	0
	.align 4
	.type	work__se10__ARCH__behave_se10__P4__RTIARRAY, @object
	.size	work__se10__ARCH__behave_se10__P4__RTIARRAY, 4
work__se10__ARCH__behave_se10__P4__RTIARRAY:
	.zero	4
.globl work__se10__ARCH__behave_se10__P4__RTI
	.align 4
	.type	work__se10__ARCH__behave_se10__P4__RTI, @object
	.size	work__se10__ARCH__behave_se10__P4__RTI, 28
work__se10__ARCH__behave_se10__P4__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.long	work__se10__ARCH__behave_se10__P4__RTISTR
	.long	160
	.long	work__se10__ARCH__behave_se10__RTI
	.long	16
	.long	0
	.long	work__se10__ARCH__behave_se10__P4__RTIARRAY
	.type	work__se10__ARCH__behave_se10__P5__RTISTR, @object
	.size	work__se10__ARCH__behave_se10__P5__RTISTR, 3
work__se10__ARCH__behave_se10__P5__RTISTR:
	.byte	80
	.byte	53
	.byte	0
	.align 4
	.type	work__se10__ARCH__behave_se10__P5__RTIARRAY, @object
	.size	work__se10__ARCH__behave_se10__P5__RTIARRAY, 4
work__se10__ARCH__behave_se10__P5__RTIARRAY:
	.zero	4
.globl work__se10__ARCH__behave_se10__P5__RTI
	.align 4
	.type	work__se10__ARCH__behave_se10__P5__RTI, @object
	.size	work__se10__ARCH__behave_se10__P5__RTI, 28
work__se10__ARCH__behave_se10__P5__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.long	work__se10__ARCH__behave_se10__P5__RTISTR
	.long	176
	.long	work__se10__ARCH__behave_se10__RTI
	.long	16
	.long	0
	.long	work__se10__ARCH__behave_se10__P5__RTIARRAY
	.type	work__se10__ARCH__behave_se10__P6__RTISTR, @object
	.size	work__se10__ARCH__behave_se10__P6__RTISTR, 3
work__se10__ARCH__behave_se10__P6__RTISTR:
	.byte	80
	.byte	54
	.byte	0
	.align 4
	.type	work__se10__ARCH__behave_se10__P6__RTIARRAY, @object
	.size	work__se10__ARCH__behave_se10__P6__RTIARRAY, 4
work__se10__ARCH__behave_se10__P6__RTIARRAY:
	.zero	4
.globl work__se10__ARCH__behave_se10__P6__RTI
	.align 4
	.type	work__se10__ARCH__behave_se10__P6__RTI, @object
	.size	work__se10__ARCH__behave_se10__P6__RTI, 28
work__se10__ARCH__behave_se10__P6__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.long	work__se10__ARCH__behave_se10__P6__RTISTR
	.long	192
	.long	work__se10__ARCH__behave_se10__RTI
	.long	16
	.long	0
	.long	work__se10__ARCH__behave_se10__P6__RTIARRAY
	.type	work__se10__ARCH__behave_se10__P7__RTISTR, @object
	.size	work__se10__ARCH__behave_se10__P7__RTISTR, 3
work__se10__ARCH__behave_se10__P7__RTISTR:
	.byte	80
	.byte	55
	.byte	0
	.align 4
	.type	work__se10__ARCH__behave_se10__P7__RTIARRAY, @object
	.size	work__se10__ARCH__behave_se10__P7__RTIARRAY, 4
work__se10__ARCH__behave_se10__P7__RTIARRAY:
	.zero	4
.globl work__se10__ARCH__behave_se10__P7__RTI
	.align 4
	.type	work__se10__ARCH__behave_se10__P7__RTI, @object
	.size	work__se10__ARCH__behave_se10__P7__RTI, 28
work__se10__ARCH__behave_se10__P7__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.long	work__se10__ARCH__behave_se10__P7__RTISTR
	.long	208
	.long	work__se10__ARCH__behave_se10__RTI
	.long	16
	.long	0
	.long	work__se10__ARCH__behave_se10__P7__RTIARRAY
	.type	work__se10__ARCH__behave_se10__P8__RTISTR, @object
	.size	work__se10__ARCH__behave_se10__P8__RTISTR, 3
work__se10__ARCH__behave_se10__P8__RTISTR:
	.byte	80
	.byte	56
	.byte	0
	.align 4
	.type	work__se10__ARCH__behave_se10__P8__RTIARRAY, @object
	.size	work__se10__ARCH__behave_se10__P8__RTIARRAY, 4
work__se10__ARCH__behave_se10__P8__RTIARRAY:
	.zero	4
.globl work__se10__ARCH__behave_se10__P8__RTI
	.align 4
	.type	work__se10__ARCH__behave_se10__P8__RTI, @object
	.size	work__se10__ARCH__behave_se10__P8__RTI, 28
work__se10__ARCH__behave_se10__P8__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.long	work__se10__ARCH__behave_se10__P8__RTISTR
	.long	224
	.long	work__se10__ARCH__behave_se10__RTI
	.long	16
	.long	0
	.long	work__se10__ARCH__behave_se10__P8__RTIARRAY
	.type	work__se10__ARCH__behave_se10__P9__RTISTR, @object
	.size	work__se10__ARCH__behave_se10__P9__RTISTR, 3
work__se10__ARCH__behave_se10__P9__RTISTR:
	.byte	80
	.byte	57
	.byte	0
	.align 4
	.type	work__se10__ARCH__behave_se10__P9__RTIARRAY, @object
	.size	work__se10__ARCH__behave_se10__P9__RTIARRAY, 4
work__se10__ARCH__behave_se10__P9__RTIARRAY:
	.zero	4
.globl work__se10__ARCH__behave_se10__P9__RTI
	.align 4
	.type	work__se10__ARCH__behave_se10__P9__RTI, @object
	.size	work__se10__ARCH__behave_se10__P9__RTI, 28
work__se10__ARCH__behave_se10__P9__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.long	work__se10__ARCH__behave_se10__P9__RTISTR
	.long	240
	.long	work__se10__ARCH__behave_se10__RTI
	.long	16
	.long	0
	.long	work__se10__ARCH__behave_se10__P9__RTIARRAY
	.type	work__se10__ARCH__behave_se10__P10__RTISTR, @object
	.size	work__se10__ARCH__behave_se10__P10__RTISTR, 4
work__se10__ARCH__behave_se10__P10__RTISTR:
	.byte	80
	.byte	49
	.byte	48
	.byte	0
	.align 4
	.type	work__se10__ARCH__behave_se10__P10__RTIARRAY, @object
	.size	work__se10__ARCH__behave_se10__P10__RTIARRAY, 4
work__se10__ARCH__behave_se10__P10__RTIARRAY:
	.zero	4
.globl work__se10__ARCH__behave_se10__P10__RTI
	.align 4
	.type	work__se10__ARCH__behave_se10__P10__RTI, @object
	.size	work__se10__ARCH__behave_se10__P10__RTI, 28
work__se10__ARCH__behave_se10__P10__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.long	work__se10__ARCH__behave_se10__P10__RTISTR
	.long	256
	.long	work__se10__ARCH__behave_se10__RTI
	.long	16
	.long	0
	.long	work__se10__ARCH__behave_se10__P10__RTIARRAY
	.type	work__se10__ARCH__behave_se10__RTISTR, @object
	.size	work__se10__ARCH__behave_se10__RTISTR, 12
work__se10__ARCH__behave_se10__RTISTR:
	.byte	98
	.byte	101
	.byte	104
	.byte	97
	.byte	118
	.byte	101
	.byte	95
	.byte	115
	.byte	101
	.byte	49
	.byte	48
	.byte	0
	.align 32
	.type	work__se10__ARCH__behave_se10__RTIARRAY, @object
	.size	work__se10__ARCH__behave_se10__RTIARRAY, 48
work__se10__ARCH__behave_se10__RTIARRAY:
	.long	work__se10__ARCH__behave_se10__P0__RTI
	.long	work__se10__ARCH__behave_se10__P1__RTI
	.long	work__se10__ARCH__behave_se10__P2__RTI
	.long	work__se10__ARCH__behave_se10__P3__RTI
	.long	work__se10__ARCH__behave_se10__P4__RTI
	.long	work__se10__ARCH__behave_se10__P5__RTI
	.long	work__se10__ARCH__behave_se10__P6__RTI
	.long	work__se10__ARCH__behave_se10__P7__RTI
	.long	work__se10__ARCH__behave_se10__P8__RTI
	.long	work__se10__ARCH__behave_se10__P9__RTI
	.long	work__se10__ARCH__behave_se10__P10__RTI
	.long	0
.globl work__se10__ARCH__behave_se10__RTI
	.align 4
	.type	work__se10__ARCH__behave_se10__RTI, @object
	.size	work__se10__ARCH__behave_se10__RTI, 28
work__se10__ARCH__behave_se10__RTI:
	.byte	5
	.byte	1
	.byte	0
	.byte	0
	.long	work__se10__ARCH__behave_se10__RTISTR
	.long	0
	.long	work__se10__RTI
	.long	272
	.long	11
	.long	work__se10__ARCH__behave_se10__RTIARRAY
	.align 4
	.type	work__se10__ARCH__behave_se10__P0__U0__STB.1416, @object
	.size	work__se10__ARCH__behave_se10__P0__U0__STB.1416, 16
work__se10__ARCH__behave_se10__P0__U0__STB.1416:
	.long	5
	.long	0
	.byte	1
	.zero	3
	.long	6
	.align 4
	.type	work__se10__ARCH__behave_se10__P0__U1__STB.1419, @object
	.size	work__se10__ARCH__behave_se10__P0__U1__STB.1419, 16
work__se10__ARCH__behave_se10__P0__U1__STB.1419:
	.long	5
	.long	0
	.byte	1
	.zero	3
	.long	6
	.text
	.type	work__se10__ARCH__behave_se10__P0__PROC, @function
work__se10__ARCH__behave_se10__P0__PROC:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$48, %esp
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -28(%ebp)
	movl	$0, -24(%ebp)
.L10:
	cmpl	$6, -24(%ebp)
	jae	.L9
	movl	-24(%ebp), %ecx
	movl	-24(%ebp), %edx
	movl	-28(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -34(%ebp,%ecx)
	addl	$1, -24(%ebp)
	jmp	.L10
.L9:
	movl	8(%ebp), %eax
	addl	$32, %eax
	addl	$40, %eax
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
.L15:
	cmpl	$6, -16(%ebp)
	jae	.L16
	movl	-16(%ebp), %edx
	movl	-20(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	leal	96(%eax), %edx
	movl	-16(%ebp), %eax
	addl	$10, %eax
	leal	(%edx,%eax), %eax
	movl	%eax, -4(%ebp)
	leal	-34(%ebp), %edx
	movl	-16(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-4(%ebp), %eax
	movb	%dl, (%eax)
	movl	-12(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L12
	movb	$1, -5(%ebp)
	jmp	.L13
.L12:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -5(%ebp)
.L13:
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-5(%ebp), %al
	testb	%al, %al
	je	.L14
	movl	-12(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L14:
	addl	$1, -16(%ebp)
	jmp	.L15
.L16:
	leave
	ret
	.size	work__se10__ARCH__behave_se10__P0__PROC, .-work__se10__ARCH__behave_se10__P0__PROC
	.type	work__se10__ARCH__behave_se10__P1__PROC, @function
work__se10__ARCH__behave_se10__P1__PROC:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$8, %eax
	movl	(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$112, %eax
	addl	-20(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movb	%dl, (%eax)
	movl	-12(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L18
	movb	$1, -5(%ebp)
	jmp	.L19
.L18:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -5(%ebp)
.L19:
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
	leave
	ret
	.size	work__se10__ARCH__behave_se10__P1__PROC, .-work__se10__ARCH__behave_se10__P1__PROC
	.type	work__se10__ARCH__behave_se10__P2__PROC, @function
work__se10__ARCH__behave_se10__P2__PROC:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	movl	$1, -20(%ebp)
	movl	$0, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$8, %eax
	movl	(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	subl	$-128, %eax
	addl	-20(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movb	%dl, (%eax)
	movl	-12(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L23
	movb	$1, -5(%ebp)
	jmp	.L24
.L23:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -5(%ebp)
.L24:
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-5(%ebp), %al
	testb	%al, %al
	je	.L26
	movl	-12(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L26:
	leave
	ret
	.size	work__se10__ARCH__behave_se10__P2__PROC, .-work__se10__ARCH__behave_se10__P2__PROC
	.type	work__se10__ARCH__behave_se10__P3__PROC, @function
work__se10__ARCH__behave_se10__P3__PROC:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	movl	$2, -20(%ebp)
	movl	$0, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$8, %eax
	movl	(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$144, %eax
	addl	-20(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movb	%dl, (%eax)
	movl	-12(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L28
	movb	$1, -5(%ebp)
	jmp	.L29
.L28:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -5(%ebp)
.L29:
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-5(%ebp), %al
	testb	%al, %al
	je	.L31
	movl	-12(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L31:
	leave
	ret
	.size	work__se10__ARCH__behave_se10__P3__PROC, .-work__se10__ARCH__behave_se10__P3__PROC
	.type	work__se10__ARCH__behave_se10__P4__PROC, @function
work__se10__ARCH__behave_se10__P4__PROC:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	movl	$3, -20(%ebp)
	movl	$0, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$8, %eax
	movl	(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$160, %eax
	addl	-20(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movb	%dl, (%eax)
	movl	-12(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L33
	movb	$1, -5(%ebp)
	jmp	.L34
.L33:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -5(%ebp)
.L34:
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-5(%ebp), %al
	testb	%al, %al
	je	.L36
	movl	-12(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L36:
	leave
	ret
	.size	work__se10__ARCH__behave_se10__P4__PROC, .-work__se10__ARCH__behave_se10__P4__PROC
	.type	work__se10__ARCH__behave_se10__P5__PROC, @function
work__se10__ARCH__behave_se10__P5__PROC:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	movl	$4, -20(%ebp)
	movl	$0, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$8, %eax
	movl	(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$176, %eax
	addl	-20(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movb	%dl, (%eax)
	movl	-12(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L38
	movb	$1, -5(%ebp)
	jmp	.L39
.L38:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -5(%ebp)
.L39:
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-5(%ebp), %al
	testb	%al, %al
	je	.L41
	movl	-12(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L41:
	leave
	ret
	.size	work__se10__ARCH__behave_se10__P5__PROC, .-work__se10__ARCH__behave_se10__P5__PROC
	.type	work__se10__ARCH__behave_se10__P6__PROC, @function
work__se10__ARCH__behave_se10__P6__PROC:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	movl	$5, -20(%ebp)
	movl	$0, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$8, %eax
	movl	(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$192, %eax
	addl	-20(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movb	%dl, (%eax)
	movl	-12(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L43
	movb	$1, -5(%ebp)
	jmp	.L44
.L43:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -5(%ebp)
.L44:
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-5(%ebp), %al
	testb	%al, %al
	je	.L46
	movl	-12(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L46:
	leave
	ret
	.size	work__se10__ARCH__behave_se10__P6__PROC, .-work__se10__ARCH__behave_se10__P6__PROC
	.type	work__se10__ARCH__behave_se10__P7__PROC, @function
work__se10__ARCH__behave_se10__P7__PROC:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	movl	$6, -20(%ebp)
	movl	$0, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$8, %eax
	movl	(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$208, %eax
	addl	-20(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movb	%dl, (%eax)
	movl	-12(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L48
	movb	$1, -5(%ebp)
	jmp	.L49
.L48:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -5(%ebp)
.L49:
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-5(%ebp), %al
	testb	%al, %al
	je	.L51
	movl	-12(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L51:
	leave
	ret
	.size	work__se10__ARCH__behave_se10__P7__PROC, .-work__se10__ARCH__behave_se10__P7__PROC
	.type	work__se10__ARCH__behave_se10__P8__PROC, @function
work__se10__ARCH__behave_se10__P8__PROC:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	movl	$7, -20(%ebp)
	movl	$0, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$8, %eax
	movl	(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$224, %eax
	addl	-20(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movb	%dl, (%eax)
	movl	-12(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L53
	movb	$1, -5(%ebp)
	jmp	.L54
.L53:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -5(%ebp)
.L54:
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-5(%ebp), %al
	testb	%al, %al
	je	.L56
	movl	-12(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L56:
	leave
	ret
	.size	work__se10__ARCH__behave_se10__P8__PROC, .-work__se10__ARCH__behave_se10__P8__PROC
	.type	work__se10__ARCH__behave_se10__P9__PROC, @function
work__se10__ARCH__behave_se10__P9__PROC:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	movl	$8, -20(%ebp)
	movl	$0, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$8, %eax
	movl	(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$240, %eax
	addl	-20(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movb	%dl, (%eax)
	movl	-12(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L58
	movb	$1, -5(%ebp)
	jmp	.L59
.L58:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -5(%ebp)
.L59:
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-5(%ebp), %al
	testb	%al, %al
	je	.L61
	movl	-12(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L61:
	leave
	ret
	.size	work__se10__ARCH__behave_se10__P9__PROC, .-work__se10__ARCH__behave_se10__P9__PROC
	.type	work__se10__ARCH__behave_se10__P10__PROC, @function
work__se10__ARCH__behave_se10__P10__PROC:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	movl	$9, -20(%ebp)
	movl	$0, -16(%ebp)
	movl	-20(%ebp), %eax
	movl	8(%ebp), %edx
	addl	$8, %eax
	movl	(%edx,%eax,4), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$256, %eax
	addl	-20(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movb	%dl, (%eax)
	movl	-12(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L63
	movb	$1, -5(%ebp)
	jmp	.L64
.L63:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -5(%ebp)
.L64:
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-5(%ebp), %al
	testb	%al, %al
	je	.L66
	movl	-12(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L66:
	leave
	ret
	.size	work__se10__ARCH__behave_se10__P10__PROC, .-work__se10__ARCH__behave_se10__P10__PROC
	.section	.rodata
	.align 4
	.type	work__se10__ARCH__behave_se10__U0__STB.1756, @object
	.size	work__se10__ARCH__behave_se10__U0__STB.1756, 16
work__se10__ARCH__behave_se10__U0__STB.1756:
	.long	5
	.long	0
	.byte	1
	.zero	3
	.long	6
	.align 4
	.type	work__se10__ARCH__behave_se10__U1__STB.1763, @object
	.size	work__se10__ARCH__behave_se10__U1__STB.1763, 16
work__se10__ARCH__behave_se10__U1__STB.1763:
	.long	5
	.long	0
	.byte	1
	.zero	3
	.long	6
	.text
.globl work__se10__ARCH__behave_se10__ELAB
	.type	work__se10__ARCH__behave_se10__ELAB, @function
work__se10__ARCH__behave_se10__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$136, %esp
	movl	8(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	8(%ebp), %eax
	movl	$work__se10__ARCH__behave_se10__RTI, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	work__se10__ELAB
	movl	-100(%ebp), %eax
	addl	$96, %eax
	movl	$work__se10__ARCH__behave_se10__P0__PROC, %edx
	movl	-100(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	$work__se10__ARCH__behave_se10__P0__RTI, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ghdl_sensitized_process_register
	movl	-100(%ebp), %eax
	addl	$32, %eax
	addl	$40, %eax
	movl	%eax, -96(%ebp)
	movl	$0, -92(%ebp)
.L69:
	cmpl	$6, -92(%ebp)
	jae	.L68
	movl	-100(%ebp), %eax
	leal	96(%eax), %edx
	movl	-92(%ebp), %eax
	addl	$10, %eax
	leal	(%edx,%eax), %ecx
	movl	-92(%ebp), %edx
	movl	-96(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	addl	$1, -92(%ebp)
	jmp	.L69
.L68:
	movl	-100(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -88(%ebp)
	movl	$0, -84(%ebp)
.L71:
	cmpl	$6, -84(%ebp)
	jae	.L70
	movl	-84(%ebp), %edx
	movl	-88(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	addl	$1, -84(%ebp)
	jmp	.L71
.L70:
	movl	-100(%ebp), %eax
	addl	$112, %eax
	movl	$work__se10__ARCH__behave_se10__P1__PROC, %edx
	movl	-100(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	$work__se10__ARCH__behave_se10__P1__RTI, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ghdl_sensitized_process_register
	movl	$0, -80(%ebp)
	movl	-100(%ebp), %eax
	addl	$112, %eax
	movl	%eax, %ecx
	addl	-80(%ebp), %ecx
	movl	-80(%ebp), %eax
	movl	-100(%ebp), %edx
	addl	$8, %eax
	movl	(%edx,%eax,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	movl	$0, -76(%ebp)
	movl	-76(%ebp), %edx
	movl	-100(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	movl	-100(%ebp), %eax
	subl	$-128, %eax
	movl	$work__se10__ARCH__behave_se10__P2__PROC, %edx
	movl	-100(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	$work__se10__ARCH__behave_se10__P2__RTI, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ghdl_sensitized_process_register
	movl	$1, -72(%ebp)
	movl	-100(%ebp), %eax
	subl	$-128, %eax
	movl	%eax, %ecx
	addl	-72(%ebp), %ecx
	movl	-72(%ebp), %eax
	movl	-100(%ebp), %edx
	addl	$8, %eax
	movl	(%edx,%eax,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	movl	$0, -68(%ebp)
	movl	-68(%ebp), %edx
	movl	-100(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	movl	-100(%ebp), %eax
	addl	$144, %eax
	movl	$work__se10__ARCH__behave_se10__P3__PROC, %edx
	movl	-100(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	$work__se10__ARCH__behave_se10__P3__RTI, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ghdl_sensitized_process_register
	movl	$2, -64(%ebp)
	movl	-100(%ebp), %eax
	addl	$144, %eax
	movl	%eax, %ecx
	addl	-64(%ebp), %ecx
	movl	-64(%ebp), %eax
	movl	-100(%ebp), %edx
	addl	$8, %eax
	movl	(%edx,%eax,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	movl	$0, -60(%ebp)
	movl	-60(%ebp), %edx
	movl	-100(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	movl	-100(%ebp), %eax
	addl	$160, %eax
	movl	$work__se10__ARCH__behave_se10__P4__PROC, %edx
	movl	-100(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	$work__se10__ARCH__behave_se10__P4__RTI, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ghdl_sensitized_process_register
	movl	$3, -56(%ebp)
	movl	-100(%ebp), %eax
	addl	$160, %eax
	movl	%eax, %ecx
	addl	-56(%ebp), %ecx
	movl	-56(%ebp), %eax
	movl	-100(%ebp), %edx
	addl	$8, %eax
	movl	(%edx,%eax,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	movl	$0, -52(%ebp)
	movl	-52(%ebp), %edx
	movl	-100(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	movl	-100(%ebp), %eax
	addl	$176, %eax
	movl	$work__se10__ARCH__behave_se10__P5__PROC, %edx
	movl	-100(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	$work__se10__ARCH__behave_se10__P5__RTI, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ghdl_sensitized_process_register
	movl	$4, -48(%ebp)
	movl	-100(%ebp), %eax
	addl	$176, %eax
	movl	%eax, %ecx
	addl	-48(%ebp), %ecx
	movl	-48(%ebp), %eax
	movl	-100(%ebp), %edx
	addl	$8, %eax
	movl	(%edx,%eax,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	movl	$0, -44(%ebp)
	movl	-44(%ebp), %edx
	movl	-100(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	movl	-100(%ebp), %eax
	addl	$192, %eax
	movl	$work__se10__ARCH__behave_se10__P6__PROC, %edx
	movl	-100(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	$work__se10__ARCH__behave_se10__P6__RTI, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ghdl_sensitized_process_register
	movl	$5, -40(%ebp)
	movl	-100(%ebp), %eax
	addl	$192, %eax
	movl	%eax, %ecx
	addl	-40(%ebp), %ecx
	movl	-40(%ebp), %eax
	movl	-100(%ebp), %edx
	addl	$8, %eax
	movl	(%edx,%eax,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	movl	$0, -36(%ebp)
	movl	-36(%ebp), %edx
	movl	-100(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	movl	-100(%ebp), %eax
	addl	$208, %eax
	movl	$work__se10__ARCH__behave_se10__P7__PROC, %edx
	movl	-100(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	$work__se10__ARCH__behave_se10__P7__RTI, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ghdl_sensitized_process_register
	movl	$6, -32(%ebp)
	movl	-100(%ebp), %eax
	addl	$208, %eax
	movl	%eax, %ecx
	addl	-32(%ebp), %ecx
	movl	-32(%ebp), %eax
	movl	-100(%ebp), %edx
	addl	$8, %eax
	movl	(%edx,%eax,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	movl	$0, -28(%ebp)
	movl	-28(%ebp), %edx
	movl	-100(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	movl	-100(%ebp), %eax
	addl	$224, %eax
	movl	$work__se10__ARCH__behave_se10__P8__PROC, %edx
	movl	-100(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	$work__se10__ARCH__behave_se10__P8__RTI, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ghdl_sensitized_process_register
	movl	$7, -24(%ebp)
	movl	-100(%ebp), %eax
	addl	$224, %eax
	movl	%eax, %ecx
	addl	-24(%ebp), %ecx
	movl	-24(%ebp), %eax
	movl	-100(%ebp), %edx
	addl	$8, %eax
	movl	(%edx,%eax,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	movl	$0, -20(%ebp)
	movl	-20(%ebp), %edx
	movl	-100(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	movl	-100(%ebp), %eax
	addl	$240, %eax
	movl	$work__se10__ARCH__behave_se10__P9__PROC, %edx
	movl	-100(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	$work__se10__ARCH__behave_se10__P9__RTI, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ghdl_sensitized_process_register
	movl	$8, -16(%ebp)
	movl	-100(%ebp), %eax
	addl	$240, %eax
	movl	%eax, %ecx
	addl	-16(%ebp), %ecx
	movl	-16(%ebp), %eax
	movl	-100(%ebp), %edx
	addl	$8, %eax
	movl	(%edx,%eax,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	movl	$0, -12(%ebp)
	movl	-12(%ebp), %edx
	movl	-100(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	movl	-100(%ebp), %eax
	addl	$256, %eax
	movl	$work__se10__ARCH__behave_se10__P10__PROC, %edx
	movl	-100(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	$work__se10__ARCH__behave_se10__P10__RTI, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ghdl_sensitized_process_register
	movl	$9, -8(%ebp)
	movl	-100(%ebp), %eax
	addl	$256, %eax
	movl	%eax, %ecx
	addl	-8(%ebp), %ecx
	movl	-8(%ebp), %eax
	movl	-100(%ebp), %edx
	addl	$8, %eax
	movl	(%edx,%eax,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	movl	$0, -4(%ebp)
	movl	-4(%ebp), %edx
	movl	-100(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	leave
	ret
	.size	work__se10__ARCH__behave_se10__ELAB, .-work__se10__ARCH__behave_se10__ELAB
	.ident	"GCC: (GNU) 4.3.4"
	.section	.note.GNU-stack,"",@progbits

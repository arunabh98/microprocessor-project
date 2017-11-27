	.file	"priority_encoder.vhd"
	.section	.rodata
	.type	_UI00000000, @object
	.size	_UI00000000, 21
_UI00000000:
	.byte	112
	.byte	114
	.byte	105
	.byte	111
	.byte	114
	.byte	105
	.byte	116
	.byte	121
	.byte	95
	.byte	101
	.byte	110
	.byte	99
	.byte	111
	.byte	100
	.byte	101
	.byte	114
	.byte	46
	.byte	118
	.byte	104
	.byte	100
	.byte	0
.globl work__pr_encoder__x_in__OT__STB
	.align 4
	.type	work__pr_encoder__x_in__OT__STB, @object
	.size	work__pr_encoder__x_in__OT__STB, 16
work__pr_encoder__x_in__OT__STB:
	.long	7
	.long	0
	.byte	1
	.zero	3
	.long	8
.globl work__pr_encoder__x_out__OT__STB
	.align 4
	.type	work__pr_encoder__x_out__OT__STB, @object
	.size	work__pr_encoder__x_out__OT__STB, 16
work__pr_encoder__x_out__OT__STB:
	.long	2
	.long	0
	.byte	1
	.zero	3
	.long	3
.globl work__pr_encoder__x_in__OT__RTI
	.align 4
	.type	work__pr_encoder__x_in__OT__RTI, @object
	.size	work__pr_encoder__x_in__OT__RTI, 24
work__pr_encoder__x_in__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__pr_encoder__x_in__OT__STB
	.long	8
	.long	32
	.type	work__pr_encoder__x_in__RTISTR, @object
	.size	work__pr_encoder__x_in__RTISTR, 5
work__pr_encoder__x_in__RTISTR:
	.byte	120
	.byte	95
	.byte	105
	.byte	110
	.byte	0
.globl work__pr_encoder__x_in__RTI
	.align 4
	.type	work__pr_encoder__x_in__RTI, @object
	.size	work__pr_encoder__x_in__RTI, 16
work__pr_encoder__x_in__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__pr_encoder__x_in__RTISTR
	.long	8
	.long	work__pr_encoder__x_in__OT__RTI
.globl work__pr_encoder__x_out__OT__RTI
	.align 4
	.type	work__pr_encoder__x_out__OT__RTI, @object
	.size	work__pr_encoder__x_out__OT__RTI, 24
work__pr_encoder__x_out__OT__RTI:
	.byte	35
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.long	ieee__std_logic_1164__std_logic_vector__RTI
	.long	work__pr_encoder__x_out__OT__STB
	.long	3
	.long	12
	.type	work__pr_encoder__x_out__RTISTR, @object
	.size	work__pr_encoder__x_out__RTISTR, 6
work__pr_encoder__x_out__RTISTR:
	.byte	120
	.byte	95
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__pr_encoder__x_out__RTI
	.align 4
	.type	work__pr_encoder__x_out__RTI, @object
	.size	work__pr_encoder__x_out__RTI, 16
work__pr_encoder__x_out__RTI:
	.byte	16
	.byte	1
	.byte	3
	.byte	0
	.long	work__pr_encoder__x_out__RTISTR
	.long	40
	.long	work__pr_encoder__x_out__OT__RTI
	.type	work__pr_encoder__x_none__RTISTR, @object
	.size	work__pr_encoder__x_none__RTISTR, 7
work__pr_encoder__x_none__RTISTR:
	.byte	120
	.byte	95
	.byte	110
	.byte	111
	.byte	110
	.byte	101
	.byte	0
.globl work__pr_encoder__x_none__RTI
	.align 4
	.type	work__pr_encoder__x_none__RTI, @object
	.size	work__pr_encoder__x_none__RTI, 16
work__pr_encoder__x_none__RTI:
	.byte	16
	.byte	1
	.byte	3
	.byte	0
	.long	work__pr_encoder__x_none__RTISTR
	.long	52
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__pr_encoder__RTISTR, @object
	.size	work__pr_encoder__RTISTR, 11
work__pr_encoder__RTISTR:
	.byte	112
	.byte	114
	.byte	95
	.byte	101
	.byte	110
	.byte	99
	.byte	111
	.byte	100
	.byte	101
	.byte	114
	.byte	0
	.align 4
	.type	work__pr_encoder__RTIARRAY, @object
	.size	work__pr_encoder__RTIARRAY, 16
work__pr_encoder__RTIARRAY:
	.long	work__pr_encoder__x_in__RTI
	.long	work__pr_encoder__x_out__RTI
	.long	work__pr_encoder__x_none__RTI
	.long	0
.globl work__pr_encoder__RTI
	.align 4
	.type	work__pr_encoder__RTI, @object
	.size	work__pr_encoder__RTI, 28
work__pr_encoder__RTI:
	.byte	4
	.byte	1
	.byte	0
	.byte	0
	.long	work__pr_encoder__RTISTR
	.long	0
	.long	work__RTI
	.long	56
	.long	3
	.long	work__pr_encoder__RTIARRAY
	.text
.globl work__pr_encoder__ELAB
	.type	work__pr_encoder__ELAB, @function
work__pr_encoder__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movzbl	ieee__std_logic_1164__ELABORATED, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L2
	call	ieee__std_logic_1164__ELAB_BODY
.L2:
	movzbl	ieee__numeric_std__ELABORATED, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L3
	call	ieee__numeric_std__ELAB_BODY
.L3:
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -24(%ebp)
	movl	$0, -20(%ebp)
.L5:
	cmpl	$8, -20(%ebp)
	jae	.L4
	movl	-20(%ebp), %edx
	movl	-24(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	$work__pr_encoder__x_in__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	addl	$1, -20(%ebp)
	jmp	.L5
.L4:
	movl	8(%ebp), %eax
	addl	$40, %eax
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
.L7:
	cmpl	$3, -12(%ebp)
	jae	.L6
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -8(%ebp)
	movl	$0, %eax
	movl	-8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_signal_init_e8
	movl	-8(%ebp), %eax
	movl	$work__pr_encoder__x_out__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	addl	$1, -12(%ebp)
	jmp	.L7
.L6:
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	$0, %eax
	movl	-4(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_signal_init_e8
	movl	-4(%ebp), %eax
	movl	$work__pr_encoder__x_none__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	leave
	ret
	.size	work__pr_encoder__ELAB, .-work__pr_encoder__ELAB
.globl work__pr_encoder__ARCH__enc_behave__INSTSIZE
	.section	.rodata
	.align 4
	.type	work__pr_encoder__ARCH__enc_behave__INSTSIZE, @object
	.size	work__pr_encoder__ARCH__enc_behave__INSTSIZE, 4
work__pr_encoder__ARCH__enc_behave__INSTSIZE:
	.long	60
	.type	work__pr_encoder__ARCH__enc_behave__P0__RTISTR, @object
	.size	work__pr_encoder__ARCH__enc_behave__P0__RTISTR, 3
work__pr_encoder__ARCH__enc_behave__P0__RTISTR:
	.byte	80
	.byte	48
	.byte	0
	.align 4
	.type	work__pr_encoder__ARCH__enc_behave__P0__RTIARRAY, @object
	.size	work__pr_encoder__ARCH__enc_behave__P0__RTIARRAY, 4
work__pr_encoder__ARCH__enc_behave__P0__RTIARRAY:
	.zero	4
.globl work__pr_encoder__ARCH__enc_behave__P0__RTI
	.align 4
	.type	work__pr_encoder__ARCH__enc_behave__P0__RTI, @object
	.size	work__pr_encoder__ARCH__enc_behave__P0__RTI, 28
work__pr_encoder__ARCH__enc_behave__P0__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.long	work__pr_encoder__ARCH__enc_behave__P0__RTISTR
	.long	56
	.long	work__pr_encoder__ARCH__enc_behave__RTI
	.long	4
	.long	0
	.long	work__pr_encoder__ARCH__enc_behave__P0__RTIARRAY
	.type	work__pr_encoder__ARCH__enc_behave__RTISTR, @object
	.size	work__pr_encoder__ARCH__enc_behave__RTISTR, 11
work__pr_encoder__ARCH__enc_behave__RTISTR:
	.byte	101
	.byte	110
	.byte	99
	.byte	95
	.byte	98
	.byte	101
	.byte	104
	.byte	97
	.byte	118
	.byte	101
	.byte	0
	.align 4
	.type	work__pr_encoder__ARCH__enc_behave__RTIARRAY, @object
	.size	work__pr_encoder__ARCH__enc_behave__RTIARRAY, 8
work__pr_encoder__ARCH__enc_behave__RTIARRAY:
	.long	work__pr_encoder__ARCH__enc_behave__P0__RTI
	.long	0
.globl work__pr_encoder__ARCH__enc_behave__RTI
	.align 4
	.type	work__pr_encoder__ARCH__enc_behave__RTI, @object
	.size	work__pr_encoder__ARCH__enc_behave__RTI, 28
work__pr_encoder__ARCH__enc_behave__RTI:
	.byte	5
	.byte	1
	.byte	0
	.byte	0
	.long	work__pr_encoder__ARCH__enc_behave__RTISTR
	.long	0
	.long	work__pr_encoder__RTI
	.long	60
	.long	1
	.long	work__pr_encoder__ARCH__enc_behave__RTIARRAY
	.type	_UI00000001.1971, @object
	.size	_UI00000001.1971, 3
_UI00000001.1971:
	.byte	3
	.byte	3
	.byte	3
	.type	_UI00000002.1980, @object
	.size	_UI00000002.1980, 3
_UI00000002.1980:
	.byte	3
	.byte	3
	.byte	2
	.type	_UI00000003.1989, @object
	.size	_UI00000003.1989, 3
_UI00000003.1989:
	.byte	3
	.byte	2
	.byte	3
	.type	_UI00000004.1998, @object
	.size	_UI00000004.1998, 3
_UI00000004.1998:
	.byte	3
	.byte	2
	.byte	2
	.type	_UI00000005.2007, @object
	.size	_UI00000005.2007, 3
_UI00000005.2007:
	.byte	2
	.byte	3
	.byte	3
	.type	_UI00000006.2016, @object
	.size	_UI00000006.2016, 3
_UI00000006.2016:
	.byte	2
	.byte	3
	.byte	2
	.type	_UI00000007.2025, @object
	.size	_UI00000007.2025, 3
_UI00000007.2025:
	.byte	2
	.byte	2
	.byte	3
	.type	_UI00000008.2034, @object
	.size	_UI00000008.2034, 3
_UI00000008.2034:
	.byte	2
	.byte	2
	.byte	2
	.type	_UI00000009.2049, @object
	.size	_UI00000009.2049, 8
_UI00000009.2049:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.align 4
	.type	work__pr_encoder__ARCH__enc_behave__P0__U2__STB.2050, @object
	.size	work__pr_encoder__ARCH__enc_behave__P0__U2__STB.2050, 16
work__pr_encoder__ARCH__enc_behave__P0__U2__STB.2050:
	.long	0
	.long	7
	.byte	0
	.zero	3
	.long	8
	.text
	.type	work__pr_encoder__ARCH__enc_behave__P0__PROC, @function
work__pr_encoder__ARCH__enc_behave__P0__PROC:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$264, %esp
	movl	$7, -224(%ebp)
	movl	-224(%ebp), %edx
	movl	8(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	cmpb	$3, %al
	jne	.L10
	movl	8(%ebp), %eax
	addl	$40, %eax
	movl	%eax, -220(%ebp)
	movl	$0, -216(%ebp)
.L15:
	cmpl	$3, -216(%ebp)
	jae	.L16
	movl	-216(%ebp), %edx
	movl	-220(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -212(%ebp)
	movl	8(%ebp), %eax
	addl	$56, %eax
	addl	-216(%ebp), %eax
	movl	%eax, -204(%ebp)
	movl	$_UI00000001.1971, %edx
	movl	-216(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-204(%ebp), %eax
	movb	%dl, (%eax)
	movl	-212(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L12
	movb	$1, -205(%ebp)
	jmp	.L13
.L12:
	movl	-212(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-204(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -205(%ebp)
.L13:
	movl	-212(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-205(%ebp), %al
	testb	%al, %al
	je	.L14
	movl	-212(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-212(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L14:
	addl	$1, -216(%ebp)
	jmp	.L15
.L10:
	movl	$6, -200(%ebp)
	movl	-200(%ebp), %edx
	movl	8(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	cmpb	$3, %al
	jne	.L17
	movl	8(%ebp), %eax
	addl	$40, %eax
	movl	%eax, -196(%ebp)
	movl	$0, -192(%ebp)
.L22:
	cmpl	$3, -192(%ebp)
	jae	.L16
	movl	-192(%ebp), %edx
	movl	-196(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -188(%ebp)
	movl	8(%ebp), %eax
	addl	$56, %eax
	addl	-192(%ebp), %eax
	movl	%eax, -180(%ebp)
	movl	$_UI00000002.1980, %edx
	movl	-192(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-180(%ebp), %eax
	movb	%dl, (%eax)
	movl	-188(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L19
	movb	$1, -181(%ebp)
	jmp	.L20
.L19:
	movl	-188(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-180(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -181(%ebp)
.L20:
	movl	-188(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-181(%ebp), %al
	testb	%al, %al
	je	.L21
	movl	-188(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-188(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L21:
	addl	$1, -192(%ebp)
	jmp	.L22
.L17:
	movl	$5, -176(%ebp)
	movl	-176(%ebp), %edx
	movl	8(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	cmpb	$3, %al
	jne	.L23
	movl	8(%ebp), %eax
	addl	$40, %eax
	movl	%eax, -172(%ebp)
	movl	$0, -168(%ebp)
.L28:
	cmpl	$3, -168(%ebp)
	jae	.L16
	movl	-168(%ebp), %edx
	movl	-172(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -164(%ebp)
	movl	8(%ebp), %eax
	addl	$56, %eax
	addl	-168(%ebp), %eax
	movl	%eax, -156(%ebp)
	movl	$_UI00000003.1989, %edx
	movl	-168(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-156(%ebp), %eax
	movb	%dl, (%eax)
	movl	-164(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L25
	movb	$1, -157(%ebp)
	jmp	.L26
.L25:
	movl	-164(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-156(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -157(%ebp)
.L26:
	movl	-164(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-157(%ebp), %al
	testb	%al, %al
	je	.L27
	movl	-164(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-164(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L27:
	addl	$1, -168(%ebp)
	jmp	.L28
.L23:
	movl	$4, -152(%ebp)
	movl	-152(%ebp), %edx
	movl	8(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	cmpb	$3, %al
	jne	.L29
	movl	8(%ebp), %eax
	addl	$40, %eax
	movl	%eax, -148(%ebp)
	movl	$0, -144(%ebp)
.L34:
	cmpl	$3, -144(%ebp)
	jae	.L16
	movl	-144(%ebp), %edx
	movl	-148(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -140(%ebp)
	movl	8(%ebp), %eax
	addl	$56, %eax
	addl	-144(%ebp), %eax
	movl	%eax, -132(%ebp)
	movl	$_UI00000004.1998, %edx
	movl	-144(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-132(%ebp), %eax
	movb	%dl, (%eax)
	movl	-140(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L31
	movb	$1, -133(%ebp)
	jmp	.L32
.L31:
	movl	-140(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-132(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -133(%ebp)
.L32:
	movl	-140(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-133(%ebp), %al
	testb	%al, %al
	je	.L33
	movl	-140(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-140(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L33:
	addl	$1, -144(%ebp)
	jmp	.L34
.L29:
	movl	$3, -128(%ebp)
	movl	-128(%ebp), %edx
	movl	8(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	cmpb	$3, %al
	jne	.L35
	movl	8(%ebp), %eax
	addl	$40, %eax
	movl	%eax, -124(%ebp)
	movl	$0, -120(%ebp)
.L40:
	cmpl	$3, -120(%ebp)
	jae	.L16
	movl	-120(%ebp), %edx
	movl	-124(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -116(%ebp)
	movl	8(%ebp), %eax
	addl	$56, %eax
	addl	-120(%ebp), %eax
	movl	%eax, -108(%ebp)
	movl	$_UI00000005.2007, %edx
	movl	-120(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-108(%ebp), %eax
	movb	%dl, (%eax)
	movl	-116(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L37
	movb	$1, -109(%ebp)
	jmp	.L38
.L37:
	movl	-116(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-108(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -109(%ebp)
.L38:
	movl	-116(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-109(%ebp), %al
	testb	%al, %al
	je	.L39
	movl	-116(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-116(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L39:
	addl	$1, -120(%ebp)
	jmp	.L40
.L35:
	movl	$2, -104(%ebp)
	movl	-104(%ebp), %edx
	movl	8(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	cmpb	$3, %al
	jne	.L41
	movl	8(%ebp), %eax
	addl	$40, %eax
	movl	%eax, -100(%ebp)
	movl	$0, -96(%ebp)
.L46:
	cmpl	$3, -96(%ebp)
	jae	.L16
	movl	-96(%ebp), %edx
	movl	-100(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -92(%ebp)
	movl	8(%ebp), %eax
	addl	$56, %eax
	addl	-96(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	$_UI00000006.2016, %edx
	movl	-96(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-84(%ebp), %eax
	movb	%dl, (%eax)
	movl	-92(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L43
	movb	$1, -85(%ebp)
	jmp	.L44
.L43:
	movl	-92(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-84(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -85(%ebp)
.L44:
	movl	-92(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-85(%ebp), %al
	testb	%al, %al
	je	.L45
	movl	-92(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-92(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L45:
	addl	$1, -96(%ebp)
	jmp	.L46
.L41:
	movl	$1, -80(%ebp)
	movl	-80(%ebp), %edx
	movl	8(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	cmpb	$3, %al
	jne	.L47
	movl	8(%ebp), %eax
	addl	$40, %eax
	movl	%eax, -76(%ebp)
	movl	$0, -72(%ebp)
.L52:
	cmpl	$3, -72(%ebp)
	jae	.L16
	movl	-72(%ebp), %edx
	movl	-76(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -68(%ebp)
	movl	8(%ebp), %eax
	addl	$56, %eax
	addl	-72(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	$_UI00000007.2025, %edx
	movl	-72(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-60(%ebp), %eax
	movb	%dl, (%eax)
	movl	-68(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L49
	movb	$1, -61(%ebp)
	jmp	.L50
.L49:
	movl	-68(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-60(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -61(%ebp)
.L50:
	movl	-68(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-61(%ebp), %al
	testb	%al, %al
	je	.L51
	movl	-68(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-68(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L51:
	addl	$1, -72(%ebp)
	jmp	.L52
.L47:
	movl	$0, -56(%ebp)
	movl	-56(%ebp), %edx
	movl	8(%ebp), %eax
	movl	8(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	cmpb	$3, %al
	jne	.L16
	movl	8(%ebp), %eax
	addl	$40, %eax
	movl	%eax, -52(%ebp)
	movl	$0, -48(%ebp)
.L56:
	cmpl	$3, -48(%ebp)
	jae	.L16
	movl	-48(%ebp), %edx
	movl	-52(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, -44(%ebp)
	movl	8(%ebp), %eax
	addl	$56, %eax
	addl	-48(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	$_UI00000008.2034, %edx
	movl	-48(%ebp), %eax
	movzbl	(%edx,%eax), %edx
	movl	-36(%ebp), %eax
	movb	%dl, (%eax)
	movl	-44(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L53
	movb	$1, -37(%ebp)
	jmp	.L54
.L53:
	movl	-44(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-36(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -37(%ebp)
.L54:
	movl	-44(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-37(%ebp), %al
	testb	%al, %al
	je	.L55
	movl	-44(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-44(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L55:
	addl	$1, -48(%ebp)
	jmp	.L56
.L16:
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -32(%ebp)
	movl	$0, -28(%ebp)
.L58:
	cmpl	$8, -28(%ebp)
	jae	.L57
	movl	-28(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movzbl	(%eax), %eax
	movb	%al, -232(%ebp,%ecx)
	addl	$1, -28(%ebp)
	jmp	.L58
.L57:
	leal	-232(%ebp), %eax
	movl	%eax, -240(%ebp)
	movl	$work__pr_encoder__x_in__OT__STB, -236(%ebp)
	movl	$_UI00000009.2049, %eax
	movl	%eax, -248(%ebp)
	movl	$work__pr_encoder__ARCH__enc_behave__P0__U2__STB.2050, -244(%ebp)
	leal	-248(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-240(%ebp), %eax
	movl	%eax, (%esp)
	call	ieee__std_logic_1164__std_logic_vector_EQ
	testb	%al, %al
	je	.L59
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	addl	$59, %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movb	$3, (%eax)
	movl	-24(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L60
	movb	$1, -17(%ebp)
	jmp	.L61
.L60:
	movl	-24(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -17(%ebp)
.L61:
	movl	-24(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-17(%ebp), %al
	testb	%al, %al
	je	.L66
	movl	-24(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-24(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
	jmp	.L66
.L59:
	movl	8(%ebp), %eax
	movl	52(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$59, %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movb	$2, (%eax)
	movl	-12(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L64
	movb	$1, -5(%ebp)
	jmp	.L65
.L64:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -5(%ebp)
.L65:
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
	.size	work__pr_encoder__ARCH__enc_behave__P0__PROC, .-work__pr_encoder__ARCH__enc_behave__P0__PROC
.globl work__pr_encoder__ARCH__enc_behave__ELAB
	.type	work__pr_encoder__ARCH__enc_behave__ELAB, @function
work__pr_encoder__ARCH__enc_behave__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$56, %esp
	movl	8(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	$work__pr_encoder__ARCH__enc_behave__RTI, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	work__pr_encoder__ELAB
	movl	-20(%ebp), %eax
	addl	$56, %eax
	movl	$work__pr_encoder__ARCH__enc_behave__P0__PROC, %edx
	movl	-20(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	$work__pr_encoder__ARCH__enc_behave__P0__RTI, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ghdl_sensitized_process_register
	movl	-20(%ebp), %eax
	addl	$40, %eax
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
.L69:
	cmpl	$3, -12(%ebp)
	jae	.L68
	movl	-20(%ebp), %eax
	addl	$56, %eax
	movl	%eax, %ecx
	addl	-12(%ebp), %ecx
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	addl	$1, -12(%ebp)
	jmp	.L69
.L68:
	movl	-20(%ebp), %eax
	leal	59(%eax), %edx
	movl	-20(%ebp), %eax
	movl	52(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	movl	-20(%ebp), %eax
	addl	$8, %eax
	movl	%eax, -8(%ebp)
	movl	$0, -4(%ebp)
.L71:
	cmpl	$8, -4(%ebp)
	jae	.L72
	movl	-4(%ebp), %edx
	movl	-8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	addl	$1, -4(%ebp)
	jmp	.L71
.L72:
	leave
	ret
	.size	work__pr_encoder__ARCH__enc_behave__ELAB, .-work__pr_encoder__ARCH__enc_behave__ELAB
	.ident	"GCC: (GNU) 4.3.4"
	.section	.note.GNU-stack,"",@progbits

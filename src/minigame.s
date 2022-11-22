	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"minigame.c"
	.text
	.align	2
	.global	initMiniGame
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMiniGame, %function
initMiniGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	mov	r2, #104
	push	{r4, lr}
	mov	ip, #32
	mov	r0, #64
	mov	r4, #116
	ldr	r1, .L7
	ldr	lr, [r1]
	ldr	r1, .L7+4
	str	r3, [r1]
	ldr	r1, .L7+8
	str	r3, [r1]
	ldr	r1, .L7+12
	str	r3, [r1]
	ldr	r1, .L7+16
	str	r3, [r1]
	ldr	r1, .L7+20
	str	r2, [r1, #4]
	ldr	r2, .L7+24
	cmp	lr, r3
	str	r3, [r1, #28]
	str	ip, [r1, #16]
	str	r3, [r2, #28]
	str	r4, [r2, #4]
	str	ip, [r1, #20]
	str	ip, [r2, #20]
	str	r0, [r1]
	str	r0, [r2, #16]
	str	r0, [r2]
	bne	.L2
	mov	r2, #34
	ldr	r3, .L7+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L2:
	cmp	lr, #1
	moveq	r2, #49
	ldreq	r3, .L7+28
	ldrne	r3, .L7+28
	streq	r2, [r3]
	strne	r0, [r3]
	pop	{r4, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	lvl
	.word	dodge
	.word	strike
	.word	bit
	.word	caught
	.word	hand
	.word	head
	.word	countdown
	.size	initMiniGame, .-initMiniGame
	.align	2
	.global	drawMiniGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMiniGame, %function
drawMiniGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #512
	ldr	r3, .L19
	ldr	r1, [r3]
	ldr	r3, .L19+4
	cmp	r1, #0
	strh	r2, [r3, #112]	@ movhi
	strh	r2, [r3, #120]	@ movhi
	beq	.L10
	ldr	r0, .L19+8
	ldr	r1, .L19+12
	ldr	r2, .L19+16
	strh	r0, [r3, #128]	@ movhi
	strh	r1, [r3, #130]	@ movhi
	strh	r2, [r3, #132]	@ movhi
	bx	lr
.L10:
	ldr	r2, .L19+20
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L12
	mov	r0, #48
	ldr	r1, .L19+12
	ldr	r2, .L19+24
	strh	r0, [r3, #136]	@ movhi
	strh	r1, [r3, #138]	@ movhi
	strh	r2, [r3, #140]	@ movhi
	bx	lr
.L12:
	ldr	r2, .L19+28
	ldr	r1, [r2]
	ldr	r2, .L19+32
	cmp	r1, #0
	ldr	r0, .L19+36
	movne	r0, r2
	ldr	r1, .L19+40
	push	{r4, lr}
	ldr	r2, .L19+44
	ldr	ip, [r1]
	ldr	lr, .L19+48
	ldr	r4, [r2]
	cmp	ip, #0
	ldr	r1, [r2, #4]
	ldr	ip, .L19+52
	ldr	r2, [lr, #4]
	orr	r2, r2, ip
	ldr	lr, [lr]
	strh	r2, [r3, #122]	@ movhi
	ldreq	r2, .L19+56
	ldrne	r2, .L19+60
	orr	r1, r1, ip
	strh	r4, [r3, #112]	@ movhi
	strh	lr, [r3, #120]	@ movhi
	strh	r0, [r3, #116]	@ movhi
	strh	r1, [r3, #114]	@ movhi
	strh	r2, [r3, #124]	@ movhi
	pop	{r4, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	bit
	.word	shadowOAM
	.word	16440
	.word	-16296
	.word	21324
	.word	caught
	.word	21076
	.word	dodge
	.word	21072
	.word	21068
	.word	strike
	.word	hand
	.word	head
	.word	-32768
	.word	21196
	.word	21200
	.size	drawMiniGame, .-drawMiniGame
	.align	2
	.global	initHand
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHand, %function
initHand:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	mov	r2, #32
	mov	ip, #64
	mov	r0, #104
	str	lr, [sp, #-4]!
	ldr	r3, .L23
	ldr	lr, .L23+4
	str	r1, [r3, #28]
	str	r1, [lr]
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	ldr	lr, [sp], #4
	bx	lr
.L24:
	.align	2
.L23:
	.word	hand
	.word	dodge
	.size	initHand, .-initHand
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"dodge\000"
	.align	2
.LC1:
	.ascii	"catch\000"
	.align	2
.LC2:
	.ascii	"ow\000"
	.text
	.align	2
	.global	updateHand
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHand, %function
updateHand:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r6, .L58
	ldrh	r1, [r6]
	tst	r1, #1
	beq	.L26
	ldr	r3, .L58+4
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L56
.L26:
	ldr	r4, .L58+8
	ldr	r5, .L58+12
	ldr	r2, [r4]
	ldr	r3, [r5]
	sub	r3, r2, r3
	cmp	r3, #2
	ble	.L27
	mov	r0, #0
	mov	r2, r0
	ldr	ip, .L58+16
	ldr	r3, [ip, #16]
	add	r3, r3, r3, lsr #31
	asr	r3, r3, #1
	rsb	r3, r3, #120
	str	r3, [ip, #4]
	str	r0, [r4]
.L27:
	tst	r1, #2
	beq	.L55
	ldr	r3, .L58+4
	ldrh	r3, [r3]
	ands	r1, r3, #2
	beq	.L53
.L55:
	ldr	r6, .L58+20
.L28:
	ldr	r3, [r6]
	orrs	r3, r2, r3
	beq	.L30
.L25:
	pop	{r4, r5, r6, lr}
	bx	lr
.L53:
	ldr	r0, .L58+16
	ldr	r3, [r0, #16]
	add	r3, r3, r3, lsr #31
	asr	r3, r3, #1
	rsb	r3, r3, #120
	cmp	r2, #0
	str	r3, [r0, #4]
	beq	.L29
	ldr	r3, .L58+24
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L57
.L29:
	mov	r3, #0
	ldr	r6, .L58+20
	ldr	r2, [r6]
	cmp	r2, r3
	str	r3, [r4]
	bne	.L25
.L30:
	ldr	r3, .L58+24
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L25
	mov	r1, #3
	mov	r2, #1
	mov	ip, #0
	ldr	lr, .L58+28
	str	r1, [r5]
	ldr	r0, .L58+32
	ldr	r1, .L58+36
	str	r2, [r6]
	str	r2, [lr]
	str	ip, [r3]
	mov	lr, pc
	bx	r1
	b	.L25
.L56:
	ldr	r3, .L58+36
	ldr	r0, .L58+40
	mov	lr, pc
	bx	r3
	ldr	r0, .L58+16
	ldr	r3, [r0, #16]
	ldr	r5, .L58+12
	add	r3, r3, r3, lsr #31
	ldr	r2, [r5]
	ldr	r4, .L58+8
	asr	r3, r3, #1
	rsb	r3, r3, #60
	ldrh	r1, [r6]
	str	r3, [r0, #4]
	str	r2, [r4]
	b	.L27
.L57:
	mov	r3, #3
	mov	r2, #1
	str	r3, [r5]
	ldr	r3, .L58+28
	ldr	r6, .L58+20
	str	r1, [r3]
	ldr	r0, .L58+44
	ldr	r3, .L58+36
	str	r2, [r6]
	mov	lr, pc
	bx	r3
	ldr	r2, [r4]
	b	.L28
.L59:
	.align	2
.L58:
	.word	oldButtons
	.word	buttons
	.word	dodge
	.word	countdown
	.word	hand
	.word	caught
	.word	strike
	.word	bit
	.word	.LC2
	.word	mgba_printf
	.word	.LC0
	.word	.LC1
	.size	updateHand, .-updateHand
	.align	2
	.global	drawHand
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHand, %function
drawHand:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L63
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #17
	ldr	r0, .L63+4
	ldr	ip, [r0]
	ldr	r0, .L63+8
	cmp	ip, #0
	ldr	r1, .L63+12
	mvn	r3, r3, lsr #17
	movne	r1, r0
	ldr	r0, [r2]
	ldr	r2, .L63+16
	strh	r3, [r2, #114]	@ movhi
	strh	r0, [r2, #112]	@ movhi
	strh	r1, [r2, #116]	@ movhi
	bx	lr
.L64:
	.align	2
.L63:
	.word	hand
	.word	dodge
	.word	21072
	.word	21068
	.word	shadowOAM
	.size	drawHand, .-drawHand
	.align	2
	.global	initHead
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHead, %function
initHead:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #64
	mov	r2, #0
	mov	ip, #32
	mov	r0, #116
	str	lr, [sp, #-4]!
	ldr	r3, .L67
	ldr	lr, .L67+4
	str	r1, [r3, #16]
	ldr	lr, [lr]
	ldr	r1, .L67+8
	str	lr, [r3]
	str	ip, [r3, #20]
	str	r0, [r3, #4]
	str	r2, [r3, #28]
	str	r2, [r1]
	ldr	lr, [sp], #4
	bx	lr
.L68:
	.align	2
.L67:
	.word	head
	.word	hand
	.word	strike
	.size	initHead, .-initHead
	.align	2
	.global	updateHead
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHead, %function
updateHead:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L95
	ldr	r2, [r3]
	ldr	r3, .L95+4
	cmp	r2, #0
	ldr	r3, [r3]
	bne	.L70
	ldr	r2, .L95+8
	smull	r0, r1, r2, r3
	asr	r2, r3, #31
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	subs	r2, r3, r2
	bne	.L71
.L76:
	mov	r2, #1
	ldr	r3, .L95+12
	str	r2, [r3]
.L72:
	ldr	r2, .L95+16
	ldr	r3, [r2, #16]
	add	r3, r3, r3, lsr #31
	asr	r3, r3, #1
	rsb	r3, r3, #120
	str	r3, [r2, #4]
	bx	lr
.L71:
	cmp	r2, #3
	bne	.L73
.L92:
	ldr	r2, .L95+12
.L77:
	mov	r3, #0
	str	r3, [r2]
.L74:
	ldr	r2, .L95+16
	ldr	r3, [r2, #16]
	add	r3, r3, r3, lsr #31
	asr	r3, r3, #1
	rsb	r3, r3, #180
	str	r3, [r2, #4]
	bx	lr
.L70:
	cmp	r2, #1
	beq	.L93
	cmp	r3, #0
	and	r3, r3, #1
	mov	r1, r3
	rsblt	r1, r3, #0
	cmp	r1, #1
	beq	.L94
	cmp	r3, #0
	beq	.L92
.L73:
	ldr	r3, .L95+12
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L72
	b	.L74
.L93:
	ldr	r2, .L95+20
	smull	r1, r2, r3, r2
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, lsl #1
	subs	r2, r3, r2
	beq	.L76
	cmp	r2, #1
	beq	.L92
	b	.L73
.L94:
	ldr	r2, .L95+12
	cmp	r3, #0
	str	r1, [r2]
	bne	.L72
	b	.L77
.L96:
	.align	2
.L95:
	.word	lvl
	.word	countdown
	.word	1717986919
	.word	strike
	.word	head
	.word	1431655766
	.size	updateHead, .-updateHead
	.align	2
	.global	updateMiniGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMiniGame, %function
updateMiniGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updateHand
	pop	{r4, lr}
	b	updateHead
	.size	updateMiniGame, .-updateMiniGame
	.align	2
	.global	drawHead
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHead, %function
drawHead:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L102
	ldr	r3, [r2, #4]
	mvn	r3, r3, lsl #17
	ldr	r0, .L102+4
	ldr	ip, [r0]
	ldr	r0, .L102+8
	cmp	ip, #0
	ldr	r1, .L102+12
	mvn	r3, r3, lsr #17
	movne	r1, r0
	ldr	r0, [r2]
	ldr	r2, .L102+16
	strh	r3, [r2, #122]	@ movhi
	strh	r0, [r2, #120]	@ movhi
	strh	r1, [r2, #124]	@ movhi
	bx	lr
.L103:
	.align	2
.L102:
	.word	head
	.word	strike
	.word	21200
	.word	21196
	.word	shadowOAM
	.size	drawHead, .-drawHead
	.align	2
	.global	enableTimerInterrupts
	.syntax unified
	.arm
	.fpu softvfp
	.type	enableTimerInterrupts, %function
enableTimerInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	ip, #49152
	mov	lr, #0
	mov	r0, #195
	ldr	r1, .L106
	ldrh	r2, [r1]
	ldr	r3, .L106+4
	orr	r2, r2, #32
	strh	lr, [r3, #10]	@ movhi
	strh	r2, [r1]	@ movhi
	ldr	lr, [sp], #4
	strh	ip, [r3, #8]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	bx	lr
.L107:
	.align	2
.L106:
	.word	67109376
	.word	67109120
	.size	enableTimerInterrupts, .-enableTimerInterrupts
	.align	2
	.global	stopTimer
	.syntax unified
	.arm
	.fpu softvfp
	.type	stopTimer, %function
stopTimer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	ldr	r3, .L109
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L110:
	.align	2
.L109:
	.word	67109120
	.size	stopTimer, .-stopTimer
	.comm	caught,4,4
	.comm	bit,4,4
	.comm	countdown,4,4
	.comm	strike,4,4
	.comm	dodge,4,4
	.comm	head,52,4
	.comm	hand,52,4
	.comm	shadowOAM,1024,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"

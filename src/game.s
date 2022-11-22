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
	.file	"game.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStick.part.0, %function
drawStick.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #13
	ldr	r3, .L3
	ldr	r2, .L3+4
	ldr	r3, [r3, #4]
	ldr	r2, [r2]
	sub	r3, r3, r2
	lsl	r3, r3, #23
	ldr	r2, .L3+8
	lsr	r3, r3, #23
	strh	r3, [r2, #18]	@ movhi
	strh	r1, [r2, #20]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	stick
	.word	hOff
	.word	shadowOAM
	.size	drawStick.part.0, .-drawStick.part.0
	.align	2
	.global	initSeeker
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSeeker, %function
initSeeker:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, #15
	mov	r5, #14
	mov	r4, #3
	mov	lr, #2
	mov	ip, #1
	mov	r0, #0
	ldr	r3, .L7
	ldr	r2, .L7+4
	ldr	r1, [r3]
	ldr	r2, [r2]
	ldr	r3, .L7+8
	add	r2, r2, r6
	add	r1, r1, #118
	str	r6, [r3, #16]
	str	r5, [r3, #20]
	str	r4, [r3, #40]
	str	lr, [r3, #28]
	str	r1, [r3]
	str	r2, [r3, #4]
	str	ip, [r3, #12]
	str	ip, [r3, #8]
	str	r0, [r3, #24]
	str	r0, [r3, #36]
	pop	{r4, r5, r6, lr}
	bx	lr
.L8:
	.align	2
.L7:
	.word	vOff
	.word	hOff
	.word	seeker
	.size	initSeeker, .-initSeeker
	.global	__aeabi_idivmod
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"nothing\000"
	.align	2
.LC1:
	.ascii	"snake!\000"
	.align	2
.LC2:
	.ascii	"friend\000"
	.align	2
.LC3:
	.ascii	"%d\000"
	.align	2
.LC4:
	.ascii	"alr found\000"
	.text
	.align	2
	.global	updateSeeker
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSeeker, %function
updateSeeker:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L87
	ldr	r3, [r4, #28]
	cmp	r3, #3
	movne	r2, #3
	strne	r3, [r4, #32]
	ldr	r3, [r4, #24]
	add	r3, r3, r3, lsl #4
	strne	r2, [r4, #28]
	add	r3, r3, r3, lsl #8
	ldr	r2, .L87+4
	ldr	r1, .L87+8
	add	r3, r3, r3, lsl #16
	sub	r2, r2, r3
	cmp	r2, r1
	sub	sp, sp, #28
	bcs	.L11
	ldr	r0, [r4, #36]
	ldr	r3, .L87+12
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L11:
	ldr	r3, .L87+16
	ldr	r3, [r3]
	cmp	r3, #0
	ldr	r3, .L87+20
	ldrh	r3, [r3, #48]
	bne	.L12
	ands	r3, r3, #64
	beq	.L78
.L14:
	ldr	r3, .L87+20
	ldrh	r3, [r3, #48]
	ands	r3, r3, #128
	beq	.L79
.L18:
	ldr	r3, .L87+20
	ldrh	r3, [r3, #48]
	ands	r3, r3, #32
	beq	.L80
.L22:
	ldr	r3, .L87+20
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	beq	.L81
.L25:
	ldr	r3, .L87+24
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L39
	ldr	r3, .L87+28
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L39
.L69:
	ldr	r5, .L87+32
	ldr	r7, .L87+36
	ldr	fp, .L87+40
	ldr	r8, .L87+44
	ldr	r10, .L87+12
	ldr	r9, .L87+48
	add	r6, r5, #260
.L47:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L40
	ldr	r3, [r5, #44]
	cmp	r3, #0
	beq	.L82
.L40:
	add	r5, r5, #52
	cmp	r5, r6
	bne	.L47
.L39:
	ldr	r3, [r4, #28]
	cmp	r3, #3
	beq	.L83
.L30:
	ldr	r3, [r4, #24]
	add	r3, r3, #1
	str	r3, [r4, #24]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L12:
	tst	r3, #64
	bne	.L32
	ldr	r3, [r4]
	cmp	r3, #0
	ble	.L32
	ldr	r1, .L87+52
	ldr	r0, [r4, #8]
	ldr	r2, [r1]
	sub	r3, r3, r0
	cmp	r2, #0
	str	r3, [r4]
	ble	.L32
	sub	r3, r3, r2
	cmp	r3, #80
	suble	r2, r2, #1
	strle	r2, [r1]
.L32:
	ldr	r3, .L87+20
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L35
	ldr	r3, [r4]
	cmp	r3, #213
	bgt	.L35
	ldr	r1, .L87+52
	ldr	r0, [r4, #8]
	ldr	r2, [r1]
	add	r3, r3, r0
	cmp	r2, #94
	str	r3, [r4]
	bgt	.L35
	sub	r3, r3, r2
	cmp	r3, #80
	addgt	r2, r2, #1
	strgt	r2, [r1]
.L35:
	ldr	r3, .L87+20
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L37
	ldr	r3, [r4, #4]
	cmp	r3, #0
	ble	.L37
	ldr	r1, .L87+56
	ldr	r0, [r4, #12]
	ldr	r2, [r1]
	sub	r3, r3, r0
	cmp	r2, #0
	str	r3, [r4, #4]
	ble	.L38
	sub	r3, r3, r2
	cmp	r3, #120
	suble	r2, r2, #1
	strle	r2, [r1]
.L38:
	mov	r3, #0
	str	r3, [r4, #28]
.L37:
	ldr	r3, .L87+20
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L25
.L77:
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #16]
	add	r2, r3, r2
	cmp	r2, #512
	bge	.L25
	ldr	r1, .L87+56
	ldr	ip, .L87+60
	ldr	r2, [r1]
	ldr	r0, [r4, #12]
	cmp	r2, ip
	add	r3, r3, r0
	str	r3, [r4, #4]
	bgt	.L27
	sub	r3, r3, r2
	cmp	r3, #120
	addgt	r2, r2, #1
	strgt	r2, [r1]
.L27:
	mov	r3, #2
	ldr	r2, .L87+24
	ldrh	r2, [r2]
	tst	r2, #1
	str	r3, [r4, #28]
	beq	.L30
	ldr	r3, .L87+28
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L69
	b	.L30
.L83:
	mov	r2, #0
	ldr	r3, [r4, #32]
	str	r2, [r4, #36]
	str	r3, [r4, #28]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L82:
	mov	lr, pc
	bx	fp
	ldr	r1, [r8]
	mov	lr, pc
	bx	r10
	subs	r2, r1, #0
	beq	.L84
	cmp	r2, #1
	bne	.L42
	ldr	r3, .L87+64
	ldr	r0, [r3, #48]
	cmp	r0, #0
	beq	.L85
.L43:
	ldr	r0, .L87+68
	mov	lr, pc
	bx	r9
	b	.L40
.L78:
	ldr	r2, [r4, #8]
	add	r1, r4, #16
	rsb	r2, r2, #0
	ldm	r1, {r1, ip}
	ldr	r0, .L87+72
	str	r3, [sp, #8]
	str	r2, [sp, #12]
	ldr	r3, [r4]
	ldr	r0, [r0]
	ldr	r2, [r4, #4]
	stm	sp, {r1, ip}
	ldr	r5, .L87+76
	mov	r1, #512
	mov	lr, pc
	bx	r5
	cmp	r0, #2
	bne	.L14
	ldr	r3, [r4]
	cmp	r3, #0
	ble	.L14
	ldr	r1, .L87+52
	ldr	r0, [r4, #8]
	ldr	r2, [r1]
	sub	r3, r3, r0
	cmp	r2, #0
	str	r3, [r4]
	ble	.L16
	sub	r3, r3, r2
	cmp	r3, #80
	suble	r2, r2, #1
	strle	r2, [r1]
.L16:
	mov	r3, #1
	str	r3, [r4, #28]
	b	.L14
.L84:
	ldr	r0, .L87+80
	str	r2, [sp, #20]
	mov	lr, pc
	bx	r9
	ldr	r3, .L87+84
	mov	lr, pc
	bx	r3
	ldr	r3, .L87+88
	ldr	r2, [sp, #20]
	ldr	r1, [r3]
	ldr	r0, .L87+92
	ldr	r3, .L87+96
	mov	lr, pc
	bx	r3
	b	.L40
.L81:
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #16]
	str	r3, [sp, #12]
	ldr	ip, [r4, #12]
	ldr	r0, .L87+72
	ldr	r3, [r4]
	ldr	r0, [r0]
	ldr	r5, .L87+76
	stmib	sp, {r1, ip}
	str	r2, [sp]
	mov	r1, #512
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L25
	b	.L77
.L80:
	ldr	r2, [r4, #12]
	add	r1, r4, #16
	rsb	r2, r2, #0
	ldm	r1, {r1, ip}
	ldr	r0, .L87+72
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	ldr	r3, [r4]
	ldr	r0, [r0]
	ldr	r2, [r4, #4]
	stm	sp, {r1, ip}
	ldr	r5, .L87+76
	mov	r1, #512
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L22
	ldr	r3, [r4, #4]
	cmp	r3, #0
	ble	.L22
	ldr	r1, .L87+56
	ldr	r0, [r4, #12]
	ldr	r2, [r1]
	sub	r3, r3, r0
	cmp	r2, #0
	str	r3, [r4, #4]
	ble	.L24
	sub	r3, r3, r2
	cmp	r3, #120
	suble	r2, r2, #1
	strle	r2, [r1]
.L24:
	mov	r3, #0
	str	r3, [r4, #28]
	b	.L22
.L79:
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #16]
	str	r3, [sp, #8]
	ldr	ip, [r4, #8]
	ldr	r0, .L87+72
	ldr	r3, [r4]
	ldr	r0, [r0]
	ldr	r5, .L87+76
	str	r1, [sp, #4]
	str	r2, [sp]
	mov	r1, #512
	str	ip, [sp, #12]
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	r5
	cmp	r0, #2
	bne	.L18
	ldr	r3, [r4]
	ldr	r2, [r4, #20]
	add	r2, r3, r2
	cmp	r2, #255
	bgt	.L18
	ldr	r1, .L87+52
	ldr	r0, [r4, #8]
	ldr	r2, [r1]
	add	r3, r3, r0
	cmp	r2, #94
	str	r3, [r4]
	bgt	.L20
	sub	r3, r3, r2
	cmp	r3, #80
	addgt	r2, r2, #1
	strgt	r2, [r1]
.L20:
	mov	r3, #1
	str	r3, [r4, #28]
	b	.L18
.L42:
	ldr	r0, .L87+100
	mov	lr, pc
	bx	r9
	mov	lr, pc
	bx	fp
	ldr	r2, .L87+104
	ldr	r1, [r2]
	rsb	r1, r1, #3
	mov	lr, pc
	bx	r10
	ldr	r0, .L87+108
	str	r1, [sp, #20]
	mov	lr, pc
	bx	r9
	ldr	r3, [sp, #20]
	ldr	r1, .L87+112
	add	r0, r3, r3, lsl #1
	add	r0, r3, r0, lsl #2
	add	r0, r1, r0, lsl #2
	ldr	ip, [r0, #48]
	cmp	ip, #0
	ldr	r2, .L87+104
	bne	.L86
.L44:
	mov	r3, #1
	str	r3, [r0, #48]
.L46:
	ldr	ip, .L87+116
	ldr	r0, [ip]
	ldr	r1, [r2]
	ldr	r3, [r8]
	sub	r0, r0, #1
	str	r0, [ip]
	add	r1, r1, #1
	sub	r3, r3, #1
	ldr	r0, .L87+84
	str	r1, [r2]
	str	r3, [r8]
	mov	lr, pc
	bx	r0
	ldr	r3, .L87+88
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L87+92
	ldr	r3, .L87+96
	mov	lr, pc
	bx	r3
	b	.L40
.L85:
	ldr	r1, .L87+52
	ldr	ip, [r5]
	ldr	r1, [r1]
	sub	r1, ip, r1
	mvn	r1, r1, lsl #17
	mvn	r1, r1, lsr #17
	mov	lr, #120
	str	r2, [r3, #48]
	ldr	r2, .L87+120
	str	ip, [r3]
	ldr	ip, [r5, #4]
	strh	r1, [r2, #8]	@ movhi
	ldr	r2, .L87+84
	str	r0, [sp, #20]
	str	lr, [r3, #24]
	str	ip, [r3, #4]
	mov	lr, pc
	bx	r2
	ldr	r0, [sp, #20]
	ldr	r3, .L87+124
	mov	r2, r0
	ldr	r1, [r3]
	ldr	r0, .L87+128
	ldr	r3, .L87+96
	mov	lr, pc
	bx	r3
	b	.L43
.L86:
	ldr	r0, .L87+132
	mov	lr, pc
	bx	r9
	ldr	r3, [sp, #20]
	ldr	r0, .L87+136
	add	ip, r3, #1
	smull	r2, r0, ip, r0
	sub	r0, r0, ip, asr #31
	add	r0, r0, r0, lsl #1
	sub	r0, ip, r0
	add	ip, r0, r0, lsl #1
	ldr	r1, .L87+112
	add	r0, r0, ip, lsl #2
	add	r0, r1, r0, lsl #2
	ldr	ip, [r0, #48]
	cmp	ip, #0
	ldr	r2, .L87+104
	beq	.L44
	mov	r0, #1
	ldr	ip, .L87+136
	add	r3, r3, #2
	smull	lr, ip, r3, ip
	sub	ip, ip, r3, asr #31
	add	ip, ip, ip, lsl r0
	sub	r3, r3, ip
	add	ip, r3, r3, lsl r0
	add	r3, r3, ip, lsl #2
	add	r1, r1, r3, lsl #2
	str	r0, [r1, #48]
	b	.L46
.L88:
	.align	2
.L87:
	.word	seeker
	.word	143165576
	.word	286331153
	.word	__aeabi_idivmod
	.word	king
	.word	67109120
	.word	oldButtons
	.word	buttons
	.word	bush
	.word	collision
	.word	rand
	.word	hideCount
	.word	mgba_printf
	.word	vOff
	.word	hOff
	.word	270
	.word	snake
	.word	.LC1
	.word	.LANCHOR0
	.word	collisionCheck
	.word	.LC0
	.word	stopSoundB
	.word	rustle_length
	.word	rustle_data
	.word	playSoundB
	.word	.LC2
	.word	friendsFound
	.word	.LC3
	.word	hiders
	.word	friendsRemaining
	.word	shadowOAM
	.word	hiss_length
	.word	hiss_data
	.word	.LC4
	.word	1431655766
	.size	updateSeeker, .-updateSeeker
	.align	2
	.global	drawSeeker
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSeeker, %function
drawSeeker:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L123
	ldr	r1, .L123+4
	ldr	ip, .L123+8
	ldr	r0, [r1]
	str	lr, [sp, #-4]!
	ldr	r3, [r2, #4]
	ldr	lr, [ip]
	ldr	r1, [r2]
	ldr	ip, [r2, #28]
	sub	r1, r1, lr
	sub	r3, r3, r0
	ldr	lr, .L123+12
	ldr	r0, .L123+16
	lsl	r3, r3, #16
	cmp	ip, #2
	strh	r1, [r0, #160]	@ movhi
	asr	r3, r3, #16
	ldr	r1, [lr]
	beq	.L121
	orr	r3, r3, #16384
	cmp	r1, #0
	strh	r3, [r0, #162]	@ movhi
	beq	.L93
	cmp	ip, #1
	bne	.L94
	ldr	r3, [r2, #36]
	cmp	r3, #0
	moveq	r3, #17
	strheq	r3, [r0, #164]	@ movhi
	beq	.L89
	sub	r3, r3, #1
	cmp	r3, #1
	movls	r3, #81
	strhls	r3, [r0, #164]	@ movhi
.L89:
	ldr	lr, [sp], #4
	bx	lr
.L93:
	ldr	r3, .L123+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L101
	cmp	ip, #1
	bne	.L102
.L120:
	ldr	r3, [r2, #36]
	cmp	r3, #0
	moveq	r3, #15
	strheq	r3, [r0, #164]	@ movhi
	beq	.L89
	sub	r3, r3, #1
	cmp	r3, #1
	movls	r3, #79
	strhls	r3, [r0, #164]	@ movhi
	b	.L89
.L121:
	orr	r3, r3, #20480
	cmp	r1, #0
	strh	r3, [r0, #162]	@ movhi
	beq	.L122
.L91:
	ldr	r3, [r2, #36]
	cmp	r3, #0
	moveq	r3, #8
	strheq	r3, [r0, #164]	@ movhi
	beq	.L89
	cmp	r3, #1
	moveq	r3, #6
	strheq	r3, [r0, #164]	@ movhi
	beq	.L89
	cmp	r3, #2
	moveq	r3, #10
	strheq	r3, [r0, #164]	@ movhi
	b	.L89
.L122:
	ldr	r3, .L123+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L106
.L102:
	bics	ip, ip, #2
	bne	.L98
	ldr	r3, [r2, #36]
	cmp	r3, #0
	moveq	r3, #2
	strheq	r3, [r0, #164]	@ movhi
	beq	.L89
	cmp	r3, #1
	strheq	ip, [r0, #164]	@ movhi
	beq	.L89
	cmp	r3, #2
	moveq	r3, #4
	strheq	r3, [r0, #164]	@ movhi
	b	.L89
.L101:
	cmp	ip, #1
	beq	.L120
.L106:
	bics	r3, ip, #2
	bne	.L98
	ldr	r3, [r2, #36]
	cmp	r3, #0
	moveq	r3, #66
	strheq	r3, [r0, #164]	@ movhi
	beq	.L89
	cmp	r3, #1
	moveq	r3, #64
	strheq	r3, [r0, #164]	@ movhi
	beq	.L89
	cmp	r3, #2
	moveq	r3, #68
	strheq	r3, [r0, #164]	@ movhi
	b	.L89
.L94:
	bics	r3, ip, #2
	beq	.L91
.L98:
	mov	r3, #0
	ldr	lr, [sp], #4
	str	r3, [r2, #36]
	bx	lr
.L124:
	.align	2
.L123:
	.word	seeker
	.word	hOff
	.word	vOff
	.word	king
	.word	shadowOAM
	.word	stickTime
	.size	drawSeeker, .-drawSeeker
	.align	2
	.global	initSnake
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSnake, %function
initSnake:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #7
	mov	lr, #15
	mov	ip, #128
	mov	r0, #256
	mov	r1, #2
	ldr	r3, .L127
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #40]
	str	r2, [r3, #28]
	str	r2, [r3, #48]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	pop	{r4, lr}
	bx	lr
.L128:
	.align	2
.L127:
	.word	snake
	.size	initSnake, .-initSnake
	.section	.rodata.str1.4
	.align	2
.LC5:
	.ascii	"magic\000"
	.align	2
.LC6:
	.ascii	"go away\000"
	.align	2
.LC7:
	.ascii	"go to minigame\000"
	.text
	.align	2
	.global	updateSnake
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSnake, %function
updateSnake:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L143
	ldr	r3, [r4, #24]
	cmp	r3, #0
	ldr	r2, [r4, #48]
	beq	.L130
	cmp	r2, #0
	subne	r3, r3, #1
	strne	r3, [r4, #24]
.L129:
	pop	{r4, r5, r6, lr}
	bx	lr
.L130:
	cmp	r2, #0
	beq	.L129
	ldr	r3, .L143+4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L132
	ldr	r3, .L143+8
	ldrh	r3, [r3, #48]
	ands	r5, r3, #256
	beq	.L142
.L132:
	ldr	r5, .L143+12
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L133
	ldr	r3, .L143+16
	ldr	r0, .L143+20
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r1, #512
	ldr	r2, .L143+24
	str	r3, [r5]
	str	r3, [r4, #48]
	strh	r1, [r2, #8]	@ movhi
	b	.L129
.L133:
	mov	r1, #1
	ldr	r2, .L143+28
	ldr	r3, .L143+16
	ldr	r0, .L143+32
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	b	.L129
.L142:
	ldr	r3, .L143+16
	ldr	r0, .L143+36
	mov	lr, pc
	bx	r3
	mov	r2, #512
	ldr	r3, .L143+24
	str	r5, [r4, #48]
	strh	r2, [r3, #8]	@ movhi
	b	.L129
.L144:
	.align	2
.L143:
	.word	snake
	.word	king
	.word	67109120
	.word	stickTime
	.word	mgba_printf
	.word	.LC6
	.word	shadowOAM
	.word	fightTime
	.word	.LC7
	.word	.LC5
	.size	updateSnake, .-updateSnake
	.align	2
	.global	drawSnake
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSnake, %function
drawSnake:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L158
	ldrh	r3, [r1, #8]
	cmp	r3, #512
	bxeq	lr
	ldr	r0, .L158+4
	ldr	r3, .L158+8
	ldr	r2, [r0]
	ldr	r3, [r3]
	sub	r2, r2, r3
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	ip, .L158+12
	str	lr, [sp, #-4]!
	ldr	r3, [r0, #4]
	ldr	lr, [ip]
	ldr	ip, .L158+16
	sub	r3, r3, lr
	ldr	lr, [ip]
	lsl	r3, r3, #23
	ldr	ip, .L158+20
	lsr	r3, r3, #23
	cmp	lr, #0
	strh	r2, [r1, #8]	@ movhi
	strh	r3, [r1, #10]	@ movhi
	strh	ip, [r1, #12]	@ movhi
	beq	.L145
	ldr	r3, .L158+24
	ldrh	r3, [r3, #48]
	tst	r3, #256
	bne	.L145
	ldr	r3, [r0, #24]
	ldr	r2, .L158+28
	smull	r0, r2, r3, r2
	asr	r3, r3, #31
	rsb	r3, r3, r2, asr #3
	tst	r3, #1
	moveq	r2, #4352
	mov	r3, #67108864
	movne	r2, #8704
	strh	r2, [r3, #76]	@ movhi
	ldrh	r3, [r1, #8]
	orr	r3, r3, #4096
	strh	r3, [r1, #8]	@ movhi
.L145:
	ldr	lr, [sp], #4
	bx	lr
.L159:
	.align	2
.L158:
	.word	shadowOAM
	.word	snake
	.word	vOff
	.word	hOff
	.word	king
	.word	20492
	.word	67109120
	.word	1717986919
	.size	drawSnake, .-drawSnake
	.align	2
	.global	initBush
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBush, %function
initBush:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #20
	mov	r0, #32
	mov	lr, #220
	mov	r2, #0
	mov	ip, #2
	ldr	r3, .L164
.L161:
	str	r1, [r3, #4]
	add	r1, r1, #80
	cmp	r1, #420
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	lr, [r3]
	str	r2, [r3, #28]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	ip, [r3, #40]
	str	r2, [r3, #24]
	add	r3, r3, #52
	bne	.L161
	ldr	lr, [sp], #4
	bx	lr
.L165:
	.align	2
.L164:
	.word	bush
	.size	initBush, .-initBush
	.align	2
	.global	updateBush
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBush, %function
updateBush:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L190
	ldr	r0, .L190+4
	ldr	r1, .L190+8
	push	{r4, r5, r6, lr}
	ldr	r2, [r3, #16]
	ldr	r4, [r3, #4]
	ldrh	r0, [r0]
	ldrh	lr, [r1]
	ldr	r3, .L190+12
	add	r2, r4, r2
	sub	r5, r2, #1
	and	r0, r0, #1
	and	lr, lr, #1
	add	ip, r3, #260
.L172:
	cmp	r0, #0
	ldr	r2, [r3, #44]
	beq	.L167
	cmp	lr, #0
	bne	.L167
	ldr	r6, [r3, #4]
	ldr	r1, [r3, #16]
	add	r1, r6, r1
	sub	r1, r1, #1
	cmp	r4, r1
	bge	.L167
	cmp	r6, r5
	blt	.L189
.L167:
	cmp	r2, #0
	bne	.L188
.L170:
	add	r3, r3, #52
	cmp	r3, ip
	bne	.L172
	pop	{r4, r5, r6, lr}
	bx	lr
.L189:
	cmp	r2, #0
	beq	.L174
.L188:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	bne	.L168
.L171:
	sub	r2, r2, #1
	str	r2, [r3, #44]
	b	.L170
.L174:
	mov	r1, #15
	mov	r2, #300
.L168:
	sub	r1, r1, #1
	str	r1, [r3, #24]
	b	.L171
.L191:
	.align	2
.L190:
	.word	seeker
	.word	oldButtons
	.word	buttons
	.word	bush
	.size	updateBush, .-updateBush
	.align	2
	.global	drawBush
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBush, %function
drawBush:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L210
	ldr	r3, [r3]
	ldr	r1, .L210+4
	ldr	r2, .L210+8
	cmp	r3, #0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldrh	ip, [r1]
	ldrh	lr, [r2]
	ldr	r1, .L210+12
	ldr	r2, .L210+16
	ldr	r8, .L210+20
	ldr	r7, .L210+24
	bne	.L193
	ldr	r6, .L210+28
	ldr	r5, .L210+32
	add	r4, r2, #260
.L195:
	ldr	r0, [r2, #24]
	cmp	r0, #0
	movne	r0, r6
	moveq	r0, r5
	ldr	r3, [r2, #4]
	ldr	r9, [r2]
	sub	r3, r3, lr
	and	r3, r3, r8
	add	r2, r2, #52
	orr	r3, r3, r7
	sub	r9, r9, ip
	cmp	r4, r2
	strh	r3, [r1, #50]	@ movhi
	strh	r0, [r1, #52]	@ movhi
	strh	r9, [r1, #48]	@ movhi
	add	r1, r1, #8
	bne	.L195
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L193:
	cmp	r3, #1
	beq	.L209
	ldr	r6, .L210+36
	ldr	r5, .L210+40
	add	r4, r2, #260
.L201:
	ldr	r0, [r2, #24]
	cmp	r0, #0
	movne	r0, r6
	moveq	r0, r5
	ldr	r3, [r2, #4]
	ldr	r9, [r2]
	sub	r3, r3, lr
	and	r3, r3, r8
	add	r2, r2, #52
	orr	r3, r3, r7
	sub	r9, r9, ip
	cmp	r4, r2
	strh	r3, [r1, #50]	@ movhi
	strh	r0, [r1, #52]	@ movhi
	strh	r9, [r1, #48]	@ movhi
	add	r1, r1, #8
	bne	.L201
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L209:
	ldr	r6, .L210+44
	ldr	r5, .L210+48
	add	r4, r2, #260
.L198:
	ldr	r0, [r2, #24]
	cmp	r0, #0
	movne	r0, r6
	moveq	r0, r5
	ldr	r3, [r2, #4]
	ldr	r9, [r2]
	sub	r3, r3, lr
	and	r3, r3, r8
	add	r2, r2, #52
	orr	r3, r3, r7
	sub	r9, r9, ip
	cmp	r2, r4
	strh	r3, [r1, #50]	@ movhi
	strh	r0, [r1, #52]	@ movhi
	strh	r9, [r1, #48]	@ movhi
	add	r1, r1, #8
	bne	.L198
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L211:
	.align	2
.L210:
	.word	lvl
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	bush
	.word	511
	.word	-32768
	.word	17088
	.word	16960
	.word	17096
	.word	16968
	.word	17092
	.word	16964
	.size	drawBush, .-drawBush
	.align	2
	.global	initTree
	.syntax unified
	.arm
	.fpu softvfp
	.type	initTree, %function
initTree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #48
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	r1, #30
	mov	r0, #32
	mov	lr, #170
	ldr	r3, .L214
	str	ip, [r3, #16]
	str	ip, [r3, #68]
	str	ip, [r3, #120]
	ldr	ip, .L214+4
	str	lr, [r3, #56]
	str	ip, [r3, #108]
	str	r0, [r3, #20]
	str	r0, [r3, #72]
	str	r0, [r3, #124]
	str	r1, [r3, #4]
	str	r1, [r3]
	str	r1, [r3, #52]
	str	r1, [r3, #104]
	str	r2, [r3, #28]
	str	r2, [r3, #44]
	str	r2, [r3, #80]
	str	r2, [r3, #96]
	str	r2, [r3, #132]
	str	r2, [r3, #148]
	ldr	lr, [sp], #4
	bx	lr
.L215:
	.align	2
.L214:
	.word	tree
	.word	310
	.size	initTree, .-initTree
	.align	2
	.global	updateTree
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateTree, %function
updateTree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r10, .L254
	mov	r6, #0
	mov	r4, r10
	ldr	r5, .L254+4
	ldr	r7, .L254+8
	ldr	r8, .L254+12
	ldr	r9, .L254+16
	ldr	fp, .L254+20
	sub	sp, sp, #28
.L231:
	ldr	r3, .L254+24
	ldrh	r2, [r3, #48]
	add	r0, r5, #16
	tst	r2, #512
	ldm	r0, {r0, ip}
	ldm	r5, {r1, r2}
	bne	.L217
	ldrh	r3, [r3, #48]
	lsr	r3, r3, #8
	eor	r3, r3, #1
	cmp	r6, #2
	movne	r3, #0
	andeq	r3, r3, #1
	cmp	r3, #0
	bne	.L249
.L217:
	str	r2, [sp]
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L219
	ldrh	r3, [r8]
	tst	r3, #1
	ldr	r2, [r4, #44]
	beq	.L220
	ldrh	r3, [r9]
	tst	r3, #1
	beq	.L250
.L220:
	cmp	r2, #0
	bne	.L248
.L229:
	add	r6, r6, #1
	cmp	r6, #3
	add	r4, r4, #52
	bne	.L231
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L219:
	ldr	r2, [r4, #44]
	cmp	r2, #0
	beq	.L229
.L248:
	sub	r2, r2, #1
.L232:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r4, #24]
	str	r2, [r4, #44]
	b	.L229
.L250:
	cmp	r2, #0
	bne	.L248
	ldr	r3, .L254+28
	mov	r0, fp
	ldr	r1, [r3]
	ldr	r3, .L254+32
	mov	lr, pc
	bx	r3
	mov	r2, #15
	ldr	r3, .L254+36
	str	r2, [r4, #24]
	mov	lr, pc
	bx	r3
	ldr	r3, .L254+40
	ldr	r1, [r3]
	ldr	r3, .L254+44
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	ldr	r3, .L254+36
	beq	.L251
	cmp	r1, #1
	beq	.L252
	mov	lr, pc
	bx	r3
	ldr	r3, .L254+48
	ldr	r1, [r3]
	ldr	r3, .L254+44
	rsb	r1, r1, #3
	mov	lr, pc
	bx	r3
	ldr	r2, .L254+52
	ldr	r0, .L254+56
	str	r1, [sp, #20]
	mov	lr, pc
	bx	r2
	ldr	r3, [sp, #20]
	ldr	r1, .L254+60
	add	r2, r3, r3, lsl #1
	add	r2, r3, r2, lsl #2
	add	r2, r1, r2, lsl #2
	ldr	r0, [r2, #48]
	cmp	r0, #0
	bne	.L253
.L225:
	mov	r3, #1
	str	r3, [r2, #48]
.L227:
	ldr	r0, .L254+64
	ldr	ip, .L254+48
	ldr	lr, .L254+40
	ldr	r1, [r0]
	ldr	r2, [ip]
	ldr	r3, [lr]
	sub	r1, r1, #1
	add	r2, r2, #1
	sub	r3, r3, #1
	str	r1, [r0]
	str	r2, [ip]
	str	r3, [lr]
.L223:
	ldr	r2, .L254+68
	b	.L232
.L249:
	str	ip, [sp, #12]
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	str	r2, [sp]
	add	r2, r10, #120
	ldm	r2, {r2, r3}
	ldr	r1, [r10, #104]
	ldr	r0, [r10, #108]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r3, #1
	ldrne	r1, .L254+72
	add	r0, r5, #16
	strne	r3, [r1]
	ldmeq	r5, {r1, r2}
	ldrne	r2, [r5, #4]
	ldrne	r1, [r5]
	ldm	r0, {r0, ip}
	b	.L217
.L253:
	ldr	r2, .L254+76
	add	r0, r3, #1
	smull	ip, r2, r0, r2
	sub	r2, r2, r0, asr #31
	add	r2, r2, r2, lsl #1
	sub	r2, r0, r2
	add	r0, r2, r2, lsl #1
	add	r2, r2, r0, lsl #2
	add	r2, r1, r2, lsl #2
	ldr	r0, [r2, #48]
	cmp	r0, #0
	beq	.L225
	mov	r2, #1
	ldr	r0, .L254+76
	add	r3, r3, #2
	smull	ip, r0, r3, r0
	sub	r0, r0, r3, asr #31
	add	r0, r0, r0, lsl r2
	sub	r3, r3, r0
	add	r0, r3, r3, lsl r2
	add	r3, r3, r0, lsl #2
	add	r1, r1, r3, lsl #2
	str	r2, [r1, #48]
	b	.L227
.L251:
	ldr	r3, .L254+52
	ldr	r0, .L254+80
	mov	lr, pc
	bx	r3
	b	.L223
.L252:
	ldr	r3, .L254+52
	ldr	r0, .L254+84
	str	r1, [sp, #20]
	mov	lr, pc
	bx	r3
	ldr	r3, .L254+88
	ldr	r2, [r3, #48]
	cmp	r2, #0
	ldr	r1, [sp, #20]
	bne	.L223
	ldr	r0, .L254+92
	ldr	ip, [r4]
	ldr	r0, [r0]
	sub	r0, ip, r0
	mvn	r0, r0, lsl #17
	mvn	r0, r0, lsr #17
	mov	lr, #120
	str	r1, [r3, #48]
	ldr	r1, .L254+96
	str	ip, [r3]
	ldr	ip, [r4, #4]
	strh	r0, [r1, #8]	@ movhi
	ldr	r1, .L254+100
	str	r2, [sp, #20]
	str	lr, [r3, #24]
	str	ip, [r3, #4]
	mov	lr, pc
	bx	r1
	ldr	r3, .L254+104
	ldr	r2, [sp, #20]
	ldr	r1, [r3]
	ldr	r0, .L254+108
	ldr	r3, .L254+32
	mov	lr, pc
	bx	r3
	b	.L223
.L255:
	.align	2
.L254:
	.word	tree
	.word	seeker
	.word	collision
	.word	oldButtons
	.word	buttons
	.word	rustle_data
	.word	67109120
	.word	rustle_length
	.word	playSoundB
	.word	rand
	.word	hideCount
	.word	__aeabi_idivmod
	.word	friendsFound
	.word	mgba_printf
	.word	.LC3
	.word	hiders
	.word	friendsRemaining
	.word	299
	.word	king
	.word	1431655766
	.word	.LC0
	.word	.LC1
	.word	snake
	.word	vOff
	.word	shadowOAM
	.word	stopSoundB
	.word	hiss_length
	.word	hiss_data
	.size	updateTree, .-updateTree
	.align	2
	.global	drawTree
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTree, %function
drawTree:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L274
	ldr	r3, [r3]
	cmp	r3, #0
	push	{r4, r5, r6, r7, r8, r9, lr}
	bne	.L257
	ldr	r1, .L274+4
	ldr	r3, .L274+8
	ldr	r2, .L274+12
	ldrh	r8, [r1]
	ldrh	r7, [r3]
	ldr	r1, .L274+16
	ldr	r6, .L274+20
	ldr	r5, .L274+24
	ldr	r4, .L274+28
	ldr	lr, .L274+32
	add	ip, r2, #156
.L260:
	ldr	r0, [r2, #24]
	cmp	r0, #0
	movne	r0, r4
	moveq	r0, lr
	ldr	r3, [r2, #4]
	ldr	r9, [r2]
	sub	r3, r3, r7
	and	r3, r3, r6
	sub	r9, r9, r8
	add	r2, r2, #52
	orr	r3, r3, r5
	orr	r9, r9, #16384
	cmp	ip, r2
	strh	r3, [r1, #90]	@ movhi
	strh	r9, [r1, #88]	@ movhi
	strh	r0, [r1, #92]	@ movhi
	add	r1, r1, #8
	bne	.L260
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L257:
	cmp	r3, #1
	beq	.L261
	ldr	r1, .L274+4
	ldr	r3, .L274+8
	ldr	r2, .L274+12
	ldrh	r8, [r1]
	ldrh	r7, [r3]
	ldr	r1, .L274+16
	ldr	r5, .L274+20
	ldr	r4, .L274+24
	ldr	lr, .L274+36
	ldr	ip, .L274+40
	add	r6, r2, #156
.L266:
	ldr	r0, [r2, #24]
	cmp	r0, #0
	movne	r0, lr
	moveq	r0, ip
	ldr	r3, [r2, #4]
	ldr	r9, [r2]
	sub	r3, r3, r7
	and	r3, r3, r5
	sub	r9, r9, r8
	add	r2, r2, #52
	orr	r3, r3, r4
	orr	r9, r9, #16384
	cmp	r6, r2
	strh	r3, [r1, #90]	@ movhi
	strh	r9, [r1, #88]	@ movhi
	strh	r0, [r1, #92]	@ movhi
	add	r1, r1, #8
	bne	.L266
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L261:
	ldr	r1, .L274+4
	ldr	r3, .L274+8
	ldr	r2, .L274+12
	ldrh	r8, [r1]
	ldrh	r7, [r3]
	ldr	r1, .L274+16
	ldr	r6, .L274+20
	ldr	r5, .L274+24
	ldr	r4, .L274+44
	ldr	lr, .L274+48
	add	ip, r2, #156
.L264:
	ldr	r0, [r2, #24]
	cmp	r0, #0
	movne	r0, r4
	moveq	r0, lr
	ldr	r3, [r2, #4]
	ldr	r9, [r2]
	sub	r3, r3, r7
	and	r3, r3, r6
	sub	r9, r9, r8
	add	r2, r2, #52
	orr	r3, r3, r5
	orr	r9, r9, #16384
	cmp	ip, r2
	strh	r3, [r1, #90]	@ movhi
	strh	r9, [r1, #88]	@ movhi
	strh	r0, [r1, #92]	@ movhi
	add	r1, r1, #8
	bne	.L264
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L275:
	.align	2
.L274:
	.word	lvl
	.word	vOff
	.word	hOff
	.word	tree
	.word	shadowOAM
	.word	511
	.word	-16384
	.word	16832
	.word	16704
	.word	16848
	.word	16720
	.word	16840
	.word	16712
	.size	drawTree, .-drawTree
	.align	2
	.global	initHiders
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHiders, %function
initHiders:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r2, #0
	mov	r5, #214
	mov	r4, #3
	mov	lr, #2
	ldr	r1, .L281
	ldr	r3, .L281+4
	add	r0, r1, #16
	ldm	r0, {r0, ip}
	add	r1, r3, #156
.L278:
	str	ip, [r3, #20]
	str	r0, [r3, #16]
	str	r2, [r3, #48]
	str	r5, [r3]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r4, [r3, #40]
	str	lr, [r3, #28]
	add	r3, r3, #52
	cmp	r3, r1
	bne	.L278
	pop	{r4, r5, lr}
	bx	lr
.L282:
	.align	2
.L281:
	.word	seeker
	.word	hiders
	.size	initHiders, .-initHiders
	.align	2
	.global	updateHiders
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHiders, %function
updateHiders:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r2, #0
	mov	r6, #214
	mov	r10, #3
	ldr	r3, .L302
	ldr	r0, [r3, #4]
	ldr	ip, [r3, #16]
	ldr	r4, [r3, #28]
	ldr	r9, [r3, #36]
	ldr	r3, .L302+4
	add	r5, r0, ip
	sub	r8, r0, ip
	add	r7, r0, ip, lsl #1
.L292:
	ldr	r1, [r3, #48]
	cmp	r1, #0
	beq	.L285
	ldr	r1, [r3, #4]
	add	lr, r5, r2
	cmp	r1, lr
	str	r6, [r3]
	blt	.L286
	cmp	r4, #0
	str	lr, [r3, #4]
	add	r1, r7, r2, lsl #1
	bne	.L287
	cmp	r0, r1
	str	r4, [r3, #28]
	str	r9, [r3, #36]
	blt	.L285
	sub	fp, r8, r2
	str	fp, [r3, #4]
	b	.L291
.L286:
	add	r1, ip, r1
	add	r1, r1, r2
	cmp	r0, r1
	blt	.L290
.L293:
	cmp	r4, #2
	sub	fp, r8, r2
	str	fp, [r3, #4]
	streq	r4, [r3, #28]
	streq	r9, [r3, #36]
.L291:
	add	r1, ip, fp
	add	r1, r1, r2
	cmp	r0, r1
	cmplt	fp, lr
	blt	.L290
.L285:
	add	r2, r2, #16
	cmp	r2, #48
	add	r3, r3, #52
	bne	.L292
.L301:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L290:
	add	r2, r2, #16
	cmp	r2, #48
	str	r10, [r3, #28]
	add	r3, r3, #52
	bne	.L292
	b	.L301
.L287:
	cmp	r0, r1
	bge	.L293
	add	r2, r2, #16
	cmp	r2, #48
	add	r3, r3, #52
	bne	.L292
	b	.L301
.L303:
	.align	2
.L302:
	.word	seeker
	.word	hiders
	.size	updateHiders, .-updateHiders
	.align	2
	.global	drawHiders
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHiders, %function
drawHiders:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, lr}
	mov	r5, r2
	ldr	r1, .L318
	ldr	r3, .L318+4
	ldrh	lr, [r1]
	ldrh	r4, [r3]
	ldr	r1, .L318+8
	ldr	r3, .L318+12
.L313:
	ldr	r0, [r3, #48]
	cmp	r0, #0
	add	r2, r2, #1
	beq	.L306
	ldr	r0, [r3]
	sub	r0, r0, lr
	ldr	ip, [r3, #28]
	strh	r0, [r1, #168]	@ movhi
	ldr	r0, [r3, #4]
	cmp	ip, #2
	sub	r0, r0, r4
	orreq	r0, r0, #20480
	strheq	r0, [r1, #170]	@ movhi
	beq	.L308
	cmp	ip, #0
	orr	r0, r0, #16384
	strh	r0, [r1, #170]	@ movhi
	strne	r5, [r3, #36]
	beq	.L308
.L306:
	cmp	r2, #3
	add	r3, r3, #52
	add	r1, r1, #8
	bne	.L313
	pop	{r4, r5, lr}
	bx	lr
.L308:
	ldr	r0, [r3, #36]
	cmp	r0, #0
	beq	.L316
	cmp	r0, #1
	beq	.L317
	cmp	r0, #2
	bne	.L306
	lsl	ip, r2, #16
	lsr	ip, ip, #16
	lsl	r0, ip, #6
	add	r0, r0, #68
	orr	r0, r0, ip, lsl #12
	strh	r0, [r1, #172]	@ movhi
	b	.L306
.L316:
	lsl	ip, r2, #16
	lsr	ip, ip, #16
	lsl	r0, ip, #6
	add	r0, r0, #66
	orr	r0, r0, ip, lsl #12
	strh	r0, [r1, #172]	@ movhi
	b	.L306
.L317:
	lsl	r0, r2, #16
	lsr	r0, r0, #16
	add	ip, r0, #1
	lsl	r0, r0, #12
	orr	r0, r0, ip, lsl #6
	strh	r0, [r1, #172]	@ movhi
	b	.L306
.L319:
	.align	2
.L318:
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	hiders
	.size	drawHiders, .-drawHiders
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L332
	bl	drawBush
	bl	drawSeeker
	bl	drawSnake
	bl	drawTree
	bl	drawHiders
	ldrh	r3, [r4, #16]
	cmp	r3, #512
	blne	drawStick.part.0
.L321:
	ldr	r3, .L332+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L332+8
	ldr	r2, [r3, #48]
	cmp	r2, #0
	moveq	r2, #15
	movne	r2, #512
	moveq	r1, #4224
	strhne	r2, [r4, #136]	@ movhi
	strheq	r2, [r4, #136]	@ movhi
	strheq	r2, [r4, #138]	@ movhi
	ldr	r2, [r3, #100]
	strheq	r1, [r4, #140]	@ movhi
	cmp	r2, #0
	moveq	r1, #24
	moveq	r2, #8384
	movne	r2, #512
	moveq	r0, #15
	ldr	r3, [r3, #152]
	strheq	r1, [r4, #146]	@ movhi
	strheq	r2, [r4, #148]	@ movhi
	strhne	r2, [r4, #144]	@ movhi
	strheq	r0, [r4, #144]	@ movhi
	cmp	r3, #0
	movne	r3, #512
	moveq	r1, #15
	moveq	r2, #33
	moveq	r3, #12544
	strhne	r3, [r4, #152]	@ movhi
	strheq	r1, [r4, #152]	@ movhi
	strheq	r2, [r4, #154]	@ movhi
	strheq	r3, [r4, #156]	@ movhi
	mov	r2, #117440512
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L332
	ldr	r4, .L332+12
	mov	lr, pc
	bx	r4
	mov	r0, #67108864
	ldr	r3, .L332+16
	ldr	r3, [r3]
	lsl	r2, r3, #16
	lsr	r2, r2, #16
	strh	r2, [r0, #20]	@ movhi
	ldr	r2, .L332+20
	ldr	r1, [r2]
	add	r3, r3, r3, lsr #31
	add	r2, r1, r1, lsr #31
	asr	r3, r3, #1
	asr	r2, r2, #1
	lsl	r3, r3, #16
	lsl	r1, r1, #16
	lsl	r2, r2, #16
	lsr	r3, r3, #16
	lsr	r1, r1, #16
	lsr	r2, r2, #16
	strh	r1, [r0, #22]	@ movhi
	pop	{r4, lr}
	strh	r2, [r0, #26]	@ movhi
	strh	r3, [r0, #24]	@ movhi
	bx	lr
.L333:
	.align	2
.L332:
	.word	shadowOAM
	.word	waitForVBlank
	.word	hiders
	.word	DMANow
	.word	hOff
	.word	vOff
	.size	drawGame, .-drawGame
	.align	2
	.global	initStick
	.syntax unified
	.arm
	.fpu softvfp
	.type	initStick, %function
initStick:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #0
	mov	lr, #8
	mov	ip, #4
	mov	r0, #300
	ldr	r3, .L336
	ldr	r2, [r3]
	ldr	r3, .L336+4
	add	r2, r2, #118
	str	r2, [r3]
	ldr	r2, .L336+8
	str	lr, [r3, #20]
	str	ip, [r3, #16]
	str	r1, [r3, #28]
	str	r1, [r3, #48]
	str	r0, [r2]
	ldr	lr, [sp], #4
	bx	lr
.L337:
	.align	2
.L336:
	.word	vOff
	.word	stick
	.word	manifestStick
	.size	initStick, .-initStick
	.align	2
	.global	updateStick
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateStick, %function
updateStick:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r4, .L345
	ldr	r3, [r4]
	cmp	r3, #0
	sub	sp, sp, #20
	beq	.L339
	mov	r1, #512
	ldr	r2, .L345+4
	ldr	r3, .L345+8
	strh	r1, [r2, #16]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L345+12
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #2
	ldr	r2, [r4]
	add	r3, r3, r3, lsl #2
	ldr	r1, .L345+16
	sub	r0, r0, r3, lsl #3
	add	r0, r0, #10
	sub	r3, r2, #1
	str	r0, [r1, #4]
	str	r3, [r4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L339:
	ldr	r3, .L345+16
	ldr	r1, .L345+20
	ldr	r2, [r3]
	ldr	ip, [r1]
	sub	ip, r2, ip
	mvn	ip, ip, lsl #17
	mvn	ip, ip, lsr #17
	add	r1, r3, #16
	ldm	r1, {r1, r5}
	ldr	r3, [r3, #4]
	ldr	r0, .L345+24
	str	r2, [sp, #4]
	str	r5, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	ldr	lr, .L345+4
	add	r2, r0, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r0]
	strh	ip, [lr, #16]	@ movhi
	ldr	r5, .L345+28
	ldr	r0, [r0, #4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r2, #600
	movne	r1, #900
	ldrne	r3, .L345+32
	strne	r1, [r4]
	strne	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L346:
	.align	2
.L345:
	.word	manifestStick
	.word	shadowOAM
	.word	rand
	.word	1374389535
	.word	stick
	.word	vOff
	.word	seeker
	.word	collision
	.word	stickTime
	.size	updateStick, .-updateStick
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updateSeeker
	bl	updateSnake
	bl	updateBush
	bl	updateTree
	bl	updateStick
	bl	updateHiders
	ldr	r3, .L353
	ldr	r3, [r3]
	cmp	r3, #3
	bne	.L347
	ldr	r2, .L353+4
	ldr	r3, [r2]
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r2]
.L347:
	pop	{r4, lr}
	bx	lr
.L354:
	.align	2
.L353:
	.word	friendsFound
	.word	buffer
	.size	updateGame, .-updateGame
	.align	2
	.global	drawStick
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStick, %function
drawStick:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L357
	ldrh	r3, [r3, #16]
	cmp	r3, #512
	bxeq	lr
	b	drawStick.part.0
.L358:
	.align	2
.L357:
	.word	shadowOAM
	.size	drawStick, .-drawStick
	.align	2
	.global	initBG
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBG, %function
initBG:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L363
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L362
	cmp	r3, #2
	bxne	lr
	mov	r3, #83886080
	ldrh	ip, [r3, #14]
	ldrh	r0, [r3, #16]
	ldrh	r1, [r3, #28]
	ldrh	r2, [r3, #30]
	strh	ip, [r3, #6]	@ movhi
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3, #20]	@ movhi
	strh	r2, [r3, #22]	@ movhi
	bx	lr
.L362:
	mov	r3, #83886080
	ldrh	ip, [r3, #10]
	ldrh	r0, [r3, #12]
	ldrh	r1, [r3, #24]
	ldrh	r2, [r3, #26]
	strh	ip, [r3, #6]	@ movhi
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3, #20]	@ movhi
	strh	r2, [r3, #22]	@ movhi
	bx	lr
.L364:
	.align	2
.L363:
	.word	lvl
	.size	initBG, .-initBG
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, #96
	mov	r4, #0
	mov	r0, #5
	mov	r8, #3
	mov	r2, #120
	ldr	r10, .L369
	ldr	r1, .L369+4
	str	r3, [r10]
	ldr	r3, .L369+8
	str	r4, [r1]
	str	r4, [r3]
	ldr	r1, .L369+12
	ldr	r3, .L369+16
	str	r4, [r1]
	str	r0, [r3]
	ldr	ip, .L369+20
	ldr	r1, .L369+24
	ldr	r3, .L369+28
	ldr	r9, .L369+32
	str	r4, [ip]
	str	r4, [r9]
	str	r8, [r1]
	str	r2, [r3]
	bl	initBG
	ldr	r0, .L369+36
	str	r8, [r0, #40]
	ldr	r8, .L369+40
	mov	r7, #15
	str	r4, [r0, #24]
	str	r4, [r0, #36]
	mov	r3, r4
	str	r4, [r8, #28]
	str	r4, [r8, #48]
	str	r4, [r8, #24]
	str	r4, [r8, #36]
	mov	r4, #7
	mov	r5, #2
	ldr	r9, [r9]
	str	r7, [r0, #16]
	add	r9, r9, r7
	str	r7, [r8, #20]
	str	r4, [r8, #16]
	mov	r7, #256
	mov	r4, #128
	mov	r6, #1
	mov	fp, #14
	mov	lr, r5
	mov	r2, #20
	mov	r1, #32
	mov	ip, #220
	ldr	r10, [r10]
	stm	r8, {r4, r7}
	add	r10, r10, #118
	str	r10, [r0]
	str	r9, [r0, #4]
	str	fp, [r0, #20]
	str	r5, [r0, #28]
	str	r6, [r0, #12]
	str	r6, [r0, #8]
	str	r5, [r8, #40]
	ldr	r0, .L369+44
.L366:
	str	r2, [r0, #4]
	add	r2, r2, #80
	cmp	r2, #420
	str	r1, [r0, #16]
	str	r1, [r0, #20]
	str	ip, [r0]
	str	r3, [r0, #28]
	str	r3, [r0, #44]
	str	r3, [r0, #36]
	str	lr, [r0, #40]
	str	r3, [r0, #24]
	add	r0, r0, #52
	bne	.L366
	mov	r0, #30
	mov	ip, #48
	mov	r6, #170
	mov	r5, #8
	mov	r4, #4
	mov	lr, #300
	ldr	r2, .L369+48
	str	r1, [r2, #20]
	str	r1, [r2, #72]
	str	r1, [r2, #124]
	ldr	r1, .L369+52
	str	ip, [r2, #16]
	str	r3, [r2, #28]
	str	r1, [r2, #108]
	str	r0, [r2]
	str	r3, [r2, #44]
	str	ip, [r2, #68]
	str	r3, [r2, #80]
	str	r3, [r2, #96]
	str	ip, [r2, #120]
	str	r3, [r2, #132]
	str	r3, [r2, #148]
	str	r6, [r2, #56]
	str	r0, [r2, #4]
	str	r0, [r2, #52]
	str	r0, [r2, #104]
	ldr	r1, .L369+56
	ldr	r2, .L369+60
	str	lr, [r1]
	str	r5, [r2, #20]
	str	r3, [r2, #28]
	str	r3, [r2, #48]
	str	r10, [r2]
	str	r4, [r2, #16]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L370:
	.align	2
.L369:
	.word	vOff
	.word	friendsFound
	.word	stickTime
	.word	king
	.word	hideCount
	.word	fightTime
	.word	friendsRemaining
	.word	buffer
	.word	hOff
	.word	seeker
	.word	snake
	.word	bush
	.word	tree
	.word	310
	.word	manifestStick
	.word	stick
	.size	initGame, .-initGame
	.global	collisionMap
	.comm	king,4,4
	.comm	buffer,4,4
	.comm	friendsRemaining,4,4
	.comm	rustle,4,4
	.comm	fightTime,4,4
	.comm	manifestStick,4,4
	.comm	stickTime,4,4
	.comm	hideCount,4,4
	.comm	shadowOAM,1024,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	tree,156,4
	.comm	bush,260,4
	.comm	stick,52,4
	.comm	hiders,156,4
	.comm	snake,52,4
	.comm	seeker,52,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	collisionMap, %object
	.size	collisionMap, 4
collisionMap:
	.word	forestCMBitmap
	.ident	"GCC: (devkitARM release 53) 9.1.0"

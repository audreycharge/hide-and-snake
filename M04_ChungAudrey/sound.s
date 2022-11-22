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
	.file	"sound.c"
	.text
	.align	2
	.global	setupSounds
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupSounds, %function
setupSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r0, #128
	mov	r1, #0
	ldr	r2, .L3
	strh	r0, [r3, #132]	@ movhi
	strh	r1, [r3, #128]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	-1266
	.size	setupSounds, .-setupSounds
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.global	__aeabi_d2iz
	.align	2
	.global	playSoundA
	.syntax unified
	.arm
	.fpu softvfp
	.type	playSoundA, %function
playSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, #0
	ldr	r3, .L7+8
	ldr	r3, [r3]
	mov	r5, r1
	mov	r6, r0
	mov	r8, r2
	mov	r1, r0
	str	r7, [r3, #20]
	mov	r0, #1
	mov	r3, #910163968
	ldr	r2, .L7+12
	ldr	r4, .L7+16
	mov	lr, pc
	bx	r4
	mov	r2, #1
	mvn	r0, #1520
	mov	r1, #128
	ldr	r4, .L7+20
	ldr	r3, .L7+24
	strh	r7, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	mov	r0, r5
	str	r5, [r4, #4]
	str	r2, [r4, #12]
	ldr	r3, .L7+28
	str	r6, [r4]
	str	r8, [r4, #16]
	mov	lr, pc
	bx	r3
	ldr	r5, .L7+32
	adr	r3, .L7
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r5
	mov	r2, #0
	ldr	r5, .L7+36
	ldr	r3, .L7+40
	mov	lr, pc
	bx	r5
	ldr	r3, .L7+44
	mov	lr, pc
	bx	r3
	str	r7, [r4, #28]
	str	r0, [r4, #20]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L8:
	.align	3
.L7:
	.word	1443109011
	.word	1078844686
	.word	dma
	.word	67109024
	.word	DMANow
	.word	soundA
	.word	67109120
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	1086687360
	.word	__aeabi_d2iz
	.size	playSoundA, .-playSoundA
	.align	2
	.global	playSoundB
	.syntax unified
	.arm
	.fpu softvfp
	.type	playSoundB, %function
playSoundB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, #0
	ldr	r3, .L11+8
	ldr	r3, [r3]
	mov	r5, r1
	mov	r6, r0
	mov	r8, r2
	mov	r1, r0
	str	r7, [r3, #32]
	mov	r0, #2
	mov	r3, #910163968
	ldr	r2, .L11+12
	ldr	r4, .L11+16
	mov	lr, pc
	bx	r4
	mov	r2, #1
	mvn	r0, #1520
	mov	r1, #128
	ldr	r4, .L11+20
	ldr	r3, .L11+24
	strh	r7, [r3, #6]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	strh	r1, [r3, #6]	@ movhi
	mov	r0, r5
	str	r5, [r4, #4]
	str	r2, [r4, #12]
	ldr	r3, .L11+28
	str	r6, [r4]
	str	r8, [r4, #16]
	mov	lr, pc
	bx	r3
	ldr	r5, .L11+32
	adr	r3, .L11
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r5
	mov	r2, #0
	ldr	r5, .L11+36
	ldr	r3, .L11+40
	mov	lr, pc
	bx	r5
	ldr	r3, .L11+44
	mov	lr, pc
	bx	r3
	str	r7, [r4, #28]
	str	r0, [r4, #20]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L12:
	.align	3
.L11:
	.word	1443109011
	.word	1078844686
	.word	dma
	.word	67109028
	.word	DMANow
	.word	soundB
	.word	67109120
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	1086687360
	.word	__aeabi_d2iz
	.size	playSoundB, .-playSoundB
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"loop\000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.text
	.align	2
	.global	interruptHandler
	.syntax unified
	.arm
	.fpu softvfp
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L38
	ldrh	r1, [r3, #2]
	tst	r1, #1
	push	{r4, lr}
	strh	r2, [r3, #8]	@ movhi
	beq	.L14
	ldr	r4, .L38+4
	ldr	r3, [r4, #12]
	cmp	r3, r2
	beq	.L16
	ldr	r3, [r4, #28]
	ldr	r2, [r4, #20]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [r4, #28]
	ble	.L16
	ldr	r3, [r4, #16]
	cmp	r3, #0
	bne	.L34
	ldr	r1, .L38+8
	ldr	r2, .L38+12
	ldr	r1, [r1]
	str	r3, [r4, #12]
	str	r3, [r1, #20]
	strh	r3, [r2, #2]	@ movhi
.L16:
	ldr	r3, .L38+16
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bne	.L35
.L20:
	mov	r2, #1
	ldr	r3, .L38
	strh	r2, [r3, #2]	@ movhi
.L14:
	ldr	r3, .L38
	ldrh	r3, [r3, #2]
	tst	r3, #32
	beq	.L23
	ldr	r3, .L38+20
	ldr	r1, [r3]
	cmp	r1, #0
	bne	.L36
.L23:
	mov	r1, #1
	ldr	r3, .L38
	ldrh	r2, [r3, #2]
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L35:
	ldr	r2, [r3, #28]
	ldr	r1, [r3, #20]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #28]
	ble	.L20
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L37
	ldr	r0, .L38+8
	ldr	r1, .L38+12
	ldr	r0, [r0]
	str	r2, [r3, #12]
	str	r2, [r0, #32]
	strh	r2, [r1, #6]	@ movhi
	b	.L20
.L36:
	sub	r1, r1, #1
	ldr	r2, .L38+24
	ldr	r0, .L38+28
	str	r1, [r3]
	mov	lr, pc
	bx	r2
	b	.L23
.L34:
	ldr	r3, .L38+24
	ldr	r0, .L38+32
	mov	lr, pc
	bx	r3
	ldr	r2, [r4, #16]
	ldm	r4, {r0, r1}
	bl	playSoundA
	b	.L16
.L37:
	ldm	r3, {r0, r1}
	bl	playSoundB
	b	.L20
.L39:
	.align	2
.L38:
	.word	67109376
	.word	soundA
	.word	dma
	.word	67109120
	.word	soundB
	.word	countdown
	.word	mgba_printf
	.word	.LC1
	.word	.LC0
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	setupInterrupts
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #67108864
	mov	ip, #0
	push	{r4, lr}
	ldrh	r2, [r1, #4]
	ldr	r4, .L42
	orr	r2, r2, #8
	ldrh	r3, [r4]
	ldr	r0, .L42+4
	strh	r2, [r1, #4]	@ movhi
	ldr	r2, .L42+8
	orr	r3, r3, #1
	strh	r3, [r4]	@ movhi
	strh	ip, [r4, #8]	@ movhi
	ldr	r3, .L42+12
	str	r2, [r0, #4092]
	mov	lr, pc
	bx	r3
	mov	r3, #1
	strh	r3, [r4, #8]	@ movhi
	pop	{r4, lr}
	bx	lr
.L43:
	.align	2
.L42:
	.word	67109376
	.word	50360320
	.word	interruptHandler
	.word	enableTimerInterrupts
	.size	setupInterrupts, .-setupInterrupts
	.align	2
	.global	pauseSound
	.syntax unified
	.arm
	.fpu softvfp
	.type	pauseSound, %function
pauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r2, .L45
	ldr	r0, .L45+4
	ldr	r1, .L45+8
	str	r3, [r0, #12]
	str	r3, [r1, #12]
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	bx	lr
.L46:
	.align	2
.L45:
	.word	67109120
	.word	soundA
	.word	soundB
	.size	pauseSound, .-pauseSound
	.align	2
	.global	unpauseSound
	.syntax unified
	.arm
	.fpu softvfp
	.type	unpauseSound, %function
unpauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #128
	mov	r3, #1
	ldr	r2, .L48
	ldr	ip, .L48+4
	ldr	r0, .L48+8
	strh	r1, [r2, #2]	@ movhi
	str	r3, [ip, #12]
	strh	r1, [r2, #6]	@ movhi
	str	r3, [r0, #12]
	bx	lr
.L49:
	.align	2
.L48:
	.word	67109120
	.word	soundA
	.word	soundB
	.size	unpauseSound, .-unpauseSound
	.align	2
	.global	stopSound
	.syntax unified
	.arm
	.fpu softvfp
	.type	stopSound, %function
stopSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r2, .L51
	ldr	ip, .L51+4
	strh	r3, [r2, #2]	@ movhi
	ldr	r0, .L51+8
	strh	r3, [r2, #6]	@ movhi
	ldr	r1, .L51+12
	ldr	r2, [ip]
	str	r3, [r0, #12]
	str	r3, [r2, #20]
	str	r3, [r1, #12]
	str	r3, [r2, #32]
	bx	lr
.L52:
	.align	2
.L51:
	.word	67109120
	.word	dma
	.word	soundA
	.word	soundB
	.size	stopSound, .-stopSound
	.align	2
	.global	stopSoundA
	.syntax unified
	.arm
	.fpu softvfp
	.type	stopSoundA, %function
stopSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r1, .L54
	ldr	r2, .L54+4
	strh	r3, [r1, #2]	@ movhi
	ldr	r2, [r2]
	ldr	r1, .L54+8
	str	r3, [r2, #20]
	str	r3, [r1, #12]
	bx	lr
.L55:
	.align	2
.L54:
	.word	67109120
	.word	dma
	.word	soundA
	.size	stopSoundA, .-stopSoundA
	.align	2
	.global	stopSoundB
	.syntax unified
	.arm
	.fpu softvfp
	.type	stopSoundB, %function
stopSoundB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r1, .L57
	ldr	r2, .L57+4
	strh	r3, [r1, #6]	@ movhi
	ldr	r2, [r2]
	ldr	r1, .L57+8
	str	r3, [r2, #32]
	str	r3, [r1, #12]
	bx	lr
.L58:
	.align	2
.L57:
	.word	67109120
	.word	dma
	.word	soundB
	.size	stopSoundB, .-stopSoundB
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"

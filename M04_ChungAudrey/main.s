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
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #0
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	ldr	r2, .L4+4
	ldr	r3, .L4+8
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+12
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L4+16
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+24
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	hideSprites
	.word	lvl
	.word	stopSound
	.word	startSong_length
	.word	startSong_data
	.word	playSoundA
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r2, #5888
	mov	r1, #0
	push	{r4, lr}
	strh	r2, [r3]	@ movhi
	add	r3, r3, #256
	ldrh	ip, [r3, #48]
	ldr	r0, .L8
	ldr	r2, .L8+4
	ldr	r3, .L8+8
	strh	ip, [r0]	@ movhi
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	buttons
	.word	oldButtons
	.word	setupSounds
	.word	setupInterrupts
	.size	initialize, .-initialize
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L12
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L12+4
	mov	lr, pc
	bx	r4
	mov	r3, #3712
	mov	r0, #3
	ldr	r2, .L12+8
	ldr	r1, .L12+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L12+16
	mov	r0, #3
	ldr	r1, .L12+20
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L12+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	DMANow
	.word	instructionsPal
	.word	100696064
	.word	instructionsTiles
	.word	100720640
	.word	instructionsMap
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	ldr	r3, .L21
	ldr	r1, .L21+4
	push	{r4, lr}
	mov	r0, #3
	strh	r3, [r2, #8]	@ movhi
	ldr	r4, .L21+8
	strh	r1, [r2, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L21+12
	mov	lr, pc
	bx	r4
	mov	r3, #4608
	mov	r0, #3
	ldr	r2, .L21+16
	ldr	r1, .L21+20
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L21+24
	ldr	r1, .L21+28
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L21+32
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L21+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L21+40
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L14
	ldr	r3, .L21+44
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L20
.L14:
	pop	{r4, lr}
	bx	lr
.L20:
	pop	{r4, lr}
	b	goToInstructions
.L22:
	.align	2
.L21:
	.word	7304
	.word	24192
	.word	DMANow
	.word	startPal
	.word	100696064
	.word	startTiles
	.word	100720640
	.word	startMap
	.word	waitForVBlank
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.size	start, .-start
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L25
	mov	r5, #67108864
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r2, #5632
	ldr	r4, .L25+4
	strh	r3, [r5, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L25+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L25+12
	ldr	r1, .L25+16
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L25+20
	ldr	r1, .L25+24
	mov	lr, pc
	bx	r4
	mov	r3, #3712
	mov	r0, #3
	ldr	r2, .L25+28
	ldr	r1, .L25+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L25+36
	ldr	r1, .L25+40
	mov	lr, pc
	bx	r4
	ldr	r3, .L25+44
	ldr	r2, .L25+48
	strh	r3, [r5, #10]	@ movhi
	ldr	r3, .L25+52
	strh	r2, [r5, #12]	@ movhi
	ldr	r2, [r3]
	lsl	r3, r2, #16
	lsr	r3, r3, #16
	strh	r3, [r5, #22]	@ movhi
	ldr	r3, .L25+56
	ldr	r3, [r3]
	add	r2, r2, r2, lsr #31
	add	r1, r3, r3, lsr #31
	asr	r2, r2, #1
	asr	r1, r1, #1
	lsl	r2, r2, #16
	lsl	r3, r3, #16
	lsl	r1, r1, #16
	lsr	r2, r2, #16
	lsr	r3, r3, #16
	lsr	r1, r1, #16
	strh	r3, [r5, #20]	@ movhi
	mov	r0, #3
	strh	r2, [r5, #26]	@ movhi
	mov	r3, #16384
	strh	r1, [r5, #24]	@ movhi
	ldr	r2, .L25+60
	ldr	r1, .L25+64
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L25+68
	ldr	r1, .L25+72
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L25+76
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L25+80
	mov	lr, pc
	bx	r4
	ldr	r3, .L25+84
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L25+88
	ldr	r3, .L25+92
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L25+96
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L26:
	.align	2
.L25:
	.word	waitForVBlank
	.word	DMANow
	.word	forestPal
	.word	13088
	.word	forestTiles
	.word	100724736
	.word	forestMap
	.word	100712448
	.word	bg2Tiles
	.word	100704256
	.word	bg2Map
	.word	24192
	.word	21644
	.word	vOff
	.word	hOff
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
	.word	gameSong_length
	.word	gameSong_data
	.word	playSoundA
	.word	state
	.size	goToGame, .-goToGame
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"start\000"
	.text
	.align	2
	.global	instr
	.syntax unified
	.arm
	.fpu softvfp
	.type	instr, %function
instr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L46
	ldrh	r3, [r4]
	tst	r3, #256
	beq	.L43
	ldr	r2, .L46+4
	ldrh	r2, [r2]
	tst	r2, #256
	beq	.L41
.L43:
	ldr	r5, .L46+8
.L28:
	tst	r3, #512
	beq	.L29
	ldr	r3, .L46+4
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L44
.L29:
	ldr	r3, .L46+12
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L46+16
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L27
	ldr	r3, .L46+4
	ldrh	r3, [r3]
	ands	r4, r3, #8
	beq	.L45
.L27:
	pop	{r4, r5, r6, lr}
	bx	lr
.L45:
	ldr	r3, .L46+20
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L46+24
	ldr	r0, .L46+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L46+32
	mov	lr, pc
	bx	r3
	ldr	r2, .L46+36
	ldr	r3, .L46+40
	str	r4, [r2]
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L41:
	ldr	r5, .L46+8
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L46+44
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r3, .L46+48
	ldr	r2, .L46+52
	ldr	r1, .L46+56
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L46+60
	ldr	r1, .L46+64
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4]
	b	.L28
.L44:
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L46+68
	mov	lr, pc
	bx	r5
	mov	r3, #3712
	mov	r0, #3
	ldr	r2, .L46+52
	ldr	r1, .L46+72
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L46+60
	ldr	r1, .L46+76
	mov	lr, pc
	bx	r5
	b	.L29
.L47:
	.align	2
.L46:
	.word	oldButtons
	.word	buttons
	.word	DMANow
	.word	waitForVBlank
	.word	shadowOAM
	.word	stopSound
	.word	mgba_printf
	.word	.LC0
	.word	initGame
	.word	friendsFound
	.word	curTime
	.word	instructions2Pal
	.word	9632
	.word	100696064
	.word	instructions2Tiles
	.word	100720640
	.word	instructions2Map
	.word	instructionsPal
	.word	instructionsTiles
	.word	instructionsMap
	.size	instr, .-instr
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"fight\000"
	.text
	.align	2
	.global	goToFight
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToFight, %function
goToFight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L50
	ldr	r0, .L50+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L50+8
	mov	lr, pc
	bx	r3
	mov	r5, #67108864
	mov	r2, #4352
	ldr	r4, .L50+12
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L50+16
	mov	lr, pc
	bx	r4
	mov	r3, #5888
	mov	r0, #3
	ldr	r2, .L50+20
	ldr	r1, .L50+24
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L50+28
	mov	r3, #1024
	ldr	r2, .L50+32
	mov	lr, pc
	bx	r4
	ldr	r2, .L50+36
	ldr	r3, .L50+40
	strh	r2, [r5, #8]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L50+44
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L50+48
	mov	r3, #512
	mov	lr, pc
	bx	r4
	ldr	r3, .L50+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L50+56
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L50+60
	ldr	r3, .L50+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L50+68
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L50+72
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L51:
	.align	2
.L50:
	.word	mgba_printf
	.word	.LC1
	.word	hideSprites
	.word	DMANow
	.word	snaketimePal
	.word	100696064
	.word	snaketimeTiles
	.word	snaketimeMap
	.word	100720640
	.word	7304
	.word	waitForVBlank
	.word	initMiniGame
	.word	shadowOAM
	.word	stopSound
	.word	fightSong_length
	.word	fightSong_data
	.word	playSoundA
	.word	setupInterrupts
	.word	state
	.size	goToFight, .-goToFight
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"paused\000"
	.text
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L54
	ldr	r0, .L54+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L54+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L54+12
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L54+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L55:
	.align	2
.L54:
	.word	mgba_printf
	.word	.LC2
	.word	hideSprites
	.word	pauseSound
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r4, .L68
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L68+4
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L68+8
	ldr	r2, .L68+12
	ldr	r1, .L68+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #1024
	ldr	r2, .L68+20
	ldr	r1, .L68+24
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #256
	ldr	r1, .L68+28
	strh	r2, [r3]	@ movhi
	ldr	r5, .L68+32
	strh	r1, [r3, #8]	@ movhi
	ldr	r2, .L68+36
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L68+40
	mov	lr, pc
	bx	r4
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L57
	ldr	r2, .L68+44
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L66
.L57:
	tst	r3, #4
	beq	.L56
	ldr	r3, .L68+44
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L67
.L56:
	pop	{r4, r5, r6, lr}
	bx	lr
.L67:
	pop	{r4, r5, r6, lr}
	b	goToStart
.L66:
	ldr	r3, .L68+48
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L68+52
	mov	lr, pc
	bx	r3
	ldrh	r3, [r5]
	b	.L57
.L69:
	.align	2
.L68:
	.word	DMANow
	.word	pausePal
	.word	5152
	.word	100696064
	.word	pauseTiles
	.word	100720640
	.word	pauseMap
	.word	7304
	.word	oldButtons
	.word	waitForVBlank
	.word	shadowOAM
	.word	buttons
	.word	unpauseSound
	.word	initBG
	.size	pause, .-pause
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"win\000"
	.text
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	push	{r4, lr}
	ldr	r3, .L80
	add	r2, r3, #156
.L72:
	str	r1, [r3, #48]
	add	r3, r3, #52
	cmp	r3, r2
	bne	.L72
	mov	r0, #0
	mov	lr, #3
	ldr	r2, .L80+4
	ldr	r3, [r2]
	ldr	ip, .L80+8
	ldr	r1, .L80+12
	cmp	r3, r0
	str	lr, [ip]
	str	r0, [r1]
	beq	.L78
	cmp	r3, #1
	beq	.L79
	ldr	r3, .L80+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L80+20
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L80+24
	ldr	r3, .L80+28
	mov	lr, pc
	bx	r3
	mov	r1, #6
	ldr	r2, .L80+32
	ldr	r3, .L80+36
	ldr	r0, .L80+40
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r2, #4352
	pop	{r4, lr}
	strh	r2, [r3]	@ movhi
	bx	lr
.L79:
	mov	r3, #2
	str	r3, [r2]
	bl	goToGame
	ldr	r3, .L80+44
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L78:
	mov	r3, #1
	str	r3, [r2]
	bl	goToGame
	ldr	r3, .L80+44
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L81:
	.align	2
.L80:
	.word	hiders
	.word	lvl
	.word	friendsRemaining
	.word	friendsFound
	.word	stopSound
	.word	winSong_length
	.word	winSong_data
	.word	playSoundA
	.word	state
	.word	mgba_printf
	.word	.LC3
	.word	initGame
	.size	goToWin, .-goToWin
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L93
	mov	lr, pc
	bx	r3
	ldr	r3, .L93+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L93+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L83
	ldr	r3, .L93+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L90
.L83:
	ldr	r3, .L93+16
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L91
.L84:
	ldr	r3, .L93+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L92
.L82:
	pop	{r4, lr}
	bx	lr
.L91:
	ldr	r3, .L93+24
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L84
	bl	goToWin
	ldr	r3, .L93+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L82
.L92:
	pop	{r4, lr}
	b	goToFight
.L90:
	bl	goToPause
	b	.L83
.L94:
	.align	2
.L93:
	.word	updateGame
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	friendsFound
	.word	fightTime
	.word	buffer
	.size	game, .-game
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L102
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L102+4
	mov	lr, pc
	bx	r4
	mov	r3, #6208
	mov	r0, #3
	ldr	r2, .L102+8
	ldr	r1, .L102+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L102+16
	ldr	r1, .L102+20
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L102+24
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #0
	ldr	r0, .L102+28
	ldr	r2, .L102+32
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L102+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L102+40
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L95
	ldr	r3, .L102+44
	ldrh	r3, [r3]
	ands	r4, r3, #8
	beq	.L101
.L95:
	pop	{r4, lr}
	bx	lr
.L101:
	bl	goToStart
	ldr	r3, .L102+48
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L103:
	.align	2
.L102:
	.word	DMANow
	.word	winPal
	.word	100696064
	.word	winTiles
	.word	100720640
	.word	winMap
	.word	hideSprites
	.word	7304
	.word	waitForVBlank
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	lvl
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	push	{r4, lr}
	ldr	r3, .L109
	add	r2, r3, #156
.L106:
	str	r1, [r3, #48]
	add	r3, r3, #52
	cmp	r3, r2
	bne	.L106
	mov	ip, #3
	mov	r1, #0
	ldr	r0, .L109+4
	ldr	r2, .L109+8
	ldr	r3, .L109+12
	str	ip, [r0]
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L109+16
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L109+20
	ldr	r3, .L109+24
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L109+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L110:
	.align	2
.L109:
	.word	hiders
	.word	friendsRemaining
	.word	friendsFound
	.word	stopSound
	.word	loseSong_length
	.word	loseSong_data
	.word	playSoundA
	.word	state
	.size	goToLose, .-goToLose
	.section	.rodata.str1.4
	.align	2
.LC4:
	.ascii	"select pressed\000"
	.text
	.align	2
	.global	fight
	.syntax unified
	.arm
	.fpu softvfp
	.type	fight, %function
fight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L120
	mov	lr, pc
	bx	r3
	ldr	r3, .L120+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L120+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L120+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L120+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L120+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L112
	ldr	r3, .L120+24
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L113
	bl	goToLose
.L112:
	ldr	r3, .L120+28
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L111
	ldr	r3, .L120+32
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L119
.L111:
	pop	{r4, lr}
	bx	lr
.L113:
	mov	r0, #67108864
	mov	ip, #5632
	ldr	r2, .L120+36
	ldr	r1, .L120+40
	str	r3, [r2]
	strh	ip, [r0]	@ movhi
	ldr	r2, .L120+44
	str	r3, [r1, #48]
	mov	lr, pc
	bx	r2
	bl	goToGame
	ldr	r3, .L120+48
	mov	lr, pc
	bx	r3
	b	.L112
.L119:
	ldr	r0, .L120+52
	ldr	r3, .L120+56
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToPause
.L121:
	.align	2
.L120:
	.word	updateMiniGame
	.word	drawMiniGame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	countdown
	.word	bit
	.word	oldButtons
	.word	buttons
	.word	fightTime
	.word	snake
	.word	stopSound
	.word	initBG
	.word	.LC4
	.word	mgba_printf
	.size	fight, .-fight
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L129
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L129+4
	mov	lr, pc
	bx	r4
	mov	r3, #5568
	mov	r0, #3
	ldr	r2, .L129+8
	ldr	r1, .L129+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L129+16
	ldr	r1, .L129+20
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L129+24
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #0
	ldr	r0, .L129+28
	ldr	r2, .L129+32
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L129+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L129+40
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L122
	ldr	r3, .L129+44
	ldrh	r3, [r3]
	ands	r4, r3, #8
	beq	.L128
.L122:
	pop	{r4, lr}
	bx	lr
.L128:
	ldr	r3, .L129+48
	mov	lr, pc
	bx	r3
	bl	goToStart
	ldr	r3, .L129+52
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L130:
	.align	2
.L129:
	.word	DMANow
	.word	gameoverPal
	.word	100696064
	.word	gameoverTiles
	.word	100720640
	.word	gameoverMap
	.word	hideSprites
	.word	7304
	.word	waitForVBlank
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	stopSound
	.word	lvl
	.size	lose, .-lose
	.section	.rodata.str1.4
	.align	2
.LC5:
	.ascii	"Debugging Initialized\000"
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L145
	mov	lr, pc
	bx	r3
	ldr	r3, .L145+4
	ldr	r0, .L145+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L145+12
	mov	lr, pc
	bx	r3
	ldr	r6, .L145+16
	ldr	r7, .L145+20
	ldr	r5, .L145+24
	ldr	fp, .L145+28
	ldr	r10, .L145+32
	ldr	r9, .L145+36
	ldr	r8, .L145+40
	ldr	r4, .L145+44
.L132:
	ldr	r2, [r6]
	ldrh	r3, [r7]
.L133:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L133
.L135:
	.word	.L141
	.word	.L140
	.word	.L139
	.word	.L138
	.word	.L137
	.word	.L136
	.word	.L134
.L134:
	ldr	r3, .L145+48
	mov	lr, pc
	bx	r3
	b	.L132
.L136:
	ldr	r3, .L145+52
	mov	lr, pc
	bx	r3
	b	.L132
.L137:
	ldr	r3, .L145+56
	mov	lr, pc
	bx	r3
	b	.L132
.L138:
	mov	lr, pc
	bx	r8
	b	.L132
.L139:
	mov	lr, pc
	bx	r9
	b	.L132
.L140:
	mov	lr, pc
	bx	r10
	b	.L132
.L141:
	mov	lr, pc
	bx	fp
	b	.L132
.L146:
	.align	2
.L145:
	.word	mgba_open
	.word	mgba_printf
	.word	.LC5
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	instr
	.word	game
	.word	fight
	.word	67109120
	.word	win
	.word	lose
	.word	pause
	.size	main, .-main
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	friendsRemaining,4,4
	.comm	friendsFound,4,4
	.comm	bestTime,4,4
	.comm	curTime,4,4
	.comm	lvl,4,4
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"

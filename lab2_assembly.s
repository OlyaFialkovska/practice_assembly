	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 0
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	adrp	x8, _s@PAGE
	str	wzr, [x8, _s@PAGEOFF]
	str	wzr, [sp, #8]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #11
	cset	w8, ge
	tbnz	w8, #0, LBB0_6
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w9, [sp, #8]
	mov	w8, #2
	mul	w9, w8, w9
	ldrsw	x10, [sp, #8]
	adrp	x8, _A@PAGE
	add	x8, x8, _A@PAGEOFF
	str	w9, [x8, x10, lsl #2]
	ldrsw	x9, [sp, #8]
	ldr	w10, [x8, x9, lsl #2]
	adrp	x8, _s@PAGE
	ldr	w9, [x8, _s@PAGEOFF]
	add	w9, w9, w10
	str	w9, [x8, _s@PAGEOFF]
	ldr	w8, [x8, _s@PAGEOFF]
	subs	w8, w8, #10
	cset	w8, le
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	adrp	x8, _s@PAGE
	ldr	w8, [x8, _s@PAGEOFF]
	ldrsw	x10, [sp, #8]
	adrp	x9, _A@PAGE
	add	x9, x9, _A@PAGEOFF
	str	w8, [x9, x10, lsl #2]
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	LBB0_1
LBB0_6:
	str	wzr, [sp, #8]
	b	LBB0_7
LBB0_7:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #11
	cset	w8, ge
	tbnz	w8, #0, LBB0_10
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_7 Depth=1
	ldrsw	x9, [sp, #8]
	adrp	x8, _A@PAGE
	add	x8, x8, _A@PAGEOFF
	ldr	w9, [x8, x9, lsl #2]
                                        ; implicit-def: $x8
	mov	x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	LBB0_7
LBB0_10:
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_printf
	mov	w0, #0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_A                              ; @A
.zerofill __DATA,__common,_A,44,2
	.globl	_s                              ; @s
.zerofill __DATA,__common,_s,4,2
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d "

l_.str.1:                               ; @.str.1
	.asciz	"\n"

.subsections_via_symbols

	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.main.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"\r\n=== MQ135 Air Quality Monitor ===\r\n"
	.align	2
.LC1:
	.string	"adc"
	.align	2
.LC2:
	.string	"ADC device not found!\r\n"
	.align	2
.LC3:
	.string	"ADC initialized\r\n"
	.align	2
.LC4:
	.string	"Warming up MQ135 (10 seconds)...\r\n"
	.globl	__extendsfdf2
	.align	2
.LC7:
	.string	"Voltage: %.2f V  | Air Quality: CLEAN\r\n"
	.align	2
.LC9:
	.string	"Voltage: %.2f V  | Air Quality: MODERATE\r\n"
	.align	2
.LC11:
	.string	"Voltage: %.2f V  | Air Quality: POOR\r\n"
	.align	2
.LC12:
	.string	"Voltage: %.2f V  | Air Quality: VERY POOR\r\n"
	.section	.text.startup.main,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB5:
	.file 1 "./examples/peripherals/adc/adc_gas/main.c"
	.loc 1 11 1
	.cfi_startproc
	.loc 1 12 5
	.loc 1 11 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	fsw	fs0,60(sp)
	fsw	fs1,56(sp)
	fsw	fs2,52(sp)
	fsw	fs3,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 40, -20
	.cfi_offset 41, -24
	.cfi_offset 50, -28
	.cfi_offset 51, -32
	.loc 1 12 5
	call	board_init
.LVL0:
	.loc 1 14 5 is_stmt 1
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL1:
	.loc 1 16 5
	.loc 1 16 11 is_stmt 0
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	qcc74x_device_get_by_name
.LVL2:
	.loc 1 16 9
	lui	s0,%hi(.LANCHOR0)
	sw	a0,%lo(.LANCHOR0)(s0)
	.loc 1 17 5 is_stmt 1
	.loc 1 17 8 is_stmt 0
	bne	a0,zero,.L2
	.loc 1 19 9 is_stmt 1
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL3:
.L3:
	.loc 1 20 9 discriminator 1
	.loc 1 20 18 discriminator 1
	.loc 1 20 15 discriminator 1
	j	.L3
.L2:
	.loc 1 25 17 is_stmt 0
	li	a5,7
	sw	a5,28(sp)
	.loc 1 29 20
	li	a5,4
	sh	a5,32(sp)
	.loc 1 33 19
	li	a5,4096
	addi	a5,a5,1794
	.loc 1 36 5
	addi	a1,sp,28
	.loc 1 33 19
	sh	a5,20(sp)
	addi	s0,s0,%lo(.LANCHOR0)
	.loc 1 24 5 is_stmt 1
	.loc 1 25 5
	.loc 1 26 5
	.loc 1 27 5
	.loc 1 28 5
	.loc 1 29 5
	.loc 1 30 5
	.loc 1 32 5
	.loc 1 33 5
	.loc 1 34 5
	.loc 1 36 5
	call	qcc74x_adc_init
.LVL4:
	.loc 1 37 5
	lw	a0,0(s0)
	li	a2,1
	addi	a1,sp,20
	call	qcc74x_adc_channel_config
.LVL5:
	.loc 1 39 5
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL6:
	.loc 1 40 5
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL7:
	.loc 1 42 5
	li	a0,8192
	addi	a0,a0,1808
	call	qcc74x_mtimer_delay_ms
.LVL8:
.LBB2:
	.loc 1 59 15 is_stmt 0
	lui	a5,%hi(.LC5)
	flw	fs0,%lo(.LC5)(a5)
	.loc 1 62 12
	lui	a5,%hi(.LC6)
	flw	fs1,%lo(.LC6)(a5)
	.loc 1 66 17
	lui	a5,%hi(.LC8)
	flw	fs2,%lo(.LC8)(a5)
	.loc 1 70 17
	lui	a5,%hi(.LC10)
	flw	fs3,%lo(.LC10)(a5)
	.loc 1 76 13
	lui	s1,%hi(.LC12)
	.loc 1 72 13
	lui	s2,%hi(.LC11)
.L13:
.LBE2:
	.loc 1 44 5 is_stmt 1
	.loc 1 46 5
.LBB3:
	.loc 1 48 9
	lw	a0,0(s0)
	call	qcc74x_adc_start_conversion
.LVL9:
	.loc 1 50 9
.L4:
	.loc 1 50 15
	.loc 1 50 16 is_stmt 0
	lw	a0,0(s0)
	call	qcc74x_adc_get_count
.LVL10:
	.loc 1 50 15
	beq	a0,zero,.L5
	.loc 1 55 9 is_stmt 1
	.loc 1 55 29 is_stmt 0
	lw	a0,0(s0)
	call	qcc74x_adc_read_raw
.LVL11:
	.loc 1 55 18
	sw	a0,24(sp)
	.loc 1 56 9 is_stmt 1
	lw	a0,0(s0)
	li	a3,1
	addi	a2,sp,36
	addi	a1,sp,24
	call	qcc74x_adc_parse_result
.LVL12:
	.loc 1 57 9
	lw	a0,0(s0)
	call	qcc74x_adc_stop_conversion
.LVL13:
	.loc 1 59 9
	.loc 1 59 42 is_stmt 0
	lw	a5,44(sp)
	fcvt.s.w	fa0,a5
	.loc 1 59 15
	fdiv.s	fa0,fa0,fs0
.LVL14:
	.loc 1 62 9 is_stmt 1
	.loc 1 62 12 is_stmt 0
	flt.s	a5,fa0,fs1
	beq	a5,zero,.L17
	.loc 1 64 13 is_stmt 1
	call	__extendsfdf2
.LVL15:
	mv	a2,a0
	lui	a0,%hi(.LC7)
	mv	a3,a1
	addi	a0,a0,%lo(.LC7)
.L21:
	.loc 1 76 13 is_stmt 0
	call	printf
.LVL16:
	.loc 1 79 9 is_stmt 1
	li	a0,1000
	call	qcc74x_mtimer_delay_ms
.LVL17:
.LBE3:
	.loc 1 46 11
	.loc 1 47 5 is_stmt 0
	j	.L13
.L5:
.LBB4:
	.loc 1 52 13 is_stmt 1
	li	a0,1
	call	qcc74x_mtimer_delay_ms
.LVL18:
	j	.L4
.LVL19:
.L17:
	.loc 1 66 14
	.loc 1 64 13 is_stmt 0
	fsw	fa0,12(sp)
	call	__extendsfdf2
.LVL20:
	.loc 1 66 17
	flw	fa0,12(sp)
	.loc 1 64 13
	mv	a2,a0
	mv	a3,a1
	.loc 1 66 17
	flt.s	a5,fa0,fs2
	beq	a5,zero,.L18
.LVL21:
	.loc 1 68 13 is_stmt 1
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
	j	.L21
.L18:
	.loc 1 70 14
	.loc 1 70 17 is_stmt 0
	flt.s	a5,fa0,fs3
	.loc 1 72 13
	addi	a0,s2,%lo(.LC11)
	.loc 1 70 17
	bne	a5,zero,.L21
	.loc 1 76 13 is_stmt 1
	addi	a0,s1,%lo(.LC12)
	j	.L21
.LBE4:
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.globl	adc
	.section	.rodata.cst4,"aM",@progbits,4
	.align	2
.LC5:
	.word	1148846080
	.align	2
.LC6:
	.word	1065353216
	.align	2
.LC8:
	.word	1073741824
	.align	2
.LC10:
	.word	1077097267
	.section	.bss.adc,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	adc, @object
	.size	adc, 4
adc:
	.zero	4
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/lhal/include/qcc74x_core.h"
	.file 5 "./drivers/lhal/include/qcc74x_adc.h"
	.file 6 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdio.h"
	.file 7 "./drivers/lhal/include/qcc74x_mtimer.h"
	.file 8 "./bsp/board/qcc74xdk/./board.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x46a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF54
	.byte	0xc
	.4byte	.LASF55
	.4byte	.LASF56
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x29
	.byte	0x15
	.4byte	0x31
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x44
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x65
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x78
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x14
	.byte	0x12
	.4byte	0x25
	.byte	0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x38
	.byte	0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x59
	.byte	0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x6c
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0x6
	.4byte	0xcd
	.byte	0x7
	.byte	0x4
	.4byte	0xd4
	.byte	0x8
	.4byte	.LASF24
	.byte	0x10
	.byte	0x4
	.byte	0x67
	.byte	0x8
	.4byte	0x148
	.byte	0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x68
	.byte	0x11
	.4byte	0xd9
	.byte	0
	.byte	0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0x69
	.byte	0xe
	.4byte	0xbf
	.byte	0x4
	.byte	0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0x6a
	.byte	0xd
	.4byte	0xa7
	.byte	0x8
	.byte	0xa
	.string	"idx"
	.byte	0x4
	.byte	0x6b
	.byte	0xd
	.4byte	0xa7
	.byte	0x9
	.byte	0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0x6c
	.byte	0xd
	.4byte	0xa7
	.byte	0xa
	.byte	0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0x6d
	.byte	0xd
	.4byte	0xa7
	.byte	0xb
	.byte	0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0x6e
	.byte	0xb
	.4byte	0xcb
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	.LASF25
	.byte	0x6
	.byte	0x5
	.byte	0x8d
	.byte	0x8
	.4byte	0x1a4
	.byte	0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0x8e
	.byte	0xd
	.4byte	0xa7
	.byte	0
	.byte	0x9
	.4byte	.LASF27
	.byte	0x5
	.byte	0x8f
	.byte	0xd
	.4byte	0xa7
	.byte	0x1
	.byte	0x9
	.4byte	.LASF28
	.byte	0x5
	.byte	0x90
	.byte	0xd
	.4byte	0xa7
	.byte	0x2
	.byte	0x9
	.4byte	.LASF29
	.byte	0x5
	.byte	0x91
	.byte	0xd
	.4byte	0xa7
	.byte	0x3
	.byte	0x9
	.4byte	.LASF30
	.byte	0x5
	.byte	0x92
	.byte	0xd
	.4byte	0xa7
	.byte	0x4
	.byte	0x9
	.4byte	.LASF31
	.byte	0x5
	.byte	0x93
	.byte	0xd
	.4byte	0xa7
	.byte	0x5
	.byte	0
	.byte	0x8
	.4byte	.LASF32
	.byte	0x2
	.byte	0x5
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cc
	.byte	0x9
	.4byte	.LASF33
	.byte	0x5
	.byte	0x9d
	.byte	0xd
	.4byte	0xa7
	.byte	0
	.byte	0x9
	.4byte	.LASF34
	.byte	0x5
	.byte	0x9e
	.byte	0xd
	.4byte	0xa7
	.byte	0x1
	.byte	0
	.byte	0x8
	.4byte	.LASF35
	.byte	0xc
	.byte	0x5
	.byte	0xa9
	.byte	0x8
	.4byte	0x20e
	.byte	0x9
	.4byte	.LASF33
	.byte	0x5
	.byte	0xaa
	.byte	0xc
	.4byte	0x9b
	.byte	0
	.byte	0x9
	.4byte	.LASF34
	.byte	0x5
	.byte	0xab
	.byte	0xc
	.4byte	0x9b
	.byte	0x1
	.byte	0x9
	.4byte	.LASF36
	.byte	0x5
	.byte	0xac
	.byte	0xd
	.4byte	0xb3
	.byte	0x4
	.byte	0x9
	.4byte	.LASF37
	.byte	0x5
	.byte	0xad
	.byte	0xd
	.4byte	0xb3
	.byte	0x8
	.byte	0
	.byte	0xb
	.string	"adc"
	.byte	0x1
	.byte	0x8
	.byte	0x19
	.4byte	0x220
	.byte	0x5
	.byte	0x3
	.4byte	adc
	.byte	0x7
	.byte	0x4
	.4byte	0xdf
	.byte	0xc
	.4byte	.LASF57
	.byte	0x1
	.byte	0xa
	.byte	0x5
	.4byte	0x8d
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x3d7
	.byte	0xd
	.string	"cfg"
	.byte	0x1
	.byte	0x18
	.byte	0x20
	.4byte	0x148
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0xe
	.4byte	.LASF38
	.byte	0x1
	.byte	0x20
	.byte	0x21
	.4byte	0x1a4
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0xe
	.4byte	.LASF39
	.byte	0x1
	.byte	0x2c
	.byte	0x20
	.4byte	0x1cc
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0xf
	.4byte	.Ldebug_ranges0+0
	.4byte	0x31c
	.byte	0xe
	.4byte	.LASF40
	.byte	0x1
	.byte	0x37
	.byte	0x12
	.4byte	0xbf
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x10
	.4byte	.LASF41
	.byte	0x1
	.byte	0x3b
	.byte	0xf
	.4byte	0x3d7
	.4byte	.LLST0
	.byte	0x11
	.4byte	.LVL9
	.4byte	0x3de
	.byte	0x11
	.4byte	.LVL10
	.4byte	0x3ea
	.byte	0x11
	.4byte	.LVL11
	.4byte	0x3f6
	.byte	0x12
	.4byte	.LVL12
	.4byte	0x403
	.4byte	0x2cf
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x11
	.4byte	.LVL13
	.4byte	0x410
	.byte	0x11
	.4byte	.LVL15
	.4byte	0x41c
	.byte	0x11
	.4byte	.LVL16
	.4byte	0x425
	.byte	0x12
	.4byte	.LVL17
	.4byte	0x431
	.4byte	0x2ff
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0x12
	.4byte	.LVL18
	.4byte	0x431
	.4byte	0x312
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x11
	.4byte	.LVL20
	.4byte	0x41c
	.byte	0
	.byte	0x11
	.4byte	.LVL0
	.4byte	0x43d
	.byte	0x12
	.4byte	.LVL1
	.4byte	0x425
	.4byte	0x33c
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x12
	.4byte	.LVL2
	.4byte	0x449
	.4byte	0x353
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x12
	.4byte	.LVL3
	.4byte	0x425
	.4byte	0x36a
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x12
	.4byte	.LVL4
	.4byte	0x455
	.4byte	0x37e
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x12
	.4byte	.LVL5
	.4byte	0x461
	.4byte	0x397
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x12
	.4byte	.LVL6
	.4byte	0x425
	.4byte	0x3ae
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x12
	.4byte	.LVL7
	.4byte	0x425
	.4byte	0x3c5
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x14
	.4byte	.LVL8
	.4byte	0x431
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x2710
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF42
	.byte	0x15
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x5
	.byte	0xea
	.byte	0x6
	.byte	0x15
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x5
	.byte	0xf9
	.byte	0x9
	.byte	0x16
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x5
	.2byte	0x101
	.byte	0xa
	.byte	0x16
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x5
	.2byte	0x12c
	.byte	0x6
	.byte	0x15
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x5
	.byte	0xf1
	.byte	0x6
	.byte	0x17
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x15
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x6
	.byte	0xc8
	.byte	0x5
	.byte	0x15
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x7
	.byte	0x27
	.byte	0x6
	.byte	0x15
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x8
	.byte	0x4
	.byte	0x6
	.byte	0x15
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x4
	.byte	0x7b
	.byte	0x19
	.byte	0x15
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x5
	.byte	0xba
	.byte	0x6
	.byte	0x15
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x5
	.byte	0xe3
	.byte	0x5
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x2
	.byte	0x90
	.byte	0x2a
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x2
	.byte	0x90
	.byte	0x2a
	.4byte	.LVL20-1
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.4byte	.LVL21
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x90
	.byte	0x2a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF0:
	.string	"__int8_t"
.LASF1:
	.string	"__uint8_t"
.LASF47:
	.string	"qcc74x_adc_stop_conversion"
.LASF36:
	.string	"value"
.LASF6:
	.string	"__int32_t"
.LASF32:
	.string	"qcc74x_adc_channel_s"
.LASF46:
	.string	"qcc74x_adc_parse_result"
.LASF40:
	.string	"raw_data"
.LASF28:
	.string	"continuous_conv_mode"
.LASF13:
	.string	"int8_t"
.LASF49:
	.string	"qcc74x_mtimer_delay_ms"
.LASF35:
	.string	"qcc74x_adc_result_s"
.LASF42:
	.string	"float"
.LASF23:
	.string	"user_data"
.LASF3:
	.string	"unsigned char"
.LASF55:
	.string	"./examples/peripherals/adc/adc_gas/main.c"
.LASF54:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF52:
	.string	"qcc74x_adc_init"
.LASF9:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF41:
	.string	"voltage"
.LASF43:
	.string	"qcc74x_adc_start_conversion"
.LASF21:
	.string	"sub_idx"
.LASF45:
	.string	"qcc74x_adc_read_raw"
.LASF50:
	.string	"board_init"
.LASF8:
	.string	"__uint32_t"
.LASF51:
	.string	"qcc74x_device_get_by_name"
.LASF56:
	.string	"./examples/peripherals/adc/adc_gas/build"
.LASF34:
	.string	"neg_chan"
.LASF24:
	.string	"qcc74x_device_s"
.LASF57:
	.string	"main"
.LASF12:
	.string	"unsigned int"
.LASF25:
	.string	"qcc74x_adc_config_s"
.LASF11:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint8_t"
.LASF26:
	.string	"clk_div"
.LASF39:
	.string	"result"
.LASF44:
	.string	"qcc74x_adc_get_count"
.LASF38:
	.string	"chan"
.LASF15:
	.string	"int32_t"
.LASF27:
	.string	"scan_conv_mode"
.LASF10:
	.string	"long long int"
.LASF33:
	.string	"pos_chan"
.LASF22:
	.string	"dev_type"
.LASF48:
	.string	"printf"
.LASF37:
	.string	"millivolt"
.LASF4:
	.string	"short int"
.LASF19:
	.string	"reg_base"
.LASF53:
	.string	"qcc74x_adc_channel_config"
.LASF29:
	.string	"differential_mode"
.LASF16:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF17:
	.string	"char"
.LASF2:
	.string	"signed char"
.LASF30:
	.string	"resolution"
.LASF20:
	.string	"irq_num"
.LASF58:
	.string	"__extendsfdf2"
.LASF18:
	.string	"name"
.LASF31:
	.string	"vref"
	.ident	"GCC: (GNU) 10.4.0"

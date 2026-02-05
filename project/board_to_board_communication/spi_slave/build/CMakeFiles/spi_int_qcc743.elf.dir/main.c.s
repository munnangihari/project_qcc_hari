	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.spi_slave_init.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"gpio"
	.align	2
.LC2:
	.string	"spi0"
	.section	.text.spi_slave_init,"ax",@progbits
	.align	1
	.globl	spi_slave_init
	.type	spi_slave_init, @function
spi_slave_init:
.LFB6:
	.file 1 "./examples/peripherals/spi/spi_slave/main.c"
	.loc 1 28 27
	.cfi_startproc
	.loc 1 29 5
	.loc 1 29 12 is_stmt 0
	lui	a0,%hi(.LC1)
	.loc 1 28 27
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 29 12
	addi	a0,a0,%lo(.LC1)
	.loc 1 28 27
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 29 10
	lui	s0,%hi(.LANCHOR0)
	.loc 1 29 12
	call	qcc74x_device_get_by_name
.LVL0:
	.loc 1 30 5
	li	s1,8192
	.loc 1 29 10
	addi	s0,s0,%lo(.LANCHOR0)
	.loc 1 30 5
	addi	a2,s1,-1279
	li	a1,12
	.loc 1 29 10
	sw	a0,0(s0)
	.loc 1 30 5 is_stmt 1
	call	qcc74x_gpio_init
.LVL1:
	.loc 1 31 5
	lw	a0,0(s0)
	addi	a2,s1,-1279
	li	a1,13
	call	qcc74x_gpio_init
.LVL2:
	.loc 1 32 5
	lw	a0,0(s0)
	addi	a2,s1,-1279
	li	a1,14
	call	qcc74x_gpio_init
.LVL3:
	.loc 1 33 5
	lw	a0,0(s0)
	addi	a2,s1,-1279
	li	a1,15
	call	qcc74x_gpio_init
.LVL4:
	.loc 1 35 5
	.loc 1 35 32 is_stmt 0
	lui	a1,%hi(.LANCHOR1)
	li	a2,12
	addi	a1,a1,%lo(.LANCHOR1)
	addi	a0,sp,4
	call	memcpy
.LVL5:
	.loc 1 40 5 is_stmt 1
	.loc 1 40 12 is_stmt 0
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	qcc74x_device_get_by_name
.LVL6:
	.loc 1 40 10
	lui	a5,%hi(.LANCHOR2)
	.loc 1 41 5
	addi	a1,sp,4
	.loc 1 40 10
	sw	a0,%lo(.LANCHOR2)(a5)
	.loc 1 41 5 is_stmt 1
	call	qcc74x_spi_init
.LVL7:
	.loc 1 42 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	spi_slave_init, .-spi_slave_init
	.section	.rodata.main.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"CLEAN"
	.align	2
.LC4:
	.string	"MODERATE"
	.align	2
.LC5:
	.string	"POOR (SMOG)"
	.align	2
.LC6:
	.string	"uart1"
	.align	2
.LC7:
	.string	"\r\n=== SLAVE READY: HYDERABAD STATION ===\r\n"
	.globl	__extendsfdf2
	.align	2
.LC11:
	.string	"CITY: HYDERABAD | %02d:%02d:%02d | T:%d C H:%d %% | AQI: %.2fV [%s]\r\n"
	.section	.text.startup.main,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.loc 1 44 16 is_stmt 1
	.cfi_startproc
	.loc 1 45 5
	.loc 1 44 16 is_stmt 0
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s1,84(sp)
	fsw	fs0,76(sp)
	fsw	fs1,72(sp)
	fsw	fs2,68(sp)
	sw	s0,88(sp)
	sw	s2,80(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 40, -20
	.cfi_offset 41, -24
	.cfi_offset 50, -28
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.loc 1 45 5
	call	board_init
.LVL8:
	.loc 1 46 5 is_stmt 1
.LBB5:
.LBB6:
	.loc 1 18 5
	call	board_uartx_gpio_init
.LVL9:
	.loc 1 19 5
	.loc 1 19 20 is_stmt 0
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	qcc74x_device_get_by_name
.LVL10:
	.loc 1 20 5 is_stmt 1
	.loc 1 20 33 is_stmt 0
	li	a5,114688
	addi	a5,a5,512
	sw	a5,52(sp)
	li	a5,65536
	addi	a5,a5,768
	.loc 1 25 5
	addi	a1,sp,52
	.loc 1 20 33
	sw	a5,56(sp)
	sw	zero,60(sp)
	.loc 1 25 5 is_stmt 1
	call	qcc74x_uart_init
.LVL11:
.LBE6:
.LBE5:
	.loc 1 47 5
	call	spi_slave_init
.LVL12:
	.loc 1 49 5
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	call	printf
.LVL13:
	.loc 1 51 5
	.loc 1 52 5
.LBB7:
	.loc 1 67 19 is_stmt 0
	lui	a5,%hi(.LC8)
	flw	fs0,%lo(.LC8)(a5)
	.loc 1 71 16
	lui	a5,%hi(.LC9)
	flw	fs1,%lo(.LC9)(a5)
	.loc 1 72 16
	lui	a5,%hi(.LC10)
	flw	fs2,%lo(.LC10)(a5)
	.loc 1 72 42
	lui	s1,%hi(.LC5)
.LBE7:
	.loc 1 52 13
	sw	zero,52(sp)
	sw	zero,56(sp)
.LBB8:
	.loc 1 72 42
	addi	s1,s1,%lo(.LC5)
.L4:
.LBE8:
	.loc 1 54 5 is_stmt 1
	.loc 1 56 9
	lui	s0,%hi(.LANCHOR2)
	addi	s0,s0,%lo(.LANCHOR2)
	lw	a0,0(s0)
	li	a3,8
	addi	a2,sp,44
	addi	a1,sp,52
	call	qcc74x_spi_poll_exchange
.LVL14:
	.loc 1 58 9
	.loc 1 58 12 is_stmt 0
	lbu	a4,44(sp)
	li	a5,170
	bne	a4,a5,.L5
.LBB9:
	.loc 1 59 13 is_stmt 1
	.loc 1 67 38 is_stmt 0
	lhu	a1,50(sp)
	.loc 1 59 21
	lbu	a4,45(sp)
.LVL15:
	.loc 1 60 13 is_stmt 1
	.loc 1 60 21 is_stmt 0
	lbu	a5,46(sp)
.LVL16:
	.loc 1 61 13 is_stmt 1
	.loc 1 67 38 is_stmt 0
	swap8	a1,a1
	extu	a1,a1,15,0
	fcvt.s.w	fa0,a1
	.loc 1 61 21
	lbu	s2,47(sp)
.LVL17:
	.loc 1 62 13 is_stmt 1
	.loc 1 62 21 is_stmt 0
	lbu	a2,48(sp)
.LVL18:
	.loc 1 63 13 is_stmt 1
	.loc 1 67 19 is_stmt 0
	fdiv.s	fa0,fa0,fs0
	.loc 1 63 21
	lbu	a3,49(sp)
.LVL19:
	.loc 1 66 13 is_stmt 1
	.loc 1 67 13
	.loc 1 70 13
	.loc 1 71 13
	.loc 1 71 16 is_stmt 0
	fgt.s	a1,fa0,fs1
	beq	a1,zero,.L14
	.loc 1 71 42
	lui	s0,%hi(.LC4)
	addi	s0,s0,%lo(.LC4)
.L6:
	.loc 1 72 16
	fgt.s	a1,fa0,fs2
	sw	a3,28(sp)
	sw	a2,24(sp)
	sw	a5,20(sp)
	sw	a4,16(sp)
.LVL20:
	.loc 1 72 13 is_stmt 1
	.loc 1 72 42 is_stmt 0
	mvnez	s0, s1, a1
.LVL21:
	.loc 1 74 13 is_stmt 1
	call	__extendsfdf2
.LVL22:
	lw	a5,20(sp)
	lw	a4,16(sp)
	lw	a3,28(sp)
	lw	a2,24(sp)
	mv	a6,a0
	lui	a0,%hi(.LC11)
	mv	a7,a1
	sw	s0,0(sp)
	mv	a1,s2
	addi	a0,a0,%lo(.LC11)
	call	printf
.LVL23:
.LBE9:
	j	.L4
.LVL24:
.L14:
.LBB10:
	.loc 1 70 19 is_stmt 0
	lui	s0,%hi(.LC3)
	addi	s0,s0,%lo(.LC3)
	j	.L6
.LVL25:
.L5:
.LBE10:
	.loc 1 77 13 is_stmt 1
	lw	a0,0(s0)
	li	a2,0
	li	a1,4
	call	qcc74x_spi_feature_control
.LVL26:
	j	.L4
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata.cst4,"aM",@progbits,4
	.align	2
.LC8:
	.word	1148846080
	.align	2
.LC9:
	.word	1065353216
	.align	2
.LC10:
	.word	1075838976
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
.LC0:
	.word	1000000
	.byte	1
	.byte	3
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	1
	.section	.bss.gpio,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	gpio, @object
	.size	gpio, 4
gpio:
	.zero	4
	.section	.bss.spi0,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	spi0, @object
	.size	spi0, 4
spi0:
	.zero	4
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/lhal/include/qcc74x_core.h"
	.file 5 "./drivers/lhal/include/qcc74x_spi.h"
	.file 6 "./drivers/lhal/include/qcc74x_uart.h"
	.file 7 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdio.h"
	.file 8 "./bsp/board/qcc74xdk/./board.h"
	.file 9 "./drivers/lhal/include/qcc74x_gpio.h"
	.file 10 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5b7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF59
	.byte	0xc
	.4byte	.LASF60
	.4byte	.LASF61
	.4byte	.Ldebug_ranges0+0x28
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x52
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x6c
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	0x97
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x7
	.4byte	0x97
	.byte	0x6
	.byte	0x4
	.4byte	0x9e
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.byte	0x8
	.4byte	.LASF22
	.byte	0x10
	.byte	0x4
	.byte	0x67
	.byte	0x8
	.4byte	0x136
	.byte	0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0x68
	.byte	0x11
	.4byte	0xa3
	.byte	0
	.byte	0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0x69
	.byte	0xe
	.4byte	0xc1
	.byte	0x4
	.byte	0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x6a
	.byte	0xd
	.4byte	0xa9
	.byte	0x8
	.byte	0xa
	.string	"idx"
	.byte	0x4
	.byte	0x6b
	.byte	0xd
	.4byte	0xa9
	.byte	0x9
	.byte	0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0x6c
	.byte	0xd
	.4byte	0xa9
	.byte	0xa
	.byte	0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0x6d
	.byte	0xd
	.4byte	0xa9
	.byte	0xb
	.byte	0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0x6e
	.byte	0xb
	.4byte	0x8f
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	.LASF23
	.byte	0xc
	.byte	0x5
	.byte	0xb5
	.byte	0x8
	.4byte	0x1ac
	.byte	0x9
	.4byte	.LASF24
	.byte	0x5
	.byte	0xb6
	.byte	0xe
	.4byte	0xc1
	.byte	0
	.byte	0x9
	.4byte	.LASF25
	.byte	0x5
	.byte	0xb7
	.byte	0xd
	.4byte	0xa9
	.byte	0x4
	.byte	0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0xb8
	.byte	0xd
	.4byte	0xa9
	.byte	0x5
	.byte	0x9
	.4byte	.LASF27
	.byte	0x5
	.byte	0xb9
	.byte	0xd
	.4byte	0xa9
	.byte	0x6
	.byte	0x9
	.4byte	.LASF28
	.byte	0x5
	.byte	0xba
	.byte	0xd
	.4byte	0xa9
	.byte	0x7
	.byte	0x9
	.4byte	.LASF29
	.byte	0x5
	.byte	0xbb
	.byte	0xd
	.4byte	0xa9
	.byte	0x8
	.byte	0x9
	.4byte	.LASF30
	.byte	0x5
	.byte	0xbc
	.byte	0xd
	.4byte	0xa9
	.byte	0x9
	.byte	0x9
	.4byte	.LASF31
	.byte	0x5
	.byte	0xbd
	.byte	0xd
	.4byte	0xa9
	.byte	0xa
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF32
	.byte	0x8
	.4byte	.LASF33
	.byte	0xc
	.byte	0x6
	.byte	0xe5
	.byte	0x8
	.4byte	0x236
	.byte	0x9
	.4byte	.LASF34
	.byte	0x6
	.byte	0xe6
	.byte	0xe
	.4byte	0xc1
	.byte	0
	.byte	0x9
	.4byte	.LASF35
	.byte	0x6
	.byte	0xe7
	.byte	0xd
	.4byte	0xa9
	.byte	0x4
	.byte	0x9
	.4byte	.LASF36
	.byte	0x6
	.byte	0xe8
	.byte	0xd
	.4byte	0xa9
	.byte	0x5
	.byte	0x9
	.4byte	.LASF37
	.byte	0x6
	.byte	0xe9
	.byte	0xd
	.4byte	0xa9
	.byte	0x6
	.byte	0x9
	.4byte	.LASF38
	.byte	0x6
	.byte	0xea
	.byte	0xd
	.4byte	0xa9
	.byte	0x7
	.byte	0x9
	.4byte	.LASF28
	.byte	0x6
	.byte	0xeb
	.byte	0xd
	.4byte	0xa9
	.byte	0x8
	.byte	0x9
	.4byte	.LASF39
	.byte	0x6
	.byte	0xec
	.byte	0xd
	.4byte	0xa9
	.byte	0x9
	.byte	0x9
	.4byte	.LASF30
	.byte	0x6
	.byte	0xed
	.byte	0xd
	.4byte	0xa9
	.byte	0xa
	.byte	0x9
	.4byte	.LASF31
	.byte	0x6
	.byte	0xee
	.byte	0xd
	.4byte	0xa9
	.byte	0xb
	.byte	0
	.byte	0xb
	.4byte	.LASF40
	.byte	0x1
	.byte	0xd
	.byte	0x20
	.4byte	0x248
	.byte	0x5
	.byte	0x3
	.4byte	spi0
	.byte	0x6
	.byte	0x4
	.4byte	0xcd
	.byte	0xc
	.4byte	.LASF49
	.byte	0x1
	.byte	0xe
	.byte	0x20
	.4byte	0x248
	.byte	0xb
	.4byte	.LASF41
	.byte	0x1
	.byte	0xf
	.byte	0x20
	.4byte	0x248
	.byte	0x5
	.byte	0x3
	.4byte	gpio
	.byte	0xd
	.4byte	.LASF62
	.byte	0x1
	.byte	0x2c
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x419
	.byte	0xb
	.4byte	.LASF42
	.byte	0x1
	.byte	0x33
	.byte	0xd
	.4byte	0x419
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0xb
	.4byte	.LASF43
	.byte	0x1
	.byte	0x34
	.byte	0xd
	.4byte	0x419
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0xe
	.4byte	.Ldebug_ranges0+0
	.4byte	0x36f
	.byte	0xf
	.string	"t"
	.byte	0x1
	.byte	0x3b
	.byte	0x15
	.4byte	0xa9
	.4byte	.LLST0
	.byte	0xf
	.string	"hum"
	.byte	0x1
	.byte	0x3c
	.byte	0x15
	.4byte	0xa9
	.4byte	.LLST1
	.byte	0xf
	.string	"h"
	.byte	0x1
	.byte	0x3d
	.byte	0x15
	.4byte	0xa9
	.4byte	.LLST2
	.byte	0xf
	.string	"m"
	.byte	0x1
	.byte	0x3e
	.byte	0x15
	.4byte	0xa9
	.4byte	.LLST3
	.byte	0xf
	.string	"s"
	.byte	0x1
	.byte	0x3f
	.byte	0x15
	.4byte	0xa9
	.4byte	.LLST4
	.byte	0x10
	.4byte	.LASF44
	.byte	0x1
	.byte	0x42
	.byte	0x16
	.4byte	0xb5
	.4byte	.LLST5
	.byte	0x10
	.4byte	.LASF45
	.byte	0x1
	.byte	0x43
	.byte	0x13
	.4byte	0x429
	.4byte	.LLST6
	.byte	0x10
	.4byte	.LASF46
	.byte	0x1
	.byte	0x46
	.byte	0x13
	.4byte	0x91
	.4byte	.LLST7
	.byte	0x11
	.4byte	.LVL22
	.4byte	0x538
	.byte	0x12
	.4byte	.LVL23
	.4byte	0x541
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x6
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x4
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x6
	.byte	0x13
	.byte	0x1
	.byte	0x5e
	.byte	0x4
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x6
	.byte	0x13
	.byte	0x1
	.byte	0x5f
	.byte	0x4
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x6
	.byte	0x13
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	0x51e
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.byte	0x1
	.byte	0x2e
	.byte	0x5
	.4byte	0x3bc
	.byte	0x15
	.4byte	0x52b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x11
	.4byte	.LVL9
	.4byte	0x54d
	.byte	0x16
	.4byte	.LVL10
	.4byte	0x559
	.4byte	0x3ab
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x12
	.4byte	.LVL11
	.4byte	0x565
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL8
	.4byte	0x571
	.byte	0x11
	.4byte	.LVL12
	.4byte	0x430
	.byte	0x16
	.4byte	.LVL13
	.4byte	0x541
	.4byte	0x3e5
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x16
	.4byte	.LVL14
	.4byte	0x57d
	.4byte	0x404
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0x12
	.4byte	.LVL26
	.4byte	0x589
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	0xa9
	.4byte	0x429
	.byte	0x18
	.4byte	0x88
	.byte	0x7
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF47
	.byte	0x19
	.4byte	.LASF63
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x51e
	.byte	0xb
	.4byte	.LASF48
	.byte	0x1
	.byte	0x23
	.byte	0x20
	.4byte	0x136
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x16
	.4byte	.LVL0
	.4byte	0x559
	.4byte	0x46c
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x16
	.4byte	.LVL1
	.4byte	0x596
	.4byte	0x486
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3c
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x79
	.byte	0x81,0x76
	.byte	0
	.byte	0x16
	.4byte	.LVL2
	.4byte	0x596
	.4byte	0x4a0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3d
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x79
	.byte	0x81,0x76
	.byte	0
	.byte	0x16
	.4byte	.LVL3
	.4byte	0x596
	.4byte	0x4ba
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3e
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x79
	.byte	0x81,0x76
	.byte	0
	.byte	0x16
	.4byte	.LVL4
	.4byte	0x596
	.4byte	0x4d4
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3f
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x79
	.byte	0x81,0x76
	.byte	0
	.byte	0x16
	.4byte	.LVL5
	.4byte	0x5a3
	.4byte	0x4f6
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x16
	.4byte	.LVL6
	.4byte	0x559
	.4byte	0x50d
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x12
	.4byte	.LVL7
	.4byte	0x5ae
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF64
	.byte	0x1
	.byte	0x11
	.byte	0xd
	.byte	0x1
	.4byte	0x538
	.byte	0x1b
	.string	"cfg"
	.byte	0x1
	.byte	0x14
	.byte	0x21
	.4byte	0x1b3
	.byte	0
	.byte	0x1c
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x1d
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x7
	.byte	0xc8
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x8
	.byte	0x6
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x4
	.byte	0x7b
	.byte	0x19
	.byte	0x1d
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x6
	.byte	0xfb
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x8
	.byte	0x4
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x5
	.byte	0xf5
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x137
	.byte	0x5
	.byte	0x1e
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x9
	.2byte	0x199
	.byte	0x6
	.byte	0x1f
	.4byte	.LASF66
	.4byte	.LASF67
	.byte	0xa
	.byte	0
	.byte	0x1d
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x5
	.byte	0xca
	.byte	0x6
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
	.byte	0x3
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x26
	.byte	0
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
	.byte	0xc
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
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x17
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
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
	.byte	0x2e
	.byte	0x1
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL15
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL22-1
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL16
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL22-1
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL17
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL18
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL22-1
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL19
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL22-1
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL19
	.4byte	.LVL22-1
	.2byte	0x19
	.byte	0x91
	.byte	0x52
	.byte	0x94
	.byte	0x2
	.byte	0x38
	.byte	0x14
	.byte	0x14
	.byte	0x24
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x16
	.byte	0x1f
	.byte	0x23
	.byte	0x10
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x19
	.byte	0x91
	.byte	0x52
	.byte	0x94
	.byte	0x2
	.byte	0x38
	.byte	0x14
	.byte	0x14
	.byte	0x24
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x16
	.byte	0x1f
	.byte	0x23
	.byte	0x10
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL22-1
	.2byte	0x2
	.byte	0x90
	.byte	0x2a
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x90
	.byte	0x2a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x6
	.byte	0x3
	.4byte	.LC3
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x6
	.byte	0x3
	.4byte	.LC3
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0
	.4byte	0
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF50:
	.string	"printf"
.LASF21:
	.string	"user_data"
.LASF3:
	.string	"__uint8_t"
.LASF35:
	.string	"direction"
.LASF31:
	.string	"rx_fifo_threshold"
.LASF44:
	.string	"aqi_mv"
.LASF10:
	.string	"long long unsigned int"
.LASF61:
	.string	"./examples/peripherals/spi/spi_slave/build"
.LASF37:
	.string	"stop_bits"
.LASF19:
	.string	"sub_idx"
.LASF23:
	.string	"qcc74x_spi_config_s"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF24:
	.string	"freq"
.LASF34:
	.string	"baudrate"
.LASF6:
	.string	"long int"
.LASF66:
	.string	"memcpy"
.LASF14:
	.string	"uint16_t"
.LASF53:
	.string	"qcc74x_uart_init"
.LASF38:
	.string	"parity"
.LASF7:
	.string	"__uint32_t"
.LASF64:
	.string	"console_init"
.LASF11:
	.string	"unsigned int"
.LASF8:
	.string	"long unsigned int"
.LASF16:
	.string	"name"
.LASF57:
	.string	"qcc74x_gpio_init"
.LASF5:
	.string	"short unsigned int"
.LASF63:
	.string	"spi_slave_init"
.LASF67:
	.string	"__builtin_memcpy"
.LASF59:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF49:
	.string	"console_uart"
.LASF58:
	.string	"qcc74x_spi_init"
.LASF36:
	.string	"data_bits"
.LASF17:
	.string	"reg_base"
.LASF25:
	.string	"role"
.LASF51:
	.string	"board_uartx_gpio_init"
.LASF43:
	.string	"tx_dummy"
.LASF47:
	.string	"float"
.LASF48:
	.string	"spi_cfg"
.LASF32:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF56:
	.string	"qcc74x_spi_feature_control"
.LASF60:
	.string	"./examples/peripherals/spi/spi_slave/main.c"
.LASF2:
	.string	"short int"
.LASF39:
	.string	"flow_ctrl"
.LASF30:
	.string	"tx_fifo_threshold"
.LASF42:
	.string	"rx_buf"
.LASF52:
	.string	"qcc74x_device_get_by_name"
.LASF15:
	.string	"uint32_t"
.LASF18:
	.string	"irq_num"
.LASF29:
	.string	"byte_order"
.LASF12:
	.string	"char"
.LASF26:
	.string	"mode"
.LASF4:
	.string	"__uint16_t"
.LASF40:
	.string	"spi0"
.LASF27:
	.string	"data_width"
.LASF55:
	.string	"qcc74x_spi_poll_exchange"
.LASF33:
	.string	"qcc74x_uart_config_s"
.LASF20:
	.string	"dev_type"
.LASF28:
	.string	"bit_order"
.LASF45:
	.string	"aqi_volts"
.LASF22:
	.string	"qcc74x_device_s"
.LASF46:
	.string	"status"
.LASF65:
	.string	"__extendsfdf2"
.LASF13:
	.string	"uint8_t"
.LASF41:
	.string	"gpio"
.LASF54:
	.string	"board_init"
.LASF62:
	.string	"main"
	.ident	"GCC: (GNU) 10.4.0"

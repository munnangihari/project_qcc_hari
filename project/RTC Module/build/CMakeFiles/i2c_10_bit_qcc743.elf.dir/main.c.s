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
	.string	"i2c0"
	.align	2
.LC1:
	.string	"RTC DISPLAY START\r\n"
	.align	2
.LC2:
	.string	"CITY : HYDERABAD\r\n"
	.align	2
.LC3:
	.string	"Time : %02d:%02d:%02d\r\n"
	.align	2
.LC4:
	.string	"Date : %02d/%02d/20%02d\r\n"
	.align	2
.LC5:
	.string	"----------------------------\r\n"
	.section	.text.startup.main,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB11:
	.file 1 "./examples/peripherals/i2c/rtc/main.c"
	.loc 1 100 1
	.cfi_startproc
	.loc 1 101 5
	.loc 1 100 1 is_stmt 0
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s1,84(sp)
	sw	s2,80(sp)
	sw	s3,76(sp)
	sw	s4,72(sp)
	sw	s6,64(sp)
	sw	s7,60(sp)
	sw	s8,56(sp)
	sw	s9,52(sp)
	sw	s5,68(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 21, -28
	.loc 1 101 5
	call	board_init
.LVL0:
	.loc 1 102 5 is_stmt 1
	call	board_i2c0_gpio_init
.LVL1:
	.loc 1 104 5
	.loc 1 104 12 is_stmt 0
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	qcc74x_device_get_by_name
.LVL2:
	.loc 1 104 10
	lui	s6,%hi(.LANCHOR0)
	.loc 1 105 5
	li	a1,98304
	.loc 1 104 10
	addi	s1,s6,%lo(.LANCHOR0)
	.loc 1 105 5
	addi	a1,a1,1696
	.loc 1 104 10
	sw	a0,0(s1)
	.loc 1 105 5 is_stmt 1
	call	qcc74x_i2c_init
.LVL3:
	.loc 1 107 5
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL4:
	.loc 1 110 5
.LBB36:
.LBB37:
	.loc 1 64 5
	.loc 1 66 5
.LBE37:
.LBE36:
	.loc 1 16 5
.LBB50:
.LBB42:
	.loc 1 67 5
.LBE42:
.LBE50:
	.loc 1 16 5
.LBB51:
.LBB43:
	.loc 1 68 5
.LBE43:
.LBE51:
	.loc 1 16 5
.LBB52:
.LBB44:
	.loc 1 69 5
.LBE44:
.LBE52:
	.loc 1 16 5
.LBB53:
.LBB45:
	.loc 1 70 5
.LBE45:
.LBE53:
	.loc 1 16 5
.LBB54:
.LBB46:
	.loc 1 71 5
.LBE46:
.LBE54:
	.loc 1 16 5
.LBB55:
.LBB47:
	.loc 1 72 5
.LBE47:
.LBE55:
	.loc 1 16 5
.LBB56:
.LBB48:
	.loc 1 66 10 is_stmt 0
	li	a5,51781632
	addi	a5,a5,1344
	sw	a5,16(sp)
	.loc 1 70 10
	li	a5,296
	sh	a5,20(sp)
	.loc 1 72 10
	li	a5,38
	sb	a5,22(sp)
	.loc 1 74 5 is_stmt 1
.LVL5:
.LBB38:
.LBB39:
	.loc 1 31 20 is_stmt 0
	addi	a5,sp,14
	.loc 1 27 29
	sw	zero,32(sp)
	.loc 1 31 20
	sw	a5,28(sp)
	.loc 1 32 20
	li	a5,1
	.loc 1 39 5
	lw	a0,0(s1)
	.loc 1 27 29
	sw	zero,36(sp)
	.loc 1 32 20
	sh	a5,32(sp)
	.loc 1 34 18
	li	a5,104
	sh	a5,36(sp)
	.loc 1 29 18
	li	s0,4194304
	.loc 1 36 20
	addi	a5,sp,16
.LVL6:
	.loc 1 27 29
	sw	zero,44(sp)
	.loc 1 36 20
	sw	a5,40(sp)
	.loc 1 29 18
	addi	s0,s0,104
	.loc 1 37 20
	li	a5,7
.LVL7:
	.loc 1 39 5
	li	a2,2
	addi	a1,sp,24
.LBE39:
.LBE38:
.LBE48:
.LBE56:
.LBB57:
.LBB58:
.LBB59:
.LBB60:
	.loc 1 52 18
	li	s7,65536
	sb	zero,14(sp)
.LVL8:
.LBE60:
.LBE59:
.LBE58:
.LBE57:
.LBB97:
.LBB49:
.LBB41:
.LBB40:
	.loc 1 27 5 is_stmt 1
	.loc 1 29 5
	.loc 1 30 5
	.loc 1 29 18 is_stmt 0
	sw	s0,24(sp)
	.loc 1 31 5 is_stmt 1
	.loc 1 32 5
	.loc 1 34 5
	.loc 1 35 5
	.loc 1 36 5
	.loc 1 37 5
	.loc 1 37 20 is_stmt 0
	sh	a5,44(sp)
	.loc 1 39 5 is_stmt 1
	addi	s6,s6,%lo(.LANCHOR0)
	call	qcc74x_i2c_transfer
.LVL9:
.LBE40:
.LBE41:
.LBE49:
.LBE97:
.LBB98:
.LBB95:
.LBB64:
.LBB61:
	.loc 1 49 20 is_stmt 0
	addi	s9,sp,15
	.loc 1 50 20
	li	s8,1
	.loc 1 52 18
	addi	s7,s7,104
.LBE61:
.LBE64:
	.loc 1 84 5
	lui	s4,%hi(.LC2)
	.loc 1 85 5
	lui	s3,%hi(.LC3)
	.loc 1 90 5
	lui	s2,%hi(.LC4)
	.loc 1 95 5
	lui	s1,%hi(.LC5)
.L2:
.LBE95:
.LBE98:
	.loc 1 112 5 is_stmt 1 discriminator 1
	.loc 1 114 9 discriminator 1
.LBB99:
.LBB96:
	.loc 1 80 5 discriminator 1
.LBB65:
.LBB62:
	.loc 1 57 5 is_stmt 0 discriminator 1
	lw	a0,0(s6)
	.loc 1 54 20 discriminator 1
	addi	a5,sp,16
	.loc 1 57 5 discriminator 1
	addi	a1,sp,24
	.loc 1 45 29 discriminator 1
	sw	zero,32(sp)
	sw	zero,44(sp)
	.loc 1 54 20 discriminator 1
	sw	a5,40(sp)
	.loc 1 57 5 discriminator 1
	li	a2,2
	.loc 1 55 20 discriminator 1
	li	a5,7
	sh	a5,44(sp)
.LBE62:
.LBE65:
	.loc 1 80 13 discriminator 1
	sw	zero,16(sp)
	sh	zero,20(sp)
	sb	zero,22(sp)
	.loc 1 82 5 is_stmt 1 discriminator 1
.LVL10:
	sb	zero,15(sp)
.LVL11:
.LBB66:
.LBB63:
	.loc 1 45 5 discriminator 1
	.loc 1 47 5 discriminator 1
	.loc 1 48 5 discriminator 1
	.loc 1 47 18 is_stmt 0 discriminator 1
	sw	s0,24(sp)
	.loc 1 49 5 is_stmt 1 discriminator 1
	.loc 1 49 20 is_stmt 0 discriminator 1
	sw	s9,28(sp)
	.loc 1 50 5 is_stmt 1 discriminator 1
	.loc 1 52 5 discriminator 1
	.loc 1 53 5 discriminator 1
	.loc 1 50 20 is_stmt 0 discriminator 1
	sh	s8,32(sp)
	.loc 1 52 18 discriminator 1
	sw	s7,36(sp)
	.loc 1 54 5 is_stmt 1 discriminator 1
	.loc 1 55 5 discriminator 1
	.loc 1 57 5 discriminator 1
	call	qcc74x_i2c_transfer
.LVL12:
.LBE63:
.LBE66:
	.loc 1 84 5 discriminator 1
	addi	a0,s4,%lo(.LC2)
	call	printf
.LVL13:
	.loc 1 85 5 discriminator 1
	.loc 1 88 24 is_stmt 0 discriminator 1
	lbu	a3,16(sp)
	.loc 1 87 12 discriminator 1
	lbu	a2,17(sp)
	.loc 1 86 24 discriminator 1
	lbu	a1,18(sp)
.LVL14:
.LBB67:
.LBB68:
	.loc 1 21 5 is_stmt 1 discriminator 1
.LBE68:
.LBE67:
.LBB71:
.LBB72:
	.loc 1 21 5 discriminator 1
.LBE72:
.LBE71:
.LBB75:
.LBB76:
	.loc 1 21 5 discriminator 1
	.loc 1 21 30 is_stmt 0 discriminator 1
	li	s5,10
	extu	a5,a3,4+3-1,4
	.loc 1 21 37 discriminator 1
	andi	a3,a3,15
	.loc 1 21 30 discriminator 1
	mula	a3,a5,s5
.LBE76:
.LBE75:
.LBB77:
.LBB73:
	srli	a5,a2,4
	.loc 1 21 37 discriminator 1
	andi	a2,a2,15
.LBE73:
.LBE77:
	.loc 1 85 5 discriminator 1
	addi	a0,s3,%lo(.LC3)
.LBB78:
.LBB74:
	.loc 1 21 30 discriminator 1
	mula	a2,a5,s5
.LBE74:
.LBE78:
.LBB79:
.LBB69:
	extu	a5,a1,4+2-1,4
	.loc 1 21 37 discriminator 1
	andi	a1,a1,15
.LBE69:
.LBE79:
	.loc 1 85 5 discriminator 1
	andi	a3,a3,0xff
.LBB80:
.LBB70:
	.loc 1 21 30 discriminator 1
	mula	a1,a5,s5
.LBE70:
.LBE80:
	.loc 1 85 5 discriminator 1
	andi	a2,a2,0xff
	andi	a1,a1,0xff
	call	printf
.LVL15:
	.loc 1 90 5 is_stmt 1 discriminator 1
	.loc 1 93 12 is_stmt 0 discriminator 1
	lbu	a3,22(sp)
	.loc 1 92 12 discriminator 1
	lbu	a2,21(sp)
	.loc 1 91 12 discriminator 1
	lbu	a1,20(sp)
.LVL16:
.LBB81:
.LBB82:
	.loc 1 21 5 is_stmt 1 discriminator 1
.LBE82:
.LBE81:
.LBB85:
.LBB86:
	.loc 1 21 5 discriminator 1
.LBE86:
.LBE85:
.LBB89:
.LBB90:
	.loc 1 21 5 discriminator 1
	.loc 1 21 30 is_stmt 0 discriminator 1
	srli	a5,a3,4
	.loc 1 21 37 discriminator 1
	andi	a3,a3,15
	.loc 1 21 30 discriminator 1
	mula	a3,a5,s5
.LBE90:
.LBE89:
.LBB91:
.LBB87:
	srli	a5,a2,4
	.loc 1 21 37 discriminator 1
	andi	a2,a2,15
.LBE87:
.LBE91:
	.loc 1 90 5 discriminator 1
	addi	a0,s2,%lo(.LC4)
.LBB92:
.LBB88:
	.loc 1 21 30 discriminator 1
	mula	a2,a5,s5
.LBE88:
.LBE92:
.LBB93:
.LBB83:
	srli	a5,a1,4
	.loc 1 21 37 discriminator 1
	andi	a1,a1,15
.LBE83:
.LBE93:
	.loc 1 90 5 discriminator 1
	andi	a3,a3,0xff
.LBB94:
.LBB84:
	.loc 1 21 30 discriminator 1
	mula	a1,a5,s5
.LBE84:
.LBE94:
	.loc 1 90 5 discriminator 1
	andi	a2,a2,0xff
	andi	a1,a1,0xff
	call	printf
.LVL17:
	.loc 1 95 5 is_stmt 1 discriminator 1
	addi	a0,s1,%lo(.LC5)
	call	printf
.LVL18:
.LBE96:
.LBE99:
	.loc 1 115 9 discriminator 1
	li	a0,1000
	call	qcc74x_mtimer_delay_ms
.LVL19:
	.loc 1 112 11 discriminator 1
	j	.L2
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.section	.bss.i2c0,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	i2c0, @object
	.size	i2c0, 4
i2c0:
	.zero	4
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/lhal/include/qcc74x_core.h"
	.file 5 "./drivers/lhal/include/qcc74x_i2c.h"
	.file 6 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdio.h"
	.file 7 "./bsp/board/qcc74xdk/./board.h"
	.file 8 "./drivers/lhal/include/qcc74x_mtimer.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x54e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF43
	.byte	0xc
	.4byte	.LASF44
	.4byte	.LASF45
	.4byte	.Ldebug_ranges0+0x130
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
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.byte	0x6
	.4byte	0xb5
	.byte	0x7
	.byte	0x4
	.4byte	0xbc
	.byte	0x8
	.4byte	.LASF22
	.byte	0x10
	.byte	0x4
	.byte	0x67
	.byte	0x8
	.4byte	0x130
	.byte	0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0x68
	.byte	0x11
	.4byte	0xc1
	.byte	0
	.byte	0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0x69
	.byte	0xe
	.4byte	0xa7
	.byte	0x4
	.byte	0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x6a
	.byte	0xd
	.4byte	0x8f
	.byte	0x8
	.byte	0xa
	.string	"idx"
	.byte	0x4
	.byte	0x6b
	.byte	0xd
	.4byte	0x8f
	.byte	0x9
	.byte	0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0x6c
	.byte	0xd
	.4byte	0x8f
	.byte	0xa
	.byte	0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0x6d
	.byte	0xd
	.4byte	0x8f
	.byte	0xb
	.byte	0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0x6e
	.byte	0xb
	.4byte	0xb3
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	.LASF23
	.byte	0xc
	.byte	0x5
	.byte	0x7b
	.byte	0x8
	.4byte	0x172
	.byte	0x9
	.4byte	.LASF24
	.byte	0x5
	.byte	0x7c
	.byte	0xe
	.4byte	0x9b
	.byte	0
	.byte	0x9
	.4byte	.LASF25
	.byte	0x5
	.byte	0x7d
	.byte	0xe
	.4byte	0x9b
	.byte	0x2
	.byte	0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0x7e
	.byte	0xe
	.4byte	0x172
	.byte	0x4
	.byte	0x9
	.4byte	.LASF27
	.byte	0x5
	.byte	0x7f
	.byte	0xe
	.4byte	0x9b
	.byte	0x8
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x8f
	.byte	0xb
	.4byte	.LASF46
	.byte	0x1
	.byte	0xb
	.byte	0x20
	.4byte	0x18a
	.byte	0x5
	.byte	0x3
	.4byte	i2c0
	.byte	0x7
	.byte	0x4
	.4byte	0xc7
	.byte	0xc
	.4byte	.LASF47
	.byte	0x1
	.byte	0x63
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x3f5
	.byte	0xd
	.4byte	0x41d
	.4byte	.LBB36
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x6e
	.byte	0x5
	.4byte	0x21f
	.byte	0xe
	.4byte	.Ldebug_ranges0+0
	.byte	0xf
	.4byte	0x42a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x10
	.4byte	0x483
	.4byte	.LBB38
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x4a
	.byte	0x5
	.byte	0x11
	.4byte	0x490
	.4byte	.LLST0
	.byte	0x11
	.4byte	0x4a8
	.4byte	.LLST1
	.byte	0x11
	.4byte	0x49c
	.4byte	.LLST2
	.byte	0xe
	.4byte	.Ldebug_ranges0+0x50
	.byte	0xf
	.4byte	0x4b4
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x12
	.4byte	.LVL9
	.4byte	0x4fd
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	0x3f5
	.4byte	.LBB57
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x1
	.byte	0x72
	.byte	0x9
	.4byte	0x38c
	.byte	0xe
	.4byte	.Ldebug_ranges0+0x68
	.byte	0xf
	.4byte	0x402
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0xd
	.4byte	0x435
	.4byte	.LBB59
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.4byte	0x296
	.byte	0x11
	.4byte	0x442
	.4byte	.LLST3
	.byte	0x11
	.4byte	0x45a
	.4byte	.LLST4
	.byte	0x11
	.4byte	0x44e
	.4byte	.LLST5
	.byte	0xe
	.4byte	.Ldebug_ranges0+0x88
	.byte	0xf
	.4byte	0x466
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x12
	.4byte	.LVL12
	.4byte	0x4fd
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	0x4c1
	.4byte	.LBB67
	.4byte	.Ldebug_ranges0+0xb0
	.byte	0x1
	.byte	0x56
	.byte	0xc
	.4byte	0x2b0
	.byte	0x14
	.4byte	0x4d2
	.byte	0
	.byte	0xd
	.4byte	0x4c1
	.4byte	.LBB71
	.4byte	.Ldebug_ranges0+0xd0
	.byte	0x1
	.byte	0x57
	.byte	0xc
	.4byte	0x2ca
	.byte	0x14
	.4byte	0x4d2
	.byte	0
	.byte	0x15
	.4byte	0x4c1
	.4byte	.LBB75
	.4byte	.LBE75-.LBB75
	.byte	0x1
	.byte	0x58
	.byte	0xc
	.4byte	0x2e4
	.byte	0x14
	.4byte	0x4d2
	.byte	0
	.byte	0xd
	.4byte	0x4c1
	.4byte	.LBB81
	.4byte	.Ldebug_ranges0+0xf0
	.byte	0x1
	.byte	0x5b
	.byte	0xc
	.4byte	0x2fe
	.byte	0x14
	.4byte	0x4d2
	.byte	0
	.byte	0xd
	.4byte	0x4c1
	.4byte	.LBB85
	.4byte	.Ldebug_ranges0+0x110
	.byte	0x1
	.byte	0x5c
	.byte	0xc
	.4byte	0x318
	.byte	0x14
	.4byte	0x4d2
	.byte	0
	.byte	0x15
	.4byte	0x4c1
	.4byte	.LBB89
	.4byte	.LBE89-.LBB89
	.byte	0x1
	.byte	0x5d
	.byte	0xc
	.4byte	0x332
	.byte	0x14
	.4byte	0x4d2
	.byte	0
	.byte	0x16
	.4byte	.LVL13
	.4byte	0x509
	.4byte	0x349
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x16
	.4byte	.LVL15
	.4byte	0x509
	.4byte	0x360
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x16
	.4byte	.LVL17
	.4byte	0x509
	.4byte	0x377
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x12
	.4byte	.LVL18
	.4byte	0x509
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL0
	.4byte	0x515
	.byte	0x17
	.4byte	.LVL1
	.4byte	0x521
	.byte	0x16
	.4byte	.LVL2
	.4byte	0x52d
	.4byte	0x3b5
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x16
	.4byte	.LVL3
	.4byte	0x539
	.4byte	0x3cc
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0xc
	.4byte	0x186a0
	.byte	0
	.byte	0x16
	.4byte	.LVL4
	.4byte	0x509
	.4byte	0x3e3
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x12
	.4byte	.LVL19
	.4byte	0x545
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LASF28
	.byte	0x1
	.byte	0x4e
	.byte	0xd
	.byte	0x1
	.4byte	0x40d
	.byte	0x19
	.string	"b"
	.byte	0x1
	.byte	0x50
	.byte	0xd
	.4byte	0x40d
	.byte	0
	.byte	0x1a
	.4byte	0x8f
	.4byte	0x41d
	.byte	0x1b
	.4byte	0x88
	.byte	0x6
	.byte	0
	.byte	0x18
	.4byte	.LASF29
	.byte	0x1
	.byte	0x3e
	.byte	0xd
	.byte	0x1
	.4byte	0x435
	.byte	0x19
	.string	"t"
	.byte	0x1
	.byte	0x40
	.byte	0xd
	.4byte	0x40d
	.byte	0
	.byte	0x18
	.4byte	.LASF30
	.byte	0x1
	.byte	0x2b
	.byte	0xd
	.byte	0x1
	.4byte	0x473
	.byte	0x1c
	.string	"reg"
	.byte	0x1
	.byte	0x2b
	.byte	0x21
	.4byte	0x8f
	.byte	0x1d
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2b
	.byte	0x2f
	.4byte	0x172
	.byte	0x1c
	.string	"len"
	.byte	0x1
	.byte	0x2b
	.byte	0x3d
	.4byte	0x8f
	.byte	0x1e
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2d
	.byte	0x1d
	.4byte	0x473
	.byte	0
	.byte	0x1a
	.4byte	0x130
	.4byte	0x483
	.byte	0x1b
	.4byte	0x88
	.byte	0x1
	.byte	0
	.byte	0x18
	.4byte	.LASF33
	.byte	0x1
	.byte	0x19
	.byte	0xd
	.byte	0x1
	.4byte	0x4c1
	.byte	0x1c
	.string	"reg"
	.byte	0x1
	.byte	0x19
	.byte	0x22
	.4byte	0x8f
	.byte	0x1d
	.4byte	.LASF31
	.byte	0x1
	.byte	0x19
	.byte	0x30
	.4byte	0x172
	.byte	0x1c
	.string	"len"
	.byte	0x1
	.byte	0x19
	.byte	0x3e
	.4byte	0x8f
	.byte	0x1e
	.4byte	.LASF32
	.byte	0x1
	.byte	0x1b
	.byte	0x1d
	.4byte	0x473
	.byte	0
	.byte	0x1f
	.4byte	.LASF34
	.byte	0x1
	.byte	0x13
	.byte	0x10
	.4byte	0x8f
	.byte	0x1
	.4byte	0x4df
	.byte	0x1c
	.string	"val"
	.byte	0x1
	.byte	0x13
	.byte	0x23
	.4byte	0x8f
	.byte	0
	.byte	0x1f
	.4byte	.LASF35
	.byte	0x1
	.byte	0xe
	.byte	0x10
	.4byte	0x8f
	.byte	0x1
	.4byte	0x4fd
	.byte	0x1c
	.string	"val"
	.byte	0x1
	.byte	0xe
	.byte	0x23
	.4byte	0x8f
	.byte	0
	.byte	0x20
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x5
	.byte	0xcc
	.byte	0x5
	.byte	0x20
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x6
	.byte	0xc8
	.byte	0x5
	.byte	0x20
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x7
	.byte	0x4
	.byte	0x6
	.byte	0x20
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x7
	.byte	0x7
	.byte	0x6
	.byte	0x20
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x4
	.byte	0x7b
	.byte	0x19
	.byte	0x20
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x5
	.byte	0xab
	.byte	0x6
	.byte	0x20
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x8
	.byte	0x27
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
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x52
	.byte	0x1
	.byte	0x55
	.byte	0x17
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
	.byte	0xe
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x52
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
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
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x5
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
	.byte	0x1d
	.byte	0x5
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
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x4
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x6
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL7
	.4byte	.LVL9-1
	.2byte	0x2
	.byte	0x91
	.byte	0x48
	.4byte	.LVL9-1
	.4byte	.LVL9
	.2byte	0x4
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x3
	.byte	0x91
	.byte	0xb6,0x7f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL12-1
	.2byte	0x2
	.byte	0x91
	.byte	0x48
	.4byte	.LVL12-1
	.4byte	.LVL12
	.2byte	0x4
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x9f
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	.LBB97
	.4byte	.LBE97
	.4byte	0
	.4byte	0
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	0
	.4byte	0
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	.LBB98
	.4byte	.LBE98
	.4byte	.LBB99
	.4byte	.LBE99
	.4byte	0
	.4byte	0
	.4byte	.LBB59
	.4byte	.LBE59
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	.LBB66
	.4byte	.LBE66
	.4byte	0
	.4byte	0
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	.LBB79
	.4byte	.LBE79
	.4byte	.LBB80
	.4byte	.LBE80
	.4byte	0
	.4byte	0
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	.LBB77
	.4byte	.LBE77
	.4byte	.LBB78
	.4byte	.LBE78
	.4byte	0
	.4byte	0
	.4byte	.LBB81
	.4byte	.LBE81
	.4byte	.LBB93
	.4byte	.LBE93
	.4byte	.LBB94
	.4byte	.LBE94
	.4byte	0
	.4byte	0
	.4byte	.LBB85
	.4byte	.LBE85
	.4byte	.LBB91
	.4byte	.LBE91
	.4byte	.LBB92
	.4byte	.LBE92
	.4byte	0
	.4byte	0
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF39:
	.string	"board_i2c0_gpio_init"
.LASF3:
	.string	"__uint8_t"
.LASF44:
	.string	"./examples/peripherals/i2c/rtc/main.c"
.LASF5:
	.string	"short unsigned int"
.LASF2:
	.string	"short int"
.LASF35:
	.string	"dec_to_bcd"
.LASF42:
	.string	"qcc74x_mtimer_delay_ms"
.LASF31:
	.string	"data"
.LASF28:
	.string	"ds1307_get_time"
.LASF21:
	.string	"user_data"
.LASF1:
	.string	"unsigned char"
.LASF34:
	.string	"bcd_to_dec"
.LASF36:
	.string	"qcc74x_i2c_transfer"
.LASF8:
	.string	"long unsigned int"
.LASF24:
	.string	"addr"
.LASF7:
	.string	"__uint32_t"
.LASF19:
	.string	"sub_idx"
.LASF4:
	.string	"__uint16_t"
.LASF38:
	.string	"board_init"
.LASF41:
	.string	"qcc74x_i2c_init"
.LASF40:
	.string	"qcc74x_device_get_by_name"
.LASF22:
	.string	"qcc74x_device_s"
.LASF47:
	.string	"main"
.LASF11:
	.string	"unsigned int"
.LASF25:
	.string	"flags"
.LASF10:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint8_t"
.LASF33:
	.string	"ds1307_write"
.LASF43:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF17:
	.string	"reg_base"
.LASF18:
	.string	"irq_num"
.LASF46:
	.string	"i2c0"
.LASF32:
	.string	"msgs"
.LASF9:
	.string	"long long int"
.LASF16:
	.string	"name"
.LASF20:
	.string	"dev_type"
.LASF37:
	.string	"printf"
.LASF45:
	.string	"./examples/peripherals/i2c/rtc/build"
.LASF23:
	.string	"qcc74x_i2c_msg_s"
.LASF26:
	.string	"buffer"
.LASF13:
	.string	"uint16_t"
.LASF14:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF15:
	.string	"char"
.LASF27:
	.string	"length"
.LASF0:
	.string	"signed char"
.LASF30:
	.string	"ds1307_read"
.LASF29:
	.string	"ds1307_set_time"
	.ident	"GCC: (GNU) 10.4.0"

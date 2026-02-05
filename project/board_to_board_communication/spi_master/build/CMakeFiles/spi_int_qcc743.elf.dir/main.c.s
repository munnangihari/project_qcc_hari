	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.system_init.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"gpio"
	.section	.text.system_init,"ax",@progbits
	.align	1
	.globl	system_init
	.type	system_init, @function
system_init:
.LFB7:
	.file 1 "./examples/peripherals/spi/spi_master/main.c"
	.loc 1 31 24
	.cfi_startproc
	.loc 1 32 5
	.loc 1 32 12 is_stmt 0
	lui	a0,%hi(.LC1)
	.loc 1 31 24
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 32 12
	addi	a0,a0,%lo(.LC1)
	.loc 1 31 24
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 32 10
	lui	s0,%hi(.LANCHOR0)
	.loc 1 35 5
	li	s1,8192
	.loc 1 32 12
	call	qcc74x_device_get_by_name
.LVL0:
	.loc 1 32 10
	addi	s0,s0,%lo(.LANCHOR0)
	.loc 1 35 5
	addi	a2,s1,-1279
	li	a1,13
	.loc 1 32 10
	sw	a0,0(s0)
	.loc 1 35 5 is_stmt 1
	call	qcc74x_gpio_init
.LVL1:
	.loc 1 36 5
	lw	a0,0(s0)
	addi	a2,s1,-1279
	li	a1,14
	call	qcc74x_gpio_init
.LVL2:
	.loc 1 37 5
	lw	a0,0(s0)
	addi	a2,s1,-1279
	li	a1,15
	call	qcc74x_gpio_init
.LVL3:
	.loc 1 38 5
	lw	a0,0(s0)
	addi	a2,s1,-1472
	li	a1,12
	call	qcc74x_gpio_init
.LVL4:
	.loc 1 39 5
	lw	a0,0(s0)
	li	a1,12
	call	qcc74x_gpio_set
.LVL5:
	.loc 1 42 5
	lw	a0,0(s0)
	addi	a2,s1,-1275
	li	a1,10
	call	qcc74x_gpio_init
.LVL6:
	.loc 1 43 5
	lw	a0,0(s0)
	addi	a2,s1,-1275
	li	a1,11
	call	qcc74x_gpio_init
.LVL7:
	.loc 1 46 5
	lw	a0,0(s0)
	addi	a2,s1,-1472
	li	a1,3
	call	qcc74x_gpio_init
.LVL8:
	.loc 1 47 5
	lw	a0,0(s0)
	.loc 1 48 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	.loc 1 47 5
	li	a1,3
	.loc 1 48 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 47 5
	tail	qcc74x_gpio_set
.LVL9:
	.cfi_endproc
.LFE7:
	.size	system_init, .-system_init
	.section	.rodata.spi_init.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"spi0"
	.section	.text.spi_init,"ax",@progbits
	.align	1
	.globl	spi_init
	.type	spi_init, @function
spi_init:
.LFB8:
	.loc 1 50 21 is_stmt 1
	.cfi_startproc
	.loc 1 51 5
	.loc 1 50 21 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 51 32
	lui	a1,%hi(.LANCHOR1)
	li	a2,12
	addi	a1,a1,%lo(.LANCHOR1)
	addi	a0,sp,4
	.loc 1 50 21
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 51 32
	call	memcpy
.LVL10:
	.loc 1 56 5 is_stmt 1
	.loc 1 56 12 is_stmt 0
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	qcc74x_device_get_by_name
.LVL11:
	.loc 1 56 10
	lui	a5,%hi(.LANCHOR2)
	.loc 1 57 5
	addi	a1,sp,4
	.loc 1 56 10
	sw	a0,%lo(.LANCHOR2)(a5)
	.loc 1 57 5 is_stmt 1
	call	qcc74x_spi_init
.LVL12:
	.loc 1 58 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	spi_init, .-spi_init
	.section	.text.dht11_read,"ax",@progbits
	.align	1
	.globl	dht11_read
	.type	dht11_read, @function
dht11_read:
.LFB9:
	.loc 1 61 45 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 62 5
	.loc 1 61 45 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	.cfi_offset 8, -8
	.loc 1 66 5
	lui	s0,%hi(.LANCHOR0)
	.loc 1 61 45
	sw	s1,36(sp)
	.cfi_offset 9, -12
	.loc 1 66 5
	addi	s1,s0,%lo(.LANCHOR0)
	.loc 1 61 45
	sw	s3,28(sp)
	.cfi_offset 19, -20
	mv	s3,a0
	.loc 1 66 5
	lw	a0,0(s1)
.LVL14:
	li	a2,64
	.loc 1 61 45
	sw	s4,24(sp)
	.cfi_offset 20, -24
	mv	s4,a1
	.loc 1 66 5
	li	a1,3
.LVL15:
	.loc 1 61 45
	sw	ra,44(sp)
	sw	s2,32(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.loc 1 62 13
	sw	zero,8(sp)
	sb	zero,12(sp)
	.loc 1 63 5 is_stmt 1
	.loc 1 66 5
	call	qcc74x_gpio_init
.LVL16:
	.loc 1 67 5
	lw	a0,0(s1)
	li	a1,3
	.loc 1 74 13 is_stmt 0
	li	s2,500
	.loc 1 67 5
	call	qcc74x_gpio_reset
.LVL17:
	.loc 1 68 5 is_stmt 1
	li	a0,20
	call	qcc74x_mtimer_delay_ms
.LVL18:
	.loc 1 69 5
	lw	a0,0(s1)
	li	a1,3
	addi	s0,s0,%lo(.LANCHOR0)
	call	qcc74x_gpio_set
.LVL19:
	.loc 1 70 5
.LBB17:
.LBB18:
	.loc 1 28 37
	li	a0,40
	call	qcc74x_mtimer_delay_us
.LVL20:
.LBE18:
.LBE17:
	.loc 1 71 5
	lw	a0,0(s1)
	li	a2,32
	li	a1,3
	call	qcc74x_gpio_init
.LVL21:
	.loc 1 74 5
	.loc 1 74 20
	.loc 1 74 53 is_stmt 0
	li	s1,-1
.LVL22:
.L6:
	.loc 1 74 26 is_stmt 1 discriminator 1
	.loc 1 74 27 is_stmt 0 discriminator 1
	lw	a0,0(s0)
	li	a1,3
	call	qcc74x_gpio_read
.LVL23:
	.loc 1 74 26 discriminator 1
	beq	a0,zero,.L7
	.loc 1 74 63 discriminator 3
	addi	s2,s2,-1
.LVL24:
	.loc 1 74 53 discriminator 3
	bne	s2,s1,.L8
	li	s1,500
.L9:
	.loc 1 76 54 discriminator 1
	li	s2,-1
.LVL25:
	j	.L11
.LVL26:
.L8:
	.loc 1 74 67 is_stmt 1
.LBB19:
.LBB20:
	.loc 1 28 37
	li	a0,1
	call	qcc74x_mtimer_delay_us
.LVL27:
	.loc 1 28 65 is_stmt 0
	j	.L6
.LVL28:
.L7:
.LBE20:
.LBE19:
	.loc 1 75 5 is_stmt 1
	li	s1,500
	.loc 1 75 8 is_stmt 0
	bne	s2,zero,.L9
.LVL29:
.L15:
	.loc 1 75 26
	li	a0,-1
.L5:
	.loc 1 96 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
.LVL30:
	lw	s4,24(sp)
	.cfi_restore 20
.LVL31:
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL32:
.L13:
	.cfi_restore_state
	.loc 1 76 68 is_stmt 1
.LBB21:
.LBB22:
	.loc 1 28 37
	li	a0,1
	call	qcc74x_mtimer_delay_us
.LVL33:
.L11:
.LBE22:
.LBE21:
	.loc 1 76 26 discriminator 1
	.loc 1 76 28 is_stmt 0 discriminator 1
	lw	a0,0(s0)
	li	a1,3
	call	qcc74x_gpio_read
.LVL34:
	.loc 1 76 26 discriminator 1
	bne	a0,zero,.L12
	.loc 1 76 64 discriminator 3
	addi	s1,s1,-1
.LVL35:
	.loc 1 76 54 discriminator 3
	bne	s1,s2,.L13
.L44:
	li	s1,500
.LVL36:
	.loc 1 78 53
	li	s2,-1
.L16:
.LVL37:
	.loc 1 78 26 is_stmt 1 discriminator 1
	.loc 1 78 27 is_stmt 0 discriminator 1
	lw	a0,0(s0)
	li	a1,3
	call	qcc74x_gpio_read
.LVL38:
	.loc 1 78 26 discriminator 1
	beq	a0,zero,.L17
	.loc 1 78 63 discriminator 3
	addi	s1,s1,-1
.LVL39:
	.loc 1 78 53 discriminator 3
	bne	s1,s2,.L18
.L45:
	li	s1,0
.LVL40:
	li	s2,500
.LBB23:
	.loc 1 82 5
	li	s5,40
.L20:
.LVL41:
	.loc 1 83 30 is_stmt 1 discriminator 1
	.loc 1 83 32 is_stmt 0 discriminator 1
	lw	a0,0(s0)
	li	a1,3
	call	qcc74x_gpio_read
.LVL42:
	.loc 1 83 30 discriminator 1
	bne	a0,zero,.L21
	.loc 1 83 68 discriminator 3
	addi	s6,s2,-1
.LVL43:
	.loc 1 83 58 discriminator 3
	bne	s2,zero,.L22
.LVL44:
.L21:
	.loc 1 84 9 is_stmt 1
.LBB24:
.LBB25:
	.loc 1 28 37
	li	a0,50
	call	qcc74x_mtimer_delay_us
.LVL45:
.LBE25:
.LBE24:
	.loc 1 85 9
	.loc 1 85 13 is_stmt 0
	lw	a0,0(s0)
	li	a1,3
	call	qcc74x_gpio_read
.LVL46:
	.loc 1 85 12
	beq	a0,zero,.L23
	.loc 1 86 13 is_stmt 1
	.loc 1 86 31 is_stmt 0
	not	a5,s1
	andi	a3,a5,7
	li	a5,1
	.loc 1 86 20
	srai	a4,s1,3
	.loc 1 86 31
	sll	a5,a5,a3
	.loc 1 86 25
	addi	a3,sp,8
	lrbu	a3,a3,a4,0
	or	a5,a5,a3
	addi	a3,sp,8
	srb	a5,a3,a4,0
.L23:
.LBE23:
	li	s2,501
.L24:
.LVL47:
.LBB30:
	.loc 1 87 30 is_stmt 1 discriminator 1
	.loc 1 87 31 is_stmt 0 discriminator 1
	lw	a0,0(s0)
	li	a1,3
	call	qcc74x_gpio_read
.LVL48:
	.loc 1 87 30 discriminator 1
	beq	a0,zero,.L25
.LVL49:
	.loc 1 87 57 discriminator 3
	addi	s2,s2,-1
.LVL50:
	bne	s2,zero,.L26
.LVL51:
.L25:
	.loc 1 82 29 is_stmt 1 discriminator 2
	.loc 1 82 30 is_stmt 0 discriminator 2
	addi	s1,s1,1
.LVL52:
	.loc 1 82 21 is_stmt 1 discriminator 2
	.loc 1 82 5 is_stmt 0 discriminator 2
	bne	s1,s5,.L29
.LBE30:
	.loc 1 91 5 is_stmt 1
	.loc 1 91 14 is_stmt 0
	lbu	a3,8(sp)
	.loc 1 91 24
	lbu	a5,9(sp)
	.loc 1 91 34
	lbu	a4,10(sp)
	.loc 1 91 44
	lbu	a2,11(sp)
	.loc 1 91 18
	add	a5,a5,a3
	.loc 1 91 28
	add	a5,a5,a4
	.loc 1 91 38
	add	a5,a5,a2
	.loc 1 91 56
	lbu	a2,12(sp)
	.loc 1 91 68
	li	a0,-2
	.loc 1 91 8
	bne	a5,a2,.L5
	.loc 1 93 5 is_stmt 1
	.loc 1 93 10 is_stmt 0
	sb	a3,0(s4)
	.loc 1 94 5 is_stmt 1
	.loc 1 94 11 is_stmt 0
	sb	a4,0(s3)
	.loc 1 95 5 is_stmt 1
	.loc 1 95 12 is_stmt 0
	li	a0,0
	j	.L5
.LVL53:
.L12:
	.loc 1 77 5 is_stmt 1
	.loc 1 77 8 is_stmt 0
	bne	s1,zero,.L44
	j	.L15
.L18:
	.loc 1 78 67 is_stmt 1
.LVL54:
.LBB31:
.LBB32:
	.loc 1 28 37
	li	a0,1
	call	qcc74x_mtimer_delay_us
.LVL55:
	.loc 1 28 65 is_stmt 0
	j	.L16
.LVL56:
.L17:
.LBE32:
.LBE31:
	.loc 1 79 5 is_stmt 1
	.loc 1 79 8 is_stmt 0
	bne	s1,zero,.L45
	j	.L15
.LVL57:
.L22:
.LBB33:
	.loc 1 83 72 is_stmt 1
.LBB26:
.LBB27:
	.loc 1 28 37
	li	a0,1
	call	qcc74x_mtimer_delay_us
.LVL58:
	.loc 1 28 65 is_stmt 0
	mv	s2,s6
	j	.L20
.LVL59:
.L29:
.LBE27:
.LBE26:
	.loc 1 83 17
	li	s2,500
	j	.L20
.LVL60:
.L26:
	.loc 1 87 71 is_stmt 1
.LBB28:
.LBB29:
	.loc 1 28 37
	li	a0,1
	call	qcc74x_mtimer_delay_us
.LVL61:
	.loc 1 28 65 is_stmt 0
	j	.L24
.LBE29:
.LBE28:
.LBE33:
	.cfi_endproc
.LFE9:
	.size	dht11_read, .-dht11_read
	.section	.rodata.main.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"i2c0"
	.align	2
.LC4:
	.string	"MASTER: DHT11 on Pin 3 | RTC on 10/11 | SPI on 12-15\r\n"
	.align	2
.LC5:
	.string	"DHT Read Failed\r\n"
	.align	2
.LC6:
	.string	"Sent: T:%d H:%d @ %02d:%02d:%02d\r\n"
	.section	.text.startup.main,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB10:
	.loc 1 99 16 is_stmt 1
	.cfi_startproc
	.loc 1 100 5
	.loc 1 99 16 is_stmt 0
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s2,96(sp)
	sw	s3,92(sp)
	sw	s4,88(sp)
	sw	s5,84(sp)
	sw	s6,80(sp)
	sw	s7,76(sp)
	sw	s8,72(sp)
	sw	s9,68(sp)
	sw	s10,64(sp)
	sw	s0,104(sp)
	sw	s1,100(sp)
	sw	s11,60(sp)
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 27, -52
	.loc 1 100 5
	call	board_init
.LVL62:
	.loc 1 101 5 is_stmt 1
	call	system_init
.LVL63:
	.loc 1 103 5
	.loc 1 103 12 is_stmt 0
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	qcc74x_device_get_by_name
.LVL64:
	.loc 1 104 5
	li	a1,98304
	addi	a1,a1,1696
	.loc 1 103 10
	lui	s2,%hi(.LANCHOR3)
	sw	a0,%lo(.LANCHOR3)(s2)
	.loc 1 104 5 is_stmt 1
	call	qcc74x_i2c_init
.LVL65:
	.loc 1 105 5
	call	spi_init
.LVL66:
	.loc 1 107 5
	.loc 1 115 5 is_stmt 0
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	.loc 1 119 21
	li	s3,4194304
	.loc 1 120 21
	li	s4,65536
	.loc 1 107 22
	sb	zero,1(sp)
	.loc 1 107 29
	sb	zero,2(sp)
	.loc 1 108 5 is_stmt 1
	.loc 1 109 5
	.loc 1 111 5
	.loc 1 112 5
	.loc 1 112 13 is_stmt 0
	sb	zero,3(sp)
	.loc 1 113 5 is_stmt 1
	.loc 1 115 5
	addi	s2,s2,%lo(.LANCHOR3)
	call	printf
.LVL67:
	.loc 1 119 21 is_stmt 0
	addi	s3,s3,104
	.loc 1 119 66
	addi	s8,sp,3
	.loc 1 120 21
	addi	s4,s4,104
	.loc 1 120 66
	addi	s9,sp,4
	.loc 1 135 13
	lui	s10,%hi(.LC5)
	.loc 1 146 9
	lui	s7,%hi(.LANCHOR0)
	.loc 1 147 9
	lui	s6,%hi(.LANCHOR2)
	.loc 1 150 9
	lui	s5,%hi(.LC6)
.L49:
	.loc 1 117 5 is_stmt 1
	.loc 1 119 9
	.loc 1 119 29
	.loc 1 122 13 is_stmt 0
	lw	a0,0(s2)
	.loc 1 119 88
	li	a5,1
	sh	a5,32(sp)
	.loc 1 122 13
	li	a2,2
	.loc 1 120 91
	li	a5,3
	.loc 1 122 13
	addi	a1,sp,24
	.loc 1 119 21
	sw	s3,24(sp)
	.loc 1 119 52 is_stmt 1
	.loc 1 119 66 is_stmt 0
	sw	s8,28(sp)
	.loc 1 119 74 is_stmt 1
	.loc 1 120 9
	.loc 1 120 29
	.loc 1 120 21 is_stmt 0
	sw	s4,36(sp)
	.loc 1 120 52 is_stmt 1
	.loc 1 120 66 is_stmt 0
	sw	s9,40(sp)
	.loc 1 120 77 is_stmt 1
	.loc 1 120 91 is_stmt 0
	sh	a5,44(sp)
	.loc 1 122 9 is_stmt 1
	.loc 1 122 13 is_stmt 0
	call	qcc74x_i2c_transfer
.LVL68:
	.loc 1 122 12
	bne	a0,zero,.L50
	.loc 1 123 13 is_stmt 1
	.loc 1 123 35 is_stmt 0
	lbu	s11,4(sp)
.LVL69:
.LBB40:
.LBB41:
	.loc 1 27 40 is_stmt 1
.LBE41:
.LBE40:
	.loc 1 124 17 is_stmt 0
	lbu	s1,5(sp)
	.loc 1 125 35
	lbu	s0,6(sp)
.LBB44:
.LBB42:
	.loc 1 27 63
	extu	a4,s11,4+3-1,4
	li	a5,10
	.loc 1 27 68
	andi	s11,s11,15
.LVL70:
	.loc 1 27 63
	mula	s11,a4,a5
.LBE42:
.LBE44:
.LBB45:
.LBB46:
	srli	a4,s1,4
	.loc 1 27 68
	andi	s1,s1,15
	.loc 1 27 63
	mula	s1,a4,a5
.LBE46:
.LBE45:
.LBB49:
.LBB50:
	extu	a4,s0,4+2-1,4
	.loc 1 27 68
	andi	s0,s0,15
.LBE50:
.LBE49:
.LBB53:
.LBB43:
	.loc 1 27 63
	andi	s11,s11,0xff
.LVL71:
.LBE43:
.LBE53:
	.loc 1 124 13 is_stmt 1
.LBB54:
.LBB47:
	.loc 1 27 40
.LBE47:
.LBE54:
.LBB55:
.LBB51:
	.loc 1 27 63 is_stmt 0
	mula	s0,a4,a5
.LBE51:
.LBE55:
.LBB56:
.LBB48:
	andi	s1,s1,0xff
.LVL72:
.LBE48:
.LBE56:
	.loc 1 125 13 is_stmt 1
.LBB57:
.LBB52:
	.loc 1 27 40
	.loc 1 27 63 is_stmt 0
	andi	s0,s0,0xff
.LVL73:
.L47:
.LBE52:
.LBE57:
	.loc 1 132 9 is_stmt 1
	.loc 1 132 12 is_stmt 0
	addi	a1,sp,2
	addi	a0,sp,1
	call	dht11_read
.LVL74:
	.loc 1 132 11
	beq	a0,zero,.L48
	.loc 1 135 13 is_stmt 1
	addi	a0,s10,%lo(.LC5)
	call	printf
.LVL75:
.L48:
	.loc 1 139 9
	.loc 1 139 19 is_stmt 0
	li	a5,-86
	sb	a5,8(sp)
	.loc 1 140 9 is_stmt 1
	.loc 1 140 19 is_stmt 0
	lbu	a5,1(sp)
	.loc 1 146 9
	li	a1,12
	.loc 1 142 19
	sb	s0,11(sp)
	.loc 1 140 19
	sb	a5,9(sp)
	.loc 1 141 9 is_stmt 1
	.loc 1 141 19 is_stmt 0
	lbu	a5,2(sp)
	.loc 1 143 19
	sb	s1,12(sp)
	.loc 1 144 19
	sb	s11,13(sp)
	.loc 1 141 19
	sb	a5,10(sp)
	.loc 1 142 9 is_stmt 1
	.loc 1 143 9
	.loc 1 144 9
	.loc 1 146 9
	addi	a5,s7,%lo(.LANCHOR0)
	lw	a0,0(a5)
	call	qcc74x_gpio_reset
.LVL76:
	.loc 1 147 9
	lw	a0,%lo(.LANCHOR2)(s6)
	addi	a2,sp,16
	li	a3,6
	addi	a1,sp,8
	call	qcc74x_spi_poll_exchange
.LVL77:
	.loc 1 148 9
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lw	a0,0(a5)
	li	a1,12
	call	qcc74x_gpio_set
.LVL78:
	.loc 1 150 9
	lbu	a2,2(sp)
	lbu	a1,1(sp)
	mv	a5,s11
	mv	a4,s1
	mv	a3,s0
	addi	a0,s5,%lo(.LC6)
	call	printf
.LVL79:
	.loc 1 152 9
	li	a0,1000
	call	qcc74x_mtimer_delay_ms
.LVL80:
	.loc 1 117 11
	.loc 1 119 21 is_stmt 0
	j	.L49
.LVL81:
.L50:
	.loc 1 127 26
	li	s11,99
	.loc 1 127 20
	li	s1,99
	.loc 1 127 14
	li	s0,99
	j	.L47
	.cfi_endproc
.LFE10:
	.size	main, .-main
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
.LC0:
	.word	500000
	.byte	0
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
	.section	.bss.i2c0,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	i2c0, @object
	.size	i2c0, 4
i2c0:
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
	.file 5 "./drivers/lhal/include/qcc74x_i2c.h"
	.file 6 "./drivers/lhal/include/qcc74x_spi.h"
	.file 7 "./bsp/board/qcc74xdk/./board.h"
	.file 8 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdio.h"
	.file 9 "./drivers/lhal/include/qcc74x_gpio.h"
	.file 10 "./drivers/lhal/include/qcc74x_mtimer.h"
	.file 11 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x970
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF64
	.byte	0xc
	.4byte	.LASF65
	.4byte	.LASF66
	.4byte	.Ldebug_ranges0+0x80
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
	.byte	0x8
	.4byte	.LASF28
	.byte	0xc
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x1ee
	.byte	0x9
	.4byte	.LASF29
	.byte	0x6
	.byte	0xb6
	.byte	0xe
	.4byte	0xa7
	.byte	0
	.byte	0x9
	.4byte	.LASF30
	.byte	0x6
	.byte	0xb7
	.byte	0xd
	.4byte	0x8f
	.byte	0x4
	.byte	0x9
	.4byte	.LASF31
	.byte	0x6
	.byte	0xb8
	.byte	0xd
	.4byte	0x8f
	.byte	0x5
	.byte	0x9
	.4byte	.LASF32
	.byte	0x6
	.byte	0xb9
	.byte	0xd
	.4byte	0x8f
	.byte	0x6
	.byte	0x9
	.4byte	.LASF33
	.byte	0x6
	.byte	0xba
	.byte	0xd
	.4byte	0x8f
	.byte	0x7
	.byte	0x9
	.4byte	.LASF34
	.byte	0x6
	.byte	0xbb
	.byte	0xd
	.4byte	0x8f
	.byte	0x8
	.byte	0x9
	.4byte	.LASF35
	.byte	0x6
	.byte	0xbc
	.byte	0xd
	.4byte	0x8f
	.byte	0x9
	.byte	0x9
	.4byte	.LASF36
	.byte	0x6
	.byte	0xbd
	.byte	0xd
	.4byte	0x8f
	.byte	0xa
	.byte	0
	.byte	0xb
	.4byte	.LASF37
	.byte	0x1
	.byte	0x16
	.byte	0x20
	.4byte	0x200
	.byte	0x5
	.byte	0x3
	.4byte	spi0
	.byte	0x7
	.byte	0x4
	.4byte	0xc7
	.byte	0xb
	.4byte	.LASF38
	.byte	0x1
	.byte	0x17
	.byte	0x20
	.4byte	0x200
	.byte	0x5
	.byte	0x3
	.4byte	gpio
	.byte	0xb
	.4byte	.LASF39
	.byte	0x1
	.byte	0x18
	.byte	0x20
	.4byte	0x200
	.byte	0x5
	.byte	0x3
	.4byte	i2c0
	.byte	0xc
	.4byte	.LASF43
	.byte	0x1
	.byte	0x63
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x45d
	.byte	0xd
	.string	"h"
	.byte	0x1
	.byte	0x6b
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST10
	.byte	0xd
	.string	"m"
	.byte	0x1
	.byte	0x6b
	.byte	0x10
	.4byte	0x8f
	.4byte	.LLST11
	.byte	0xd
	.string	"s"
	.byte	0x1
	.byte	0x6b
	.byte	0x13
	.4byte	0x8f
	.4byte	.LLST12
	.byte	0xe
	.string	"t"
	.byte	0x1
	.byte	0x6b
	.byte	0x16
	.4byte	0x8f
	.byte	0x3
	.byte	0x91
	.byte	0x91,0x7f
	.byte	0xe
	.string	"hum"
	.byte	0x1
	.byte	0x6b
	.byte	0x1d
	.4byte	0x8f
	.byte	0x3
	.byte	0x91
	.byte	0x92,0x7f
	.byte	0xb
	.4byte	.LASF40
	.byte	0x1
	.byte	0x6c
	.byte	0xd
	.4byte	0x45d
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0xb
	.4byte	.LASF41
	.byte	0x1
	.byte	0x6d
	.byte	0xd
	.4byte	0x45d
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0xe
	.string	"msg"
	.byte	0x1
	.byte	0x6f
	.byte	0x1d
	.4byte	0x46d
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0xe
	.string	"reg"
	.byte	0x1
	.byte	0x70
	.byte	0xd
	.4byte	0x8f
	.byte	0x3
	.byte	0x91
	.byte	0x93,0x7f
	.byte	0xb
	.4byte	.LASF42
	.byte	0x1
	.byte	0x71
	.byte	0xd
	.4byte	0x47d
	.byte	0x3
	.byte	0x91
	.byte	0x94,0x7f
	.byte	0xf
	.4byte	0x8ac
	.4byte	.LBB40
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x7b
	.byte	0x11
	.4byte	0x2fa
	.byte	0x10
	.4byte	0x8bd
	.4byte	.LLST13
	.byte	0
	.byte	0xf
	.4byte	0x8ac
	.4byte	.LBB45
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x7c
	.byte	0x11
	.4byte	0x314
	.byte	0x11
	.4byte	0x8bd
	.byte	0
	.byte	0xf
	.4byte	0x8ac
	.4byte	.LBB49
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x7d
	.byte	0x11
	.4byte	0x32e
	.byte	0x11
	.4byte	0x8bd
	.byte	0
	.byte	0x12
	.4byte	.LVL62
	.4byte	0x8c8
	.byte	0x12
	.4byte	.LVL63
	.4byte	0x78d
	.byte	0x13
	.4byte	.LVL64
	.4byte	0x8d4
	.4byte	0x357
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x13
	.4byte	.LVL65
	.4byte	0x8e0
	.4byte	0x36e
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0xc
	.4byte	0x186a0
	.byte	0
	.byte	0x12
	.4byte	.LVL66
	.4byte	0x71e
	.byte	0x13
	.4byte	.LVL67
	.4byte	0x8ec
	.4byte	0x38e
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x13
	.4byte	.LVL68
	.4byte	0x8f8
	.4byte	0x3a8
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x13
	.4byte	.LVL74
	.4byte	0x48d
	.4byte	0x3c4
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x91,0x7f
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x92,0x7f
	.byte	0
	.byte	0x13
	.4byte	.LVL75
	.4byte	0x8ec
	.4byte	0x3db
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x13
	.4byte	.LVL76
	.4byte	0x904
	.4byte	0x3ee
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x13
	.4byte	.LVL77
	.4byte	0x911
	.4byte	0x40f
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x14
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0x13
	.4byte	.LVL78
	.4byte	0x91d
	.4byte	0x422
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x13
	.4byte	.LVL79
	.4byte	0x8ec
	.4byte	0x44b
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x14
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x8b
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL80
	.4byte	0x92a
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	0x8f
	.4byte	0x46d
	.byte	0x17
	.4byte	0x88
	.byte	0x5
	.byte	0
	.byte	0x16
	.4byte	0x130
	.4byte	0x47d
	.byte	0x17
	.4byte	0x88
	.byte	0x1
	.byte	0
	.byte	0x16
	.4byte	0x8f
	.4byte	0x48d
	.byte	0x17
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0xc
	.4byte	.LASF44
	.byte	0x1
	.byte	0x3d
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x70e
	.byte	0x18
	.4byte	.LASF45
	.byte	0x1
	.byte	0x3d
	.byte	0x19
	.4byte	0x172
	.4byte	.LLST0
	.byte	0x19
	.string	"hum"
	.byte	0x1
	.byte	0x3d
	.byte	0x28
	.4byte	0x172
	.4byte	.LLST1
	.byte	0xb
	.4byte	.LASF46
	.byte	0x1
	.byte	0x3e
	.byte	0xd
	.4byte	0x70e
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x1a
	.4byte	.LASF47
	.byte	0x1
	.byte	0x3f
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST2
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0
	.4byte	0x5b8
	.byte	0xd
	.string	"i"
	.byte	0x1
	.byte	0x52
	.byte	0xe
	.4byte	0x81
	.4byte	.LLST6
	.byte	0x1c
	.4byte	0x893
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.4byte	0x52b
	.byte	0x10
	.4byte	0x8a0
	.4byte	.LLST7
	.byte	0x15
	.4byte	.LVL45
	.4byte	0x936
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	0x893
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.byte	0x53
	.byte	0x48
	.4byte	0x558
	.byte	0x10
	.4byte	0x8a0
	.4byte	.LLST8
	.byte	0x15
	.4byte	.LVL58
	.4byte	0x936
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	0x893
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.byte	0x57
	.byte	0x47
	.4byte	0x582
	.byte	0x1d
	.4byte	0x8a0
	.byte	0x1
	.byte	0x15
	.4byte	.LVL61
	.4byte	0x936
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LVL42
	.4byte	0x942
	.4byte	0x595
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x13
	.4byte	.LVL46
	.4byte	0x942
	.4byte	0x5a8
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x15
	.4byte	.LVL48
	.4byte	0x942
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	0x893
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.byte	0x1
	.byte	0x46
	.byte	0x5
	.4byte	0x5e6
	.byte	0x10
	.4byte	0x8a0
	.4byte	.LLST3
	.byte	0x15
	.4byte	.LVL20
	.4byte	0x936
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	0x893
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.byte	0x1
	.byte	0x4a
	.byte	0x43
	.4byte	0x613
	.byte	0x10
	.4byte	0x8a0
	.4byte	.LLST4
	.byte	0x15
	.4byte	.LVL27
	.4byte	0x936
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	0x893
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.byte	0x1
	.byte	0x4c
	.byte	0x44
	.4byte	0x640
	.byte	0x10
	.4byte	0x8a0
	.4byte	.LLST5
	.byte	0x15
	.4byte	.LVL33
	.4byte	0x936
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	0x893
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.byte	0x1
	.byte	0x4e
	.byte	0x43
	.4byte	0x66d
	.byte	0x10
	.4byte	0x8a0
	.4byte	.LLST9
	.byte	0x15
	.4byte	.LVL55
	.4byte	0x936
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LVL16
	.4byte	0x94f
	.4byte	0x686
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x13
	.4byte	.LVL17
	.4byte	0x904
	.4byte	0x699
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x13
	.4byte	.LVL18
	.4byte	0x92a
	.4byte	0x6ac
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x13
	.4byte	.LVL19
	.4byte	0x91d
	.4byte	0x6bf
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x13
	.4byte	.LVL21
	.4byte	0x94f
	.4byte	0x6d8
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x13
	.4byte	.LVL23
	.4byte	0x942
	.4byte	0x6eb
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x13
	.4byte	.LVL34
	.4byte	0x942
	.4byte	0x6fe
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x15
	.4byte	.LVL38
	.4byte	0x942
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	0x8f
	.4byte	0x71e
	.byte	0x17
	.4byte	0x88
	.byte	0x4
	.byte	0
	.byte	0x1e
	.4byte	.LASF49
	.byte	0x1
	.byte	0x32
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x78d
	.byte	0xb
	.4byte	.LASF48
	.byte	0x1
	.byte	0x33
	.byte	0x20
	.4byte	0x178
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x13
	.4byte	.LVL10
	.4byte	0x95c
	.4byte	0x765
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x13
	.4byte	.LVL11
	.4byte	0x8d4
	.4byte	0x77c
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x15
	.4byte	.LVL12
	.4byte	0x967
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LASF50
	.byte	0x1
	.byte	0x1f
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x893
	.byte	0x13
	.4byte	.LVL0
	.4byte	0x8d4
	.4byte	0x7ba
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x13
	.4byte	.LVL1
	.4byte	0x94f
	.4byte	0x7d4
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3d
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x79
	.byte	0x81,0x76
	.byte	0
	.byte	0x13
	.4byte	.LVL2
	.4byte	0x94f
	.4byte	0x7ee
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3e
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x79
	.byte	0x81,0x76
	.byte	0
	.byte	0x13
	.4byte	.LVL3
	.4byte	0x94f
	.4byte	0x808
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3f
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x79
	.byte	0x81,0x76
	.byte	0
	.byte	0x13
	.4byte	.LVL4
	.4byte	0x94f
	.4byte	0x822
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3c
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x79
	.byte	0xc0,0x74
	.byte	0
	.byte	0x13
	.4byte	.LVL5
	.4byte	0x91d
	.4byte	0x835
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x13
	.4byte	.LVL6
	.4byte	0x94f
	.4byte	0x84f
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3a
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x79
	.byte	0x85,0x76
	.byte	0
	.byte	0x13
	.4byte	.LVL7
	.4byte	0x94f
	.4byte	0x869
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3b
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x79
	.byte	0x85,0x76
	.byte	0
	.byte	0x13
	.4byte	.LVL8
	.4byte	0x94f
	.4byte	0x883
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x79
	.byte	0xc0,0x74
	.byte	0
	.byte	0x1f
	.4byte	.LVL9
	.4byte	0x91d
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LASF67
	.byte	0x1
	.byte	0x1c
	.byte	0xd
	.byte	0x1
	.4byte	0x8ac
	.byte	0x21
	.string	"us"
	.byte	0x1
	.byte	0x1c
	.byte	0x1f
	.4byte	0xa7
	.byte	0
	.byte	0x22
	.4byte	.LASF68
	.byte	0x1
	.byte	0x1b
	.byte	0x10
	.4byte	0x8f
	.byte	0x1
	.4byte	0x8c8
	.byte	0x21
	.string	"v"
	.byte	0x1
	.byte	0x1b
	.byte	0x23
	.4byte	0x8f
	.byte	0
	.byte	0x23
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x7
	.byte	0x4
	.byte	0x6
	.byte	0x23
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x4
	.byte	0x7b
	.byte	0x19
	.byte	0x23
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x5
	.byte	0xab
	.byte	0x6
	.byte	0x23
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x8
	.byte	0xc8
	.byte	0x5
	.byte	0x23
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x5
	.byte	0xcc
	.byte	0x5
	.byte	0x24
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x9
	.2byte	0x1d5
	.byte	0x6
	.byte	0x23
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x6
	.byte	0xf5
	.byte	0x5
	.byte	0x24
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x9
	.2byte	0x1bb
	.byte	0x6
	.byte	0x23
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0xa
	.byte	0x27
	.byte	0x6
	.byte	0x23
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0xa
	.byte	0x2e
	.byte	0x6
	.byte	0x24
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x9
	.2byte	0x1f0
	.byte	0x5
	.byte	0x24
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x9
	.2byte	0x199
	.byte	0x6
	.byte	0x25
	.4byte	.LASF69
	.4byte	.LASF70
	.byte	0xb
	.byte	0
	.byte	0x23
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x6
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
.LLST10:
	.4byte	.LVL73
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL72
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL71
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x6
	.byte	0x8b
	.byte	0
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x8
	.byte	0x89
	.byte	0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xa
	.2byte	0x1f4
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x3
	.byte	0x82
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x82
	.byte	0x7e
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x3
	.byte	0x82
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL60
	.4byte	.LFE9
	.2byte	0x3
	.byte	0x82
	.byte	0x7e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x3
	.byte	0x8
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x3
	.byte	0x8
	.byte	0x28
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	0
	.4byte	0
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	0
	.4byte	0
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	0
	.4byte	0
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	0
	.4byte	0
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF54:
	.string	"printf"
.LASF21:
	.string	"user_data"
.LASF53:
	.string	"qcc74x_i2c_init"
.LASF68:
	.string	"bcd_to_dec"
.LASF3:
	.string	"__uint8_t"
.LASF49:
	.string	"spi_init"
.LASF36:
	.string	"rx_fifo_threshold"
.LASF57:
	.string	"qcc74x_spi_poll_exchange"
.LASF10:
	.string	"long long unsigned int"
.LASF24:
	.string	"addr"
.LASF50:
	.string	"system_init"
.LASF19:
	.string	"sub_idx"
.LASF23:
	.string	"qcc74x_i2c_msg_s"
.LASF28:
	.string	"qcc74x_spi_config_s"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF29:
	.string	"freq"
.LASF56:
	.string	"qcc74x_gpio_reset"
.LASF6:
	.string	"long int"
.LASF69:
	.string	"memcpy"
.LASF13:
	.string	"uint16_t"
.LASF42:
	.string	"i2c_buf"
.LASF7:
	.string	"__uint32_t"
.LASF45:
	.string	"temp"
.LASF11:
	.string	"unsigned int"
.LASF59:
	.string	"qcc74x_mtimer_delay_ms"
.LASF8:
	.string	"long unsigned int"
.LASF65:
	.string	"./examples/peripherals/spi/spi_master/main.c"
.LASF47:
	.string	"timeout"
.LASF16:
	.string	"name"
.LASF46:
	.string	"data"
.LASF62:
	.string	"qcc74x_gpio_init"
.LASF5:
	.string	"short unsigned int"
.LASF60:
	.string	"qcc74x_mtimer_delay_us"
.LASF70:
	.string	"__builtin_memcpy"
.LASF64:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF63:
	.string	"qcc74x_spi_init"
.LASF17:
	.string	"reg_base"
.LASF30:
	.string	"role"
.LASF58:
	.string	"qcc74x_gpio_set"
.LASF44:
	.string	"dht11_read"
.LASF48:
	.string	"spi_cfg"
.LASF1:
	.string	"unsigned char"
.LASF2:
	.string	"short int"
.LASF35:
	.string	"tx_fifo_threshold"
.LASF52:
	.string	"qcc74x_device_get_by_name"
.LASF14:
	.string	"uint32_t"
.LASF18:
	.string	"irq_num"
.LASF34:
	.string	"byte_order"
.LASF27:
	.string	"length"
.LASF15:
	.string	"char"
.LASF31:
	.string	"mode"
.LASF4:
	.string	"__uint16_t"
.LASF37:
	.string	"spi0"
.LASF67:
	.string	"delay_us"
.LASF32:
	.string	"data_width"
.LASF26:
	.string	"buffer"
.LASF20:
	.string	"dev_type"
.LASF33:
	.string	"bit_order"
.LASF22:
	.string	"qcc74x_device_s"
.LASF66:
	.string	"./examples/peripherals/spi/spi_master/build"
.LASF41:
	.string	"rx_dummy"
.LASF12:
	.string	"uint8_t"
.LASF25:
	.string	"flags"
.LASF38:
	.string	"gpio"
.LASF61:
	.string	"qcc74x_gpio_read"
.LASF55:
	.string	"qcc74x_i2c_transfer"
.LASF51:
	.string	"board_init"
.LASF40:
	.string	"tx_buf"
.LASF43:
	.string	"main"
.LASF39:
	.string	"i2c0"
	.ident	"GCC: (GNU) 10.4.0"
